import { z, defineCollection } from "astro:content";
import { glob } from "astro/loaders";

const config = defineCollection({
  loader: glob({ pattern: "**/*.yml" }),
  schema: z.object({
    title: z.string(),
    version: z
      .number()
      .min(1, "Unsupported version found!")
      .max(1, "Unsupported version found!"),
    groups: z.array(
      z.object({
        name: z.string(),
        links: z.array(
          z.object({
            title: z.string(),
            href: z.string().url(),
            target: z
              .enum(["_blank", "_parent", "_self", "_top"])
              .default("_self"),
          })
        ),
      })
    ),
  }),
});

export const collections = { config };
