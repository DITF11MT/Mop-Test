// $(window).on('load', function() {
//     $('#overlay').fadeOut();

// });

$(document).ready(function() {
    $(".btn").click(function() {
        $("#myModal").modal('show');
    });

    $("#idForm").submit(async function(e) {

        e.preventDefault(); // avoid to execute the actual submit of the form.

        console.log('Here ');
        var form = document.getElementById('idForm');
        const data = new URLSearchParams();
        var modalTitle = document.getElementById('modalTitle');
        for (const pair of new FormData(form)) {
            data.append(pair[0], pair[1]);
        }
        await fetch(form.action, {
                body: data,
                method: form.method
            })
            .then(data => {
                console.log(data);
                if (data.status == 200) {
                    console.log('200 Ya mAN!');
                    modalTitle.innerText = 'تم ارسال طلبك بنجاح!';
                    $("#myModal").modal('show');
                    $("#idForm").trigger("reset");
                } else {
                    modalTitle.innerText = 'حدث خطأ ما! اعد ارسال طلبك.';
                    $("#myModal").modal('show');
                    console.log('not 200 ya karate!');
                }
            })

    });
});