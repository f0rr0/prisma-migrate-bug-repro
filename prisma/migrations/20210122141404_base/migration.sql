CREATE EXTENSION IF NOT EXISTS pgcrypto;

-- CreateTable
CREATE TABLE "users" (
    "id" UUID NOT NULL DEFAULT gen_random_uuid(),

    PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "user-story-likes" (
    "storyId" UUID NOT NULL,
    "userId" UUID NOT NULL,

    PRIMARY KEY ("storyId","userId")
);

-- CreateTable
CREATE TABLE "stories" (
    "id" UUID NOT NULL DEFAULT gen_random_uuid(),

    PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "user-story-likes" ADD FOREIGN KEY("storyId")REFERENCES "stories"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "user-story-likes" ADD FOREIGN KEY("userId")REFERENCES "users"("id") ON DELETE CASCADE ON UPDATE CASCADE;
