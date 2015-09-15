json.array!(@complements) do |complement|
  json.extract! complement, :id, :nome, :tipo, :grouping, :inf, :coments
  json.url complement_url(complement, format: :json)
end
