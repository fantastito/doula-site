document.addEventListener("DOMContentLoaded", () => {

    const slides = document.querySelectorAll(".testimonial-slide");

    if (!slides.length) return;

    let current = 0;

    function showSlide(index) {

        slides.forEach(slide =>
            slide.classList.remove("active"));

        slides[index].classList.add("active");
    }

    document.querySelector(".testimonial-arrow.next")
        ?.addEventListener("click", () => {

            current = (current + 1) % slides.length;
            showSlide(current);
        });

    document.querySelector(".testimonial-arrow.prev")
        ?.addEventListener("click", () => {

            current =
                (current - 1 + slides.length) % slides.length;

            showSlide(current);
        });

});