- dashboard: sdlc_dashboard
  title: SDLC Dashboard
  layout: newspaper
  elements:
  - title: Order Count Over Time
    name: Order Count Over Time
    model: sdlc_thelook
    explore: order_items
    type: looker_area
    fields: [order_items.created_date, order_items.order_count, products.department]
    pivots: [products.department]
    filters:
      order_items.created_date: 4 weeks
    sorts: [order_items.created_date desc, products.department]
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
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: monotone
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    defaults_version: 1
    row: 6
    col: 0
    width: 24
    height: 10
  - title: Total Sales this Week
    name: Total Sales this Week
    model: sdlc_thelook
    explore: order_items
    type: single_value
    fields: [order_items.total_sale_price]
    filters:
      order_items.created_date: 7 days
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    defaults_version: 1
    row: 0
    col: 8
    width: 8
    height: 6
  - title: Return Rate this Week
    name: Return Rate this Week
    model: sdlc_thelook
    explore: order_items
    type: single_value
    fields: [order_items.return_rate]
    filters:
      order_items.created_date: 7 days
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    defaults_version: 1
    row: 0
    col: 16
    width: 8
    height: 6
  - title: Average Sale Price All Time
    name: Average Sale Price All Time
    model: sdlc_thelook
    explore: order_items
    type: single_value
    fields: [order_items.average_sale_price]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen: {}
    row: 0
    col: 0
    width: 8
    height: 6
