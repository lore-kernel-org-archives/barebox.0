Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z3IZh-0006wy-Ij
 for barebox@lists.infradead.org; Fri, 12 Jun 2015 06:36:26 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 12 Jun 2015 08:35:43 +0200
Message-Id: <1434090946-6574-8-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1434090946-6574-1-git-send-email-s.hauer@pengutronix.de>
References: <1434090946-6574-1-git-send-email-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 07/10] imx-bbu-nand-fcb: make available for i.MX28 aswell
To: Barebox List <barebox@lists.infradead.org>

The code can be used with slight modifications on i.MX28 aswell.
Add a i.MX28 registration function and move the differences to
function callbacks.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/Kconfig            |   2 +-
 common/imx-bbu-nand-fcb.c | 173 ++++++++++++++++++++++++++++++++++++++++------
 include/bbu.h             |   5 ++
 3 files changed, 157 insertions(+), 23 deletions(-)

diff --git a/common/Kconfig b/common/Kconfig
index 0ebfe1e..31944c5 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -96,7 +96,7 @@ config FILE_LIST
 
 config BAREBOX_UPDATE_IMX_NAND_FCB
 	bool
-	depends on ARCH_IMX6
+	depends on ARCH_IMX6 || ARCH_IMX28
 	depends on BAREBOX_UPDATE
 	depends on MTD_WRITE
 	depends on NAND_MXS
diff --git a/common/imx-bbu-nand-fcb.c b/common/imx-bbu-nand-fcb.c
index ca7df97..920b5a1 100644
--- a/common/imx-bbu-nand-fcb.c
+++ b/common/imx-bbu-nand-fcb.c
@@ -17,7 +17,7 @@
  *
  */
 
-#define pr_fmt(fmt) "imx6-bbu-nand: " fmt
+#define pr_fmt(fmt) "imx-bbu-nand-fcb: " fmt
 
 #include <filetype.h>
 #include <common.h>
@@ -28,17 +28,17 @@
 #include <linux/sizes.h>
 #include <bbu.h>
 #include <fs.h>
-#include <mach/bbu.h>
 #include <linux/mtd/mtd-abi.h>
 #include <linux/mtd/nand_mxs.h>
 #include <linux/mtd/mtd.h>
 #include <linux/stat.h>
+#include <io.h>
 
 struct dbbt_block {
 	uint32_t Checksum;
 	uint32_t FingerPrint;
 	uint32_t Version;
-	uint32_t reserved;
+	uint32_t numberBB; /* reserved on i.MX6 */
 	uint32_t DBBTNumOfPages;
 };
 
@@ -102,6 +102,16 @@ struct fcb_block {
 	uint32_t BBMarkerPhysicalOffsetInSpareData; /* The swap position of main area in spare area */
 };
 
+struct imx_nand_fcb_bbu_handler {
+	struct bbu_handler handler;
+
+	void (*fcb_create)(struct imx_nand_fcb_bbu_handler *imx_handler,
+		struct fcb_block *fcb, struct mtd_info *mtd);
+	void (*dbbt_create)(struct imx_nand_fcb_bbu_handler *imx_handler,
+		struct dbbt_block *dbbt, int num_bad_blocks);
+	enum filetype filetype;
+};
+
 #define BF_VAL(v, bf)		(((v) & bf##_MASK) >> bf##_OFFSET)
 #define GETBIT(v,n)	(((v) >> (n)) & 0x1)
 
@@ -228,7 +238,8 @@ static ssize_t raw_write_page(struct mtd_info *mtd, void *buf, loff_t offset)
         return ret;
 }
 
