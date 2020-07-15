- dashboard: ecomp_demo_433
  title: eComp Demo 433
  layout: newspaper
  elements:
  - title: Demo Tile
    name: Demo Tile
    model: sdlc_thelook
    explore: order_items
    type: looker_line
    fields: [order_items.created_date, order_items.average_sale_price]
    fill_fields: [order_items.created_date]
    filters:
      order_items.created_date: 30 days
    sorts: [order_items.created_date desc]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    series_types: {}
    row: 0
    col: 0
    width: 24
    height: 11
