import requests


def my_function(p_id, token):
    url = "https://api.fayvo.com/staging-v4-2/profile"
    user_agent = "aws-sdk-android/2.16.6 Linux/4.9.148 Dalvik/2.1.0/0 en_PK appVersion/554  apiVersion/4.3  FayvoClient, AmazonAPIGateway_lorb8s58n0"
    x_api_key = "5j4fPiaQbQ8SzcrGKm5fk2Pm5UYdVl8CInFHUT30"
    param = {'profile_id': p_id}
    data = {'user-agent': user_agent, 'x-api-key': x_api_key, 'token': token}

    r = requests.get(url=url, params=param, headers=data)
    print(r.status_code)
    print(r.content)




