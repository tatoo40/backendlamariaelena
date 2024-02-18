-- AlterTable
ALTER TABLE "cpt_registros_consumos" ADD COLUMN     "cantidad" INTEGER;

-- CreateTable
CREATE TABLE "cpt_ajustes_stock" (
    "id" SERIAL NOT NULL,
    "nro_trans" INTEGER NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "estado" TEXT NOT NULL DEFAULT E'S',
    "observaciones" TEXT NOT NULL,
    "fecha" TIMESTAMP(3) NOT NULL,
    "cod_docum" TEXT NOT NULL,
    "id_motivo_stk" INTEGER NOT NULL,
    "cantidad" INTEGER NOT NULL,
    "id_articulo" INTEGER NOT NULL,
    "id_empresa" INTEGER NOT NULL DEFAULT 1,

    CONSTRAINT "cpt_ajustes_stock_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "cpt_ajustes_stock" ADD CONSTRAINT "cpt_ajustes_stock_id_articulo_fkey" FOREIGN KEY ("id_articulo") REFERENCES "articulos"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "cpt_ajustes_stock" ADD CONSTRAINT "cpt_ajustes_stock_id_empresa_fkey" FOREIGN KEY ("id_empresa") REFERENCES "empresas"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
