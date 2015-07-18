


@randomScalingFactor = ->
  Math.round Math.random() * 100

# set the chartjs charts
@setChart = (id_name) ->

  barChartData =
    labels: [
      'January'
      'February'
      'March'
      'April'
      'May'
      'June'
      'July'
    ]
    datasets: [
      {
        fillColor: 'rgba(220,220,220,0.5)'
        strokeColor: 'rgba(220,220,220,0.8)'
        highlightFill: 'rgba(220,220,220,0.75)'
        highlightStroke: 'rgba(220,220,220,1)'
        data: [
          randomScalingFactor()
          randomScalingFactor()
          randomScalingFactor()
          randomScalingFactor()
          randomScalingFactor()
          randomScalingFactor()
          randomScalingFactor()
        ]
      }
      {
        fillColor: 'rgba(151,187,205,0.5)'
        strokeColor: 'rgba(151,187,205,0.8)'
        highlightFill: 'rgba(151,187,205,0.75)'
        highlightStroke: 'rgba(151,187,205,1)'
        data: [
          randomScalingFactor()
          randomScalingFactor()
          randomScalingFactor()
          randomScalingFactor()
          randomScalingFactor()
          randomScalingFactor()
          randomScalingFactor()
        ]
      }
    ]

  elem = document.getElementById(id_name)
  ctx = elem.getContext('2d')
  chart = new Chart(ctx).Bar(barChartData, responsive: true)
  return

  # # window.onload = ->
  #   return
