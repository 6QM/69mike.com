(() => {
  const toc = document.querySelector(".post-single > .toc");
  if (!toc) return;

  const details = toc.querySelector("details");
  const links = [...toc.querySelectorAll('a[href^="#"]')];
  const headings = links
    .map((link) => document.getElementById(decodeURIComponent(link.hash.slice(1))))
    .filter(Boolean);

  if (!details || !links.length || !headings.length) return;

  const desktop = window.matchMedia("(min-width: 1200px)");
  const syncTocState = () => {
    details.open = desktop.matches;
  };

  const setActiveLink = (heading) => {
    links.forEach((link) => {
      const targetId = decodeURIComponent(link.hash.slice(1));
      const isActive = targetId === heading.id;
      link.classList.toggle("is-active", isActive);
      if (isActive) link.setAttribute("aria-current", "location");
      else link.removeAttribute("aria-current");
    });
  };

  const observer = new IntersectionObserver(
    (entries) => {
      const visible = entries
        .filter((entry) => entry.isIntersecting)
        .sort((a, b) => a.boundingClientRect.top - b.boundingClientRect.top);

      if (visible.length) setActiveLink(visible[0].target);
    },
    { rootMargin: "-18% 0px -72%", threshold: 0 }
  );

  headings.forEach((heading) => observer.observe(heading));
  setActiveLink(headings[0]);
  syncTocState();
  desktop.addEventListener("change", syncTocState);
})();
