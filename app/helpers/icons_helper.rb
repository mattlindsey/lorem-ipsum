module IconsHelper
  ICON_PATHS = {
    home: [ "M3 10.5 12 3l9 7.5", "M5 9.5V21h5v-6h4v6h5V9.5" ],
    search: [ "M18 11a7 7 0 1 1-14 0 7 7 0 0 1 14 0z", "m20 20-4-4" ],
    bell: [ "M6 16V11a6 6 0 0 1 12 0v5l1.5 2h-15z", "M10 20a2 2 0 0 0 4 0" ],
    document: [ "M14 3H6v18h12V7z", "M14 3v4h4", "M9 12h6M9 16h6" ],
    settings: [
      "M15 12a3 3 0 1 1-6 0 3 3 0 0 1 6 0z",
      "M19.4 15a1.7 1.7 0 0 0 .3 1.8l.1.1a2 2 0 1 1-2.8 2.8l-.1-.1a1.7 1.7 0 0 0-1.8-.3 1.7 1.7 0 0 0-1 1.5V21a2 2 0 1 1-4 0v-.1a1.7 1.7 0 0 0-1.1-1.5 1.7 1.7 0 0 0-1.8.3l-.1.1a2 2 0 1 1-2.8-2.8l.1-.1a1.7 1.7 0 0 0 .3-1.8 1.7 1.7 0 0 0-1.5-1H3a2 2 0 1 1 0-4h.1a1.7 1.7 0 0 0 1.5-1.1 1.7 1.7 0 0 0-.3-1.8l-.1-.1a2 2 0 1 1 2.8-2.8l.1.1a1.7 1.7 0 0 0 1.8.3H9a1.7 1.7 0 0 0 1-1.5V3a2 2 0 1 1 4 0v.1a1.7 1.7 0 0 0 1 1.5 1.7 1.7 0 0 0 1.8-.3l.1-.1a2 2 0 1 1 2.8 2.8l-.1.1a1.7 1.7 0 0 0-.3 1.8V9a1.7 1.7 0 0 0 1.5 1H21a2 2 0 1 1 0 4h-.1a1.7 1.7 0 0 0-1.5 1z"
    ],
    user: [ "M16 9a4 4 0 1 1-8 0 4 4 0 0 1 8 0z", "M4.5 20a8 8 0 0 1 15 0" ],
    chevron_right: [ "m9 6 6 6-6 6" ],
    image: [ "M3 5h18v14H3z", "M10 10a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0z", "m3 17 5-5 4 4 3-3 6 6" ]
  }.freeze

  def icon(name, size: 22)
    tag.svg width: size, height: size, viewBox: "0 0 24 24", fill: "none", stroke: "currentColor",
      stroke_width: 1.7, stroke_linecap: "round", stroke_linejoin: "round", aria: { hidden: true } do
      safe_join ICON_PATHS.fetch(name).map { |d| tag.path(d: d) }
    end
  end
end
