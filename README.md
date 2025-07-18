# modest-nexus

Small and lightweight self-hostable nexus.

## Configuration file structure

| Property              | Type                                   | Required | Default   |
| --------------------- | -------------------------------------- | -------- | --------- |
| `title`               | `string`                               | Yes      |           |
| `version`             | `number`                               | Yes      |           |
| `groups`              | `array`                                | Yes      |           |
| `groups.name`         | `string`                               | Yes      |           |
| `groups.links`        | `array`                                | Yes      |           |
| `groups.links.title`  | `string`                               | Yes      |           |
| `groups.links.href`   | `string`                               | Yes      |           |
| `groups.links.target` | `"_blank", "_parent", "_self", "_top"` | Yes      | `"_self"` |
