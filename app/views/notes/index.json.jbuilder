json.array!(@notes) do |note|
  json.extract! note, :content
  json.url note_url(note, format: :json)
end
