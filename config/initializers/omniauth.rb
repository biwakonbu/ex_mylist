Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, '1sQLoTY8HqY1r9yaqdAUw', 'ngGXC18xqaa8cdwKa4sxX2Fe06vlimuR0bvEOYIQPbk'
  provider :facebook, '187016854813645', '6d4d3563c99ebaa3d6017861bfe233ba'
end
