using ColoradoWebApp.Models;
using Newtonsoft.Json;
using System.Net;
using System.Net.Http.Headers;
using System.Text;

namespace ColoradoWebApp.Helpers
{
    public static class ApiCall
    {
       
        public static async Task<ContatoViewModel> GetAsyncById(string ApiUrl, ContatoViewModel dados)
        {

          HttpClient client = new HttpClient();

            var formato = "/contato-por-id/" + dados.id;
            string Uri = ApiUrl + formato;
            client.BaseAddress = null;
            client.BaseAddress = new Uri(Uri);
            client.DefaultRequestHeaders.Clear();
            client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
            var response = client.GetAsync(Uri).Result;
            if (response.IsSuccessStatusCode)
            {
                string responseBoby = await response.Content.ReadAsStringAsync();
                var _response = JsonConvert.DeserializeObject<ContatoViewModel>(responseBoby);
                return _response;
            }
            else
            {
                client.CancelPendingRequests();
                return dados;
            }
        }

        public static async Task<List<ContatoViewModel>?> GetAsync(string ApiUrl)
        {
            HttpClient client = new HttpClient();
            client.DefaultRequestHeaders.Clear();
            client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
            HttpResponseMessage response = await client.GetAsync(ApiUrl);
            if (response.IsSuccessStatusCode)
            {

                var responseBody = await response.Content.ReadAsStringAsync();
                var _response = JsonConvert.DeserializeObject<List<ContatoViewModel>>(responseBody);
                return _response;
            }
            else
            {
                client.CancelPendingRequests();
                return null;
            }
        }
        
        public static async Task PostAsync(string ApiUrl, ContatoViewModel contato)
        {
            HttpClient client = new HttpClient();
            client.BaseAddress =  new Uri(ApiUrl);
            HttpContent body = new StringContent(JsonConvert.SerializeObject(contato), Encoding.UTF8, "application/json");
            var response = client.PostAsync("",body).Result;
            if (response.IsSuccessStatusCode)
            {
                var content = await response.Content.ReadAsStringAsync();
                
                if (!string.IsNullOrEmpty(content))
                { var objDeserializeObject = JsonConvert.DeserializeObject<ContatoViewModel>(content);
                    Console.WriteLine("Contato salvo com sucesso.");
                    if (objDeserializeObject != null) {
                        Console.WriteLine(objDeserializeObject.nome);
                    }
                }
            }

        }

        public static async Task PutAsync(string ApiUrl, ContatoViewModel contato)
        {
            HttpClient client = new HttpClient();
            string url = ApiUrl + "/atualizar-contato";
            client.BaseAddress = new Uri(url);
            client.DefaultRequestHeaders.Clear();
            client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));

            HttpContent body = new StringContent(JsonConvert.SerializeObject(contato), Encoding.UTF8, "application/json");
            var response = client.PutAsync("", body).Result;
            if (response.IsSuccessStatusCode)
            {
                var content = await response.Content.ReadAsStringAsync();
                if (!string.IsNullOrEmpty(content))
                {
                    var objDeserializeObject = JsonConvert.DeserializeObject<ContatoViewModel>(content);
                    Console.WriteLine("Contato atualizado com sucesso.");
                    if (objDeserializeObject != null)
                    {
                        Console.WriteLine(objDeserializeObject.nome);
                    }
                }
            }
        }

        public static async Task DeleteAsync(string ApiUrl, ContatoViewModel contato)
        {

            HttpClient client = new HttpClient();
            string url = ApiUrl + "/excluir-contato/"+ contato.id;
            client.BaseAddress = new Uri(url);
            client.DefaultRequestHeaders.Clear();
            
            client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));

            HttpContent body = new StringContent(JsonConvert.SerializeObject(contato), Encoding.UTF8, "application/json");

            var response = client.DeleteAsync("").Result;
            if (response.IsSuccessStatusCode)
            {
                var content = await response.Content.ReadAsStringAsync();

                if (!string.IsNullOrEmpty(content))
                {
                    var objDeserializeObject = JsonConvert.DeserializeObject<ContatoViewModel>(content);
                    Console.WriteLine("Contato excluido com sucesso.");
                    if (objDeserializeObject != null)
                    {
                        Console.WriteLine(objDeserializeObject.nome);
                    }
                }
            }

        }
    }
}
