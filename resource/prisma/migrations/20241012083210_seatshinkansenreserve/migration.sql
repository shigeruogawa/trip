-- CreateTable
CREATE TABLE "seat" (
    "id" SERIAL NOT NULL,
    "car_count" INTEGER NOT NULL,
    "seat_count" INTEGER NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "deleted_at" TIMESTAMP(3),

    CONSTRAINT "seat_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "shinkansen" (
    "id" SERIAL NOT NULL,
    "seat_id" INTEGER NOT NULL,
    "name" TEXT NOT NULL,
    "picture" TEXT NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "deleted_at" TIMESTAMP(3),

    CONSTRAINT "shinkansen_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "reservation" (
    "id" SERIAL NOT NULL,
    "shinkansen_id" INTEGER NOT NULL,
    "departure" TEXT NOT NULL,
    "destination" TEXT NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "deleted_at" TIMESTAMP(3),

    CONSTRAINT "reservation_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "shinkansen_seat_id_key" ON "shinkansen"("seat_id");

-- CreateIndex
CREATE UNIQUE INDEX "shinkansen_name_key" ON "shinkansen"("name");

-- AddForeignKey
ALTER TABLE "shinkansen" ADD CONSTRAINT "shinkansen_seat_id_fkey" FOREIGN KEY ("seat_id") REFERENCES "seat"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "reservation" ADD CONSTRAINT "reservation_shinkansen_id_fkey" FOREIGN KEY ("shinkansen_id") REFERENCES "shinkansen"("id") ON DELETE CASCADE ON UPDATE CASCADE;
