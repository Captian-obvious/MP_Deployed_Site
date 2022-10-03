const rangeInputs = document.querySelectorAll('input[type="range"]')
rangeInputs.forEach(input => {
    input.addEventListener('input', function(e) {
        let target = e.target
        if (target.type !== 'range') {
            target = document.getElementById('range') || document.getElementById('MediaPlayerControl-seekbar')
        } 
        const min = target.min
        const max = target.max
        const val = target.value

        target.style.backgroundSize = (val - min) * 100 / (max - min) + '% 100%'
    })
})
