function getRandomInt(min, max) {
  min = Math.ceil(min);
  max = Math.floor(max);
  return Math.floor(Math.random() * (max - min + 1)) + min;
}

function randomChoice(array) {
  return array[Math.floor(Math.random() * array.length)];
}

let spines = Object.values(document.getElementsByClassName("spine"));
let covers = Object.values(document.getElementsByClassName("cover"));
let tops = Object.values(document.getElementsByClassName("top"));

let availablePatterns = ["argyle", "tartan"]; // we could probably get these programatically
let availableColours = [
  "maroon",
  "darkgreen",
  "darkolivegreen",
  "brown",
  "saddlebrown",
  "sienna",
  "midnightblue",
];

// assign a random height, pattern and colour to each book
spines.map(function (s, i) {
  let randomHeight = getRandomInt(220, 290);
  s.style.height = `${randomHeight}px`;
  s.style.top = `${280 - randomHeight}px`;

  let randomPattern = randomChoice(availablePatterns);
  s.style.backgroundImage = `var(--${randomPattern})`;

  let randomColor = randomChoice(availableColours);
  s.style.backgroundColor = randomColor;

  covers[i].style.height = `${randomHeight}px`;
  covers[i].style.top = `${280 - randomHeight}px`;

  tops[i].style.top = `${280 - randomHeight}px`;
});

function layoutBookshelfRows() {
  document.querySelectorAll(".bookshelf").forEach(function (shelf) {
    const books = Array.from(shelf.querySelectorAll(".book"));

    books.forEach(function (book) {
      shelf.appendChild(book);
    });

    shelf.querySelectorAll(".bookshelf-row").forEach(function (row) {
      row.remove();
    });

    if (!books.length) return;

    const shelfStyle = window.getComputedStyle(shelf);
    const rowPadX = parseFloat(shelfStyle.getPropertyValue("--shelf-row-pad-x")) || 30;
    const firstBookStyle = window.getComputedStyle(books[0]);
    const bookWidth =
      books[0].offsetWidth +
      parseFloat(firstBookStyle.marginLeft || 0) +
      parseFloat(firstBookStyle.marginRight || 0);
    const usableWidth = Math.max(books[0].offsetWidth, shelf.clientWidth - rowPadX * 2);
    const booksPerRow = Math.max(1, Math.floor(usableWidth / bookWidth));

    shelf.classList.add("bookshelf-rowed");

    for (let index = 0; index < books.length; index += booksPerRow) {
      const row = document.createElement("div");
      row.className = "bookshelf-row";
      row.setAttribute("aria-label", "Bookshelf row");

      books.slice(index, index + booksPerRow).forEach(function (book) {
        row.appendChild(book);
      });

      shelf.appendChild(row);
    }
  });
}

let bookshelfResizeTimer;

function scheduleBookshelfLayout() {
  window.clearTimeout(bookshelfResizeTimer);
  bookshelfResizeTimer = window.setTimeout(layoutBookshelfRows, 120);
}

layoutBookshelfRows();

if ("ResizeObserver" in window) {
  const observedShelfWidths = new WeakMap();
  const bookshelfResizeObserver = new ResizeObserver(function (entries) {
    let shouldLayout = false;

    entries.forEach(function (entry) {
      const width = Math.round(entry.contentRect.width);

      if (observedShelfWidths.get(entry.target) !== width) {
        observedShelfWidths.set(entry.target, width);
        shouldLayout = true;
      }
    });

    if (shouldLayout) {
      scheduleBookshelfLayout();
    }
  });

  document.querySelectorAll(".bookshelf").forEach(function (shelf) {
    observedShelfWidths.set(shelf, Math.round(shelf.getBoundingClientRect().width));
    bookshelfResizeObserver.observe(shelf);
  });
} else {
  window.addEventListener("resize", scheduleBookshelfLayout);
}

// 生成书架
