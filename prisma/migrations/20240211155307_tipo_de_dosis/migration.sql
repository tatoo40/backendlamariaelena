-- AlterTable
ALTER TABLE "motivos_sanitarios" ADD COLUMN     "id_tipo_dosis" INTEGER;

-- CreateTable
CREATE TABLE "tipos_dosis" (
    "id" SERIAL NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "estado" TEXT NOT NULL DEFAULT E'S',
    "descripcion" TEXT NOT NULL,

    CONSTRAINT "tipos_dosis_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "motivos_sanitarios" ADD CONSTRAINT "motivos_sanitarios_id_tipo_dosis_fkey" FOREIGN KEY ("id_tipo_dosis") REFERENCES "tipos_dosis"("id") ON DELETE SET NULL ON UPDATE CASCADE;
