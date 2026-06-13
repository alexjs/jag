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

## Conventions

- Maintenance entries: newest first in `maintenance/log.md`, using the template there
- Dates: ISO (YYYY-MM-DD)
- Mark unverified technical values *(verify)* rather than stating them as fact
- Singapore regulatory claims change over time — date them when written
