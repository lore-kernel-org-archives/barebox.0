Delivery-date: Tue, 16 Apr 2024 11:54:48 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rwfWa-003BSV-07
	for lore@lore.pengutronix.de;
	Tue, 16 Apr 2024 11:54:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rwfWN-0004Fa-DF
	for lore@pengutronix.de; Tue, 16 Apr 2024 11:54:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jKue0M5sfrR9qxI68JXOmyeWNY322SeCi6mwz3+4qM8=; b=WyN4VCIIFjfo1zO4eVPujpUORU
	AXeIdaQDMsN2cM2o8G2yj1rqZ0mJUFaOU4KjDaUUA2HakgfxHjibRYJ8lNicNU1/A4oZDbkNU+Kn3
	DjN5phbmIKH9rde8mOZZi0qA0usE//v6xcELKh4/s002AhJtrmOqq0QUbFmb+3EBuawVhhfud/q1O
	FXpmK2bjO9RTLzsLIWG5mA0jd7r623IVAlNoqxzn/9V7T8T/vyFLubJo8xn7RYJYCGf441sVPPZRx
	4GUltxJMHqgId63aDbyN3wqm21QuzYsmzzXoLytpEyAGzXZrmA0QUuhiymTeUgRlJEKpmb5J62WaF
	FaHNxswA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwfVN-0000000Bfia-2LEC;
	Tue, 16 Apr 2024 09:53:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwfV8-0000000BfcH-0mlX
	for barebox@lists.infradead.org;
	Tue, 16 Apr 2024 09:53:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rwfV5-0002dh-G5; Tue, 16 Apr 2024 11:53:15 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rwfV5-00CaKK-3L; Tue, 16 Apr 2024 11:53:15 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rwfV4-008J49-39;
	Tue, 16 Apr 2024 11:53:15 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 16 Apr 2024 11:53:10 +0200
Message-Id: <20240416095313.1977242-6-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240416095313.1977242-1-s.hauer@pengutronix.de>
References: <20240416095313.1977242-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240416_025318_933799_592A3C89 
X-CRM114-Status: GOOD (  33.79  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 5/8] mtd: nand: replace nand_imx driver with kernel driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The barebox nand_imx driver has diverged a lot from the corresponding
Kernel driver. To reduce maintenance effort replace the driver with
the Kernel driver. The driver is mostly taken from the Kernel and only
adjusted to compile with barebox. The only significant change is that
the driver creates the flash BBT if none exists, like our old driver
did.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/raw/Makefile   |    2 +-
 drivers/mtd/nand/raw/mxc_nand.c | 1880 +++++++++++++++++++++++++++++++
 drivers/mtd/nand/raw/nand_imx.c | 1483 ------------------------
 3 files changed, 1881 insertions(+), 1484 deletions(-)
 create mode 100644 drivers/mtd/nand/raw/mxc_nand.c
 delete mode 100644 drivers/mtd/nand/raw/nand_imx.c

diff --git a/drivers/mtd/nand/raw/Makefile b/drivers/mtd/nand/raw/Makefile
index f0e8834e25..38c7cc809d 100644
--- a/drivers/mtd/nand/raw/Makefile
+++ b/drivers/mtd/nand/raw/Makefile
@@ -10,7 +10,7 @@ obj-$(CONFIG_MTD_RAW_NAND)		+= nand_jedec.o
 obj-$(CONFIG_MTD_RAW_NAND)		+= nand_bbt.o
 
 obj-$(CONFIG_MTD_NAND_NOMADIK)		+= nomadik_nand.o
-obj-$(CONFIG_NAND_IMX)			+= nand_imx.o
+obj-$(CONFIG_NAND_IMX)			+= mxc_nand.o
 obj-$(CONFIG_NAND_OMAP_GPMC)		+= nand_omap_gpmc.o nand_omap_bch_decoder.o
 obj-$(CONFIG_MTD_NAND_OMAP_ELM)		+= omap_elm.o
 obj-$(CONFIG_NAND_ORION)		+= nand_orion.o
