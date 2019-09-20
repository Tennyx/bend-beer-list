function search(query, cb) {
  return fetch('api/v1/breweries', {
    headers : { 
      'Content-Type': 'application/json',
      'Accept': 'application/json'
    }
  })
  .then(checkStatus)
  .then(parseJSON)
  .then(cb);
}

function checkStatus(response) {
  if (response.status >= 200 && response.status < 300) {
    return response;
  }
  const error = new Error(`HTTP Error ${response.statusText}`);
  error.status = response.statusText;
  error.response = response;
  throw error;
}

function parseJSON(response) {
  return response.json();
}

const Client = { search };
export default Client;
