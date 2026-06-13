# jag — 1985 Jaguar XJS 5.3 HE (Singapore)

Public repo documenting the car. Markdown only, no build/test step.

## Privacy rule (hard constraint)

This repo is **public**. Never commit identifying or personal information:

- VIN / chassis / engine numbers, registration plate
- LTA log card, COE, road tax, insurance documents
- Invoices, receipts, or any document carrying names, addresses, or phone numbers
- Photos that show the plate or documents (check before adding any image)

All such material goes in `private/` (gitignored, local-only). When a private
document contains shareable technical content, transcribe the technical facts
into `maintenance/log.md` with identifying details stripped.

Before any commit that adds files supplied by the user (scans, photos, PDFs),
inspect them for the above and flag rather than commit if in doubt.

## Q&A corpus (local-only, in `private/reference/`)

When answering questions about the car, search these before reaching for the
web — they are the authoritative corpus:

- `private/reference/xjs-help.txt` — full text of Kirby Palm, *Experience in a
  Book* (final-for-us 2009 revision; the author has died, treat as static).
  Page breaks are form feeds, so a match's page number = count of `\f` before
  it + 1. The PDF is alongside as `XJS_help.pdf`. Owner experience, fixes,
  mods — complementary to the factory manual.
- `private/reference/manual-ocr.txt` — OCR sidecar of the factory Repair
  Operation Manual + HE Supplement (same page split convention; page N here =
  PDF page N of `docs/manual/xj-s-he-repair-manual.pdf`). OCR is rough: use it
  to *locate* pages, then render the PDF page (`pdftoppm -png -r 150 -f N -l N`)
  and read the image for actual values. Section map: `docs/manual/index.md`.
  For HE-specific data prefer the supplement (PDF pages 314–388).

These are local-only (gitignored): the Palm book is copyrighted and must not
be committed or quoted at length in public repo files — paraphrase and cite
("Palm, Experience in a Book, p. N").

## Conventions

- Maintenance entries: newest first in `maintenance/log.md`, using the template there
- Dates: ISO (YYYY-MM-DD)
- Mark unverified technical values *(verify)* rather than stating them as fact
- Singapore regulatory claims change over time — date them when written
