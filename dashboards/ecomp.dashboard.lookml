- dashboard: ecomp
  title: eComp
  layout: newspaper
  elements:
  - title: Orders - Last 30 Days
    name: Orders - Last 30 Days
    model: sdlc_thelook
    explore: order_items
    type: single_value
    fields: [order_items.order_count]
    filters:
      order_items.created_date: 30 days
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
    value_labels: legend
    label_type: labPer
    defaults_version: 1
    row: 0
    col: 0
    width: 8
    height: 6
