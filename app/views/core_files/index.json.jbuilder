json.array!(@core_files) do |core_file|
  json.extract! core_file, :id, :file_name, :mdsum, :size, :content
  json.url core_file_url(core_file, format: :json)
end
