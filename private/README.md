# private/ — local only

Everything in this directory **except this README** is gitignored and never
pushed. Put sensitive material here:

- VIN / chassis number, engine number
- Registration plate, LTA log card, road tax and COE documents
- Insurance policies and claims
- Invoices and receipts (they carry names, addresses, plate numbers)
- Anything with personal or identifying information

`reference/` holds local-only Q&A corpus material — currently the Kirby Palm
book (PDF + extracted text; copyrighted, never commit) and the factory
manual's OCR text. Rebuild everything with `scripts/build-corpus.sh`.

When something here has shareable technical content (e.g. an invoice that
documents what work was done), transcribe the technical facts into
`maintenance/log.md` with the identifying details stripped.
