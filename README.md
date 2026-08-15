# AHK Hardware Mouse Debouncer

An AutoHotkey script designed to filter out hardware switch chatter and accidental double-clicks by enforcing a software debounce delay.

## Technical Highlights

* **Software Debouncing:** Enforces a configurable debounce window (`DebounceTime := 40` ms) to filter out double-click chatter on worn hardware switches.
* **State Verification:** Evaluates physical (`P`) vs. logical key states via `GetKeyState` to prevent execution loops.
* **Emergency Kill Switch:** Mapped to `Ctrl + Esc` (`*^Esc`) for instant script termination.

## Requirements

* **AutoHotkey:** v2.0+

## Usage

Run `SendMode Input.ahk` directly or compile it to an executable for local deployment.
