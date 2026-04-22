import { useState } from "react";
import { Store, MapPin, Briefcase, Loader2 } from "lucide-react";
import { createNegocioVendedorApi } from "../../api/api-client";
import { toast } from "sonner"; // Assuming sonner is available based on package.json

interface SetupBusinessProps {
  onComplete: (idNegocio: number) => void;
}

export function SetupBusiness({ onComplete }: SetupBusinessProps) {
  const [isFetchingLocation, setIsFetchingLocation] = useState(false);
  const [isSubmitting, setIsSubmitting] = useState(false);
  const [locationError, setLocationError] = useState("");
  const [formData, setFormData] = useState({
    nombre_comercial: "",
    rfc_tax_id: "",
    logo_url: "",
    calle: "",
    ciudad: "",
    estado: "",
    codigo_postal: "",
    pais: "México", // default
    latitud: "",
    longitud: "",
  });

  const handleChange = (e: React.ChangeEvent<HTMLInputElement>) => {
    const { name, value } = e.target;
    setFormData((prev) => ({ ...prev, [name]: value }));
  };

  const handleGetLocation = () => {
    if (!navigator.geolocation) {
      toast.error("Tu navegador no soporta geolocalización");
      return;
    }

    setIsFetchingLocation(true);
    setLocationError("");

    navigator.geolocation.getCurrentPosition(
      (position) => {
        setFormData((prev) => ({
          ...prev,
          latitud: position.coords.latitude.toString(),
          longitud: position.coords.longitude.toString(),
        }));
        toast.success("Ubicación obtenida correctamente");
        setIsFetchingLocation(false);
      },
      (error) => {
        let errorMsg = "Error al obtener ubicación";
        if (error.code === error.PERMISSION_DENIED) {
          errorMsg = "Por favor, permite el acceso a tu ubicación.";
        } else if (error.code === error.POSITION_UNAVAILABLE) {
          errorMsg = "La información de ubicación no está disponible.";
        } else if (error.code === error.TIMEOUT) {
          errorMsg = "Tiempo de espera agotado al obtener ubicación.";
        }
        setLocationError(errorMsg);
        toast.error(errorMsg);
        setIsFetchingLocation(false);
      },
      { enableHighAccuracy: true, timeout: 10000, maximumAge: 0 }
    );
  };

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();

    if (!formData.latitud || !formData.longitud) {
      toast.error("Debes obtener la ubicación exacta de tu negocio antes de continuar");
      return;
    }

    setIsSubmitting(true);
    try {
      // API call to create business
      const result = await createNegocioVendedorApi({
        ...formData,
        latitud: Number(formData.latitud),
        longitud: Number(formData.longitud),
      });

      toast.success(result.mensaje || "Negocio creado con éxito");
      onComplete(result.negocio.id);
    } catch (error: any) {
      toast.error(error.message || "Error al crear tu negocio");
    } finally {
      setIsSubmitting(false);
    }
  };

  return (
    <div className="min-h-screen bg-gray-50 flex flex-col justify-center py-12 px-4 sm:px-6 lg:px-8">
      <div className="sm:mx-auto sm:w-full sm:max-w-md">
        <div className="flex justify-center">
          <div className="w-16 h-16 bg-primary/10 rounded-full flex items-center justify-center">
            <Store className="w-8 h-8 text-primary" />
          </div>
        </div>
        <h2 className="mt-6 text-center text-3xl font-extrabold text-gray-900 leading-tight">
          Configura tu Negocio
        </h2>
        <p className="mt-2 text-center text-sm text-gray-600">
          Para empezar a vender, necesitamos algunos datos básicos de tu tienda y su ubicación.
        </p>
      </div>

      <div className="mt-8 sm:mx-auto sm:w-full sm:max-w-2xl">
        <div className="bg-white py-8 px-4 shadow-xl shadow-primary/5 sm:rounded-2xl sm:px-10 border border-gray-100">
          <form className="space-y-6" onSubmit={handleSubmit}>
            
            {/* Sección: Datos del Negocio */}
            <div>
              <h3 className="text-lg leading-6 font-medium text-gray-900 flex items-center gap-2 mb-4">
                <Briefcase className="w-5 h-5 text-primary" />
                Información de la Tienda
              </h3>
              <div className="grid grid-cols-1 gap-y-6 gap-x-4 sm:grid-cols-2">
                <div className="sm:col-span-2">
                  <label htmlFor="nombre_comercial" className="block text-sm font-medium text-gray-700">
                    Nombre Comercial *
                  </label>
                  <div className="mt-1">
                    <input
                      type="text"
                      id="nombre_comercial"
                      name="nombre_comercial"
                      required
                      value={formData.nombre_comercial}
                      onChange={handleChange}
                      className="appearance-none block w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm placeholder-gray-400 focus:outline-none focus:ring-primary focus:border-primary sm:text-sm transition-colors"
                      placeholder="Ej. La Tiendita de Don Pepe"
                    />
                  </div>
                </div>

                <div>
                  <label htmlFor="rfc_tax_id" className="block text-sm font-medium text-gray-700">
                    RFC (Opcional)
                  </label>
                  <div className="mt-1">
                    <input
                      type="text"
                      id="rfc_tax_id"
                      name="rfc_tax_id"
                      value={formData.rfc_tax_id}
                      onChange={handleChange}
                      className="appearance-none block w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm placeholder-gray-400 focus:outline-none focus:ring-primary focus:border-primary sm:text-sm transition-colors"
                      placeholder="XXXXXXXXXXXXX"
                    />
                  </div>
                </div>

                <div>
                  <label htmlFor="logo_url" className="block text-sm font-medium text-gray-700">
                    URL del Logo (Opcional)
                  </label>
                  <div className="mt-1">
                    <input
                      type="url"
                      id="logo_url"
                      name="logo_url"
                      value={formData.logo_url}
                      onChange={handleChange}
                      className="appearance-none block w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm placeholder-gray-400 focus:outline-none focus:ring-primary focus:border-primary sm:text-sm transition-colors"
                      placeholder="https://..."
                    />
                  </div>
                </div>
              </div>
            </div>

            <hr className="border-gray-200" />

            {/* Sección: Dirección */}
            <div>
              <h3 className="text-lg leading-6 font-medium text-gray-900 flex items-center gap-2 mb-4">
                <MapPin className="w-5 h-5 text-primary" />
                Ubicación Principal
              </h3>
              <div className="grid grid-cols-1 gap-y-6 gap-x-4 sm:grid-cols-2">
                <div className="sm:col-span-2">
                  <label htmlFor="calle" className="block text-sm font-medium text-gray-700">
                    Calle y Número *
                  </label>
                  <div className="mt-1">
                    <input
                      type="text"
                      id="calle"
                      name="calle"
                      required
                      value={formData.calle}
                      onChange={handleChange}
                      className="appearance-none block w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm placeholder-gray-400 focus:outline-none focus:ring-primary focus:border-primary sm:text-sm transition-colors"
                      placeholder="Av. Principal 123"
                    />
                  </div>
                </div>

                <div>
                  <label htmlFor="ciudad" className="block text-sm font-medium text-gray-700">
                    Ciudad *
                  </label>
                  <div className="mt-1">
                    <input
                      type="text"
                      id="ciudad"
                      name="ciudad"
                      required
                      value={formData.ciudad}
                      onChange={handleChange}
                      className="appearance-none block w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm placeholder-gray-400 focus:outline-none focus:ring-primary focus:border-primary sm:text-sm transition-colors"
                    />
                  </div>
                </div>

                <div>
                  <label htmlFor="estado" className="block text-sm font-medium text-gray-700">
                    Estado *
                  </label>
                  <div className="mt-1">
                    <input
                      type="text"
                      id="estado"
                      name="estado"
                      required
                      value={formData.estado}
                      onChange={handleChange}
                      className="appearance-none block w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm placeholder-gray-400 focus:outline-none focus:ring-primary focus:border-primary sm:text-sm transition-colors"
                    />
                  </div>
                </div>

                <div>
                  <label htmlFor="codigo_postal" className="block text-sm font-medium text-gray-700">
                    Código Postal *
                  </label>
                  <div className="mt-1">
                    <input
                      type="text"
                      id="codigo_postal"
                      name="codigo_postal"
                      required
                      value={formData.codigo_postal}
                      onChange={handleChange}
                      className="appearance-none block w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm placeholder-gray-400 focus:outline-none focus:ring-primary focus:border-primary sm:text-sm transition-colors"
                    />
                  </div>
                </div>

                <div>
                  <label htmlFor="pais" className="block text-sm font-medium text-gray-700">
                    País *
                  </label>
                  <div className="mt-1">
                    <input
                      type="text"
                      id="pais"
                      name="pais"
                      required
                      value={formData.pais}
                      onChange={handleChange}
                      className="appearance-none block w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm placeholder-gray-400 focus:outline-none focus:ring-primary focus:border-primary sm:text-sm transition-colors"
                    />
                  </div>
                </div>
              </div>
            </div>

            <hr className="border-gray-200" />

            {/* Sección: Coordenadas */}
            <div>
              <h3 className="text-lg leading-6 font-medium text-gray-900 flex items-center gap-2 mb-4">
                <MapPin className="w-5 h-5 text-primary" />
                Coordenadas GPS (Obligatorio)
              </h3>
              <p className="text-sm text-gray-600 mb-4">
                Necesitamos la ubicación exacta de tu negocio para poder mostrarlo a los clientes cercanos en el mapa.
              </p>
              
              <div className="bg-gray-50 p-4 rounded-lg border border-gray-200">
                <div className="flex flex-col sm:flex-row gap-4 items-end justify-between">
                  <div className="flex-1 w-full">
                    <div className="flex gap-4">
                      <div className="flex-1">
                        <label className="block text-xs font-semibold text-gray-700 mb-1">Latitud (Manual/Auto)</label>
                        <input
                          type="number"
                          step="any"
                          name="latitud"
                          value={formData.latitud}
                          onChange={handleChange}
                          placeholder="Ej. 19.432608"
                          className="w-full px-3 py-2 border border-gray-300 rounded-md text-sm focus:ring-primary focus:border-primary outline-none transition-colors bg-white"
                        />
                      </div>
                      <div className="flex-1">
                        <label className="block text-xs font-semibold text-gray-700 mb-1">Longitud (Manual/Auto)</label>
                        <input
                          type="number"
                          step="any"
                          name="longitud"
                          value={formData.longitud}
                          onChange={handleChange}
                          placeholder="Ej. -99.133209"
                          className="w-full px-3 py-2 border border-gray-300 rounded-md text-sm focus:ring-primary focus:border-primary outline-none transition-colors bg-white"
                        />
                      </div>
                    </div>
                    {locationError && <div className="text-sm text-red-600 mt-2">{locationError}</div>}
                  </div>
                  <button
                    type="button"
                    onClick={handleGetLocation}
                    disabled={isFetchingLocation}
                    className="flex-shrink-0 flex items-center gap-2 px-4 py-2 bg-white border border-gray-300 rounded-lg shadow-sm text-sm font-medium text-gray-700 hover:bg-gray-50 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-primary disabled:opacity-50 transition-colors"
                  >
                    {isFetchingLocation ? (
                      <Loader2 className="w-4 h-4 animate-spin text-primary" />
                    ) : (
                      <MapPin className="w-4 h-4 text-primary" />
                    )}
                    {formData.latitud ? "Actualizar Ubicación" : "Obtener mi ubicación"}
                  </button>
                </div>
              </div>
            </div>

            <div className="pt-2">
              <button
                type="submit"
                disabled={isSubmitting || !formData.latitud || !formData.longitud}
                className="w-full flex justify-center py-3 px-4 border border-transparent rounded-lg shadow-sm text-sm font-medium text-white bg-primary hover:bg-primary/90 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-primary disabled:opacity-50 disabled:cursor-not-allowed transition-colors"
              >
                {isSubmitting ? "Registrando Negocio..." : "Crear mi Tienda"}
              </button>
            </div>
          </form>
        </div>
      </div>
    </div>
  );
}
