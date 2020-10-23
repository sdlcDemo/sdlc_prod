- dashboard: sdlc_dashboard_2
  title: SDLC Dashboard 2
  layout: newspaper
  preferred_viewer: dashboards
  elements:
  - title: User Age Tier
    name: User Age Tier
    model: sdlc_thelook
    explore: order_items
    type: looker_column
    fields: [users.age_tier, users.count]
    filters:
      users.age_tier: "-Below 0,-0 to 9"
    sorts: [users.age_tier]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    series_colors:
      users.count: "#72D16D"
    defaults_version: 1
    listen: {}
    row: 9
    col: 0
    width: 11
    height: 9
  - title: Users Location
    name: Users Location
    model: sdlc_thelook
    explore: order_items
    type: looker_map
    fields: [users.count, users.state]
    sorts: [users.count desc]
    limit: 500
    column_limit: 50
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: custom
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_view_names: false
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    defaults_version: 1
    series_types: {}
    map_latitude: 38.278281130011926
    map_longitude: -98.64727020263673
    map_zoom: 4
    listen: {}
    row: 0
    col: 11
    width: 13
    height: 18
  - title: Users by Traffic Source
    name: Users by Traffic Source
    model: sdlc_thelook
    explore: order_items
    type: looker_bar
    fields: [users.count, users.traffic_source, users.gender]
    pivots: [users.gender]
    sorts: [users.count desc 0, users.gender]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    series_colors:
      Male - users.count: "#E57947"
    defaults_version: 1
    listen: {}
    row: 0
    col: 0
    width: 11
    height: 9
