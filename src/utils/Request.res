open Axios
open Promise
let _axios = Instance.create(makeConfig(~baseURL="/api", ()))
let get = (url: string) =>
  _axios
  ->Instance.get(url)
  ->Promise.then(res => {
    if res["status"] == 200 {
      resolve(res["data"])
    } else {
      resolve(None)
    }
  })
let post = (url: string, ~data: 'data=?, ()) =>
  switch data {
  | Some(_data) =>
    _axios
    ->Instance.postData(url, _data)
    ->Promise.then(res => {
      if res["status"] == 200 {
        resolve(res["data"])
      } else {
        resolve(None)
      }
    })
  | None =>
    _axios
    ->Instance.post(url)
    ->Promise.then(res => {
      if res["status"] == 200 {
        resolve(res["data"])
      } else {
        resolve(None)
      }
    })
  }
