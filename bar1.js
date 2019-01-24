// !preview r2d3 data=c(0.3, 0.6, 0.8, 0.95, 0.40, 0.20)

var barHeight = Math.ceil(height / data.length);

var bars = r2d3.svg.selectAll('rect')
    .data(r2d3.data);
    
bars.enter()
    .append('rect')
      .attr('width', function(d) { return d * width; })
      .attr('height', barHeight)
      .attr('y', function(d, i) { return i * barHeight; })
      .attr('fill', 'steelblue')
      .attr('d', function(d) { return d; })
      .on('click', function(){ 
        console.log('test');
        Shiny.setInputValue(id = 'bar_clicked', value = d3.select(this).attr('d'), {priority: 'event'});
  });
bars.exit().remove();

bars.transition()
  .duration(100)
  .attr("width", function(d) { return d * width; });