-static int fcb_create(struct fcb_block *fcb, struct mtd_info *mtd)
+static int fcb_create(struct imx_nand_fcb_bbu_handler *imx_handler,
+		struct fcb_block *fcb, struct mtd_info *mtd)
 {
 	fcb->FingerPrint = 0x20424346;
 	fcb->Version = 0x01000000;
@@ -241,12 +252,6 @@ static int fcb_create(struct fcb_block *fcb, struct mtd_info *mtd)
 		mxs_nand_get_ecc_strength(mtd->writesize, mtd->oobsize) >> 1;
 	fcb->EccBlockNEccType = fcb->EccBlock0EccType;
 
-	/* Also hardcoded in kobs-ng */
-	fcb->DataSetup = 80;
-	fcb->DataHold = 60;
-	fcb->AddressSetup = 25;
-	fcb->DSAMPLE_TIME = 6;
-	fcb->MetadataBytes = 0x0000000a;
 	fcb->EccBlock0Size = 0x00000200;
 	fcb->EccBlockNSize = 0x00000200;
 
@@ -260,12 +265,14 @@ static int fcb_create(struct fcb_block *fcb, struct mtd_info *mtd)
 
 	fcb->BBMarkerPhysicalOffset = mtd->writesize;
 
+	imx_handler->fcb_create(imx_handler, fcb, mtd);
+
 	fcb->Checksum = calc_chksum((void *)fcb + 4, sizeof(*fcb) - 4);
 
 	return 0;
 }
 
-static int imx6_bbu_erase(struct mtd_info *mtd)
+static int imx_bbu_erase(struct mtd_info *mtd)
 {
 	uint64_t offset = 0;
 	int len = SZ_2M;
@@ -295,7 +302,7 @@ static int imx6_bbu_erase(struct mtd_info *mtd)
 	return 0;
 }
 
-static int imx6_bbu_write_firmware(struct mtd_info *mtd, int block, void *buf, size_t len)
+static int imx_bbu_write_firmware(struct mtd_info *mtd, int block, void *buf, size_t len)
 {
 	uint64_t offset = block * mtd->erasesize;
 	int ret;
@@ -348,8 +355,10 @@ static int dbbt_data_create(struct mtd_info *mtd, void *buf, int block_last)
 	return n_bad_blocks;
 }
 
