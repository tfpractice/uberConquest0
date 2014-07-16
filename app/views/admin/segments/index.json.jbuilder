json.array!(@segments) do |segment|
  json.extract! segment, :name, :geofenceCount, :counquestCount, :location, :dma, :deviceCount, :imageFilepath
  json.url segment_url(segment, format: :json)
end