

def get_ip_address():
    ''' return host IP address
    '''
    import socket
    return socket.gethostbyname(socket.gethostname()) 

def get_hostname():
    ''' return host IP address
    '''
    import socket
    return socket.gethostname()

class BaseConfig(object): 
    'Base config class' 
    SECRET_KEY = 'A random secret key' 
    DEBUG = True 
    TESTING = False 
 
class ProductionConfig(BaseConfig): 
    'Production specific config' 
    DEBUG = False 
    # SECRET_KEY = open('').read() 
 
class StagingConfig(BaseConfig): 
    'Staging specific config' 
    DEBUG = True 
 
class DevelopmentConfig(BaseConfig): 
    'Development environment specific config' 
    ENV                         = 'development'
    DEBUG                       = True 
    TESTING                     = True 
    SERVER_NAME                 = '{}:80'.format(get_ip_address())
    SQLALCHEMY_DATABASE_URI     = 'sqlite:////db/simple-app.sqlite3'
    # SECRET_KEY = '' 
