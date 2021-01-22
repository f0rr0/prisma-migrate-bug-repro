-- DropForeignKey
ALTER TABLE "user-story-likes" DROP CONSTRAINT "user-story-likes_storyId_fkey";

-- DropForeignKey
ALTER TABLE "user-story-likes" DROP CONSTRAINT "user-story-likes_userId_fkey";

-- AddForeignKey
ALTER TABLE "user-story-likes" ADD FOREIGN KEY("storyId")REFERENCES "stories"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "user-story-likes" ADD FOREIGN KEY("userId")REFERENCES "users"("id") ON DELETE CASCADE ON UPDATE CASCADE;