diff --git a/drivers/mtd/nand/raw/mxc_nand.c b/drivers/mtd/nand/raw/mxc_nand.c
new file mode 100644
index 0000000000..9b5b5c744a
--- /dev/null
+++ b/drivers/mtd/nand/raw/mxc_nand.c
@@ -0,0 +1,1880 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright 2004-2007 Freescale Semiconductor, Inc. All Rights Reserved.
+ * Copyright 2008 Sascha Hauer, kernel@pengutronix.de
+ */
+
+#include <linux/slab.h>
+#include <linux/mtd/mtd.h>
+#include <linux/mtd/rawnand.h>
+#include <linux/mtd/partitions.h>
+#include <linux/device.h>
+#include <linux/clk.h>
+#include <linux/err.h>
+#include <linux/io.h>
+#include <linux/completion.h>
+
+#define DRIVER_NAME "mxc_nand"
+
+/* Addresses for NFC registers */
+#define NFC_V1_V2_BUF_SIZE		(host->regs + 0x00)
+#define NFC_V1_V2_BUF_ADDR		(host->regs + 0x04)
+#define NFC_V1_V2_FLASH_ADDR		(host->regs + 0x06)
+#define NFC_V1_V2_FLASH_CMD		(host->regs + 0x08)
+#define NFC_V1_V2_CONFIG		(host->regs + 0x0a)
+#define NFC_V1_V2_ECC_STATUS_RESULT	(host->regs + 0x0c)
+#define NFC_V1_V2_RSLTMAIN_AREA		(host->regs + 0x0e)
+#define NFC_V21_RSLTSPARE_AREA		(host->regs + 0x10)
+#define NFC_V1_V2_WRPROT		(host->regs + 0x12)
+#define NFC_V1_UNLOCKSTART_BLKADDR	(host->regs + 0x14)
+#define NFC_V1_UNLOCKEND_BLKADDR	(host->regs + 0x16)
+#define NFC_V21_UNLOCKSTART_BLKADDR0	(host->regs + 0x20)
+#define NFC_V21_UNLOCKSTART_BLKADDR1	(host->regs + 0x24)
+#define NFC_V21_UNLOCKSTART_BLKADDR2	(host->regs + 0x28)
+#define NFC_V21_UNLOCKSTART_BLKADDR3	(host->regs + 0x2c)
+#define NFC_V21_UNLOCKEND_BLKADDR0	(host->regs + 0x22)
+#define NFC_V21_UNLOCKEND_BLKADDR1	(host->regs + 0x26)
+#define NFC_V21_UNLOCKEND_BLKADDR2	(host->regs + 0x2a)
+#define NFC_V21_UNLOCKEND_BLKADDR3	(host->regs + 0x2e)
+#define NFC_V1_V2_NF_WRPRST		(host->regs + 0x18)
+#define NFC_V1_V2_CONFIG1		(host->regs + 0x1a)
+#define NFC_V1_V2_CONFIG2		(host->regs + 0x1c)
+
+#define NFC_V2_CONFIG1_ECC_MODE_4	(1 << 0)
+#define NFC_V1_V2_CONFIG1_SP_EN		(1 << 2)
+#define NFC_V1_V2_CONFIG1_ECC_EN	(1 << 3)
+#define NFC_V1_V2_CONFIG1_INT_MSK	(1 << 4)
+#define NFC_V1_V2_CONFIG1_BIG		(1 << 5)
+#define NFC_V1_V2_CONFIG1_RST		(1 << 6)
+#define NFC_V1_V2_CONFIG1_CE		(1 << 7)
+#define NFC_V2_CONFIG1_ONE_CYCLE	(1 << 8)
+#define NFC_V2_CONFIG1_PPB(x)		(((x) & 0x3) << 9)
+#define NFC_V2_CONFIG1_FP_INT		(1 << 11)
+
+#define NFC_V1_V2_CONFIG2_INT		(1 << 15)
+
+/*
+ * Operation modes for the NFC. Valid for v1, v2 and v3
+ * type controllers.
+ */
+#define NFC_CMD				(1 << 0)
+#define NFC_ADDR			(1 << 1)
+#define NFC_INPUT			(1 << 2)
+#define NFC_OUTPUT			(1 << 3)
+#define NFC_ID				(1 << 4)
+#define NFC_STATUS			(1 << 5)
+
+#define NFC_V3_FLASH_CMD		(host->regs_axi + 0x00)
+#define NFC_V3_FLASH_ADDR0		(host->regs_axi + 0x04)
+
+#define NFC_V3_CONFIG1			(host->regs_axi + 0x34)
+#define NFC_V3_CONFIG1_SP_EN		(1 << 0)
+#define NFC_V3_CONFIG1_RBA(x)		(((x) & 0x7 ) << 4)
+
+#define NFC_V3_ECC_STATUS_RESULT	(host->regs_axi + 0x38)
+
+#define NFC_V3_LAUNCH			(host->regs_axi + 0x40)
+
+#define NFC_V3_WRPROT			(host->regs_ip + 0x0)
+#define NFC_V3_WRPROT_LOCK_TIGHT	(1 << 0)
+#define NFC_V3_WRPROT_LOCK		(1 << 1)
+#define NFC_V3_WRPROT_UNLOCK		(1 << 2)
+#define NFC_V3_WRPROT_BLS_UNLOCK	(2 << 6)
+
+#define NFC_V3_WRPROT_UNLOCK_BLK_ADD0   (host->regs_ip + 0x04)
+
+#define NFC_V3_CONFIG2			(host->regs_ip + 0x24)
+#define NFC_V3_CONFIG2_PS_512			(0 << 0)
+#define NFC_V3_CONFIG2_PS_2048			(1 << 0)
+#define NFC_V3_CONFIG2_PS_4096			(2 << 0)
+#define NFC_V3_CONFIG2_ONE_CYCLE		(1 << 2)
+#define NFC_V3_CONFIG2_ECC_EN			(1 << 3)
+#define NFC_V3_CONFIG2_2CMD_PHASES		(1 << 4)
+#define NFC_V3_CONFIG2_NUM_ADDR_PHASE0		(1 << 5)
+#define NFC_V3_CONFIG2_ECC_MODE_8		(1 << 6)
+#define NFC_V3_CONFIG2_PPB(x, shift)		(((x) & 0x3) << shift)
+#define NFC_V3_CONFIG2_NUM_ADDR_PHASE1(x)	(((x) & 0x3) << 12)
+#define NFC_V3_CONFIG2_INT_MSK			(1 << 15)
+#define NFC_V3_CONFIG2_ST_CMD(x)		(((x) & 0xff) << 24)
+#define NFC_V3_CONFIG2_SPAS(x)			(((x) & 0xff) << 16)
+
+#define NFC_V3_CONFIG3				(host->regs_ip + 0x28)
+#define NFC_V3_CONFIG3_ADD_OP(x)		(((x) & 0x3) << 0)
+#define NFC_V3_CONFIG3_FW8			(1 << 3)
+#define NFC_V3_CONFIG3_SBB(x)			(((x) & 0x7) << 8)
+#define NFC_V3_CONFIG3_NUM_OF_DEVICES(x)	(((x) & 0x7) << 12)
+#define NFC_V3_CONFIG3_RBB_MODE			(1 << 15)
+#define NFC_V3_CONFIG3_NO_SDMA			(1 << 20)
+
+#define NFC_V3_IPC			(host->regs_ip + 0x2C)
+#define NFC_V3_IPC_CREQ			(1 << 0)
+#define NFC_V3_IPC_INT			(1 << 31)
+
+#define NFC_V3_DELAY_LINE		(host->regs_ip + 0x34)
+
+struct mxc_nand_host;
+
+struct mxc_nand_devtype_data {
+	void (*preset)(struct mtd_info *);
+	int (*read_page)(struct nand_chip *chip, void *buf, void *oob, bool ecc,
+			 int page);
+	void (*send_cmd)(struct mxc_nand_host *, uint16_t, int);
+	void (*send_addr)(struct mxc_nand_host *, uint16_t, int);
+	void (*send_page)(struct mtd_info *, unsigned int);
+	void (*send_read_id)(struct mxc_nand_host *);
+	uint16_t (*get_dev_status)(struct mxc_nand_host *);
+	int (*check_int)(struct mxc_nand_host *);
+	void (*irq_control)(struct mxc_nand_host *, int);
+	u32 (*get_ecc_status)(struct mxc_nand_host *);
+	const struct mtd_ooblayout_ops *ooblayout;
+	void (*select_chip)(struct nand_chip *chip, int cs);
+	int (*setup_interface)(struct nand_chip *chip, int csline,
+			       const struct nand_interface_config *conf);
+	void (*enable_hwecc)(struct nand_chip *chip, bool enable);
+
+	/*
+	 * On i.MX21 the CONFIG2:INT bit cannot be read if interrupts are masked
+	 * (CONFIG1:INT_MSK is set). To handle this the driver uses
+	 * enable_irq/disable_irq_nosync instead of CONFIG1:INT_MSK
+	 */
+	int irqpending_quirk;
+	int needs_ip;
+
+	size_t regs_offset;
+	size_t spare0_offset;
+	size_t axi_offset;
+
+	int spare_len;
+	int eccbytes;
+	int eccsize;
+	int ppb_shift;
+};
+
+struct mxc_nand_host {
+	struct nand_chip	nand;
+	struct device		*dev;
+
+	void __iomem		*spare0;
+	void __iomem		*main_area0;
+
+	void __iomem		*base;
+	void __iomem		*regs;
+	void __iomem		*regs_axi;
+	void __iomem		*regs_ip;
+	int			status_request;
+	struct clk		*clk;
+	int			clk_act;
+	int			irq;
+	int			eccsize;
+	int			used_oobsize;
+	int			active_cs;
+
+	struct completion	op_completion;
+
+	uint8_t			*data_buf;
+	unsigned int		buf_start;
+
+	const struct mxc_nand_devtype_data *devtype_data;
+};
+
+static void memcpy32_fromio(void *trg, const void __iomem  *src, size_t size)
+{
+	int i;
+	u32 *t = trg;
+	const __iomem u32 *s = src;
+
+	for (i = 0; i < (size >> 2); i++)
+		*t++ = __raw_readl(s++);
+}
+
+static void memcpy16_fromio(void *trg, const void __iomem  *src, size_t size)
+{
+	int i;
+	u16 *t = trg;
+	const __iomem u16 *s = src;
+
+	/* We assume that src (IO) is always 32bit aligned */
+	if (PTR_ALIGN(trg, 4) == trg && IS_ALIGNED(size, 4)) {
+		memcpy32_fromio(trg, src, size);
+		return;
+	}
+
+	for (i = 0; i < (size >> 1); i++)
+		*t++ = __raw_readw(s++);
+}
+
+static inline void memcpy32_toio(void __iomem *trg, const void *src, int size)
+{
+	int i;
+	u32 __iomem *t = trg;
+	const u32 *s = src;
+
+	for (i = 0; i < (size >> 2); i++)
+		__raw_writel(*s++, t++);
+}
+
+static void memcpy16_toio(void __iomem *trg, const void *src, int size)
+{
+	int i;
+	__iomem u16 *t = trg;
+	const u16 *s = src;
+
+	/* We assume that trg (IO) is always 32bit aligned */
+	if (PTR_ALIGN(src, 4) == src && IS_ALIGNED(size, 4)) {
+		memcpy32_toio(trg, src, size);
+		return;
+	}
+
+	for (i = 0; i < (size >> 1); i++)
+		__raw_writew(*s++, t++);
+}
+
+/*
+ * The controller splits a page into data chunks of 512 bytes + partial oob.
+ * There are writesize / 512 such chunks, the size of the partial oob parts is
+ * oobsize / #chunks rounded down to a multiple of 2. The last oob chunk then
+ * contains additionally the byte lost by rounding (if any).
+ * This function handles the needed shuffling between host->data_buf (which
+ * holds a page in natural order, i.e. writesize bytes data + oobsize bytes
+ * spare) and the NFC buffer.
+ */
+static void copy_spare(struct mtd_info *mtd, bool bfrom, void *buf)
+{
+	struct nand_chip *this = mtd_to_nand(mtd);
+	struct mxc_nand_host *host = nand_get_controller_data(this);
+	u16 i, oob_chunk_size;
+	u16 num_chunks = mtd->writesize / 512;
+
+	u8 *d = buf;
+	u8 __iomem *s = host->spare0;
+	u16 sparebuf_size = host->devtype_data->spare_len;
+
+	/* size of oob chunk for all but possibly the last one */
+	oob_chunk_size = (host->used_oobsize / num_chunks) & ~1;
+
+	if (bfrom) {
+		for (i = 0; i < num_chunks - 1; i++)
+			memcpy16_fromio(d + i * oob_chunk_size,
+					s + i * sparebuf_size,
+					oob_chunk_size);
+
+		/* the last chunk */
+		memcpy16_fromio(d + i * oob_chunk_size,
+				s + i * sparebuf_size,
+				host->used_oobsize - i * oob_chunk_size);
+	} else {
+		for (i = 0; i < num_chunks - 1; i++)
+			memcpy16_toio(&s[i * sparebuf_size],
+				      &d[i * oob_chunk_size],
+				      oob_chunk_size);
+
+		/* the last chunk */
+		memcpy16_toio(&s[i * sparebuf_size],
+			      &d[i * oob_chunk_size],
+			      host->used_oobsize - i * oob_chunk_size);
+	}
+}
+
+/*
+ * MXC NANDFC can only perform full page+spare or spare-only read/write.  When
+ * the upper layers perform a read/write buf operation, the saved column address
+ * is used to index into the full page. So usually this function is called with
+ * column == 0 (unless no column cycle is needed indicated by column == -1)
+ */
+static void mxc_do_addr_cycle(struct mtd_info *mtd, int column, int page_addr)
+{
+	struct nand_chip *nand_chip = mtd_to_nand(mtd);
+	struct mxc_nand_host *host = nand_get_controller_data(nand_chip);
+
+	/* Write out column address, if necessary */
+	if (column != -1) {
+		host->devtype_data->send_addr(host, column & 0xff,
+					      page_addr == -1);
+		if (mtd->writesize > 512)
+			/* another col addr cycle for 2k page */
+			host->devtype_data->send_addr(host,
+						      (column >> 8) & 0xff,
+						      false);
+	}
+
+	/* Write out page address, if necessary */
+	if (page_addr != -1) {
+		/* paddr_0 - p_addr_7 */
+		host->devtype_data->send_addr(host, (page_addr & 0xff), false);
+
+		if (mtd->writesize > 512) {
+			if (mtd->size >= 0x10000000) {
+				/* paddr_8 - paddr_15 */
+				host->devtype_data->send_addr(host,
+						(page_addr >> 8) & 0xff,
+						false);
+				host->devtype_data->send_addr(host,
+						(page_addr >> 16) & 0xff,
+						true);
+			} else
+				/* paddr_8 - paddr_15 */
+				host->devtype_data->send_addr(host,
+						(page_addr >> 8) & 0xff, true);
+		} else {
+			if (nand_chip->options & NAND_ROW_ADDR_3) {
+				/* paddr_8 - paddr_15 */
+				host->devtype_data->send_addr(host,
+						(page_addr >> 8) & 0xff,
+						false);
+				host->devtype_data->send_addr(host,
+						(page_addr >> 16) & 0xff,
+						true);
+			} else
+				/* paddr_8 - paddr_15 */
+				host->devtype_data->send_addr(host,
+						(page_addr >> 8) & 0xff, true);
+		}
+	}
+}
+
+static int check_int_v3(struct mxc_nand_host *host)
+{
+	uint32_t tmp;
+
+	tmp = readl(NFC_V3_IPC);
+	if (!(tmp & NFC_V3_IPC_INT))
+		return 0;
+
+	tmp &= ~NFC_V3_IPC_INT;
+	writel(tmp, NFC_V3_IPC);
+
+	return 1;
+}
+
+static int check_int_v1_v2(struct mxc_nand_host *host)
+{
+	uint32_t tmp;
+
+	tmp = readw(NFC_V1_V2_CONFIG2);
+	if (!(tmp & NFC_V1_V2_CONFIG2_INT))
+		return 0;
+
+	if (!host->devtype_data->irqpending_quirk)
+		writew(tmp & ~NFC_V1_V2_CONFIG2_INT, NFC_V1_V2_CONFIG2);
+
+	return 1;
+}
+
+static void irq_control_v1_v2(struct mxc_nand_host *host, int activate)
+{
+	uint16_t tmp;
+
+	tmp = readw(NFC_V1_V2_CONFIG1);
+
+	if (activate)
+		tmp &= ~NFC_V1_V2_CONFIG1_INT_MSK;
+	else
+		tmp |= NFC_V1_V2_CONFIG1_INT_MSK;
+
+	writew(tmp, NFC_V1_V2_CONFIG1);
+}
+
+static void irq_control_v3(struct mxc_nand_host *host, int activate)
+{
+	uint32_t tmp;
+
+	tmp = readl(NFC_V3_CONFIG2);
+
+	if (activate)
+		tmp &= ~NFC_V3_CONFIG2_INT_MSK;
+	else
+		tmp |= NFC_V3_CONFIG2_INT_MSK;
+
+	writel(tmp, NFC_V3_CONFIG2);
+}
+
+static u32 get_ecc_status_v1(struct mxc_nand_host *host)
+{
+	return readw(NFC_V1_V2_ECC_STATUS_RESULT);
+}
+
+static u32 get_ecc_status_v2(struct mxc_nand_host *host)
+{
+	return readl(NFC_V1_V2_ECC_STATUS_RESULT);
+}
+
+static u32 get_ecc_status_v3(struct mxc_nand_host *host)
+{
+	return readl(NFC_V3_ECC_STATUS_RESULT);
+}
+
+/* This function polls the NANDFC to wait for the basic operation to
+ * complete by checking the INT bit of config2 register.
+ */
+static int wait_op_done(struct mxc_nand_host *host, int useirq)
+{
+	int ret = 0;
+	int max_retries = 8000;
+	int done;
+
+	/*
+	 * If operation is already complete, don't bother to setup an irq or a
+	 * loop.
+	 */
+	if (host->devtype_data->check_int(host))
+		return 0;
+
+	do {
+		udelay(1);
+
+		done = host->devtype_data->check_int(host);
+		if (done)
+			break;
+
+	} while (--max_retries);
+
+	if (!done) {
+		dev_dbg(host->dev, "timeout polling for completion\n");
+		ret = -ETIMEDOUT;
+	}
+
+	WARN_ONCE(ret < 0, "timeout! useirq=%d\n", useirq);
+
+	return ret;
+}
+
+static void send_cmd_v3(struct mxc_nand_host *host, uint16_t cmd, int useirq)
+{
+	/* fill command */
+	writel(cmd, NFC_V3_FLASH_CMD);
+
+	/* send out command */
+	writel(NFC_CMD, NFC_V3_LAUNCH);
+
+	/* Wait for operation to complete */
+	wait_op_done(host, useirq);
+}
+
+/* This function issues the specified command to the NAND device and
+ * waits for completion. */
+static void send_cmd_v1_v2(struct mxc_nand_host *host, uint16_t cmd, int useirq)
+{
+	dev_dbg(host->dev, "send_cmd(host, 0x%x, %d)\n", cmd, useirq);
+
+	writew(cmd, NFC_V1_V2_FLASH_CMD);
+	writew(NFC_CMD, NFC_V1_V2_CONFIG2);
+
+	if (host->devtype_data->irqpending_quirk && (cmd == NAND_CMD_RESET)) {
+		int max_retries = 100;
+		/* Reset completion is indicated by NFC_CONFIG2 */
+		/* being set to 0 */
+		while (max_retries-- > 0) {
+			if (readw(NFC_V1_V2_CONFIG2) == 0) {
+				break;
+			}
+			udelay(1);
+		}
+		if (max_retries < 0)
+			dev_dbg(host->dev, "%s: RESET failed\n", __func__);
+	} else {
+		/* Wait for operation to complete */
+		wait_op_done(host, useirq);
+	}
+}
+
+static void send_addr_v3(struct mxc_nand_host *host, uint16_t addr, int islast)
+{
+	/* fill address */
+	writel(addr, NFC_V3_FLASH_ADDR0);
+
+	/* send out address */
+	writel(NFC_ADDR, NFC_V3_LAUNCH);
+
+	wait_op_done(host, 0);
+}
+
+/* This function sends an address (or partial address) to the
+ * NAND device. The address is used to select the source/destination for
+ * a NAND command. */
+static void send_addr_v1_v2(struct mxc_nand_host *host, uint16_t addr, int islast)
+{
+	dev_dbg(host->dev, "send_addr(host, 0x%x %d)\n", addr, islast);
+
+	writew(addr, NFC_V1_V2_FLASH_ADDR);
+	writew(NFC_ADDR, NFC_V1_V2_CONFIG2);
+
+	/* Wait for operation to complete */
+	wait_op_done(host, islast);
+}
+
+static void send_page_v3(struct mtd_info *mtd, unsigned int ops)
+{
+	struct nand_chip *nand_chip = mtd_to_nand(mtd);
+	struct mxc_nand_host *host = nand_get_controller_data(nand_chip);
+	uint32_t tmp;
+
+	tmp = readl(NFC_V3_CONFIG1);
+	tmp &= ~(7 << 4);
+	writel(tmp, NFC_V3_CONFIG1);
+
+	/* transfer data from NFC ram to nand */
+	writel(ops, NFC_V3_LAUNCH);
+
+	wait_op_done(host, false);
+}
+
+static void send_page_v2(struct mtd_info *mtd, unsigned int ops)
+{
+	struct nand_chip *nand_chip = mtd_to_nand(mtd);
+	struct mxc_nand_host *host = nand_get_controller_data(nand_chip);
+
+	/* NANDFC buffer 0 is used for page read/write */
+	writew(host->active_cs << 4, NFC_V1_V2_BUF_ADDR);
+
+	writew(ops, NFC_V1_V2_CONFIG2);
+
+	/* Wait for operation to complete */
+	wait_op_done(host, true);
+}
+
+static void send_page_v1(struct mtd_info *mtd, unsigned int ops)
+{
+	struct nand_chip *nand_chip = mtd_to_nand(mtd);
+	struct mxc_nand_host *host = nand_get_controller_data(nand_chip);
+	int bufs, i;
+
+	if (mtd->writesize > 512)
+		bufs = 4;
+	else
+		bufs = 1;
+
+	for (i = 0; i < bufs; i++) {
+
+		/* NANDFC buffer 0 is used for page read/write */
+		writew((host->active_cs << 4) | i, NFC_V1_V2_BUF_ADDR);
+
+		writew(ops, NFC_V1_V2_CONFIG2);
+
+		/* Wait for operation to complete */
+		wait_op_done(host, true);
+	}
+}
+
+static void send_read_id_v3(struct mxc_nand_host *host)
+{
+	/* Read ID into main buffer */
+	writel(NFC_ID, NFC_V3_LAUNCH);
+
+	wait_op_done(host, true);
+
+	memcpy32_fromio(host->data_buf, host->main_area0, 16);
+}
+
+/* Request the NANDFC to perform a read of the NAND device ID. */
+static void send_read_id_v1_v2(struct mxc_nand_host *host)
+{
+	/* NANDFC buffer 0 is used for device ID output */
+	writew(host->active_cs << 4, NFC_V1_V2_BUF_ADDR);
+
+	writew(NFC_ID, NFC_V1_V2_CONFIG2);
+
+	/* Wait for operation to complete */
+	wait_op_done(host, true);
+
+	memcpy32_fromio(host->data_buf, host->main_area0, 16);
+}
+
+static uint16_t get_dev_status_v3(struct mxc_nand_host *host)
+{
+	writew(NFC_STATUS, NFC_V3_LAUNCH);
+	wait_op_done(host, true);
+
+	return readl(NFC_V3_CONFIG1) >> 16;
+}
+
+/* This function requests the NANDFC to perform a read of the
+ * NAND device status and returns the current status. */
+static uint16_t get_dev_status_v1_v2(struct mxc_nand_host *host)
+{
+	void __iomem *main_buf = host->main_area0;
+	uint32_t store;
+	uint16_t ret;
+
+	writew(host->active_cs << 4, NFC_V1_V2_BUF_ADDR);
+
+	/*
+	 * The device status is stored in main_area0. To
+	 * prevent corruption of the buffer save the value
+	 * and restore it afterwards.
+	 */
+	store = readl(main_buf);
+
+	writew(NFC_STATUS, NFC_V1_V2_CONFIG2);
+	wait_op_done(host, true);
+
+	ret = readw(main_buf);
+
+	writel(store, main_buf);
+
+	return ret;
+}
+
+static void mxc_nand_enable_hwecc_v1_v2(struct nand_chip *chip, bool enable)
+{
+	struct mxc_nand_host *host = nand_get_controller_data(chip);
+	uint16_t config1;
+
+	if (chip->ecc.engine_type != NAND_ECC_ENGINE_TYPE_ON_HOST)
+		return;
+
+	config1 = readw(NFC_V1_V2_CONFIG1);
+
+	if (enable)
+		config1 |= NFC_V1_V2_CONFIG1_ECC_EN;
+	else
+		config1 &= ~NFC_V1_V2_CONFIG1_ECC_EN;
+
+	writew(config1, NFC_V1_V2_CONFIG1);
+}
+
+static void mxc_nand_enable_hwecc_v3(struct nand_chip *chip, bool enable)
+{
+	struct mxc_nand_host *host = nand_get_controller_data(chip);
+	uint32_t config2;
+
+	if (chip->ecc.engine_type != NAND_ECC_ENGINE_TYPE_ON_HOST)
+		return;
+
+	config2 = readl(NFC_V3_CONFIG2);
+
+	if (enable)
+		config2 |= NFC_V3_CONFIG2_ECC_EN;
+	else
+		config2 &= ~NFC_V3_CONFIG2_ECC_EN;
+
+	writel(config2, NFC_V3_CONFIG2);
+}
+
+/* This functions is used by upper layer to checks if device is ready */
+static int mxc_nand_dev_ready(struct nand_chip *chip)
+{
+	/*
+	 * NFC handles R/B internally. Therefore, this function
+	 * always returns status as ready.
+	 */
+	return 1;
+}
+
+static int mxc_nand_read_page_v1(struct nand_chip *chip, void *buf, void *oob,
+				 bool ecc, int page)
+{
+	struct mtd_info *mtd = nand_to_mtd(chip);
+	struct mxc_nand_host *host = nand_get_controller_data(chip);
+	unsigned int bitflips_corrected = 0;
+	int no_subpages;
+	int i;
+
+	host->devtype_data->enable_hwecc(chip, ecc);
+
+	host->devtype_data->send_cmd(host, NAND_CMD_READ0, false);
+	mxc_do_addr_cycle(mtd, 0, page);
+
+	if (mtd->writesize > 512)
+		host->devtype_data->send_cmd(host, NAND_CMD_READSTART, true);
+
+	no_subpages = mtd->writesize >> 9;
+
+	for (i = 0; i < no_subpages; i++) {
+		uint16_t ecc_stats;
+
+		/* NANDFC buffer 0 is used for page read/write */
+		writew((host->active_cs << 4) | i, NFC_V1_V2_BUF_ADDR);
+
+		writew(NFC_OUTPUT, NFC_V1_V2_CONFIG2);
+
+		/* Wait for operation to complete */
+		wait_op_done(host, true);
+
+		ecc_stats = get_ecc_status_v1(host);
+
+		ecc_stats >>= 2;
+
+		if (buf && ecc) {
+			switch (ecc_stats & 0x3) {
+			case 0:
+			default:
+				break;
+			case 1:
+				mtd->ecc_stats.corrected++;
+				bitflips_corrected = 1;
+				break;
+			case 2:
+				mtd->ecc_stats.failed++;
+				break;
+			}
+		}
+	}
+
+	if (buf)
+		memcpy32_fromio(buf, host->main_area0, mtd->writesize);
+	if (oob)
+		copy_spare(mtd, true, oob);
+
+	return bitflips_corrected;
+}
+
+static int mxc_nand_read_page_v2_v3(struct nand_chip *chip, void *buf,
+				    void *oob, bool ecc, int page)
+{
+	struct mtd_info *mtd = nand_to_mtd(chip);
+	struct mxc_nand_host *host = nand_get_controller_data(chip);
+	unsigned int max_bitflips = 0;
+	u32 ecc_stat, err;
+	int no_subpages;
+	u8 ecc_bit_mask, err_limit;
+
+	host->devtype_data->enable_hwecc(chip, ecc);
+
+	host->devtype_data->send_cmd(host, NAND_CMD_READ0, false);
+	mxc_do_addr_cycle(mtd, 0, page);
+
+	if (mtd->writesize > 512)
+		host->devtype_data->send_cmd(host,
+				NAND_CMD_READSTART, true);
+
+	host->devtype_data->send_page(mtd, NFC_OUTPUT);
+
+	if (buf)
+		memcpy32_fromio(buf, host->main_area0, mtd->writesize);
+	if (oob)
+		copy_spare(mtd, true, oob);
+
+	ecc_bit_mask = (host->eccsize == 4) ? 0x7 : 0xf;
+	err_limit = (host->eccsize == 4) ? 0x4 : 0x8;
+
+	no_subpages = mtd->writesize >> 9;
+
+	ecc_stat = host->devtype_data->get_ecc_status(host);
+
+	do {
+		err = ecc_stat & ecc_bit_mask;
+		if (err > err_limit) {
+			mtd->ecc_stats.failed++;
+		} else {
+			mtd->ecc_stats.corrected += err;
+			max_bitflips = max_t(unsigned int, max_bitflips, err);
+		}
+
+		ecc_stat >>= 4;
+	} while (--no_subpages);
+
+	return max_bitflips;
+}
+
+static int mxc_nand_read_page(struct nand_chip *chip, uint8_t *buf,
+			      int oob_required, int page)
+{
+	struct mxc_nand_host *host = nand_get_controller_data(chip);
+	void *oob_buf;
+
+	if (oob_required)
+		oob_buf = chip->oob_poi;
+	else
+		oob_buf = NULL;
+
+	return host->devtype_data->read_page(chip, buf, oob_buf, 1, page);
+}
+
+static int mxc_nand_read_page_raw(struct nand_chip *chip, uint8_t *buf,
+				  int oob_required, int page)
+{
+	struct mxc_nand_host *host = nand_get_controller_data(chip);
+	void *oob_buf;
+
+	if (oob_required)
+		oob_buf = chip->oob_poi;
+	else
+		oob_buf = NULL;
+
+	return host->devtype_data->read_page(chip, buf, oob_buf, 0, page);
+}
+
+static int mxc_nand_read_oob(struct nand_chip *chip, int page)
+{
+	struct mxc_nand_host *host = nand_get_controller_data(chip);
+
+	return host->devtype_data->read_page(chip, NULL, chip->oob_poi, 0,
+					     page);
+}
+
+static int mxc_nand_write_page(struct nand_chip *chip, const uint8_t *buf,
+			       bool ecc, int page)
+{
+	struct mtd_info *mtd = nand_to_mtd(chip);
+	struct mxc_nand_host *host = nand_get_controller_data(chip);
+
+	host->devtype_data->enable_hwecc(chip, ecc);
+
+	host->devtype_data->send_cmd(host, NAND_CMD_SEQIN, false);
+	mxc_do_addr_cycle(mtd, 0, page);
+
+	memcpy32_toio(host->main_area0, buf, mtd->writesize);
+	copy_spare(mtd, false, chip->oob_poi);
+
+	host->devtype_data->send_page(mtd, NFC_INPUT);
+	host->devtype_data->send_cmd(host, NAND_CMD_PAGEPROG, true);
+	mxc_do_addr_cycle(mtd, 0, page);
+
+	return 0;
+}
+
+static int mxc_nand_write_page_ecc(struct nand_chip *chip, const uint8_t *buf,
+				   int oob_required, int page)
+{
+	return mxc_nand_write_page(chip, buf, true, page);
+}
+
+static int mxc_nand_write_page_raw(struct nand_chip *chip, const uint8_t *buf,
+				   int oob_required, int page)
+{
+	return mxc_nand_write_page(chip, buf, false, page);
+}
+
+static int mxc_nand_write_oob(struct nand_chip *chip, int page)
+{
+	struct mtd_info *mtd = nand_to_mtd(chip);
+	struct mxc_nand_host *host = nand_get_controller_data(chip);
+
+	memset(host->data_buf, 0xff, mtd->writesize);
+
+	return mxc_nand_write_page(chip, host->data_buf, false, page);
+}
+
+static u_char mxc_nand_read_byte(struct nand_chip *nand_chip)
+{
+	struct mxc_nand_host *host = nand_get_controller_data(nand_chip);
+	uint8_t ret;
+
+	/* Check for status request */
+	if (host->status_request)
+		return host->devtype_data->get_dev_status(host) & 0xFF;
+
+	if (nand_chip->options & NAND_BUSWIDTH_16) {
+		/* only take the lower byte of each word */
+		ret = *(uint16_t *)(host->data_buf + host->buf_start);
+
+		host->buf_start += 2;
+	} else {
+		ret = *(uint8_t *)(host->data_buf + host->buf_start);
+		host->buf_start++;
+	}
+
+	dev_dbg(host->dev, "%s: ret=0x%hhx (start=%u)\n", __func__, ret, host->buf_start);
+	return ret;
+}
+
+/* Write data of length len to buffer buf. The data to be
+ * written on NAND Flash is first copied to RAMbuffer. After the Data Input
+ * Operation by the NFC, the data is written to NAND Flash */
+static void mxc_nand_write_buf(struct nand_chip *nand_chip, const u_char *buf,
+			       int len)
+{
+	struct mtd_info *mtd = nand_to_mtd(nand_chip);
+	struct mxc_nand_host *host = nand_get_controller_data(nand_chip);
+	u16 col = host->buf_start;
+	int n = mtd->oobsize + mtd->writesize - col;
+
+	n = min(n, len);
+
+	memcpy(host->data_buf + col, buf, n);
+
+	host->buf_start += n;
+}
+
+/* Read the data buffer from the NAND Flash. To read the data from NAND
+ * Flash first the data output cycle is initiated by the NFC, which copies
+ * the data to RAMbuffer. This data of length len is then copied to buffer buf.
+ */
+static void mxc_nand_read_buf(struct nand_chip *nand_chip, u_char *buf,
+			      int len)
+{
+	struct mtd_info *mtd = nand_to_mtd(nand_chip);
+	struct mxc_nand_host *host = nand_get_controller_data(nand_chip);
+	u16 col = host->buf_start;
+	int n = mtd->oobsize + mtd->writesize - col;
+
+	n = min(n, len);
+
+	memcpy(buf, host->data_buf + col, n);
+
+	host->buf_start += n;
+}
+
+/* This function is used by upper layer for select and
+ * deselect of the NAND chip */
+static void mxc_nand_select_chip_v1_v3(struct nand_chip *nand_chip, int chip)
+{
+	struct mxc_nand_host *host = nand_get_controller_data(nand_chip);
+
+	if (chip == -1) {
+		/* Disable the NFC clock */
+		if (host->clk_act) {
+			clk_disable_unprepare(host->clk);
+			host->clk_act = 0;
+		}
+		return;
+	}
+
+	if (!host->clk_act) {
+		/* Enable the NFC clock */
+		clk_prepare_enable(host->clk);
+		host->clk_act = 1;
+	}
+}
+
+static void mxc_nand_select_chip_v2(struct nand_chip *nand_chip, int chip)
+{
+	struct mxc_nand_host *host = nand_get_controller_data(nand_chip);
+
+	if (chip == -1) {
+		/* Disable the NFC clock */
+		if (host->clk_act) {
+			clk_disable_unprepare(host->clk);
+			host->clk_act = 0;
+		}
+		return;
+	}
+
+	if (!host->clk_act) {
+		/* Enable the NFC clock */
+		clk_prepare_enable(host->clk);
+		host->clk_act = 1;
+	}
+
+	host->active_cs = chip;
+	writew(host->active_cs << 4, NFC_V1_V2_BUF_ADDR);
+}
+
+#define MXC_V1_ECCBYTES		5
+
+static int mxc_v1_ooblayout_ecc(struct mtd_info *mtd, int section,
+				struct mtd_oob_region *oobregion)
+{
+	struct nand_chip *nand_chip = mtd_to_nand(mtd);
+
+	if (section >= nand_chip->ecc.steps)
+		return -ERANGE;
+
+	oobregion->offset = (section * 16) + 6;
+	oobregion->length = MXC_V1_ECCBYTES;
+
+	return 0;
+}
+
+static int mxc_v1_ooblayout_free(struct mtd_info *mtd, int section,
+				 struct mtd_oob_region *oobregion)
+{
+	struct nand_chip *nand_chip = mtd_to_nand(mtd);
+
+	if (section > nand_chip->ecc.steps)
+		return -ERANGE;
+
+	if (!section) {
+		if (mtd->writesize <= 512) {
+			oobregion->offset = 0;
+			oobregion->length = 5;
+		} else {
+			oobregion->offset = 2;
+			oobregion->length = 4;
+		}
+	} else {
+		oobregion->offset = ((section - 1) * 16) + MXC_V1_ECCBYTES + 6;
+		if (section < nand_chip->ecc.steps)
+			oobregion->length = (section * 16) + 6 -
+					    oobregion->offset;
+		else
+			oobregion->length = mtd->oobsize - oobregion->offset;
+	}
+
+	return 0;
+}
+
+static const struct mtd_ooblayout_ops mxc_v1_ooblayout_ops = {
+	.ecc = mxc_v1_ooblayout_ecc,
+	.free = mxc_v1_ooblayout_free,
+};
+
+static int mxc_v2_ooblayout_ecc(struct mtd_info *mtd, int section,
+				struct mtd_oob_region *oobregion)
+{
+	struct nand_chip *nand_chip = mtd_to_nand(mtd);
+	int stepsize = nand_chip->ecc.bytes == 9 ? 16 : 26;
+
+	if (section >= nand_chip->ecc.steps)
+		return -ERANGE;
+
+	oobregion->offset = (section * stepsize) + 7;
+	oobregion->length = nand_chip->ecc.bytes;
+
+	return 0;
+}
+
+static int mxc_v2_ooblayout_free(struct mtd_info *mtd, int section,
+				 struct mtd_oob_region *oobregion)
+{
+	struct nand_chip *nand_chip = mtd_to_nand(mtd);
+	int stepsize = nand_chip->ecc.bytes == 9 ? 16 : 26;
+
+	if (section >= nand_chip->ecc.steps)
+		return -ERANGE;
+
+	if (!section) {
+		if (mtd->writesize <= 512) {
+			oobregion->offset = 0;
+			oobregion->length = 5;
+		} else {
+			oobregion->offset = 2;
+			oobregion->length = 4;
+		}
+	} else {
+		oobregion->offset = section * stepsize;
+		oobregion->length = 7;
+	}
+
+	return 0;
+}
+
+static const struct mtd_ooblayout_ops mxc_v2_ooblayout_ops = {
+	.ecc = mxc_v2_ooblayout_ecc,
+	.free = mxc_v2_ooblayout_free,
+};
+
+/*
+ * v2 and v3 type controllers can do 4bit or 8bit ecc depending
+ * on how much oob the nand chip has. For 8bit ecc we need at least
+ * 26 bytes of oob data per 512 byte block.
+ */
+static int get_eccsize(struct mtd_info *mtd)
+{
+	int oobbytes_per_512 = 0;
+
+	oobbytes_per_512 = mtd->oobsize * 512 / mtd->writesize;
+
+	if (oobbytes_per_512 < 26)
+		return 4;
+	else
+		return 8;
+}
+
+static void preset_v1(struct mtd_info *mtd)
+{
+	struct nand_chip *nand_chip = mtd_to_nand(mtd);
+	struct mxc_nand_host *host = nand_get_controller_data(nand_chip);
+	uint16_t config1 = 0;
+
+	if (nand_chip->ecc.engine_type == NAND_ECC_ENGINE_TYPE_ON_HOST &&
+	    mtd->writesize)
+		config1 |= NFC_V1_V2_CONFIG1_ECC_EN;
+
+	if (!host->devtype_data->irqpending_quirk)
+		config1 |= NFC_V1_V2_CONFIG1_INT_MSK;
+
+	host->eccsize = 1;
+
+	writew(config1, NFC_V1_V2_CONFIG1);
+	/* preset operation */
+
+	/* Unlock the internal RAM Buffer */
+	writew(0x2, NFC_V1_V2_CONFIG);
+
+	/* Blocks to be unlocked */
+	writew(0x0, NFC_V1_UNLOCKSTART_BLKADDR);
+	writew(0xffff, NFC_V1_UNLOCKEND_BLKADDR);
+
+	/* Unlock Block Command for given address range */
+	writew(0x4, NFC_V1_V2_WRPROT);
+}
+
+static int mxc_nand_v2_setup_interface(struct nand_chip *chip, int csline,
+				       const struct nand_interface_config *conf)
+{
+	struct mxc_nand_host *host = nand_get_controller_data(chip);
+	int tRC_min_ns, tRC_ps, ret;
+	unsigned long rate, rate_round;
+	const struct nand_sdr_timings *timings;
+	u16 config1;
+
+	timings = nand_get_sdr_timings(conf);
+	if (IS_ERR(timings))
+		return -ENOTSUPP;
+
+	config1 = readw(NFC_V1_V2_CONFIG1);
+
+	tRC_min_ns = timings->tRC_min / 1000;
+	rate = 1000000000 / tRC_min_ns;
+
+	/*
+	 * For tRC < 30ns we have to use EDO mode. In this case the controller
+	 * does one access per clock cycle. Otherwise the controller does one
+	 * access in two clock cycles, thus we have to double the rate to the
+	 * controller.
+	 */
+	if (tRC_min_ns < 30) {
+		rate_round = clk_round_rate(host->clk, rate);
+		config1 |= NFC_V2_CONFIG1_ONE_CYCLE;
+		tRC_ps = 1000000000 / (rate_round / 1000);
+	} else {
+		rate *= 2;
+		rate_round = clk_round_rate(host->clk, rate);
+		config1 &= ~NFC_V2_CONFIG1_ONE_CYCLE;
+		tRC_ps = 1000000000 / (rate_round / 1000 / 2);
+	}
+
+	/*
+	 * The timing values compared against are from the i.MX25 Automotive
+	 * datasheet, Table 50. NFC Timing Parameters
+	 */
+	if (timings->tCLS_min > tRC_ps - 1000 ||
+	    timings->tCLH_min > tRC_ps - 2000 ||
+	    timings->tCS_min > tRC_ps - 1000 ||
+	    timings->tCH_min > tRC_ps - 2000 ||
+	    timings->tWP_min > tRC_ps - 1500 ||
+	    timings->tALS_min > tRC_ps ||
+	    timings->tALH_min > tRC_ps - 3000 ||
+	    timings->tDS_min > tRC_ps ||
+	    timings->tDH_min > tRC_ps - 5000 ||
+	    timings->tWC_min > 2 * tRC_ps ||
+	    timings->tWH_min > tRC_ps - 2500 ||
+	    timings->tRR_min > 6 * tRC_ps ||
+	    timings->tRP_min > 3 * tRC_ps / 2 ||
+	    timings->tRC_min > 2 * tRC_ps ||
+	    timings->tREH_min > (tRC_ps / 2) - 2500) {
+		dev_dbg(host->dev, "Timing out of bounds\n");
+		return -EINVAL;
+	}
+
+	if (csline == NAND_DATA_IFACE_CHECK_ONLY)
+		return 0;
+
+	ret = clk_set_rate(host->clk, rate);
+	if (ret)
+		return ret;
+
+	writew(config1, NFC_V1_V2_CONFIG1);
+
+	dev_dbg(host->dev, "Setting rate to %ldHz, %s mode\n", rate_round,
+		config1 & NFC_V2_CONFIG1_ONE_CYCLE ? "One cycle (EDO)" :
+		"normal");
+
+	return 0;
+}
+
+static void preset_v2(struct mtd_info *mtd)
+{
+	struct nand_chip *nand_chip = mtd_to_nand(mtd);
+	struct mxc_nand_host *host = nand_get_controller_data(nand_chip);
+	uint16_t config1 = 0;
+
+	config1 |= NFC_V2_CONFIG1_FP_INT;
+
+	if (!host->devtype_data->irqpending_quirk)
+		config1 |= NFC_V1_V2_CONFIG1_INT_MSK;
+
+	if (mtd->writesize) {
+		uint16_t pages_per_block = mtd->erasesize / mtd->writesize;
+
+		if (nand_chip->ecc.engine_type == NAND_ECC_ENGINE_TYPE_ON_HOST)
+			config1 |= NFC_V1_V2_CONFIG1_ECC_EN;
+
+		host->eccsize = get_eccsize(mtd);
+		if (host->eccsize == 4)
+			config1 |= NFC_V2_CONFIG1_ECC_MODE_4;
+
+		config1 |= NFC_V2_CONFIG1_PPB(ffs(pages_per_block) - 6);
+	} else {
+		host->eccsize = 1;
+	}
+
+	writew(config1, NFC_V1_V2_CONFIG1);
+	/* preset operation */
+
+	/* spare area size in 16-bit half-words */
+	writew(mtd->oobsize / 2, NFC_V21_RSLTSPARE_AREA);
+
+	/* Unlock the internal RAM Buffer */
+	writew(0x2, NFC_V1_V2_CONFIG);
+
+	/* Blocks to be unlocked */
+	writew(0x0, NFC_V21_UNLOCKSTART_BLKADDR0);
+	writew(0x0, NFC_V21_UNLOCKSTART_BLKADDR1);
+	writew(0x0, NFC_V21_UNLOCKSTART_BLKADDR2);
+	writew(0x0, NFC_V21_UNLOCKSTART_BLKADDR3);
+	writew(0xffff, NFC_V21_UNLOCKEND_BLKADDR0);
+	writew(0xffff, NFC_V21_UNLOCKEND_BLKADDR1);
+	writew(0xffff, NFC_V21_UNLOCKEND_BLKADDR2);
+	writew(0xffff, NFC_V21_UNLOCKEND_BLKADDR3);
+
+	/* Unlock Block Command for given address range */
+	writew(0x4, NFC_V1_V2_WRPROT);
+}
+
+static void preset_v3(struct mtd_info *mtd)
+{
+	struct nand_chip *chip = mtd_to_nand(mtd);
+	struct mxc_nand_host *host = nand_get_controller_data(chip);
+	uint32_t config2, config3;
+	int i, addr_phases;
+
+	writel(NFC_V3_CONFIG1_RBA(0), NFC_V3_CONFIG1);
+	writel(NFC_V3_IPC_CREQ, NFC_V3_IPC);
+
+	/* Unlock the internal RAM Buffer */
+	writel(NFC_V3_WRPROT_BLS_UNLOCK | NFC_V3_WRPROT_UNLOCK,
+			NFC_V3_WRPROT);
+
+	/* Blocks to be unlocked */
+	for (i = 0; i < NAND_MAX_CHIPS; i++)
+		writel(0xffff << 16, NFC_V3_WRPROT_UNLOCK_BLK_ADD0 + (i << 2));
+
+	writel(0, NFC_V3_IPC);
+
+	config2 = NFC_V3_CONFIG2_ONE_CYCLE |
+		NFC_V3_CONFIG2_2CMD_PHASES |
+		NFC_V3_CONFIG2_SPAS(mtd->oobsize >> 1) |
+		NFC_V3_CONFIG2_ST_CMD(0x70) |
+		NFC_V3_CONFIG2_INT_MSK |
+		NFC_V3_CONFIG2_NUM_ADDR_PHASE0;
+
+	addr_phases = fls(chip->pagemask) >> 3;
+
+	if (mtd->writesize == 2048) {
+		config2 |= NFC_V3_CONFIG2_PS_2048;
+		config2 |= NFC_V3_CONFIG2_NUM_ADDR_PHASE1(addr_phases);
+	} else if (mtd->writesize == 4096) {
+		config2 |= NFC_V3_CONFIG2_PS_4096;
+		config2 |= NFC_V3_CONFIG2_NUM_ADDR_PHASE1(addr_phases);
+	} else {
+		config2 |= NFC_V3_CONFIG2_PS_512;
+		config2 |= NFC_V3_CONFIG2_NUM_ADDR_PHASE1(addr_phases - 1);
+	}
+
+	if (mtd->writesize) {
+		if (chip->ecc.engine_type == NAND_ECC_ENGINE_TYPE_ON_HOST)
+			config2 |= NFC_V3_CONFIG2_ECC_EN;
+
+		config2 |= NFC_V3_CONFIG2_PPB(
+				ffs(mtd->erasesize / mtd->writesize) - 6,
+				host->devtype_data->ppb_shift);
+		host->eccsize = get_eccsize(mtd);
+		if (host->eccsize == 8)
+			config2 |= NFC_V3_CONFIG2_ECC_MODE_8;
+	}
+
+	writel(config2, NFC_V3_CONFIG2);
+
+	config3 = NFC_V3_CONFIG3_NUM_OF_DEVICES(0) |
+			NFC_V3_CONFIG3_NO_SDMA |
+			NFC_V3_CONFIG3_RBB_MODE |
+			NFC_V3_CONFIG3_SBB(6) | /* Reset default */
+			NFC_V3_CONFIG3_ADD_OP(0);
+
+	if (!(chip->options & NAND_BUSWIDTH_16))
+		config3 |= NFC_V3_CONFIG3_FW8;
+
+	writel(config3, NFC_V3_CONFIG3);
+
+	writel(0, NFC_V3_DELAY_LINE);
+}
+
+/* Used by the upper layer to write command to NAND Flash for
+ * different operations to be carried out on NAND Flash */
+static void mxc_nand_command(struct nand_chip *nand_chip, unsigned command,
+			     int column, int page_addr)
+{
+	struct mtd_info *mtd = nand_to_mtd(nand_chip);
+	struct mxc_nand_host *host = nand_get_controller_data(nand_chip);
+
+	dev_dbg(host->dev, "mxc_nand_command (cmd = 0x%x, col = 0x%x, page = 0x%x)\n",
+	      command, column, page_addr);
+
+	/* Reset command state information */
+	host->status_request = false;
+
+	/* Command pre-processing step */
+	switch (command) {
+	case NAND_CMD_RESET:
+		host->devtype_data->preset(mtd);
+		host->devtype_data->send_cmd(host, command, false);
+		break;
+
+	case NAND_CMD_STATUS:
+		host->buf_start = 0;
+		host->status_request = true;
+
+		host->devtype_data->send_cmd(host, command, true);
+		WARN_ONCE(column != -1 || page_addr != -1,
+			  "Unexpected column/row value (cmd=%u, col=%d, row=%d)\n",
+			  command, column, page_addr);
+		mxc_do_addr_cycle(mtd, column, page_addr);
+		break;
+
+	case NAND_CMD_READID:
+		host->devtype_data->send_cmd(host, command, true);
+		mxc_do_addr_cycle(mtd, column, page_addr);
+		host->devtype_data->send_read_id(host);
+		host->buf_start = 0;
+		break;
+
+	case NAND_CMD_ERASE1:
+	case NAND_CMD_ERASE2:
+		host->devtype_data->send_cmd(host, command, false);
+		WARN_ONCE(column != -1,
+			  "Unexpected column value (cmd=%u, col=%d)\n",
+			  command, column);
+		mxc_do_addr_cycle(mtd, column, page_addr);
+
+		break;
+	case NAND_CMD_PARAM:
+		host->devtype_data->send_cmd(host, command, false);
+		mxc_do_addr_cycle(mtd, column, page_addr);
+		host->devtype_data->send_page(mtd, NFC_OUTPUT);
+		memcpy32_fromio(host->data_buf, host->main_area0, 512);
+		host->buf_start = 0;
+		break;
+	default:
+		WARN_ONCE(1, "Unimplemented command (cmd=%u)\n",
+			  command);
+		break;
+	}
+}
+
+static int mxc_nand_set_features(struct nand_chip *chip, int addr,
+				 u8 *subfeature_param)
+{
+	struct mtd_info *mtd = nand_to_mtd(chip);
+	struct mxc_nand_host *host = nand_get_controller_data(chip);
+	int i;
+
+	host->buf_start = 0;
+
+	for (i = 0; i < ONFI_SUBFEATURE_PARAM_LEN; ++i)
+		chip->legacy.write_byte(chip, subfeature_param[i]);
+
+	memcpy32_toio(host->main_area0, host->data_buf, mtd->writesize);
+	host->devtype_data->send_cmd(host, NAND_CMD_SET_FEATURES, false);
+	mxc_do_addr_cycle(mtd, addr, -1);
+	host->devtype_data->send_page(mtd, NFC_INPUT);
+
+	return 0;
+}
+
+static int mxc_nand_get_features(struct nand_chip *chip, int addr,
+				 u8 *subfeature_param)
+{
+	struct mtd_info *mtd = nand_to_mtd(chip);
+	struct mxc_nand_host *host = nand_get_controller_data(chip);
+	int i;
+
+	host->devtype_data->send_cmd(host, NAND_CMD_GET_FEATURES, false);
+	mxc_do_addr_cycle(mtd, addr, -1);
+	host->devtype_data->send_page(mtd, NFC_OUTPUT);
+	memcpy32_fromio(host->data_buf, host->main_area0, 512);
+	host->buf_start = 0;
+
+	for (i = 0; i < ONFI_SUBFEATURE_PARAM_LEN; ++i)
+		*subfeature_param++ = chip->legacy.read_byte(chip);
+
+	return 0;
+}
+
+/*
+ * The generic flash bbt descriptors overlap with our ecc
+ * hardware, so define some i.MX specific ones.
+ */
+static uint8_t bbt_pattern[] = { 'B', 'b', 't', '0' };
+static uint8_t mirror_pattern[] = { '1', 't', 'b', 'B' };
+
+static struct nand_bbt_descr bbt_main_descr = {
+	.options = NAND_BBT_LASTBLOCK | NAND_BBT_CREATE | NAND_BBT_WRITE
+	    | NAND_BBT_2BIT | NAND_BBT_VERSION | NAND_BBT_PERCHIP,
+	.offs = 0,
+	.len = 4,
+	.veroffs = 4,
+	.maxblocks = 4,
+	.pattern = bbt_pattern,
+};
+
+static struct nand_bbt_descr bbt_mirror_descr = {
+	.options = NAND_BBT_LASTBLOCK | NAND_BBT_CREATE | NAND_BBT_WRITE
+	    | NAND_BBT_2BIT | NAND_BBT_VERSION | NAND_BBT_PERCHIP,
+	.offs = 0,
+	.len = 4,
+	.veroffs = 4,
+	.maxblocks = 4,
+	.pattern = mirror_pattern,
+};
+
+/* v1 + irqpending_quirk: i.MX21 */
+static const struct mxc_nand_devtype_data imx21_nand_devtype_data = {
+	.preset = preset_v1,
+	.read_page = mxc_nand_read_page_v1,
+	.send_cmd = send_cmd_v1_v2,
+	.send_addr = send_addr_v1_v2,
+	.send_page = send_page_v1,
+	.send_read_id = send_read_id_v1_v2,
+	.get_dev_status = get_dev_status_v1_v2,
+	.check_int = check_int_v1_v2,
+	.irq_control = irq_control_v1_v2,
+	.get_ecc_status = get_ecc_status_v1,
+	.ooblayout = &mxc_v1_ooblayout_ops,
+	.select_chip = mxc_nand_select_chip_v1_v3,
+	.enable_hwecc = mxc_nand_enable_hwecc_v1_v2,
+	.irqpending_quirk = 1,
+	.needs_ip = 0,
+	.regs_offset = 0xe00,
+	.spare0_offset = 0x800,
+	.spare_len = 16,
+	.eccbytes = 3,
+	.eccsize = 1,
+};
+
+/* v1 + !irqpending_quirk: i.MX27, i.MX31 */
+static const struct mxc_nand_devtype_data imx27_nand_devtype_data = {
+	.preset = preset_v1,
+	.read_page = mxc_nand_read_page_v1,
+	.send_cmd = send_cmd_v1_v2,
+	.send_addr = send_addr_v1_v2,
+	.send_page = send_page_v1,
+	.send_read_id = send_read_id_v1_v2,
+	.get_dev_status = get_dev_status_v1_v2,
+	.check_int = check_int_v1_v2,
+	.irq_control = irq_control_v1_v2,
+	.get_ecc_status = get_ecc_status_v1,
+	.ooblayout = &mxc_v1_ooblayout_ops,
+	.select_chip = mxc_nand_select_chip_v1_v3,
+	.enable_hwecc = mxc_nand_enable_hwecc_v1_v2,
+	.irqpending_quirk = 0,
+	.needs_ip = 0,
+	.regs_offset = 0xe00,
+	.spare0_offset = 0x800,
+	.axi_offset = 0,
+	.spare_len = 16,
+	.eccbytes = 3,
+	.eccsize = 1,
+};
+
+/* v21: i.MX25, i.MX35 */
+static const struct mxc_nand_devtype_data imx25_nand_devtype_data = {
+	.preset = preset_v2,
+	.read_page = mxc_nand_read_page_v2_v3,
+	.send_cmd = send_cmd_v1_v2,
+	.send_addr = send_addr_v1_v2,
+	.send_page = send_page_v2,
+	.send_read_id = send_read_id_v1_v2,
+	.get_dev_status = get_dev_status_v1_v2,
+	.check_int = check_int_v1_v2,
+	.irq_control = irq_control_v1_v2,
+	.get_ecc_status = get_ecc_status_v2,
+	.ooblayout = &mxc_v2_ooblayout_ops,
+	.select_chip = mxc_nand_select_chip_v2,
+	.setup_interface = mxc_nand_v2_setup_interface,
+	.enable_hwecc = mxc_nand_enable_hwecc_v1_v2,
+	.irqpending_quirk = 0,
+	.needs_ip = 0,
+	.regs_offset = 0x1e00,
+	.spare0_offset = 0x1000,
+	.axi_offset = 0,
+	.spare_len = 64,
+	.eccbytes = 9,
+	.eccsize = 0,
+};
+
+/* v3.2a: i.MX51 */
+static const struct mxc_nand_devtype_data imx51_nand_devtype_data = {
+	.preset = preset_v3,
+	.read_page = mxc_nand_read_page_v2_v3,
+	.send_cmd = send_cmd_v3,
+	.send_addr = send_addr_v3,
+	.send_page = send_page_v3,
+	.send_read_id = send_read_id_v3,
+	.get_dev_status = get_dev_status_v3,
+	.check_int = check_int_v3,
+	.irq_control = irq_control_v3,
+	.get_ecc_status = get_ecc_status_v3,
+	.ooblayout = &mxc_v2_ooblayout_ops,
+	.select_chip = mxc_nand_select_chip_v1_v3,
+	.enable_hwecc = mxc_nand_enable_hwecc_v3,
+	.irqpending_quirk = 0,
+	.needs_ip = 1,
+	.regs_offset = 0,
+	.spare0_offset = 0x1000,
+	.axi_offset = 0x1e00,
+	.spare_len = 64,
+	.eccbytes = 0,
+	.eccsize = 0,
+	.ppb_shift = 7,
+};
+
+/* v3.2b: i.MX53 */
+static const struct mxc_nand_devtype_data imx53_nand_devtype_data = {
+	.preset = preset_v3,
+	.read_page = mxc_nand_read_page_v2_v3,
+	.send_cmd = send_cmd_v3,
+	.send_addr = send_addr_v3,
+	.send_page = send_page_v3,
+	.send_read_id = send_read_id_v3,
+	.get_dev_status = get_dev_status_v3,
+	.check_int = check_int_v3,
+	.irq_control = irq_control_v3,
+	.get_ecc_status = get_ecc_status_v3,
+	.ooblayout = &mxc_v2_ooblayout_ops,
+	.select_chip = mxc_nand_select_chip_v1_v3,
+	.enable_hwecc = mxc_nand_enable_hwecc_v3,
+	.irqpending_quirk = 0,
+	.needs_ip = 1,
+	.regs_offset = 0,
+	.spare0_offset = 0x1000,
+	.axi_offset = 0x1e00,
+	.spare_len = 64,
+	.eccbytes = 0,
+	.eccsize = 0,
+	.ppb_shift = 8,
+};
+
+static inline int is_imx21_nfc(struct mxc_nand_host *host)
+{
+	return host->devtype_data == &imx21_nand_devtype_data;
+}
+
+static inline int is_imx27_nfc(struct mxc_nand_host *host)
+{
+	return host->devtype_data == &imx27_nand_devtype_data;
+}
+
+static inline int is_imx25_nfc(struct mxc_nand_host *host)
+{
+	return host->devtype_data == &imx25_nand_devtype_data;
+}
+
+static const struct of_device_id mxcnd_dt_ids[] = {
+	{ .compatible = "fsl,imx21-nand", .data = &imx21_nand_devtype_data, },
+	{ .compatible = "fsl,imx27-nand", .data = &imx27_nand_devtype_data, },
+	{ .compatible = "fsl,imx25-nand", .data = &imx25_nand_devtype_data, },
+	{ .compatible = "fsl,imx51-nand", .data = &imx51_nand_devtype_data, },
+	{ .compatible = "fsl,imx53-nand", .data = &imx53_nand_devtype_data, },
+	{ /* sentinel */ }
+};
+MODULE_DEVICE_TABLE(of, mxcnd_dt_ids);
+
+static int mxcnd_attach_chip(struct nand_chip *chip)
+{
+	struct mtd_info *mtd = nand_to_mtd(chip);
+	struct mxc_nand_host *host = nand_get_controller_data(chip);
+	struct device *dev = mtd->dev.parent;
+
+	chip->ecc.bytes = host->devtype_data->eccbytes;
+	host->eccsize = host->devtype_data->eccsize;
+	chip->ecc.size = 512;
+	mtd_set_ooblayout(mtd, host->devtype_data->ooblayout);
+
+	switch (chip->ecc.engine_type) {
+	case NAND_ECC_ENGINE_TYPE_ON_HOST:
+		chip->ecc.read_page = mxc_nand_read_page;
+		chip->ecc.read_page_raw = mxc_nand_read_page_raw;
+		chip->ecc.read_oob = mxc_nand_read_oob;
+		chip->ecc.write_page = mxc_nand_write_page_ecc;
+		chip->ecc.write_page_raw = mxc_nand_write_page_raw;
+		chip->ecc.write_oob = mxc_nand_write_oob;
+		break;
+
+	case NAND_ECC_ENGINE_TYPE_SOFT:
+		break;
+
+	default:
+		return -EINVAL;
+	}
+
+	if (chip->bbt_options & NAND_BBT_USE_FLASH) {
+		chip->bbt_td = &bbt_main_descr;
+		chip->bbt_md = &bbt_mirror_descr;
+	}
+
+	/* Allocate the right size buffer now */
+	devm_kfree(dev, (void *)host->data_buf);
+	host->data_buf = devm_kzalloc(dev, mtd->writesize + mtd->oobsize,
+				      GFP_KERNEL);
+	if (!host->data_buf)
+		return -ENOMEM;
+
+	/* Call preset again, with correct writesize chip time */
+	host->devtype_data->preset(mtd);
+
+	if (!chip->ecc.bytes) {
+		if (host->eccsize == 8)
+			chip->ecc.bytes = 18;
+		else if (host->eccsize == 4)
+			chip->ecc.bytes = 9;
+	}
+
+	/*
+	 * Experimentation shows that i.MX NFC can only handle up to 218 oob
+	 * bytes. Limit used_oobsize to 218 so as to not confuse copy_spare()
+	 * into copying invalid data to/from the spare IO buffer, as this
+	 * might cause ECC data corruption when doing sub-page write to a
+	 * partially written page.
+	 */
+	host->used_oobsize = min(mtd->oobsize, 218U);
+
+	if (chip->ecc.engine_type == NAND_ECC_ENGINE_TYPE_ON_HOST) {
+		if (is_imx21_nfc(host) || is_imx27_nfc(host))
+			chip->ecc.strength = 1;
+		else
+			chip->ecc.strength = (host->eccsize == 4) ? 4 : 8;
+	}
+
+	return 0;
+}
+
+static int mxcnd_setup_interface(struct nand_chip *chip, int chipnr,
+				 const struct nand_interface_config *conf)
+{
+	struct mxc_nand_host *host = nand_get_controller_data(chip);
+
+	return host->devtype_data->setup_interface(chip, chipnr, conf);
+}
+
+static const struct nand_controller_ops mxcnd_controller_ops = {
+	.attach_chip = mxcnd_attach_chip,
+	.setup_interface = mxcnd_setup_interface,
+};
+
+/*
+ * The i.MX NAND controller has the problem that it handles the
+ * data in chunks of 512 bytes. It doesn't treat 2k NAND chips as
+ * 2048 byte data + 64 OOB, but instead:
+ *
+ * 512b data + 16b OOB +
+ * 512b data + 16b OOB +
+ * 512b data + 16b OOB +
+ * 512b data + 16b OOB
+ *
+ * This means that the factory provided bad block marker ends up
+ * in the page data at offset 2000 instead of in the OOB data.
+ *
+ * To preserve the factory bad block information we take the following
+ * strategy:
+ *
+ * - If the NAND driver detects that no flash BBT is present on 2k NAND
+ *   chips it will not create one because it would do so based on the wrong
+ *   BBM position
+ * - This command is used to create a flash BBT then.
+ *
+ * From this point on we can forget about the BBMs and rely completely
+ * on the flash BBT.
+ *
+ */
+static int checkbad(struct nand_chip *chip, loff_t ofs)
+{
+	struct mtd_info *mtd = nand_to_mtd(chip);
+	int ret;
+	uint8_t buf[mtd->writesize + mtd->oobsize];
+	struct mtd_oob_ops ops;
+
+	ops.mode = MTD_OPS_RAW;
+	ops.ooboffs = 0;
+	ops.datbuf = buf;
+	ops.len = mtd->writesize;
+	ops.oobbuf = buf + mtd->writesize;
+	ops.ooblen = mtd->oobsize;
+
+	ret = mtd_read_oob(mtd, ofs, &ops);
+	if (ret < 0)
+		return ret;
+
+	if (buf[2000] != 0xff)
+		return 1;
+
+	return 0;
+}
+
+static int imxnd_create_bbt(struct nand_chip *chip)
+{
+	struct mtd_info *mtd = nand_to_mtd(chip);
+	int len, i, numblocks, ret;
+	loff_t from = 0;
+	uint8_t *bbt;
+
+	len = mtd->size >> (chip->bbt_erase_shift + 2);
+
+	/* Allocate memory (2bit per block) and clear the memory bad block table */
+	bbt = kzalloc(len, GFP_KERNEL);
+	if (!bbt)
+		return -ENOMEM;
+
+	numblocks = mtd->size >> (chip->bbt_erase_shift - 1);
+
+	for (i = 0; i < numblocks;) {
+		ret = checkbad(chip, from);
+		if (ret < 0)
+			goto out;
+
+		if (ret) {
+			bbt[i >> 3] |= 0x03 << (i & 0x6);
+			dev_info(mtd->dev.parent, "Bad eraseblock %d at 0x%08x\n",
+				 i >> 1, (unsigned int)from);
+		}
+
+		i += 2;
+		from += (1 << chip->bbt_erase_shift);
+	}
+
+	chip->bbt_td->options |= NAND_BBT_CREATE;
+	chip->bbt_md->options |= NAND_BBT_CREATE;
+
+	free(chip->bbt);
+	chip->bbt = bbt;
+
+	ret = nand_update_bbt(chip, 0);
+	if (ret)
+		return ret;
+
+	ret = nand_create_bbt(chip);
+	if (ret)
+		return ret;
+
+	ret = 0;
+out:
+	free(bbt);
+
+	return ret;
+}
+
+static int mxcnd_probe(struct device *dev)
+{
+	struct nand_chip *this;
+	struct mtd_info *mtd;
+	struct mxc_nand_host *host;
+	struct resource *iores;
+	struct mxc_nand_devtype_data* devtype;
+	int err = 0;
+
+	err = dev_get_drvdata(dev, (const void **)&devtype);
+	if (err)
+		return err;
+
+	/* Allocate memory for MTD device structure and private data */
+	host = devm_kzalloc(dev, sizeof(struct mxc_nand_host),
+			GFP_KERNEL);
+	if (!host)
+		return -ENOMEM;
+
+	/* allocate a temporary buffer for the nand_scan_ident() */
+	host->data_buf = devm_kzalloc(dev, PAGE_SIZE, GFP_KERNEL);
+	if (!host->data_buf)
+		return -ENOMEM;
+
+	host->dev = dev;
+	/* structures must be linked */
+	this = &host->nand;
+	mtd = nand_to_mtd(this);
+	mtd->dev.parent = dev;
+	mtd->name = DRIVER_NAME;
+
+	/* 50 us command delay time */
+	this->legacy.chip_delay = 5;
+
+	nand_set_controller_data(this, host);
+	nand_set_flash_node(this, dev->of_node);
+	this->legacy.dev_ready = mxc_nand_dev_ready;
+	this->legacy.cmdfunc = mxc_nand_command;
+	this->legacy.read_byte = mxc_nand_read_byte;
+	this->legacy.write_buf = mxc_nand_write_buf;
+	this->legacy.read_buf = mxc_nand_read_buf;
+	this->legacy.set_features = mxc_nand_set_features;
+	this->legacy.get_features = mxc_nand_get_features;
+
+	host->clk = clk_get(dev, NULL);
+	if (IS_ERR(host->clk))
+		return PTR_ERR(host->clk);
+
+	host->devtype_data = devtype;
+
+	if (!host->devtype_data->setup_interface)
+		this->options |= NAND_KEEP_TIMINGS;
+
+	if (host->devtype_data->needs_ip) {
+		iores = dev_request_mem_resource(dev, 0);
+		if (IS_ERR(iores))
+			return PTR_ERR(iores);
+		host->regs_ip = IOMEM(iores->start);
+
+		iores = dev_request_mem_resource(dev, 1);
+		if (IS_ERR(iores))
+			return PTR_ERR(iores);
+		host->base = IOMEM(iores->start);
+	} else {
+		iores = dev_request_mem_resource(dev, 0);
+		if (IS_ERR(iores))
+			return PTR_ERR(iores);
+		host->base = IOMEM(iores->start);
+	}
+
+	if (IS_ERR(host->base))
+		return PTR_ERR(host->base);
+
+	host->main_area0 = host->base;
+
+	if (host->devtype_data->regs_offset)
+		host->regs = host->base + host->devtype_data->regs_offset;
+	host->spare0 = host->base + host->devtype_data->spare0_offset;
+	if (host->devtype_data->axi_offset)
+		host->regs_axi = host->base + host->devtype_data->axi_offset;
+
+	this->legacy.select_chip = host->devtype_data->select_chip;
+
+	init_completion(&host->op_completion);
+
+	err = clk_prepare_enable(host->clk);
+	if (err)
+		return err;
+	host->clk_act = 1;
+
+	/* Scan the NAND device */
+	this->legacy.dummy_controller.ops = &mxcnd_controller_ops;
+	err = nand_scan(this, is_imx25_nfc(host) ? 4 : 1);
+	if (err)
+		goto escan;
+
+	if ((this->bbt_options & NAND_BBT_USE_FLASH) &&
+	    this->bbt_td->pages[0] == -1 && this->bbt_md->pages[0] == -1) {
+		dev_info(dev, "no BBT found. creating one\n");
+		err = imxnd_create_bbt(this);
+		if (err)
+			dev_warn(dev, "Failed to create bbt: %s\n",
+				 strerror(-err));
+		err = 0;
+	}
+
+	/* Register the partitions */
+	err = add_mtd_nand_device(mtd, "nand");
+	if (err)
+		goto cleanup_nand;
+
+	dev->priv = host;
+
+	return 0;
+
+cleanup_nand:
+	nand_cleanup(this);
+escan:
+	if (host->clk_act)
+		clk_disable_unprepare(host->clk);
+
+	return err;
+}
+
+static struct driver mxcnd_driver = {
+	.name  = DRIVER_NAME,
+	.probe = mxcnd_probe,
+	.of_compatible = DRV_OF_COMPAT(mxcnd_dt_ids),
+};
+device_platform_driver(mxcnd_driver);
+
+MODULE_AUTHOR("Freescale Semiconductor, Inc.");
+MODULE_DESCRIPTION("MXC NAND MTD driver");
+MODULE_LICENSE("GPL");
diff --git a/drivers/mtd/nand/raw/nand_imx.c b/drivers/mtd/nand/raw/nand_imx.c
deleted file mode 100644
index 42e864a618..0000000000
--- a/drivers/mtd/nand/raw/nand_imx.c
+++ /dev/null
@@ -1,1483 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-or-later
-/*
- * Copyright 2004-2007 Freescale Semiconductor, Inc. All Rights Reserved.
- * Copyright 2008 Sascha Hauer, Pengutronix <s.hauer@pengutronix.de>
- */
-
-/*
- * MX21 Hardware contains a bug which causes HW ECC to fail for two
- * consecutive read pages containing 1bit Errors (See MX21 Chip Erata,
- * Erratum 16). Use software ECC for this chip.
- */
-
-#include <common.h>
-#include <driver.h>
-#include <malloc.h>
-#include <init.h>
-#include <linux/mtd/mtd.h>
-#include <linux/mtd/nand.h>
-#include <linux/mtd/rawnand.h>
-#include <linux/clk.h>
-#include <mach/imx/generic.h>
-#include <mach/imx/imx-nand.h>
-#include <io.h>
-#include <of_mtd.h>
-#include <errno.h>
-
-struct imx_nand_host {
-	struct nand_chip	nand;
-	struct mtd_partition	*parts;
-	struct device		*dev;
-
-	void			*spare0;
-	void			*main_area0;
-
-	void __iomem		*base;
-	void __iomem		*regs;
-	void __iomem		*regs_axi;
-	void __iomem		*regs_ip;
-	int			status_request;
-	struct clk		*clk;
-
-	int			pagesize_2k;
-	uint8_t			*data_buf;
-	unsigned int		buf_start;
-	int			spare_len;
-	int			eccsize;
-	int			eccstatus_v1;
-
-	int			hw_ecc;
-	int			data_width;
-	int			flash_bbt;
-
-	void			(*preset)(struct nand_chip *);
-	void			(*send_cmd)(struct imx_nand_host *, uint16_t);
-	void			(*send_addr)(struct imx_nand_host *, uint16_t);
-	void			(*send_page)(struct imx_nand_host *, unsigned int);
-	void			(*send_read_id)(struct imx_nand_host *);
-	void			(*send_read_param)(struct imx_nand_host *);
-	uint16_t		(*get_dev_status)(struct imx_nand_host *);
-	int			(*check_int)(struct imx_nand_host *);
-	int			(*correct)(struct nand_chip *);
-	void			(*enable_hwecc)(struct nand_chip *, bool enable);
-};
-
-/*
- * OOB placement block for use with hardware ecc generation
- */
-static struct nand_ecclayout nandv1_hw_eccoob_smallpage = {
-	.eccbytes = 5,
-	.eccpos = {6, 7, 8, 9, 10},
-	.oobfree = {{0, 5}, {12, 4}}
-};
-
-static struct nand_ecclayout nandv1_hw_eccoob_largepage = {
-	.eccbytes = 20,
-	.eccpos = {6, 7, 8, 9, 10, 22, 23, 24, 25, 26,
-		   38, 39, 40, 41, 42, 54, 55, 56, 57, 58},
-	.oobfree = {{2, 4}, {11, 10}, {27, 10}, {43, 10}, {59, 5}, }
-};
-
-/* OOB description for 512 byte pages with 16 byte OOB */
-static struct nand_ecclayout nandv2_hw_eccoob_smallpage = {
-	.eccbytes = 1 * 9,
-	.eccpos = {
-		7,  8,  9, 10, 11, 12, 13, 14, 15
-	},
-	.oobfree = {
-		{.offset = 0, .length = 5}
-	}
-};
-
-/* OOB description for 2048 byte pages with 64 byte OOB */
-static struct nand_ecclayout nandv2_hw_eccoob_largepage = {
-	.eccbytes = 4 * 9,
-	.eccpos = {
-		 7,  8,  9, 10, 11, 12, 13, 14, 15,
-		23, 24, 25, 26, 27, 28, 29, 30, 31,
-		39, 40, 41, 42, 43, 44, 45, 46, 47,
-		55, 56, 57, 58, 59, 60, 61, 62, 63
-	},
-	.oobfree = {
-		{.offset = 2, .length = 4},
-		{.offset = 16, .length = 7},
-		{.offset = 32, .length = 7},
-		{.offset = 48, .length = 7}
-	}
-};
-
-/* OOB description for 4096 byte pages with 128 byte OOB */
-static struct nand_ecclayout nandv2_hw_eccoob_4k = {
-	.eccbytes = 8 * 9,
-	.eccpos = {
-		7,  8,  9, 10, 11, 12, 13, 14, 15,
-		23, 24, 25, 26, 27, 28, 29, 30, 31,
-		39, 40, 41, 42, 43, 44, 45, 46, 47,
-		55, 56, 57, 58, 59, 60, 61, 62, 63,
-		71, 72, 73, 74, 75, 76, 77, 78, 79,
-		87, 88, 89, 90, 91, 92, 93, 94, 95,
-		103, 104, 105, 106, 107, 108, 109, 110, 111,
-		119, 120, 121, 122, 123, 124, 125, 126, 127,
-	},
-	.oobfree = {
-		{.offset = 2, .length = 4},
-		{.offset = 16, .length = 7},
-		{.offset = 32, .length = 7},
-		{.offset = 48, .length = 7},
-		{.offset = 64, .length = 7},
-		{.offset = 80, .length = 7},
-		{.offset = 96, .length = 7},
-		{.offset = 112, .length = 7},
-	}
-};
-
-static void memcpy32(void *trg, const void *src, int size)
-{
-	int i;
-	unsigned int *t = trg;
-	unsigned const int *s = src;
-
-#ifdef CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS
-	if (!((unsigned long)trg & 0x3) && !((unsigned long)src & 0x3))
-		memcpy(trg, src, size);
-	else
-#endif
-	for (i = 0; i < (size >> 2); i++)
-		*t++ = *s++;
-}
-
-static int check_int_v3(struct imx_nand_host *host)
-{
-	uint32_t tmp;
-
-	tmp = readl(NFC_V3_IPC);
-	if (!(tmp & NFC_V3_IPC_INT))
-		return 0;
-
-	tmp &= ~NFC_V3_IPC_INT;
-	writel(tmp, NFC_V3_IPC);
-
-	return 1;
-}
-
-static int check_int_v1_v2(struct imx_nand_host *host)
-{
-	uint32_t tmp;
-
-	tmp = readw(host->regs + NFC_V1_V2_CONFIG2);
-	if (!(tmp & NFC_V1_V2_CONFIG2_INT))
-		return 0;
-
-	writew(tmp & ~NFC_V1_V2_CONFIG2_INT, host->regs + NFC_V1_V2_CONFIG2);
-
-	return 1;
-}
-
-static void wait_op_done(struct imx_nand_host *host)
-{
-	int i;
-
-	/* This is a timeout of roughly 15ms on my system. We
-	 * need about 2us, but be generous. Don't use udelay
-	 * here as we might be here from nand booting.
-	 */
-	for (i = 0; i < 100000; i++) {
-		if (host->check_int(host))
-			return;
-	}
-}
-
-/*
- * This function issues the specified command to the NAND device and
- * waits for completion.
- *
- * @param       cmd     command for NAND Flash
- */
-static void send_cmd_v3(struct imx_nand_host *host, uint16_t cmd)
-{
-	/* fill command */
-	writel(cmd, NFC_V3_FLASH_CMD);
-
-	/* send out command */
-	writel(NFC_CMD, NFC_V3_LAUNCH);
-
-	/* Wait for operation to complete */
-	wait_op_done(host);
-}
-
-static void send_cmd_v1_v2(struct imx_nand_host *host, u16 cmd)
-{
-	writew(cmd, host->regs + NFC_V1_V2_FLASH_CMD);
-	writew(NFC_CMD, host->regs + NFC_V1_V2_CONFIG2);
-
-	if (cpu_is_mx21() && (cmd == NAND_CMD_RESET)) {
-		/* Reset completion is indicated by NFC_CONFIG2 */
-		/* being set to 0 */
-		int i;
-		for (i = 0; i < 100000; i++) {
-			if (readw(host->regs + NFC_V1_V2_CONFIG2) == 0) {
-				break;
-			}
-		}
-	} else
-		/* Wait for operation to complete */
-		wait_op_done(host);
-}
-
-/*
- * This function sends an address (or partial address) to the
- * NAND device.  The address is used to select the source/destination for
- * a NAND command.
- *
- * @param       addr    address to be written to NFC.
- * @param       islast  True if this is the last address cycle for command
- */
-static void send_addr_v3(struct imx_nand_host *host, uint16_t addr)
-{
-	/* fill address */
-	writel(addr, NFC_V3_FLASH_ADDR0);
-
-	/* send out address */
-	writel(NFC_ADDR, NFC_V3_LAUNCH);
-
-	wait_op_done(host);
-}
-
-static void send_addr_v1_v2(struct imx_nand_host *host, u16 addr)
-{
-	writew(addr, host->regs + NFC_V1_V2_FLASH_ADDR);
-	writew(NFC_ADDR, host->regs + NFC_V1_V2_CONFIG2);
-
-	/* Wait for operation to complete */
-	wait_op_done(host);
-}
-
-/*
- * This function requests the NANDFC to initate the transfer
- * of data currently in the NANDFC RAM buffer to the NAND device.
- *
- * @param	buf_id	      Specify Internal RAM Buffer number (0-3)
- * @param       spare_only    set true if only the spare area is transferred
- */
-static void send_page_v3(struct imx_nand_host *host, unsigned int ops)
-{
-	uint32_t tmp;
-
-	tmp = readl(NFC_V3_CONFIG1);
-	tmp &= ~(7 << 4);
-	writel(tmp, NFC_V3_CONFIG1);
-
-	/* transfer data from NFC ram to nand */
-	writel(ops, NFC_V3_LAUNCH);
-
-	wait_op_done(host);
-}
-
-static void send_page_v1_v2(struct imx_nand_host *host,
-		unsigned int ops)
-{
-	int bufs, i;
-
-	host->eccstatus_v1 = 0;
-
-	if (nfc_is_v1() && host->pagesize_2k)
-		bufs = 4;
-	else
-		bufs = 1;
-
-	for (i = 0; i < bufs; i++) {
-		u16 status;
-		int errors;
-
-		/* NANDFC buffer 0 is used for page read/write */
-		writew(i, host->regs + NFC_V1_V2_BUF_ADDR);
-
-		writew(ops, host->regs + NFC_V1_V2_CONFIG2);
-
-		/* Wait for operation to complete */
-		wait_op_done(host);
-
-		status = readw(host->regs + NFC_V1_ECC_STATUS_RESULT);
-		errors = max(status & 0x3, status >> 2);
-
-		if (errors == 1 && host->eccstatus_v1 >= 0)
-			host->eccstatus_v1++;
-		if (errors == 2)
-			host->eccstatus_v1 = -EBADMSG;
-	}
-}
-
-/*
- * This function requests the NANDFC to perform a read of the
- * NAND device ID.
- */
-static void send_read_id_v3(struct imx_nand_host *host)
-{
-	/* Read ID into main buffer */
-	writel(NFC_ID, NFC_V3_LAUNCH);
-
-	wait_op_done(host);
-
-	/*
-	 * NFC_ID results in reading 6 bytes or words (depending on data width),
-	 * so copying 3 32-bit values is just fine.
-	 */
-	memcpy(host->data_buf, host->main_area0, 12);
-}
-
-static void send_read_param_v3(struct imx_nand_host *host)
-{
-	/* Read ID into main buffer */
-	writel(NFC_OUTPUT, NFC_V3_LAUNCH);
-
-	wait_op_done(host);
-
-	memcpy(host->data_buf, host->main_area0, 1024);
-}
-
-static void send_read_id_v1_v2(struct imx_nand_host *host)
-{
-	/* NANDFC buffer 0 is used for device ID output */
-	writew(0x0, host->regs + NFC_V1_V2_BUF_ADDR);
-
-	writew(NFC_ID, host->regs + NFC_V1_V2_CONFIG2);
-
-	/* Wait for operation to complete */
-	wait_op_done(host);
-
-	/*
-	 * NFC_ID results in reading 6 bytes or words (depending on data width),
-	 * so copying 3 32-bit values is just fine.
-	 */
-	memcpy32(host->data_buf, host->main_area0, 12);
-}
-
-static void send_read_param_v1_v2(struct imx_nand_host *host)
-{
-	u32 backup = readw(host->regs + NFC_V1_V2_CONFIG1);
-
-	/* Temporary disable ECC to be able to read param page */
-	writew(backup & ~NFC_V1_V2_CONFIG1_ECC_EN, host->regs + NFC_V1_V2_CONFIG1);
-
-	/* NANDFC buffer 0 is used for param output */
-	writew(0x0, host->regs + NFC_V1_V2_BUF_ADDR);
-
-	writew(NFC_OUTPUT, host->regs + NFC_V1_V2_CONFIG2);
-
-	/* Wait for operation to complete */
-	wait_op_done(host);
-
-	memcpy32(host->data_buf, host->main_area0, 1024);
-
-	/* Restore original CONFIG1 value */
-	writew(backup, host->regs + NFC_V1_V2_CONFIG1);
-}
-/*
- * This function requests the NANDFC to perform a read of the
- * NAND device status and returns the current status.
- *
- * @return  device status
- */
-static uint16_t get_dev_status_v3(struct imx_nand_host *host)
-{
-	writew(NFC_STATUS, NFC_V3_LAUNCH);
-	wait_op_done(host);
-
-	return readl(NFC_V3_CONFIG1) >> 16;
-}
-
-static u16 get_dev_status_v1_v2(struct imx_nand_host *host)
-{
-	void *main_buf = host->main_area0;
-	u32 store;
-	u16 ret;
-
-	writew(0x0, host->regs + NFC_V1_V2_BUF_ADDR);
-
-	/*
-	 * The device status is stored in main_area0. To
-	 * prevent corruption of the buffer save the value
-	 * and restore it afterwards.
-	 */
-	store = readl(main_buf);
-
-	writew(NFC_STATUS, host->regs + NFC_V1_V2_CONFIG2);
-
-	/* Wait for operation to complete */
-	wait_op_done(host);
-
-	/* Status is placed in first word of main buffer */
-	/* get status, then recovery area 1 data */
-	ret = readw(main_buf);
-
-	writel(store, main_buf);
-
-	return ret;
-}
-
-/*
- * This function is used by upper layer to checks if device is ready
- *
- * @param       mtd     MTD structure for the NAND Flash
- *
- * @return  0 if device is busy else 1
- */
-static int imx_nand_dev_ready(struct nand_chip *chip)
-{
-	/*
-	 * NFC handles R/B internally.Therefore,this function
-	 * always returns status as ready.
-	 */
-	return 1;
-}
-
-static void imx_nand_enable_hwecc_v1_v2(struct nand_chip *chip, bool enable)
-{
-	struct imx_nand_host *host = chip->priv;
-	uint16_t config1;
-
-	config1 = readw(host->regs + NFC_V1_V2_CONFIG1);
-
-	if (enable)
-		config1 |= NFC_V1_V2_CONFIG1_ECC_EN;
-	else
-		config1 &= ~NFC_V1_V2_CONFIG1_ECC_EN;
-
-	writew(config1, host->regs + NFC_V1_V2_CONFIG1);
-
-}
-
-static void imx_nand_enable_hwecc_v3(struct nand_chip *chip, bool enable)
-{
-	struct imx_nand_host *host = chip->priv;
-	uint32_t config2;
-
-	config2 = readl(NFC_V3_CONFIG2);
-
-	if (enable)
-		config2 |= NFC_V3_CONFIG2_ECC_EN;
-	else
-		config2 &= ~NFC_V3_CONFIG2_ECC_EN;
-
-	writel(config2, NFC_V3_CONFIG2);
-}
-
-static int imx_nand_correct_data_v1(struct nand_chip *chip)
-{
-	struct mtd_info *mtd = nand_to_mtd(chip);
-	struct imx_nand_host *host = chip->priv;
-
-	if (host->eccstatus_v1 < 0)
-		return host->eccstatus_v1;
-
-	mtd->ecc_stats.corrected += host->eccstatus_v1;
-
-	if (host->eccstatus_v1 > 0)
-		return 1;
-	else
-		return 0;
-}
-
-static int imx_nand_correct_data_v2_v3(struct nand_chip *chip)
-{
-	struct mtd_info *mtd = nand_to_mtd(chip);
-	struct imx_nand_host *host = chip->priv;
-	u32 ecc_stat, err;
-	int no_subpages;
-	u8 ecc_bit_mask, err_limit, max_bitflips = 0;
-
-	ecc_bit_mask = (host->eccsize == 4) ? 0x7 : 0xf;
-	err_limit = (host->eccsize == 4) ? 0x4 : 0x8;
-
-	no_subpages = mtd->writesize >> 9;
-
-	if (nfc_is_v21())
-		ecc_stat = readl(host->regs + NFC_V2_ECC_STATUS_RESULT1);
-	else
-		ecc_stat = readl(NFC_V3_ECC_STATUS_RESULT);
-
-	do {
-		err = ecc_stat & ecc_bit_mask;
-		if (err > err_limit)
-			return -EBADMSG;
-		ecc_stat >>= 4;
-		max_bitflips = max_t(unsigned int, max_bitflips, err);
-		mtd->ecc_stats.corrected += err;
-	} while (--no_subpages);
-
-	return max_bitflips;
-}
-
-static int imx_nand_calculate_ecc(struct nand_chip *chip, const u_char * dat,
-				  u_char * ecc_code)
-{
-	return 0;
-}
-
-/*
- * This function reads byte from the NAND Flash
- *
- * @param       mtd     MTD structure for the NAND Flash
- *
- * @return    data read from the NAND Flash
- */
-static u_char imx_nand_read_byte(struct nand_chip *chip)
-{
-	struct imx_nand_host *host = chip->priv;
-	u_char ret;
-
-	/* Check for status request */
-	if (host->status_request)
-		return host->get_dev_status(host) & 0xFF;
-
-	if (chip->options & NAND_BUSWIDTH_16) {
-		/* only take the lower byte of each word */
-		BUG_ON(host->buf_start & 1);
-		ret = *(uint16_t *)(host->data_buf + host->buf_start);
-
-		host->buf_start += 2;
-	} else {
-		ret = *(uint8_t *)(host->data_buf + host->buf_start);
-		host->buf_start++;
-	}
-
-	return ret;
-}
-
-/*
-  * This function reads word from the NAND Flash
-  *
-  * @param       mtd     MTD structure for the NAND Flash
-  *
-  * @return    data read from the NAND Flash
-  */
-static u16 imx_nand_read_word(struct nand_chip *chip)
-{
-	struct imx_nand_host *host = chip->priv;
-	uint16_t ret;
-
-	ret = *(uint16_t *)(host->data_buf + host->buf_start);
-	host->buf_start += 2;
-
-	return ret;
-}
-
-/*
- * This function writes data of length \b len to buffer \b buf. The data to be
- * written on NAND Flash is first copied to RAMbuffer. After the Data Input
- * Operation by the NFC, the data is written to NAND Flash
- *
- * @param       mtd     MTD structure for the NAND Flash
- * @param       buf     data to be written to NAND Flash
- * @param       len     number of bytes to be written
- */
-static void imx_nand_write_buf(struct nand_chip *chip,
-			       const u_char *buf, int len)
-{
-	struct mtd_info *mtd = nand_to_mtd(chip);
-	struct imx_nand_host *host = chip->priv;
-	u16 col = host->buf_start;
-	int n = mtd->oobsize + mtd->writesize - col;
-
-	n = min(n, len);
-	memcpy(host->data_buf + col, buf, n);
-
-	host->buf_start += n;
-}
-
-/*
- * This function is used to read the data buffer from the NAND Flash. To
- * read the data from NAND Flash first the data output cycle is initiated by
- * the NFC, which copies the data to RAMbuffer. This data of length \b len is
- * then copied to buffer \b buf.
- *
- * @param       mtd     MTD structure for the NAND Flash
- * @param       buf     data to be read from NAND Flash
- * @param       len     number of bytes to be read
- */
-static void imx_nand_read_buf(struct nand_chip *chip, u_char * buf, int len)
-{
-	struct mtd_info *mtd = nand_to_mtd(chip);
-	struct imx_nand_host *host = chip->priv;
-	u16 col = host->buf_start;
-	int n = mtd->oobsize + mtd->writesize - col;
-
-	n = min(n, len);
-
-	/* handle the read param special case */
-	if ((mtd->writesize == 0) && (len != 0))
-		n = len;
-
-	memcpy(buf, host->data_buf + col, n);
-
-	host->buf_start += n;
-}
-
-/*
- * Function to transfer data to/from spare area.
- */
-static void copy_spare(struct nand_chip *chip, int bfrom, void *buf)
-{
-	struct mtd_info *mtd = nand_to_mtd(chip);
-	struct imx_nand_host *host = chip->priv;
-	u16 i, j;
-	u16 n = mtd->writesize >> 9;
-	u8 *d = buf;
-	u8 *s = host->spare0;
-	u16 t = host->spare_len;
-
-	j = (mtd->oobsize / n >> 1) << 1;
-
-	if (bfrom) {
-		for (i = 0; i < n - 1; i++)
-			memcpy32(d + i * j, s + i * t, j);
-
-		/* the last section */
-		memcpy32(d + i * j, s + i * t, mtd->oobsize - i * j);
-	} else {
-		for (i = 0; i < n - 1; i++)
-			memcpy32(&s[i * t], &d[i * j], j);
-
-		/* the last section */
-		memcpy32(&s[i * t], &d[i * j], mtd->oobsize - i * j);
-	}
-}
-
-/*
- * This function is used by upper layer for select and deselect of the NAND
- * chip
- *
- * @param       mtd     MTD structure for the NAND Flash
- * @param       chip    val indicating select or deselect
- */
-static void imx_nand_select_chip(struct nand_chip *_chip, int chip)
-{
-}
-
-static void mxc_do_addr_cycle(struct nand_chip *chip, int column, int page_addr)
-{
-	struct mtd_info *mtd = nand_to_mtd(chip);
-	struct imx_nand_host *host = chip->priv;
-
-	/*
-	 * Write out column address, if necessary
-	 */
-	if (column != -1) {
-		/*
-		 * MXC NANDFC can only perform full page+spare or
-		 * spare-only read/write.  When the upper layers
-		 * layers perform a read/write buf operation,
-		 * we will used the saved column adress to index into
-		 * the full page.
-		 *
-		 * The colum address must be sent to the flash in
-		 * order to get the ONFI header (0x20)
-		 */
-		host->send_addr(host, column);
-		if (host->pagesize_2k)
-			/* another col addr cycle for 2k page */
-			host->send_addr(host, 0);
-	}
-
-	/*
-	 * Write out page address, if necessary
-	 */
-	if (page_addr != -1) {
-		host->send_addr(host, (page_addr & 0xff));	/* paddr_0 - p_addr_7 */
-
-		if (host->pagesize_2k) {
-			host->send_addr(host, (page_addr >> 8) & 0xFF);
-			if (mtd->size >= 0x10000000) {
-				host->send_addr(host, (page_addr >> 16) & 0xff);
-			}
-		} else {
-			/* One more address cycle for higher density devices */
-			if (mtd->size >= 0x4000000) {
-				/* paddr_8 - paddr_15 */
-				host->send_addr(host, (page_addr >> 8) & 0xff);
-				host->send_addr(host, (page_addr >> 16) & 0xff);
-			} else
-				/* paddr_8 - paddr_15 */
-				host->send_addr(host, (page_addr >> 8) & 0xff);
-		}
-	}
-}
-
-/*
- * v2 and v3 type controllers can do 4bit or 8bit ecc depending
- * on how much oob the nand chip has. For 8bit ecc we need at least
- * 26 bytes of oob data per 512 byte block.
- */
-static int get_eccsize(struct mtd_info *mtd)
-{
-	int oobbytes_per_512 = 0;
-
-	oobbytes_per_512 = mtd->oobsize * 512 / mtd->writesize;
-
-	if (oobbytes_per_512 < 26)
-		return 4;
-	else
-		return 8;
-}
-
-static void preset_v1(struct nand_chip *chip)
-{
-	struct imx_nand_host *host = chip->priv;
-	uint16_t config1 = 0;
-
-	host->eccsize = 1;
-
-	writew(config1, host->regs + NFC_V1_V2_CONFIG1);
-	/* preset operation */
-
-	/* Unlock the internal RAM Buffer */
-	writew(0x2, host->regs + NFC_V1_V2_CONFIG);
-
-	/* Blocks to be unlocked */
-	writew(0x0, host->regs + NFC_V1_UNLOCKSTART_BLKADDR);
-	writew(0x4000, host->regs + NFC_V1_UNLOCKEND_BLKADDR);
-
-	/* Unlock Block Command for given address range */
-	writew(0x4, host->regs + NFC_V1_V2_WRPROT);
-}
-
-static void preset_v2(struct nand_chip *chip)
-{
-	struct mtd_info *mtd = nand_to_mtd(chip);
-	struct imx_nand_host *host = chip->priv;
-	uint16_t config1 = 0;
-	int mode;
-
-	mode = onfi_get_async_timing_mode(chip);
-	if (mode != ONFI_TIMING_MODE_UNKNOWN && !IS_ERR(host->clk)) {
-		const struct nand_sdr_timings *timings;
-
-		mode = fls(mode) - 1;
-		if (mode < 0)
-			mode = 0;
-
-		timings = onfi_async_timing_mode_to_sdr_timings(mode);
-		if (!IS_ERR(timings)) {
-			unsigned long rate;
-			int tRC_min_ns = timings->tRC_min / 1000;
-
-			rate = 1000000000 / tRC_min_ns;
-			if (tRC_min_ns < 30)
-				/* If tRC is smaller than 30ns we have to use EDO timing */
-				config1 |= NFC_V1_V2_CONFIG1_ONE_CYCLE;
-			else
-				/* Otherwise we have two clock cycles per access */
-				rate *= 2;
-
-			clk_set_rate(host->clk, rate);
-		}
-	}
-
-	config1 |= NFC_V2_CONFIG1_FP_INT;
-
-	if (mtd->writesize) {
-		uint16_t pages_per_block = mtd->erasesize / mtd->writesize;
-
-		host->eccsize = get_eccsize(mtd);
-		if (host->eccsize == 4)
-			config1 |= NFC_V2_CONFIG1_ECC_MODE_4;
-
-		config1 |= NFC_V2_CONFIG1_PPB(ffs(pages_per_block) - 6);
-	} else {
-		host->eccsize = 1;
-	}
-
-	writew(config1, host->regs + NFC_V1_V2_CONFIG1);
-	/* preset operation */
-
-	/* Unlock the internal RAM Buffer */
-	writew(0x2, host->regs + NFC_V1_V2_CONFIG);
-
-	/* Blocks to be unlocked */
-	writew(0x0, host->regs + NFC_V21_UNLOCKSTART_BLKADDR);
-	writew(0xffff, host->regs + NFC_V21_UNLOCKEND_BLKADDR);
-
-	/* Unlock Block Command for given address range */
-	writew(0x4, host->regs + NFC_V1_V2_WRPROT);
-}
-
-static void preset_v3(struct nand_chip *chip)
-{
-	struct mtd_info *mtd = nand_to_mtd(chip);
-	struct imx_nand_host *host = chip->priv;
-	uint32_t config2, config3;
-	int i, addr_phases;
-
-	writel(NFC_V3_CONFIG1_RBA(0), NFC_V3_CONFIG1);
-	writel(NFC_V3_IPC_CREQ, NFC_V3_IPC);
-
-	/* Unlock the internal RAM Buffer */
-	writel(NFC_V3_WRPROT_BLS_UNLOCK | NFC_V3_WRPROT_UNLOCK,
-			NFC_V3_WRPROT);
-
-	/* Blocks to be unlocked */
-	for (i = 0; i < NAND_MAX_CHIPS; i++)
-		writel(0x0 | (0xffff << 16),
-				NFC_V3_WRPROT_UNLOCK_BLK_ADD0 + (i << 2));
-
-	writel(0, NFC_V3_IPC);
-
-	/* if the flash has a 224 oob, the NFC must be configured to 218 */
-	config2 = NFC_V3_CONFIG2_ONE_CYCLE |
-		NFC_V3_CONFIG2_2CMD_PHASES |
-		NFC_V3_CONFIG2_SPAS(((mtd->oobsize > 218) ?
-			218 : mtd->oobsize) >> 1) |
-		NFC_V3_CONFIG2_ST_CMD(0x70) |
-		NFC_V3_CONFIG2_NUM_ADDR_PHASE0;
-
-	addr_phases = fls(chip->pagemask) >> 3;
-
-	if (mtd->writesize == 2048) {
-		config2 |= NFC_V3_CONFIG2_PS_2048;
-		config2 |= NFC_V3_CONFIG2_NUM_ADDR_PHASE1(addr_phases);
-	} else if (mtd->writesize == 4096) {
-		config2 |= NFC_V3_CONFIG2_PS_4096;
-		config2 |= NFC_V3_CONFIG2_NUM_ADDR_PHASE1(addr_phases);
-	} else {
-		config2 |= NFC_V3_CONFIG2_PS_512;
-		config2 |= NFC_V3_CONFIG2_NUM_ADDR_PHASE1(addr_phases - 1);
-	}
-
-	if (mtd->writesize) {
-		if (cpu_is_mx51())
-			config2 |= NFC_V3_MX51_CONFIG2_PPB(
-					ffs(mtd->erasesize / mtd->writesize) - 6);
-		else
-			config2 |= NFC_V3_MX53_CONFIG2_PPB(
-					ffs(mtd->erasesize / mtd->writesize) - 6);
-		host->eccsize = get_eccsize(mtd);
-		if (host->eccsize == 8)
-			config2 |= NFC_V3_CONFIG2_ECC_MODE_8;
-	}
-
-	writel(config2, NFC_V3_CONFIG2);
-
-	config3 = NFC_V3_CONFIG3_NUM_OF_DEVICES(0) |
-			NFC_V3_CONFIG3_NO_SDMA |
-			NFC_V3_CONFIG3_RBB_MODE |
-			NFC_V3_CONFIG3_SBB(6) | /* Reset default */
-			NFC_V3_CONFIG3_ADD_OP(0);
-
-	if (!(chip->options & NAND_BUSWIDTH_16))
-		config3 |= NFC_V3_CONFIG3_FW8;
-
-	writel(config3, NFC_V3_CONFIG3);
-
-	writel(0, NFC_V3_DELAY_LINE);
-}
-
-static int imx_nand_write_page(struct nand_chip *chip,
-		const uint8_t *buf, bool ecc, int page)
-{
-	struct mtd_info *mtd = nand_to_mtd(chip);
-	struct imx_nand_host *host = chip->priv;
-	int status;
-
-	host->enable_hwecc(chip, ecc);
-
-	chip->legacy.cmdfunc(chip, NAND_CMD_SEQIN, 0x00, page);
-
-	memcpy32(host->main_area0, buf, mtd->writesize);
-	copy_spare(chip, 0, chip->oob_poi);
-
-	host->send_page(host, NFC_INPUT);
-	chip->legacy.cmdfunc(chip, NAND_CMD_PAGEPROG, -1, -1);
-	status = chip->legacy.waitfunc(chip);
-
-	if (status & NAND_STATUS_FAIL)
-		return -EIO;
-
-	return 0;
-}
-
-static int imx_nand_write_page_ecc(struct nand_chip *chip, const uint8_t *buf,
-				   int oob_required, int page)
-{
-	return imx_nand_write_page(chip, buf, true, page);
-}
-
-static int imx_nand_write_page_raw(struct nand_chip *chip, const uint8_t *buf,
-				   int oob_required, int page)
-{
-	return imx_nand_write_page(chip, buf, false, page);
-}
-
-static void imx_nand_do_read_page(struct nand_chip *chip, uint8_t *buf,
-				  int oob_required, int page)
-{
-	struct mtd_info *mtd = nand_to_mtd(chip);
-	struct imx_nand_host *host = chip->priv;
-
-	nand_read_page_op(chip, page, 0, NULL, 0);
-
-	host->send_page(host, NFC_OUTPUT);
-
-	memcpy32(buf, host->main_area0, mtd->writesize);
-
-	if (oob_required)
-		copy_spare(chip, 1, chip->oob_poi);
-}
-
-static int imx_nand_read_page(struct nand_chip *chip, uint8_t *buf,
-			      int oob_required, int page)
-{
-	struct imx_nand_host *host = chip->priv;
-
-	host->enable_hwecc(chip, true);
-
-	imx_nand_do_read_page(chip, buf, oob_required, page);
-
-	return host->correct(chip);
-}
-
-static int imx_nand_read_page_raw(struct nand_chip *chip, uint8_t *buf,
-				  int oob_required, int page)
-{
-	struct imx_nand_host *host = chip->priv;
-
-	host->enable_hwecc(chip, false);
-
-	imx_nand_do_read_page(chip, buf, oob_required, page);
-
-	return 0;
-}
-
-/*
- * This function is used by the upper layer to write command to NAND Flash for
- * different operations to be carried out on NAND Flash
- *
- * @param       mtd             MTD structure for the NAND Flash
- * @param       command         command for NAND Flash
- * @param       column          column offset for the page read
- * @param       page_addr       page to be read from NAND Flash
- */
-static void imx_nand_command(struct nand_chip *chip, unsigned command,
-			     int column, int page_addr)
-{
-	struct mtd_info *mtd = nand_to_mtd(chip);
-	struct imx_nand_host *host = chip->priv;
-
-	dev_dbg(host->dev,
-	      "imx_nand_command (cmd = 0x%x, col = 0x%x, page = 0x%x)\n",
-	      command, column, page_addr);
-
-	/*
-	 * Reset command state information
-	 */
-	host->status_request = 0;
-
-	/*
-	 * Command pre-processing step
-	 */
-	switch (command) {
-	case NAND_CMD_RESET:
-		host->preset(chip);
-		host->send_cmd(host, command);
-		break;
-
-	case NAND_CMD_STATUS:
-		host->buf_start = 0;
-		host->status_request = 1;
-		host->send_cmd(host, command);
-		mxc_do_addr_cycle(chip, column, page_addr);
-		break;
-
-	case NAND_CMD_READ0:
-	case NAND_CMD_READOOB:
-		if (command == NAND_CMD_READ0)
-			host->buf_start = column;
-		else
-			host->buf_start = column + mtd->writesize;
-
-		host->send_cmd(host, NAND_CMD_READ0);
-		mxc_do_addr_cycle(chip, column, page_addr);
-
-		if (host->pagesize_2k)
-			/* send read confirm command */
-			host->send_cmd(host, NAND_CMD_READSTART);
-
-		/*
-		 * After the core issued READOOB the result is read using
-		 * .read_buf, so we have to make sure the data is actually
-		 * there.
-		 */
-		if (command == NAND_CMD_READOOB) {
-			host->send_page(host, NFC_OUTPUT);
-			copy_spare(chip, 1, host->data_buf + mtd->writesize);
-		}
-
-		break;
-
-	case NAND_CMD_SEQIN:
-		if (column >= mtd->writesize) {
-			if (host->pagesize_2k) {
-				/**
-				  * FIXME: before send SEQIN command for write
-				  * OOB, we must read one page out. For K9F1GXX
-				  * has no READ1 command to set current HW
-				  * pointer to spare area, we must write the
-				  * whole page including OOB together.
-				  */
-				/* call ourself to read a page */
-				imx_nand_command(chip, NAND_CMD_READ0, 0,
-						 page_addr);
-			}
-			host->buf_start = column;
-
-			/* Set program pointer to spare region */
-			if (!host->pagesize_2k)
-				host->send_cmd(host, NAND_CMD_READOOB);
-		} else {
-			host->buf_start = column;
-
-			/* Set program pointer to page start */
-			if (!host->pagesize_2k)
-				host->send_cmd(host, NAND_CMD_READ0);
-		}
-		host->send_cmd(host, command);
-		mxc_do_addr_cycle(chip, column, page_addr);
-
-		break;
-
-	case NAND_CMD_PAGEPROG:
-		host->send_cmd(host, command);
-		mxc_do_addr_cycle(chip, column, page_addr);
-		break;
-
-	case NAND_CMD_READID:
-		host->send_cmd(host, command);
-		mxc_do_addr_cycle(chip, column, page_addr);
-		host->send_read_id(host);
-		host->buf_start = 0;
-		break;
-
-	case NAND_CMD_PARAM:
-		host->send_cmd(host, command);
-		mxc_do_addr_cycle(chip, column, page_addr);
-		host->send_read_param(host);
-		host->buf_start = 0;
-		break;
-
-	case NAND_CMD_ERASE1:
-	case NAND_CMD_ERASE2:
-		host->send_cmd(host, command);
-		mxc_do_addr_cycle(chip, column, page_addr);
-		break;
-	}
-}
-
-/*
- * The generic flash bbt decriptors overlap with our ecc
- * hardware, so define some i.MX specific ones.
- */
-static uint8_t bbt_pattern[] = { 'B', 'b', 't', '0' };
-static uint8_t mirror_pattern[] = { '1', 't', 'b', 'B' };
-
-static struct nand_bbt_descr bbt_main_descr = {
-	.options = NAND_BBT_LASTBLOCK | NAND_BBT_WRITE
-		| NAND_BBT_2BIT | NAND_BBT_VERSION | NAND_BBT_PERCHIP,
-	.offs = 0,
-	.len = 4,
-	.veroffs = 4,
-	.maxblocks = 4,
-	.pattern = bbt_pattern,
-};
-
-static struct nand_bbt_descr bbt_mirror_descr = {
-	.options = NAND_BBT_LASTBLOCK | NAND_BBT_WRITE
-		| NAND_BBT_2BIT | NAND_BBT_VERSION | NAND_BBT_PERCHIP,
-	.offs = 0,
-	.len = 4,
-	.veroffs = 4,
-	.maxblocks = 4,
-	.pattern = mirror_pattern,
-};
-
-static int __init mxcnd_probe_dt(struct imx_nand_host *host)
-{
-	struct device_node *np = host->dev->of_node;
-	int buswidth;
-
-	if (!IS_ENABLED(CONFIG_OFDEVICE))
-		return 1;
-
-	if (!np)
-		return 1;
-
-	if (of_get_nand_ecc_mode(np) == NAND_ECC_HW)
-		host->hw_ecc = 1;
-
-	host->flash_bbt = of_get_nand_on_flash_bbt(np);
-
-	buswidth = of_get_nand_bus_width(np);
-	if (buswidth < 0)
-		return buswidth;
-
-	host->data_width = buswidth / 8;
-
-	return 0;
-}
-
-/*
- * The i.MX NAND controller has the problem that it handles the
- * data in chunks of 512 bytes. It doesn't treat 2k NAND chips as
- * 2048 byte data + 64 OOB, but instead:
- *
- * 512b data + 16b OOB +
- * 512b data + 16b OOB +
- * 512b data + 16b OOB +
- * 512b data + 16b OOB
- *
- * This means that the factory provided bad block marker ends up
- * in the page data at offset 2000 instead of in the OOB data.
- *
- * To preserve the factory bad block information we take the following
- * strategy:
- *
- * - If the NAND driver detects that no flash BBT is present on 2k NAND
- *   chips it will not create one because it would do so based on the wrong
- *   BBM position
- * - This command is used to create a flash BBT then.
- *
- * From this point on we can forget about the BBMs and rely completely
- * on the flash BBT.
- *
- */
-static int checkbad(struct nand_chip *chip, loff_t ofs)
-{
-	struct mtd_info *mtd = nand_to_mtd(chip);
-	int ret;
-	uint8_t buf[mtd->writesize + mtd->oobsize];
-	struct mtd_oob_ops ops;
-
-	ops.mode = MTD_OPS_RAW;
-	ops.ooboffs = 0;
-	ops.datbuf = buf;
-	ops.len = mtd->writesize;
-	ops.oobbuf = buf + mtd->writesize;
-	ops.ooblen = mtd->oobsize;
-
-	ret = mtd_read_oob(mtd, ofs, &ops);
-	if (ret < 0)
-		return ret;
-
-	if (buf[2000] != 0xff)
-		return 1;
-
-	return 0;
-}
-
-static int imxnd_create_bbt(struct nand_chip *chip)
-{
-	struct mtd_info *mtd = nand_to_mtd(chip);
-	int len, i, numblocks, ret;
-	loff_t from = 0;
-	uint8_t *bbt;
-
-	len = mtd->size >> (chip->bbt_erase_shift + 2);
-
-	/* Allocate memory (2bit per block) and clear the memory bad block table */
-	bbt = kzalloc(len, GFP_KERNEL);
-	if (!bbt)
-		return -ENOMEM;
-
-	numblocks = mtd->size >> (chip->bbt_erase_shift - 1);
-
-	for (i = 0; i < numblocks;) {
-		ret = checkbad(chip, from);
-		if (ret < 0)
-			goto out;
-
-		if (ret) {
-			bbt[i >> 3] |= 0x03 << (i & 0x6);
-			dev_info(mtd->dev.parent, "Bad eraseblock %d at 0x%08x\n",
-				 i >> 1, (unsigned int)from);
-		}
-
-		i += 2;
-		from += (1 << chip->bbt_erase_shift);
-	}
-
-	chip->bbt_td->options |= NAND_BBT_CREATE;
-	chip->bbt_md->options |= NAND_BBT_CREATE;
-
-	free(chip->bbt);
-	chip->bbt = bbt;
-
-	ret = nand_update_bbt(chip, 0);
-	if (ret)
-		return ret;
-
-	ret = nand_create_bbt(chip);
-	if (ret)
-		return ret;
-
-	ret = 0;
-out:
-	free(bbt);
-
-	return ret;
-}
-
-/*
- * This function is called during the driver binding process.
- *
- * @param   pdev  the device structure used to store device specific
- *                information that is used by the suspend, resume and
- *                remove functions
- *
- * @return  The function always returns 0.
- */
-
-static int __init imxnd_probe(struct device *dev)
-{
-	struct resource *iores;
-	struct nand_chip *this;
-	struct mtd_info *mtd;
-	struct imx_nand_host *host;
-	struct nand_ecclayout *oob_smallpage, *oob_largepage, *oob_4kpage;
-	int err = 0;
-
-	/* Allocate memory for MTD device structure and private data */
-	host = kzalloc(sizeof(struct imx_nand_host) + NAND_MAX_PAGESIZE +
-			NAND_MAX_OOBSIZE, GFP_KERNEL);
-	if (!host)
-		return -ENOMEM;
-
-	host->dev = dev;
-
-	err = mxcnd_probe_dt(host);
-	if (err < 0)
-		goto escan;
-
-	if (err > 0) {
-		struct imx_nand_platform_data *pdata;
-
-		pdata = dev->platform_data;
-		host->flash_bbt = pdata->flash_bbt;
-		host->data_width = pdata->width;
-		host->hw_ecc = pdata->hw_ecc;
-	}
-
-	host->data_buf = (uint8_t *)(host + 1);
-
-	/* No error check, not all SoCs provide a clk yet */
-	host->clk = clk_get(dev, NULL);
-
-	if (nfc_is_v1() || nfc_is_v21()) {
-		host->send_cmd = send_cmd_v1_v2;
-		host->send_addr = send_addr_v1_v2;
-		host->send_page = send_page_v1_v2;
-		host->send_read_id = send_read_id_v1_v2;
-		host->send_read_param = send_read_param_v1_v2;
-		host->get_dev_status = get_dev_status_v1_v2;
-		host->check_int = check_int_v1_v2;
-	}
-
-	if (nfc_is_v21()) {
-		iores = dev_request_mem_resource(dev, 0);
-		if (IS_ERR(iores))
-			return PTR_ERR(iores);
-		host->base = IOMEM(iores->start);
-		host->main_area0 = host->base;
-		host->regs = host->base + 0x1e00;
-		host->spare0 = host->base + 0x1000;
-		host->spare_len = 64;
-		oob_smallpage = &nandv2_hw_eccoob_smallpage;
-		oob_largepage = &nandv2_hw_eccoob_largepage;
-		oob_4kpage = &nandv2_hw_eccoob_4k; /* FIXME : to check */
-		host->preset = preset_v2;
-	} else if (nfc_is_v1()) {
-		iores = dev_request_mem_resource(dev, 0);
-		if (IS_ERR(iores))
-			return PTR_ERR(iores);
-		host->base = IOMEM(iores->start);
-		host->main_area0 = host->base;
-		host->regs = host->base + 0xe00;
-		host->spare0 = host->base + 0x800;
-		host->spare_len = 16;
-		oob_smallpage = &nandv1_hw_eccoob_smallpage;
-		oob_largepage = &nandv1_hw_eccoob_largepage;
-		oob_4kpage = &nandv1_hw_eccoob_smallpage; /* FIXME : to check  */
-		host->preset = preset_v1;
-	} else if (nfc_is_v3_2()) {
-		iores = dev_request_mem_resource(dev, 0);
-		if (IS_ERR(iores))
-			return PTR_ERR(iores);
-		host->regs_ip = IOMEM(iores->start);
-
-		iores = dev_request_mem_resource(dev, 1);
-		if (IS_ERR(iores))
-			return PTR_ERR(iores);
-		host->base = IOMEM(iores->start);
-		host->main_area0 = host->base;
-
-		if (IS_ERR(host->regs_ip)) {
-			dev_err(dev, "no second mem region\n");
-			err = PTR_ERR(host->regs_ip);
-			goto escan;
-		}
-
-		host->regs_axi = host->base + 0x1e00;
-		host->spare0 = host->base + 0x1000;
-		host->spare_len = 64;
-		host->preset = preset_v3;
-		host->send_cmd = send_cmd_v3;
-		host->send_addr = send_addr_v3;
-		host->send_page = send_page_v3;
-		host->send_read_id = send_read_id_v3;
-		host->send_read_param = send_read_param_v3;
-		host->get_dev_status = get_dev_status_v3;
-		host->check_int = check_int_v3;
-		oob_smallpage = &nandv2_hw_eccoob_smallpage;
-		oob_largepage = &nandv2_hw_eccoob_largepage;
-		oob_4kpage = &nandv2_hw_eccoob_4k;
-	} else {
-		err = -EINVAL;
-		goto escan;
-	}
-
-	/* structures must be linked */
-	this = &host->nand;
-	mtd = nand_to_mtd(this);
-	mtd->dev.parent = dev;
-	mtd->name = "imx_nand";
-
-	/* 50 us command delay time */
-	this->legacy.chip_delay = 5;
-
-	this->priv = host;
-	this->legacy.dev_ready = imx_nand_dev_ready;
-	this->legacy.cmdfunc = imx_nand_command;
-	this->legacy.select_chip = imx_nand_select_chip;
-	this->legacy.read_byte = imx_nand_read_byte;
-	this->legacy.read_word = imx_nand_read_word;
-	this->legacy.write_buf = imx_nand_write_buf;
-	this->legacy.read_buf = imx_nand_read_buf;
-	this->ecc.write_page = imx_nand_write_page_ecc;
-	this->ecc.write_page_raw = imx_nand_write_page_raw;
-
-	if (host->hw_ecc) {
-		this->ecc.calculate = imx_nand_calculate_ecc;
-		if (nfc_is_v3())
-			host->enable_hwecc = imx_nand_enable_hwecc_v3;
-		else
-			host->enable_hwecc = imx_nand_enable_hwecc_v1_v2;
-		if (nfc_is_v1())
-			host->correct = imx_nand_correct_data_v1;
-		else
-			host->correct = imx_nand_correct_data_v2_v3;
-		this->ecc.size = 512;
-		this->ecc.read_page_raw = imx_nand_read_page_raw;
-		this->ecc.read_page = imx_nand_read_page;
-	} else {
-		this->ecc.size = 512;
-	}
-
-	mtd_set_ecclayout(mtd, oob_smallpage);
-
-	/* NAND bus width determines access functions used by upper layer */
-	if (host->data_width == 2) {
-		this->options |= NAND_BUSWIDTH_16;
-		mtd_set_ecclayout(mtd, &nandv1_hw_eccoob_smallpage);
-		imx_nand_set_layout(0, 16);
-	}
-
-	if (host->flash_bbt) {
-		this->bbt_td = &bbt_main_descr;
-		this->bbt_md = &bbt_mirror_descr;
-		/* update flash based bbt */
-		this->bbt_options |= NAND_BBT_USE_FLASH;
-	}
-
-	/* first scan to find the device and get the page size */
-	if (nand_scan_ident(this, 1, NULL)) {
-		err = -ENXIO;
-		goto escan;
-	}
-
-	/* Call preset again, with correct writesize this time */
-	host->preset(this);
-
-	imx_nand_set_layout(mtd->writesize, host->data_width == 2 ? 16 : 8);
-
-	if (mtd->writesize >= 2048) {
-		if (!host->flash_bbt)
-			dev_warn(dev, "2k or 4k flash detected without flash_bbt. "
-					"You will loose factory bad block markers!\n");
-
-		if (mtd->writesize == 2048)
-			mtd_set_ecclayout(mtd, oob_largepage);
-		else
-			mtd_set_ecclayout(mtd, oob_4kpage);
-		host->pagesize_2k = 1;
-		if (nfc_is_v21())
-			writew(NFC_V2_SPAS_SPARESIZE(64), host->regs + NFC_V2_SPAS);
-	} else {
-		bbt_main_descr.options |= NAND_BBT_CREATE;
-		bbt_mirror_descr.options |= NAND_BBT_CREATE;
-
-		if (nfc_is_v21())
-			writew(NFC_V2_SPAS_SPARESIZE(16), host->regs + NFC_V2_SPAS);
-	}
-
-	/* second phase scan */
-	if (nand_scan_tail(this)) {
-		err = -ENXIO;
-		goto escan;
-	}
-
-	if (host->flash_bbt && this->bbt_td->pages[0] == -1 && this->bbt_md->pages[0] == -1) {
-		dev_info(dev, "no BBT found. creating one\n");
-		err = imxnd_create_bbt(this);
-		if (err)
-			dev_warn(dev, "Failed to create bbt: %s\n",
-				 strerror(-err));
-		err = 0;
-	}
-
-	add_mtd_nand_device(mtd, "nand");
-
-	dev->priv = host;
-
-	return 0;
-
-escan:
-	kfree(host);
-
-	return err;
-
-}
-
-static __maybe_unused struct of_device_id imx_nand_compatible[] = {
-	{
-		.compatible = "fsl,imx21-nand",
-	}, {
-		.compatible = "fsl,imx25-nand",
-	}, {
-		.compatible = "fsl,imx27-nand",
-	}, {
-		.compatible = "fsl,imx51-nand",
-	}, {
-		.compatible = "fsl,imx53-nand",
-	}, {
-		/* sentinel */
-	}
-};
-MODULE_DEVICE_TABLE(of, imx_nand_compatible);
-
-static struct driver imx_nand_driver = {
-	.name  = "imx_nand",
-	.probe = imxnd_probe,
-	.of_compatible = DRV_OF_COMPAT(imx_nand_compatible),
-};
-device_platform_driver(imx_nand_driver);
-
-MODULE_AUTHOR("Freescale Semiconductor, Inc.");
-MODULE_DESCRIPTION("MXC NAND MTD driver");
-MODULE_LICENSE("GPL");
-- 
2.39.2