-static int imx6_bbu_nand_update(struct bbu_handler *handler, struct bbu_data *data)
+static int imx_bbu_nand_update(struct bbu_handler *handler, struct bbu_data *data)
 {
+	struct imx_nand_fcb_bbu_handler *imx_handler =
+		container_of(handler, struct imx_nand_fcb_bbu_handler, handler);
 	struct cdev *bcb_cdev;
 	struct mtd_info *mtd;
 	int ret, block_fw1, block_fw2, block_last;
@@ -361,9 +370,14 @@ static int imx6_bbu_nand_update(struct bbu_handler *handler, struct bbu_data *da
 	void *fw;
 	unsigned fw_size;
 	int i;
+	enum filetype filetype;
 
-	if (file_detect_type(data->image, data->len) != filetype_arm_barebox &&
-			!bbu_force(data, "Not an ARM barebox image"))
+	filetype = file_detect_type(data->image, data->len);
+
+	if (filetype != imx_handler->filetype &&
+			!bbu_force(data, "Image is not of type %s but of type %s",
+				file_type_to_string(imx_handler->filetype),
+				file_type_to_string(filetype)))
 		return -EINVAL;
 
 	ret = bbu_confirm(data);
@@ -398,17 +412,17 @@ static int imx6_bbu_nand_update(struct bbu_handler *handler, struct bbu_data *da
 
 	block_fw1 = 4;
 
-	ret = imx6_bbu_erase(mtd);
+	ret = imx_bbu_erase(mtd);
 	if (ret)
 		goto out;
 
-	ret = imx6_bbu_write_firmware(mtd, block_fw1, fw, fw_size);
+	ret = imx_bbu_write_firmware(mtd, block_fw1, fw, fw_size);
 	if (ret < 0)
 		goto out;
 
 	block_fw2 = ret;
 
-	ret = imx6_bbu_write_firmware(mtd, block_fw2, fw, fw_size);
+	ret = imx_bbu_write_firmware(mtd, block_fw2, fw, fw_size);
 	if (ret < 0)
 		goto out;
 
@@ -419,7 +433,7 @@ static int imx6_bbu_nand_update(struct bbu_handler *handler, struct bbu_data *da
 	fcb->PagesInFirmware1 = ALIGN(data->len, mtd->writesize) / mtd->writesize;
 	fcb->PagesInFirmware2 = fcb->PagesInFirmware1;
 
-	fcb_create(fcb, mtd);
+	fcb_create(imx_handler, fcb, mtd);
 	encode_hamming_13_8(fcb, ecc, 512);
 
 	/*
@@ -447,8 +461,11 @@ static int imx6_bbu_nand_update(struct bbu_handler *handler, struct bbu_data *da
 	if (ret < 0)
 		goto out;
 
-	if (ret > 0)
+	if (ret > 0) {
 		dbbt->DBBTNumOfPages = 1;
+		if (imx_handler->dbbt_create)
+			imx_handler->dbbt_create(imx_handler, dbbt, ret);
+	}
 
 	for (i = 2; i < 4; i++) {
 		ret = mtd_write(mtd, mtd->erasesize * i, 2048, &written, dbbt_page);
@@ -472,16 +489,127 @@ out:
 	return ret;
 }
 
+static void imx6_fcb_create(struct imx_nand_fcb_bbu_handler *imx_handler,
+		struct fcb_block *fcb, struct mtd_info *mtd)
+{
+	/* Also hardcoded in kobs-ng */
+	fcb->DataSetup = 80;
+	fcb->DataHold = 60;
+	fcb->AddressSetup = 25;
+	fcb->DSAMPLE_TIME = 6;
+	fcb->MetadataBytes = 10;
+}
+
 int imx6_bbu_nand_register_handler(const char *name, unsigned long flags)
 {
+	struct imx_nand_fcb_bbu_handler *imx_handler;
+	struct bbu_handler *handler;
+	int ret;
+
+	imx_handler = xzalloc(sizeof(*imx_handler));
+	imx_handler->fcb_create = imx6_fcb_create;
+	imx_handler->filetype = filetype_arm_barebox;
+
+	handler = &imx_handler->handler;
+	handler->devicefile = "nand0.barebox";
+	handler->name = name;
+	handler->flags = flags;
+	handler->handler = imx_bbu_nand_update;
+
+	ret = bbu_register_handler(handler);
+	if (ret)
+		free(handler);
+
+	return ret;
+}
+
+#ifdef CONFIG_ARCH_IMX28
+#include <mach/imx28-regs.h>
+
+#define GPMI_TIMING0				0x00000070
+#define	GPMI_TIMING0_ADDRESS_SETUP_MASK			(0xff << 16)
+#define	GPMI_TIMING0_ADDRESS_SETUP_OFFSET		16
+#define	GPMI_TIMING0_DATA_HOLD_MASK			(0xff << 8)
+#define	GPMI_TIMING0_DATA_HOLD_OFFSET			8
+#define	GPMI_TIMING0_DATA_SETUP_MASK			0xff
+#define	GPMI_TIMING0_DATA_SETUP_OFFSET			0
+
+#define GPMI_TIMING1				0x00000080
+
+#define BCH_MODE				0x00000020
+
+#define BCH_FLASH0LAYOUT0			0x00000080
+#define	BCH_FLASHLAYOUT0_NBLOCKS_MASK			(0xff << 24)
+#define	BCH_FLASHLAYOUT0_NBLOCKS_OFFSET			24
+#define	BCH_FLASHLAYOUT0_META_SIZE_MASK			(0xff << 16)
+#define	BCH_FLASHLAYOUT0_META_SIZE_OFFSET		16
+#define	BCH_FLASHLAYOUT0_ECC0_MASK			(0xf << 12)
+#define	BCH_FLASHLAYOUT0_ECC0_OFFSET			12
+#define	BCH_FLASHLAYOUT0_DATA0_SIZE_MASK		0xfff
+#define	BCH_FLASHLAYOUT0_DATA0_SIZE_OFFSET		0
+
+#define BCH_FLASH0LAYOUT1			0x00000090
+#define	BCH_FLASHLAYOUT1_PAGE_SIZE_MASK			(0xffff << 16)
+#define	BCH_FLASHLAYOUT1_PAGE_SIZE_OFFSET		16
+#define	BCH_FLASHLAYOUT1_ECCN_MASK			(0xf << 12)
+#define	BCH_FLASHLAYOUT1_ECCN_OFFSET			12
+#define	BCH_FLASHLAYOUT1_DATAN_SIZE_MASK		0xfff
+#define	BCH_FLASHLAYOUT1_DATAN_SIZE_OFFSET		0
+
+static void imx28_fcb_create(struct imx_nand_fcb_bbu_handler *imx_handler,
+		struct fcb_block *fcb, struct mtd_info *mtd)
+{
+	u32 fl0, fl1, t0;
+	void __iomem *bch_regs = (void *)MXS_BCH_BASE;
+	void __iomem *gpmi_regs = (void *)MXS_GPMI_BASE;
+
+	fl0 = readl(bch_regs + BCH_FLASH0LAYOUT0);
+	fl1 = readl(bch_regs + BCH_FLASH0LAYOUT1);
+	t0 = readl(gpmi_regs + GPMI_TIMING0);
+
+	fcb->MetadataBytes = BF_VAL(fl0, BCH_FLASHLAYOUT0_META_SIZE);
+	fcb->DataSetup = BF_VAL(t0, GPMI_TIMING0_DATA_SETUP);
+	fcb->DataHold = BF_VAL(t0, GPMI_TIMING0_DATA_HOLD);
+	fcb->AddressSetup = BF_VAL(t0, GPMI_TIMING0_ADDRESS_SETUP);
+	fcb->MetadataBytes = BF_VAL(fl0, BCH_FLASHLAYOUT0_META_SIZE);
+	fcb->NumEccBlocksPerPage = BF_VAL(fl0, BCH_FLASHLAYOUT0_NBLOCKS);
+	fcb->EraseThreshold = readl(bch_regs + BCH_MODE);
+}
+
+static void imx28_dbbt_create(struct imx_nand_fcb_bbu_handler *imx_handler,
+		struct dbbt_block *dbbt, int num_bad_blocks)
+{
+	uint32_t a = 0;
+	uint8_t *p = (void *)dbbt;
+	int i;
+
+	dbbt->numberBB = num_bad_blocks;
+
+	for (i = 4; i < 512; i++)
+		a += p[i];
+
+	a ^= 0xffffffff;
+
+	dbbt->Checksum = a;
+}
+
+int imx28_bbu_nand_register_handler(const char *name, unsigned long flags)
+{
+	struct imx_nand_fcb_bbu_handler *imx_handler;
 	struct bbu_handler *handler;
 	int ret;
 
-	handler = xzalloc(sizeof(*handler));
+	imx_handler = xzalloc(sizeof(*imx_handler));
+	imx_handler->fcb_create = imx28_fcb_create;
+	imx_handler->dbbt_create = imx28_dbbt_create;
+
+	imx_handler->filetype = filetype_mxs_bootstream;
+
+	handler = &imx_handler->handler;
 	handler->devicefile = "nand0.barebox";
 	handler->name = name;
 	handler->flags = flags;
-	handler->handler = imx6_bbu_nand_update;
+	handler->handler = imx_bbu_nand_update;
 
 	ret = bbu_register_handler(handler);
 	if (ret)
@@ -489,3 +617,4 @@ int imx6_bbu_nand_register_handler(const char *name, unsigned long flags)
 
 	return ret;
 }
+#endif
diff --git a/include/bbu.h b/include/bbu.h
index c5f22be..4cf97e1 100644
--- a/include/bbu.h
+++ b/include/bbu.h
@@ -52,11 +52,16 @@ static inline int bbu_register_handler(struct bbu_handler *unused)
 
 #if defined(CONFIG_BAREBOX_UPDATE_IMX_NAND_FCB)
 int imx6_bbu_nand_register_handler(const char *name, unsigned long flags);
+int imx28_bbu_nand_register_handler(const char *name, unsigned long flags);
 #else
 static inline int imx6_bbu_nand_register_handler(const char *name, unsigned long flags)
 {
 	return -ENOSYS;
 }
+static inline int imx28_bbu_nand_register_handler(const char *name, unsigned long flags)
+{
+	return -ENOSYS;
+}
 #endif
 
 #endif /* __INCLUDE_BBU_H */
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
