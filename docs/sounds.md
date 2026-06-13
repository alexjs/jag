# Diagnostic sounds — what does it sound like?

[Sean Straw's "Sounds Jaguars Make"](http://jaguar.professional.org/sounds/index.php)
hosts recordings made on his **1985 XJ-S** — same year and engine as this car.
Five recordings as of his last update (2005); linked here with the symptom
each one demonstrates. Local copies are kept in `private/reference/sounds/`
(his site asks that files not be re-hosted, so they're not committed).

| Symptom you're hearing | Listen | What it means |
|---|---|---|
| Cranks, *almost* fires repeatedly, never catches | [bad_ignition_amp.mp3](http://jaguar.professional.org/sounds/bad_ignition_amp.mp3) | Dead AB14 ignition amplifier — weak/no spark. Swap the amp and it starts |
| Cranks evenly with **no** almost-fired sound at all | [coolant_temp_disconnected.mp3](http://jaguar.professional.org/sounds/coolant_temp_disconnected.mp3) | Coolant temp sensor (front of B bank) disconnected or open-circuit → ECU injects no fuel. Same sound as no fuel / dead pump — exclude those first |
| Starts and idles fine, stumbles when throttle applied, worse under load/in gear | [throttle_stumble.mp3](http://jaguar.professional.org/sounds/throttle_stumble.mp3) | Marginal ignition amplifier — the classic heat-soak presentation |
| Runs but ignition sounds rough/marginal | [marginal_ignition_amp.mp3](http://jaguar.professional.org/sounds/marginal_ignition_amp.mp3) | Same amplifier, milder symptom |
| Loud racket from the starter after release | [chuffed_starter.mp3](http://jaguar.professional.org/sounds/chuffed_starter.mp3) | Failing Bendix drive in the starter (recorded on an XJ12 — same V12) |

Pattern worth noticing: three of the five recordings are the **ignition
amplifier** — it sits in the engine V, cooks, and is the single most common
"V12 won't start / cuts out / stumbles" culprit. See `maintenance/known-issues.md`.
