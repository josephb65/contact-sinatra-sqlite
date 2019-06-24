require './config/environment'

use Rack::MethodOverride

use UsersController
use PagesController

run ApplicationController
