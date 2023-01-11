Delivery-date: Wed, 11 Jan 2023 18:45:09 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFf9x-0091tJ-Gu
	for lore@lore.pengutronix.de; Wed, 11 Jan 2023 18:45:09 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFf9r-0006Zb-7q
	for lore@pengutronix.de; Wed, 11 Jan 2023 18:45:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VVCBaqshYFliqIQnXMKENAlCbM7erLjfWvG2DcGNyWs=; b=2H9qehQwoKQZNpaGlgtIqriyKv
	6d2u7sHWZVyJksnmPa0DJ6zfZc7BFzAsG8zTk4JduyUnRkYcR/HKKxX4qVVxrO08YCac0TlSyhKNL
	1twYaqDeqsaCVH7HaBIWtZYFztpIbpcRvt5c00s2R9YN4oGBLMb07cU2E9aTN6yU9lFsPpT2VY1Ve
	uMn7jAwqD3hcVp47lXwSskUFtxMiL2TtqD9B5Q+KaLVEJdCgfG2SqbODwhUbLtmjSFkyM1LHxOUBC
	MoFrOPTaNm2N1OBoV0Jup1ChU0IKU3IUCFvaeLUtlm5xY2/EYHydOHE29pn4gP3wvMrQrHTl4HE4+
	Wsh4s9WA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFf7v-00CUph-QA; Wed, 11 Jan 2023 17:43:03 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFf5T-00CTIJ-JH
	for barebox@lists.infradead.org; Wed, 11 Jan 2023 17:40:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pFf5S-00054z-9i; Wed, 11 Jan 2023 18:40:30 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pFf5R-005M74-Nu; Wed, 11 Jan 2023 18:40:29 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pFf5O-007DGg-I9; Wed, 11 Jan 2023 18:40:26 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 11 Jan 2023 18:40:20 +0100
Message-Id: <20230111174023.1719129-13-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230111174023.1719129-1-a.fatoum@pengutronix.de>
References: <20230111174023.1719129-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230111_094032_360681_BE8C86FC 
X-CRM114-Status: GOOD (  32.16  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 12/15] mtd: nand: atmel: import Linux NAND controller driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

For a few years, Linux has been using the new EBI bindings for NAND
controllers on all AT91 SoCs newer than the AT91RM2000. We have so far
only supported the old bindings by hacking the DT, but this doesn't
suffice for the SAMA5D4. Therefore import a new state of the Linux NAND
controller driver. We still keep around the old barebox driver to
support the non-DT enabled AT91 platforms.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mtd/nand/Kconfig                      |   12 +-
 drivers/mtd/nand/Makefile                     |    2 +-
 drivers/mtd/nand/atmel/Makefile               |    3 +
 drivers/mtd/nand/{ => atmel}/atmel_nand_ecc.h |    0
 .../mtd/nand/{atmel_nand.c => atmel/legacy.c} |    0
 drivers/mtd/nand/atmel/nand-controller.c      | 2049 +++++++++++++++++
 drivers/mtd/nand/atmel/pmecc.c                |  992 ++++++++
 drivers/mtd/nand/atmel/pmecc.h                |   70 +
 include/driver.h                              |    2 +
 include/linux/mutex.h                         |    2 +
 include/soc/at91/atmel-sfr.h                  |    1 +
 11 files changed, 3130 insertions(+), 3 deletions(-)
 create mode 100644 drivers/mtd/nand/atmel/Makefile
 rename drivers/mtd/nand/{ => atmel}/atmel_nand_ecc.h (100%)
 rename drivers/mtd/nand/{atmel_nand.c => atmel/legacy.c} (100%)
 create mode 100644 drivers/mtd/nand/atmel/nand-controller.c
 create mode 100644 drivers/mtd/nand/atmel/pmecc.c
 create mode 100644 drivers/mtd/nand/atmel/pmecc.h

diff --git a/drivers/mtd/nand/Kconfig b/drivers/mtd/nand/Kconfig
index 2cd52f3820ba..4aeb2b603b95 100644
--- a/drivers/mtd/nand/Kconfig
+++ b/drivers/mtd/nand/Kconfig
@@ -97,12 +97,20 @@ config NAND_MRVL_NFC
 config NAND_ATMEL
 	bool
 	prompt "Atmel (AT91SAM9xxx) NAND driver"
-	depends on ARCH_AT91
+	select GENERIC_ALLOCATOR if OFDEVICE
+	depends on ARCH_AT91 || (OFDEVICE && COMPILE_TEST)
+
+config NAND_ATMEL_LEGACY
+	def_bool y
+	depends on NAND_ATMEL
+	help
+	  Select legacy driver for non-DT-enabled platforms
+	  and for the deprecated non-EBI binding.
 
 config NAND_ATMEL_PMECC
 	bool
 	prompt "PMECC support"
-	depends on NAND_ATMEL || COMPILE_TEST
+	depends on NAND_ATMEL_LEGACY
 	help
 	  Support for PMECC present on the SoC sam9x5 and sam9n12
 
diff --git a/drivers/mtd/nand/Makefile b/drivers/mtd/nand/Makefile
index 1584e86694ef..1a17c49bff6c 100644
--- a/drivers/mtd/nand/Makefile
+++ b/drivers/mtd/nand/Makefile
@@ -17,7 +17,7 @@ obj-$(CONFIG_NAND_OMAP_GPMC)		+= nand_omap_gpmc.o nand_omap_bch_decoder.o
 obj-$(CONFIG_MTD_NAND_OMAP_ELM)		+= omap_elm.o
 obj-$(CONFIG_NAND_ORION)		+= nand_orion.o
 obj-$(CONFIG_NAND_MRVL_NFC)		+= nand_mrvl_nfc.o
-obj-$(CONFIG_NAND_ATMEL)		+= atmel_nand.o
+obj-$(CONFIG_NAND_ATMEL)		+= atmel/
 obj-$(CONFIG_NAND_S3C24XX)		+= nand_s3c24xx.o
 pbl-$(CONFIG_NAND_S3C24XX)		+= nand_s3c24xx.o
 obj-$(CONFIG_NAND_MXS)			+= nand_mxs.o
diff --git a/drivers/mtd/nand/atmel/Makefile b/drivers/mtd/nand/atmel/Makefile
new file mode 100644
index 000000000000..0f739c3f3192
--- /dev/null
+++ b/drivers/mtd/nand/atmel/Makefile
@@ -0,0 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0-only
+obj-$(CONFIG_OFDEVICE)		+= nand-controller.o pmecc.o
+obj-$(CONFIG_NAND_ATMEL_LEGACY)	+= legacy.o
diff --git a/drivers/mtd/nand/atmel_nand_ecc.h b/drivers/mtd/nand/atmel/atmel_nand_ecc.h
similarity index 100%
rename from drivers/mtd/nand/atmel_nand_ecc.h
rename to drivers/mtd/nand/atmel/atmel_nand_ecc.h
diff --git a/drivers/mtd/nand/atmel_nand.c b/drivers/mtd/nand/atmel/legacy.c
similarity index 100%
rename from drivers/mtd/nand/atmel_nand.c
rename to drivers/mtd/nand/atmel/legacy.c
diff --git a/drivers/mtd/nand/atmel/nand-controller.c b/drivers/mtd/nand/atmel/nand-controller.c
new file mode 100644
index 000000000000..6cd770074131
--- /dev/null
+++ b/drivers/mtd/nand/atmel/nand-controller.c
@@ -0,0 +1,2049 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright 2017 ATMEL
+ * Copyright 2017 Free Electrons
+ *
+ * Author: Boris Brezillon <boris.brezillon@free-electrons.com>
+ *
+ * Derived from the atmel_nand.c driver which contained the following
+ * copyrights:
+ *
+ *   Copyright 2003 Rick Bronson
+ *
+ *   Derived from drivers/mtd/nand/autcpu12.c (removed in v3.8)
+ *	Copyright 2001 Thomas Gleixner (gleixner@autronix.de)
+ *
+ *   Derived from drivers/mtd/spia.c (removed in v3.8)
+ *	Copyright 2000 Steven J. Hill (sjhill@cotw.com)
+ *
+ *
+ *   Add Hardware ECC support for AT91SAM9260 / AT91SAM9263
+ *	Richard Genoud (richard.genoud@gmail.com), Adeneo Copyright 2007
+ *
+ *   Derived from Das U-Boot source code
+ *	(u-boot-1.1.5/board/atmel/at91sam9263ek/nand.c)
+ *	Copyright 2006 ATMEL Rousset, Lacressonniere Nicolas
+ *
+ *   Add Programmable Multibit ECC support for various AT91 SoC
+ *	Copyright 2012 ATMEL, Hong Xu
+ *
+ *   Add Nand Flash Controller support for SAMA5 SoC
+ *	Copyright 2013 ATMEL, Josh Wu (josh.wu@atmel.com)
+ *
+ * A few words about the naming convention in this file. This convention
+ * applies to structure and function names.
+ *
+ * Prefixes:
+ *
+ * - atmel_nand_: all generic structures/functions
+ * - atmel_smc_nand_: all structures/functions specific to the SMC interface
+ *		      (at91sam9 and avr32 SoCs)
+ * - atmel_hsmc_nand_: all structures/functions specific to the HSMC interface
+ *		       (sama5 SoCs and later)
+ * - atmel_nfc_: all structures/functions used to manipulate the NFC sub-block
+ *		 that is available in the HSMC block
+ * - <soc>_nand_: all SoC specific structures/functions
+ */
+
+#include <linux/clk.h>
+#include <linux/genalloc.h>
+#include <gpiod.h>
+#include <mfd/syscon.h>
+#include <linux/mfd/syscon/atmel-matrix.h>
+#include <linux/mfd/syscon/atmel-smc.h>
+#include <module.h>
+#include <linux/mtd/rawnand.h>
+#include <of_address.h>
+#include <of.h>
+#include <of_device.h>
+#include <linux/iopoll.h>
+#include <regmap.h>
+#include <soc/at91/atmel-sfr.h>
+
+#include "pmecc.h"
+
+#define ATMEL_HSMC_NFC_CFG			0x0
+#define ATMEL_HSMC_NFC_CFG_SPARESIZE(x)		(((x) / 4) << 24)
+#define ATMEL_HSMC_NFC_CFG_SPARESIZE_MASK	GENMASK(30, 24)
+#define ATMEL_HSMC_NFC_CFG_DTO(cyc, mul)	(((cyc) << 16) | ((mul) << 20))
+#define ATMEL_HSMC_NFC_CFG_DTO_MAX		GENMASK(22, 16)
+#define ATMEL_HSMC_NFC_CFG_RBEDGE		BIT(13)
+#define ATMEL_HSMC_NFC_CFG_FALLING_EDGE		BIT(12)
+#define ATMEL_HSMC_NFC_CFG_RSPARE		BIT(9)
+#define ATMEL_HSMC_NFC_CFG_WSPARE		BIT(8)
+#define ATMEL_HSMC_NFC_CFG_PAGESIZE_MASK	GENMASK(2, 0)
+#define ATMEL_HSMC_NFC_CFG_PAGESIZE(x)		(fls((x) / 512) - 1)
+
+#define ATMEL_HSMC_NFC_CTRL			0x4
+#define ATMEL_HSMC_NFC_CTRL_EN			BIT(0)
+#define ATMEL_HSMC_NFC_CTRL_DIS			BIT(1)
+
+#define ATMEL_HSMC_NFC_SR			0x8
+#define ATMEL_HSMC_NFC_IER			0xc
+#define ATMEL_HSMC_NFC_IDR			0x10
+#define ATMEL_HSMC_NFC_IMR			0x14
+#define ATMEL_HSMC_NFC_SR_ENABLED		BIT(1)
+#define ATMEL_HSMC_NFC_SR_RB_RISE		BIT(4)
+#define ATMEL_HSMC_NFC_SR_RB_FALL		BIT(5)
+#define ATMEL_HSMC_NFC_SR_BUSY			BIT(8)
+#define ATMEL_HSMC_NFC_SR_WR			BIT(11)
+#define ATMEL_HSMC_NFC_SR_CSID			GENMASK(14, 12)
+#define ATMEL_HSMC_NFC_SR_XFRDONE		BIT(16)
+#define ATMEL_HSMC_NFC_SR_CMDDONE		BIT(17)
+#define ATMEL_HSMC_NFC_SR_DTOE			BIT(20)
+#define ATMEL_HSMC_NFC_SR_UNDEF			BIT(21)
+#define ATMEL_HSMC_NFC_SR_AWB			BIT(22)
+#define ATMEL_HSMC_NFC_SR_NFCASE		BIT(23)
+#define ATMEL_HSMC_NFC_SR_ERRORS		(ATMEL_HSMC_NFC_SR_DTOE | \
+						 ATMEL_HSMC_NFC_SR_UNDEF | \
+						 ATMEL_HSMC_NFC_SR_AWB | \
+						 ATMEL_HSMC_NFC_SR_NFCASE)
+#define ATMEL_HSMC_NFC_SR_RBEDGE(x)		BIT((x) + 24)
+
+#define ATMEL_HSMC_NFC_ADDR			0x18
+#define ATMEL_HSMC_NFC_BANK			0x1c
+
+#define ATMEL_NFC_MAX_RB_ID			7
+
+#define ATMEL_NFC_SRAM_SIZE			0x2400
+
+#define ATMEL_NFC_CMD(pos, cmd)			((cmd) << (((pos) * 8) + 2))
+#define ATMEL_NFC_VCMD2				BIT(18)
+#define ATMEL_NFC_ACYCLE(naddrs)		((naddrs) << 19)
+#define ATMEL_NFC_CSID(cs)			((cs) << 22)
+#define ATMEL_NFC_DATAEN			BIT(25)
+#define ATMEL_NFC_NFCWR				BIT(26)
+
+#define ATMEL_NFC_MAX_ADDR_CYCLES		5
+
+#define ATMEL_NAND_ALE_OFFSET			BIT(21)
+#define ATMEL_NAND_CLE_OFFSET			BIT(22)
+
+#define DEFAULT_TIMEOUT_MS			1000
+
+enum atmel_nand_rb_type {
+	ATMEL_NAND_NO_RB,
+	ATMEL_NAND_NATIVE_RB,
+	ATMEL_NAND_GPIO_RB,
+};
+
+struct atmel_nand_rb {
+	enum atmel_nand_rb_type type;
+	union {
+		int gpio;
+		int id;
+	};
+};
+
+struct atmel_nand_cs {
+	int id;
+	struct atmel_nand_rb rb;
+	int csgpio;
+	struct {
+		void __iomem *virt;
+	} io;
+
+	struct atmel_smc_cs_conf smcconf;
+};
+
+struct atmel_nand {
+	struct list_head node;
+	struct device *dev;
+	struct nand_chip base;
+	struct atmel_nand_cs *activecs;
+	struct atmel_pmecc_user *pmecc;
+	int cdgpio;
+	int numcs;
+	struct atmel_nand_cs cs[];
+};
+
+static inline struct atmel_nand *to_atmel_nand(struct nand_chip *chip)
+{
+	return container_of(chip, struct atmel_nand, base);
+}
+
+enum atmel_nfc_data_xfer {
+	ATMEL_NFC_NO_DATA,
+	ATMEL_NFC_READ_DATA,
+	ATMEL_NFC_WRITE_DATA,
+};
+
+struct atmel_nfc_op {
+	u8 cs;
+	u8 ncmds;
+	u8 cmds[2];
+	u8 naddrs;
+	u8 addrs[5];
+	enum atmel_nfc_data_xfer data;
+	u32 wait;
+	u32 errors;
+};
+
+struct atmel_nand_controller;
+struct atmel_nand_controller_caps;
+
+struct atmel_nand_controller_ops {
+	int (*probe)(struct device *dev,
+		     const struct atmel_nand_controller_caps *caps);
+	void (*nand_init)(struct atmel_nand_controller *nc,
+			  struct atmel_nand *nand);
+	int (*ecc_init)(struct nand_chip *chip);
+	int (*setup_interface)(struct atmel_nand *nand, int csline,
+			       const struct nand_interface_config *conf);
+	int (*exec_op)(struct atmel_nand *nand,
+		       const struct nand_operation *op, bool check_only);
+};
+
+struct atmel_nand_controller_caps {
+	u32 ale_offs;
+	u32 cle_offs;
+	const char *ebi_csa_regmap_name;
+	const struct atmel_nand_controller_ops *ops;
+};
+
+struct atmel_nand_controller {
+	struct nand_controller base;
+	const struct atmel_nand_controller_caps *caps;
+	struct device *dev;
+	struct regmap *smc;
+	struct atmel_pmecc *pmecc;
+	struct list_head chips;
+	struct clk *mck;
+};
+
+static inline struct atmel_nand_controller *
+to_nand_controller(struct nand_controller *ctl)
+{
+	return container_of(ctl, struct atmel_nand_controller, base);
+}
+
+struct atmel_smc_nand_ebi_csa_cfg {
+	u32 offs;
+	u32 nfd0_on_d16;
+};
+
+struct atmel_smc_nand_controller {
+	struct atmel_nand_controller base;
+	struct regmap *ebi_csa_regmap;
+	struct atmel_smc_nand_ebi_csa_cfg *ebi_csa;
+};
+
+static inline struct atmel_smc_nand_controller *
+to_smc_nand_controller(struct nand_controller *ctl)
+{
+	return container_of(to_nand_controller(ctl),
+			    struct atmel_smc_nand_controller, base);
+}
+
+struct atmel_hsmc_nand_controller {
+	struct atmel_nand_controller base;
+	struct {
+		struct gen_pool *pool;
+		void __iomem *virt;
+	} sram;
+	const struct atmel_hsmc_reg_layout *hsmc_layout;
+	struct regmap *io;
+	struct atmel_nfc_op op;
+	u32 cfg;
+};
+
+static inline struct atmel_hsmc_nand_controller *
+to_hsmc_nand_controller(struct nand_controller *ctl)
+{
+	return container_of(to_nand_controller(ctl),
+			    struct atmel_hsmc_nand_controller, base);
+}
+
+static bool atmel_nfc_op_done(struct atmel_nfc_op *op, u32 status)
+{
+	op->errors |= status & ATMEL_HSMC_NFC_SR_ERRORS;
+	op->wait ^= status & op->wait;
+
+	return !op->wait || op->errors;
+}
+
+static int atmel_nfc_wait(struct atmel_hsmc_nand_controller *nc,
+			  unsigned int timeout_ms)
+{
+	u32 status;
+	int ret;
+
+	if (!timeout_ms)
+		timeout_ms = DEFAULT_TIMEOUT_MS;
+
+
+	ret = regmap_read_poll_timeout(nc->base.smc,
+				       ATMEL_HSMC_NFC_SR, status,
+				       atmel_nfc_op_done(&nc->op,
+							 status),
+				       timeout_ms * 1000);
+
+	if (nc->op.errors & ATMEL_HSMC_NFC_SR_DTOE) {
+		dev_err(nc->base.dev, "Waiting NAND R/B Timeout\n");
+		ret = -ETIMEDOUT;
+	}
+
+	if (nc->op.errors & ATMEL_HSMC_NFC_SR_UNDEF) {
+		dev_err(nc->base.dev, "Access to an undefined area\n");
+		ret = -EIO;
+	}
+
+	if (nc->op.errors & ATMEL_HSMC_NFC_SR_AWB) {
+		dev_err(nc->base.dev, "Access while busy\n");
+		ret = -EIO;
+	}
+
+	if (nc->op.errors & ATMEL_HSMC_NFC_SR_NFCASE) {
+		dev_err(nc->base.dev, "Wrong access size\n");
+		ret = -EIO;
+	}
+
+	return ret;
+}
+
+static int atmel_nfc_exec_op(struct atmel_hsmc_nand_controller *nc)
+{
+	u8 *addrs = nc->op.addrs;
+	unsigned int op = 0;
+	u32 addr, val;
+	int i, ret;
+
+	nc->op.wait = ATMEL_HSMC_NFC_SR_CMDDONE;
+
+	for (i = 0; i < nc->op.ncmds; i++)
+		op |= ATMEL_NFC_CMD(i, nc->op.cmds[i]);
+
+	if (nc->op.naddrs == ATMEL_NFC_MAX_ADDR_CYCLES)
+		regmap_write(nc->base.smc, ATMEL_HSMC_NFC_ADDR, *addrs++);
+
+	op |= ATMEL_NFC_CSID(nc->op.cs) |
+	      ATMEL_NFC_ACYCLE(nc->op.naddrs);
+
+	if (nc->op.ncmds > 1)
+		op |= ATMEL_NFC_VCMD2;
+
+	addr = addrs[0] | (addrs[1] << 8) | (addrs[2] << 16) |
+	       (addrs[3] << 24);
+
+	if (nc->op.data != ATMEL_NFC_NO_DATA) {
+		op |= ATMEL_NFC_DATAEN;
+		nc->op.wait |= ATMEL_HSMC_NFC_SR_XFRDONE;
+
+		if (nc->op.data == ATMEL_NFC_WRITE_DATA)
+			op |= ATMEL_NFC_NFCWR;
+	}
+
+	/* Clear all flags. */
+	regmap_read(nc->base.smc, ATMEL_HSMC_NFC_SR, &val);
+
+	/* Send the command. */
+	regmap_write(nc->io, op, addr);
+
+	ret = atmel_nfc_wait(nc, 0);
+	if (ret)
+		dev_err(nc->base.dev,
+			"Failed to send NAND command (err = %d)!",
+			ret);
+
+	/* Reset the op state. */
+	memset(&nc->op, 0, sizeof(nc->op));
+
+	return ret;
+}
+
+static void atmel_nand_data_in(struct atmel_nand *nand, void *buf,
+			       unsigned int len, bool force_8bit)
+{
+	struct atmel_nand_controller *nc;
+
+	nc = to_nand_controller(nand->base.controller);
+
+	if ((nand->base.options & NAND_BUSWIDTH_16) && !force_8bit)
+		ioread16_rep(nand->activecs->io.virt, buf, len / 2);
+	else
+		ioread8_rep(nand->activecs->io.virt, buf, len);
+}
+
+static void atmel_nand_data_out(struct atmel_nand *nand, const void *buf,
+				unsigned int len, bool force_8bit)
+{
+	struct atmel_nand_controller *nc;
+
+	nc = to_nand_controller(nand->base.controller);
+
+	if ((nand->base.options & NAND_BUSWIDTH_16) && !force_8bit)
+		iowrite16_rep(nand->activecs->io.virt, buf, len / 2);
+	else
+		iowrite8_rep(nand->activecs->io.virt, buf, len);
+}
+
+static int atmel_nand_waitrdy(struct atmel_nand *nand, unsigned int timeout_ms)
+{
+	if (nand->activecs->rb.type == ATMEL_NAND_NO_RB)
+		return nand_soft_waitrdy(&nand->base, timeout_ms);
+
+	return nand_gpio_waitrdy(&nand->base, nand->activecs->rb.gpio,
+				 timeout_ms);
+}
+
+static int atmel_hsmc_nand_waitrdy(struct atmel_nand *nand,
+				   unsigned int timeout_ms)
+{
+	struct atmel_hsmc_nand_controller *nc;
+	u32 status, mask;
+
+	if (nand->activecs->rb.type != ATMEL_NAND_NATIVE_RB)
+		return atmel_nand_waitrdy(nand, timeout_ms);
+
+	nc = to_hsmc_nand_controller(nand->base.controller);
+	mask = ATMEL_HSMC_NFC_SR_RBEDGE(nand->activecs->rb.id);
+	return regmap_read_poll_timeout(nc->base.smc, ATMEL_HSMC_NFC_SR,
+					status, status & mask,
+					timeout_ms * 1000);
+}
+
+static void atmel_nand_select_target(struct atmel_nand *nand,
+				     unsigned int cs)
+{
+	nand->activecs = &nand->cs[cs];
+}
+
+static void atmel_hsmc_nand_select_target(struct atmel_nand *nand,
+					  unsigned int cs)
+{
+	struct mtd_info *mtd = nand_to_mtd(&nand->base);
+	struct atmel_hsmc_nand_controller *nc;
+	u32 cfg = ATMEL_HSMC_NFC_CFG_PAGESIZE(mtd->writesize) |
+		  ATMEL_HSMC_NFC_CFG_SPARESIZE(mtd->oobsize) |
+		  ATMEL_HSMC_NFC_CFG_RSPARE;
+
+	nand->activecs = &nand->cs[cs];
+	nc = to_hsmc_nand_controller(nand->base.controller);
+	if (nc->cfg == cfg)
+		return;
+
+	regmap_update_bits(nc->base.smc, ATMEL_HSMC_NFC_CFG,
+			   ATMEL_HSMC_NFC_CFG_PAGESIZE_MASK |
+			   ATMEL_HSMC_NFC_CFG_SPARESIZE_MASK |
+			   ATMEL_HSMC_NFC_CFG_RSPARE |
+			   ATMEL_HSMC_NFC_CFG_WSPARE,
+			   cfg);
+	nc->cfg = cfg;
+}
+
+static int atmel_smc_nand_exec_instr(struct atmel_nand *nand,
+				     const struct nand_op_instr *instr)
+{
+	struct atmel_nand_controller *nc;
+	unsigned int i;
+
+	nc = to_nand_controller(nand->base.controller);
+	switch (instr->type) {
+	case NAND_OP_CMD_INSTR:
+		writeb(instr->ctx.cmd.opcode,
+		       nand->activecs->io.virt + nc->caps->cle_offs);
+		return 0;
+	case NAND_OP_ADDR_INSTR:
+		for (i = 0; i < instr->ctx.addr.naddrs; i++)
+			writeb(instr->ctx.addr.addrs[i],
+			       nand->activecs->io.virt + nc->caps->ale_offs);
+		return 0;
+	case NAND_OP_DATA_IN_INSTR:
+		atmel_nand_data_in(nand, instr->ctx.data.buf.in,
+				   instr->ctx.data.len,
+				   instr->ctx.data.force_8bit);
+		return 0;
+	case NAND_OP_DATA_OUT_INSTR:
+		atmel_nand_data_out(nand, instr->ctx.data.buf.out,
+				    instr->ctx.data.len,
+				    instr->ctx.data.force_8bit);
+		return 0;
+	case NAND_OP_WAITRDY_INSTR:
+		return atmel_nand_waitrdy(nand,
+					  instr->ctx.waitrdy.timeout_ms);
+	default:
+		break;
+	}
+
+	return -EINVAL;
+}
+
+static int atmel_smc_nand_exec_op(struct atmel_nand *nand,
+				  const struct nand_operation *op,
+				  bool check_only)
+{
+	unsigned int i;
+	int ret = 0;
+
+	if (check_only)
+		return 0;
+
+	atmel_nand_select_target(nand, op->cs);
+	gpiod_set_value(nand->activecs->csgpio, 0);
+	for (i = 0; i < op->ninstrs; i++) {
+		ret = atmel_smc_nand_exec_instr(nand, &op->instrs[i]);
+		if (ret)
+			break;
+	}
+	gpiod_set_value(nand->activecs->csgpio, 1);
+
+	return ret;
+}
+
+static int atmel_hsmc_exec_cmd_addr(struct nand_chip *chip,
+				    const struct nand_subop *subop)
+{
+	struct atmel_nand *nand = to_atmel_nand(chip);
+	struct atmel_hsmc_nand_controller *nc;
+	unsigned int i, j;
+
+	nc = to_hsmc_nand_controller(chip->controller);
+
+	nc->op.cs = nand->activecs->id;
+	for (i = 0; i < subop->ninstrs; i++) {
+		const struct nand_op_instr *instr = &subop->instrs[i];
+
+		if (instr->type == NAND_OP_CMD_INSTR) {
+			nc->op.cmds[nc->op.ncmds++] = instr->ctx.cmd.opcode;
+			continue;
+		}
+
+		for (j = nand_subop_get_addr_start_off(subop, i);
+		     j < nand_subop_get_num_addr_cyc(subop, i); j++) {
+			nc->op.addrs[nc->op.naddrs] = instr->ctx.addr.addrs[j];
+			nc->op.naddrs++;
+		}
+	}
+
+	return atmel_nfc_exec_op(nc);
+}
+
+static int atmel_hsmc_exec_rw(struct nand_chip *chip,
+			      const struct nand_subop *subop)
+{
+	const struct nand_op_instr *instr = subop->instrs;
+	struct atmel_nand *nand = to_atmel_nand(chip);
+
+	if (instr->type == NAND_OP_DATA_IN_INSTR)
+		atmel_nand_data_in(nand, instr->ctx.data.buf.in,
+				   instr->ctx.data.len,
+				   instr->ctx.data.force_8bit);
+	else
+		atmel_nand_data_out(nand, instr->ctx.data.buf.out,
+				    instr->ctx.data.len,
+				    instr->ctx.data.force_8bit);
+
+	return 0;
+}
+
+static int atmel_hsmc_exec_waitrdy(struct nand_chip *chip,
+				   const struct nand_subop *subop)
+{
+	const struct nand_op_instr *instr = subop->instrs;
+	struct atmel_nand *nand = to_atmel_nand(chip);
+
+	return atmel_hsmc_nand_waitrdy(nand, instr->ctx.waitrdy.timeout_ms);
+}
+
+static const struct nand_op_parser atmel_hsmc_op_parser = NAND_OP_PARSER(
+	NAND_OP_PARSER_PATTERN(atmel_hsmc_exec_cmd_addr,
+		NAND_OP_PARSER_PAT_CMD_ELEM(true),
+		NAND_OP_PARSER_PAT_ADDR_ELEM(true, 5),
+		NAND_OP_PARSER_PAT_CMD_ELEM(true)),
+	NAND_OP_PARSER_PATTERN(atmel_hsmc_exec_rw,
+		NAND_OP_PARSER_PAT_DATA_IN_ELEM(false, 0)),
+	NAND_OP_PARSER_PATTERN(atmel_hsmc_exec_rw,
+		NAND_OP_PARSER_PAT_DATA_OUT_ELEM(false, 0)),
+	NAND_OP_PARSER_PATTERN(atmel_hsmc_exec_waitrdy,
+		NAND_OP_PARSER_PAT_WAITRDY_ELEM(false)),
+);
+
+static int atmel_hsmc_nand_exec_op(struct atmel_nand *nand,
+				   const struct nand_operation *op,
+				   bool check_only)
+{
+	int ret;
+
+	if (check_only)
+		return nand_op_parser_exec_op(&nand->base,
+					      &atmel_hsmc_op_parser, op, true);
+
+	atmel_hsmc_nand_select_target(nand, op->cs);
+	ret = nand_op_parser_exec_op(&nand->base, &atmel_hsmc_op_parser, op,
+				     false);
+
+	return ret;
+}
+
+static void atmel_nfc_copy_to_sram(struct nand_chip *chip, const u8 *buf,
+				   bool oob_required)
+{
+	struct mtd_info *mtd = nand_to_mtd(chip);
+	struct atmel_hsmc_nand_controller *nc;
+
+	nc = to_hsmc_nand_controller(chip->controller);
+
+	/* Falling back to CPU copy. */
+	memcpy_toio(nc->sram.virt, buf, mtd->writesize);
+
+	if (oob_required)
+		memcpy_toio(nc->sram.virt + mtd->writesize, chip->oob_poi,
+			    mtd->oobsize);
+}
+
+static void atmel_nfc_copy_from_sram(struct nand_chip *chip, u8 *buf,
+				     bool oob_required)
+{
+	struct mtd_info *mtd = nand_to_mtd(chip);
+	struct atmel_hsmc_nand_controller *nc;
+
+	nc = to_hsmc_nand_controller(chip->controller);
+
+	memcpy_fromio(buf, nc->sram.virt, mtd->writesize);
+
+	if (oob_required)
+		memcpy_fromio(chip->oob_poi, nc->sram.virt + mtd->writesize,
+			      mtd->oobsize);
+}
+
+static void atmel_nfc_set_op_addr(struct nand_chip *chip, int page, int column)
+{
+	struct mtd_info *mtd = nand_to_mtd(chip);
+	struct atmel_hsmc_nand_controller *nc;
+
+	nc = to_hsmc_nand_controller(chip->controller);
+
+	if (column >= 0) {
+		nc->op.addrs[nc->op.naddrs++] = column;
+
+		/*
+		 * 2 address cycles for the column offset on large page NANDs.
+		 */
+		if (mtd->writesize > 512)
+			nc->op.addrs[nc->op.naddrs++] = column >> 8;
+	}
+
+	if (page >= 0) {
+		nc->op.addrs[nc->op.naddrs++] = page;
+		nc->op.addrs[nc->op.naddrs++] = page >> 8;
+
+		if (chip->options & NAND_ROW_ADDR_3)
+			nc->op.addrs[nc->op.naddrs++] = page >> 16;
+	}
+}
+
+static int atmel_nand_pmecc_enable(struct nand_chip *chip, int op, bool raw)
+{
+	struct atmel_nand *nand = to_atmel_nand(chip);
+	struct atmel_nand_controller *nc;
+	int ret;
+
+	nc = to_nand_controller(chip->controller);
+
+	if (raw)
+		return 0;
+
+	ret = atmel_pmecc_enable(nand->pmecc, op);
+	if (ret)
+		dev_err(nc->dev,
+			"Failed to enable ECC engine (err = %d)\n", ret);
+
+	return ret;
+}
+
+static void atmel_nand_pmecc_disable(struct nand_chip *chip, bool raw)
+{
+	struct atmel_nand *nand = to_atmel_nand(chip);
+
+	if (!raw)
+		atmel_pmecc_disable(nand->pmecc);
+}
+
+static int atmel_nand_pmecc_generate_eccbytes(struct nand_chip *chip, bool raw)
+{
+	struct atmel_nand *nand = to_atmel_nand(chip);
+	struct mtd_info *mtd = nand_to_mtd(chip);
+	struct atmel_nand_controller *nc;
+	struct mtd_oob_region oobregion;
+	void *eccbuf;
+	int ret, i;
+
+	nc = to_nand_controller(chip->controller);
+
+	if (raw)
+		return 0;
+
+	ret = atmel_pmecc_wait_rdy(nand->pmecc);
+	if (ret) {
+		dev_err(nc->dev,
+			"Failed to transfer NAND page data (err = %d)\n",
+			ret);
+		return ret;
+	}
+
+	mtd_ooblayout_ecc(mtd, 0, &oobregion);
+	eccbuf = chip->oob_poi + oobregion.offset;
+
+	for (i = 0; i < chip->ecc.steps; i++) {
+		atmel_pmecc_get_generated_eccbytes(nand->pmecc, i,
+						   eccbuf);
+		eccbuf += chip->ecc.bytes;
+	}
+
+	return 0;
+}
+
+static int atmel_nand_pmecc_correct_data(struct nand_chip *chip, void *buf,
+					 bool raw)
+{
+	struct atmel_nand *nand = to_atmel_nand(chip);
+	struct mtd_info *mtd = nand_to_mtd(chip);
+	struct atmel_nand_controller *nc;
+	struct mtd_oob_region oobregion;
+	int ret, i, max_bitflips = 0;
+	void *databuf, *eccbuf;
+
+	nc = to_nand_controller(chip->controller);
+
+	if (raw)
+		return 0;
+
+	ret = atmel_pmecc_wait_rdy(nand->pmecc);
+	if (ret) {
+		dev_err(nc->dev,
+			"Failed to read NAND page data (err = %d)\n",
+			ret);
+		return ret;
+	}
+
+	mtd_ooblayout_ecc(mtd, 0, &oobregion);
+	eccbuf = chip->oob_poi + oobregion.offset;
+	databuf = buf;
+
+	for (i = 0; i < chip->ecc.steps; i++) {
+		ret = atmel_pmecc_correct_sector(nand->pmecc, i, databuf,
+						 eccbuf);
+		if (ret < 0 && !atmel_pmecc_correct_erased_chunks(nand->pmecc))
+			ret = nand_check_erased_ecc_chunk(databuf,
+							  chip->ecc.size,
+							  eccbuf,
+							  chip->ecc.bytes,
+							  NULL, 0,
+							  chip->ecc.strength);
+
+		if (ret >= 0) {
+			mtd->ecc_stats.corrected += ret;
+			max_bitflips = max(ret, max_bitflips);
+		} else {
+			mtd->ecc_stats.failed++;
+		}
+
+		databuf += chip->ecc.size;
+		eccbuf += chip->ecc.bytes;
+	}
+
+	return max_bitflips;
+}
+
+static int atmel_nand_pmecc_write_pg(struct nand_chip *chip, const u8 *buf,
+				     bool oob_required, int page, bool raw)
+{
+	struct mtd_info *mtd = nand_to_mtd(chip);
+	struct atmel_nand *nand = to_atmel_nand(chip);
+	int ret;
+
+	nand_prog_page_begin_op(chip, page, 0, NULL, 0);
+
+	ret = atmel_nand_pmecc_enable(chip, NAND_ECC_WRITE, raw);
+	if (ret)
+		return ret;
+
+	nand_write_data_op(chip, buf, mtd->writesize, false);
+
+	ret = atmel_nand_pmecc_generate_eccbytes(chip, raw);
+	if (ret) {
+		atmel_pmecc_disable(nand->pmecc);
+		return ret;
+	}
+
+	atmel_nand_pmecc_disable(chip, raw);
+
+	nand_write_data_op(chip, chip->oob_poi, mtd->oobsize, false);
+
+	return nand_prog_page_end_op(chip);
+}
+
+static int atmel_nand_pmecc_write_page(struct nand_chip *chip, const u8 *buf,
+				       int oob_required, int page)
+{
+	return atmel_nand_pmecc_write_pg(chip, buf, oob_required, page, false);
+}
+
+static int atmel_nand_pmecc_write_page_raw(struct nand_chip *chip,
+					   const u8 *buf, int oob_required,
+					   int page)
+{
+	return atmel_nand_pmecc_write_pg(chip, buf, oob_required, page, true);
+}
+
+static int atmel_nand_pmecc_read_pg(struct nand_chip *chip, u8 *buf,
+				    bool oob_required, int page, bool raw)
+{
+	struct mtd_info *mtd = nand_to_mtd(chip);
+	int ret;
+
+	nand_read_page_op(chip, page, 0, NULL, 0);
+
+	ret = atmel_nand_pmecc_enable(chip, NAND_ECC_READ, raw);
+	if (ret)
+		return ret;
+
+	ret = nand_read_data_op(chip, buf, mtd->writesize, false, false);
+	if (ret)
+		goto out_disable;
+
+	ret = nand_read_data_op(chip, chip->oob_poi, mtd->oobsize, false, false);
+	if (ret)
+		goto out_disable;
+
+	ret = atmel_nand_pmecc_correct_data(chip, buf, raw);
+
+out_disable:
+	atmel_nand_pmecc_disable(chip, raw);
+
+	return ret;
+}
+
+static int atmel_nand_pmecc_read_page(struct nand_chip *chip, u8 *buf,
+				      int oob_required, int page)
+{
+	return atmel_nand_pmecc_read_pg(chip, buf, oob_required, page, false);
+}
+
+static int atmel_nand_pmecc_read_page_raw(struct nand_chip *chip, u8 *buf,
+					  int oob_required, int page)
+{
+	return atmel_nand_pmecc_read_pg(chip, buf, oob_required, page, true);
+}
+
+static int atmel_hsmc_nand_pmecc_write_pg(struct nand_chip *chip,
+					  const u8 *buf, bool oob_required,
+					  int page, bool raw)
+{
+	struct mtd_info *mtd = nand_to_mtd(chip);
+	struct atmel_nand *nand = to_atmel_nand(chip);
+	struct atmel_hsmc_nand_controller *nc;
+	int ret;
+
+	atmel_hsmc_nand_select_target(nand, chip->cur_cs);
+	nc = to_hsmc_nand_controller(chip->controller);
+
+	atmel_nfc_copy_to_sram(chip, buf, false);
+
+	nc->op.cmds[0] = NAND_CMD_SEQIN;
+	nc->op.ncmds = 1;
+	atmel_nfc_set_op_addr(chip, page, 0x0);
+	nc->op.cs = nand->activecs->id;
+	nc->op.data = ATMEL_NFC_WRITE_DATA;
+
+	ret = atmel_nand_pmecc_enable(chip, NAND_ECC_WRITE, raw);
+	if (ret)
+		return ret;
+
+	ret = atmel_nfc_exec_op(nc);
+	if (ret) {
+		atmel_nand_pmecc_disable(chip, raw);
+		dev_err(nc->base.dev,
+			"Failed to transfer NAND page data (err = %d)\n",
+			ret);
+		return ret;
+	}
+
+	ret = atmel_nand_pmecc_generate_eccbytes(chip, raw);
+
+	atmel_nand_pmecc_disable(chip, raw);
+
+	if (ret)
+		return ret;
+
+	nand_write_data_op(chip, chip->oob_poi, mtd->oobsize, false);
+
+	return nand_prog_page_end_op(chip);
+}
+
+static int atmel_hsmc_nand_pmecc_write_page(struct nand_chip *chip,
+					    const u8 *buf, int oob_required,
+					    int page)
+{
+	return atmel_hsmc_nand_pmecc_write_pg(chip, buf, oob_required, page,
+					      false);
+}
+
+static int atmel_hsmc_nand_pmecc_write_page_raw(struct nand_chip *chip,
+						const u8 *buf,
+						int oob_required, int page)
+{
+	return atmel_hsmc_nand_pmecc_write_pg(chip, buf, oob_required, page,
+					      true);
+}
+
+static int atmel_hsmc_nand_pmecc_read_pg(struct nand_chip *chip, u8 *buf,
+					 bool oob_required, int page,
+					 bool raw)
+{
+	struct mtd_info *mtd = nand_to_mtd(chip);
+	struct atmel_nand *nand = to_atmel_nand(chip);
+	struct atmel_hsmc_nand_controller *nc;
+	int ret;
+
+	atmel_hsmc_nand_select_target(nand, chip->cur_cs);
+	nc = to_hsmc_nand_controller(chip->controller);
+
+	/*
+	 * Optimized read page accessors only work when the NAND R/B pin is
+	 * connected to a native SoC R/B pin. If that's not the case, fallback
+	 * to the non-optimized one.
+	 */
+	if (nand->activecs->rb.type != ATMEL_NAND_NATIVE_RB)
+		return atmel_nand_pmecc_read_pg(chip, buf, oob_required, page,
+						raw);
+
+	nc->op.cmds[nc->op.ncmds++] = NAND_CMD_READ0;
+
+	if (mtd->writesize > 512)
+		nc->op.cmds[nc->op.ncmds++] = NAND_CMD_READSTART;
+
+	atmel_nfc_set_op_addr(chip, page, 0x0);
+	nc->op.cs = nand->activecs->id;
+	nc->op.data = ATMEL_NFC_READ_DATA;
+
+	ret = atmel_nand_pmecc_enable(chip, NAND_ECC_READ, raw);
+	if (ret)
+		return ret;
+
+	ret = atmel_nfc_exec_op(nc);
+	if (ret) {
+		atmel_nand_pmecc_disable(chip, raw);
+		dev_err(nc->base.dev,
+			"Failed to load NAND page data (err = %d)\n",
+			ret);
+		return ret;
+	}
+
+	atmel_nfc_copy_from_sram(chip, buf, true);
+
+	ret = atmel_nand_pmecc_correct_data(chip, buf, raw);
+
+	atmel_nand_pmecc_disable(chip, raw);
+
+	return ret;
+}
+
+static int atmel_hsmc_nand_pmecc_read_page(struct nand_chip *chip, u8 *buf,
+					   int oob_required, int page)
+{
+	return atmel_hsmc_nand_pmecc_read_pg(chip, buf, oob_required, page,
+					     false);
+}
+
+static int atmel_hsmc_nand_pmecc_read_page_raw(struct nand_chip *chip,
+					       u8 *buf, int oob_required,
+					       int page)
+{
+	return atmel_hsmc_nand_pmecc_read_pg(chip, buf, oob_required, page,
+					     true);
+}
+
+static int atmel_nand_pmecc_init(struct nand_chip *chip)
+{
+	const struct nand_ecc_props *requirements =
+		nanddev_get_ecc_requirements(&chip->base);
+	struct mtd_info *mtd = nand_to_mtd(chip);
+	struct atmel_nand *nand = to_atmel_nand(chip);
+	struct atmel_nand_controller *nc;
+	struct atmel_pmecc_user_req req;
+	struct device_node *dn;
+
+	nc = to_nand_controller(chip->controller);
+
+	if (!nc->pmecc) {
+		dev_err(nc->dev, "HW ECC not supported\n");
+		return -ENOTSUPP;
+	}
+
+	dn = nand_get_flash_node(chip);
+
+	if (of_property_read_bool(dn, "nand-ecc-maximize"))
+		req.ecc.strength = ATMEL_PMECC_MAXIMIZE_ECC_STRENGTH;
+	else if (chip->ecc.strength)
+		req.ecc.strength = chip->ecc.strength;
+	else if (requirements->strength)
+		req.ecc.strength = requirements->strength;
+	else
+		req.ecc.strength = ATMEL_PMECC_MAXIMIZE_ECC_STRENGTH;
+
+	if (chip->ecc.size)
+		req.ecc.sectorsize = chip->ecc.size;
+	else if (requirements->step_size)
+		req.ecc.sectorsize = requirements->step_size;
+	else
+		req.ecc.sectorsize = ATMEL_PMECC_SECTOR_SIZE_AUTO;
+
+	req.pagesize = mtd->writesize;
+	req.oobsize = mtd->oobsize;
+
+	if (mtd->writesize <= 512) {
+		req.ecc.bytes = 4;
+		req.ecc.ooboffset = 0;
+	} else {
+		req.ecc.bytes = mtd->oobsize - 2;
+		req.ecc.ooboffset = ATMEL_PMECC_OOBOFFSET_AUTO;
+	}
+
+	nand->pmecc = atmel_pmecc_create_user(nc->pmecc, &req);
+	if (IS_ERR(nand->pmecc))
+		return PTR_ERR(nand->pmecc);
+
+	chip->ecc.algo = NAND_ECC_ALGO_BCH;
+	chip->ecc.size = req.ecc.sectorsize;
+	chip->ecc.bytes = req.ecc.bytes / req.ecc.nsectors;
+	chip->ecc.strength = req.ecc.strength;
+
+	chip->options |= NAND_NO_SUBPAGE_WRITE;
+
+	mtd_set_ooblayout(mtd, nand_get_large_page_ooblayout());
+
+	return 0;
+}
+
+static int atmel_nand_ecc_init(struct nand_chip *chip)
+{
+	struct atmel_nand_controller *nc;
+	int ret;
+
+	nc = to_nand_controller(chip->controller);
+
+	switch (chip->ecc.engine_type) {
+	case NAND_ECC_ENGINE_TYPE_NONE:
+	case NAND_ECC_ENGINE_TYPE_SOFT:
+		/*
+		 * Nothing to do, the core will initialize everything for us.
+		 */
+		break;
+
+	case NAND_ECC_ENGINE_TYPE_ON_HOST:
+		ret = atmel_nand_pmecc_init(chip);
+		if (ret)
+			return ret;
+
+		chip->ecc.read_page = atmel_nand_pmecc_read_page;
+		chip->ecc.write_page = atmel_nand_pmecc_write_page;
+		chip->ecc.read_page_raw = atmel_nand_pmecc_read_page_raw;
+		chip->ecc.write_page_raw = atmel_nand_pmecc_write_page_raw;
+		break;
+
+	default:
+		/* Other modes are not supported. */
+		dev_err(nc->dev, "Unsupported ECC mode: %d\n",
+			chip->ecc.engine_type);
+		return -ENOTSUPP;
+	}
+
+	return 0;
+}
+
+static int atmel_hsmc_nand_ecc_init(struct nand_chip *chip)
+{
+	int ret;
+
+	ret = atmel_nand_ecc_init(chip);
+	if (ret)
+		return ret;
+
+	if (chip->ecc.engine_type != NAND_ECC_ENGINE_TYPE_ON_HOST)
+		return 0;
+
+	/* Adjust the ECC operations for the HSMC IP. */
+	chip->ecc.read_page = atmel_hsmc_nand_pmecc_read_page;
+	chip->ecc.write_page = atmel_hsmc_nand_pmecc_write_page;
+	chip->ecc.read_page_raw = atmel_hsmc_nand_pmecc_read_page_raw;
+	chip->ecc.write_page_raw = atmel_hsmc_nand_pmecc_write_page_raw;
+
+	return 0;
+}
+
+static int atmel_smc_nand_prepare_smcconf(struct atmel_nand *nand,
+					const struct nand_interface_config *conf,
+					struct atmel_smc_cs_conf *smcconf)
+{
+	u32 ncycles, totalcycles, timeps, mckperiodps;
+	struct atmel_nand_controller *nc;
+	int ret;
+
+	nc = to_nand_controller(nand->base.controller);
+
+	/* DDR interface not supported. */
+	if (!nand_interface_is_sdr(conf))
+		return -ENOTSUPP;
+
+	/*
+	 * tRC < 30ns implies EDO mode. This controller does not support this
+	 * mode.
+	 */
+	if (conf->timings.sdr.tRC_min < 30000)
+		return -ENOTSUPP;
+
+	atmel_smc_cs_conf_init(smcconf);
+
+	mckperiodps = NSEC_PER_SEC / clk_get_rate(nc->mck);
+	mckperiodps *= 1000;
+
+	/*
+	 * Set write pulse timing. This one is easy to extract:
+	 *
+	 * NWE_PULSE = tWP
+	 */
+	ncycles = DIV_ROUND_UP(conf->timings.sdr.tWP_min, mckperiodps);
+	totalcycles = ncycles;
+	ret = atmel_smc_cs_conf_set_pulse(smcconf, ATMEL_SMC_NWE_SHIFT,
+					  ncycles);
+	if (ret)
+		return ret;
+
+	/*
+	 * The write setup timing depends on the operation done on the NAND.
+	 * All operations goes through the same data bus, but the operation
+	 * type depends on the address we are writing to (ALE/CLE address
+	 * lines).
+	 * Since we have no way to differentiate the different operations at
+	 * the SMC level, we must consider the worst case (the biggest setup
+	 * time among all operation types):
+	 *
+	 * NWE_SETUP = max(tCLS, tCS, tALS, tDS) - NWE_PULSE
+	 */
+	timeps = max3(conf->timings.sdr.tCLS_min, conf->timings.sdr.tCS_min,
+		      conf->timings.sdr.tALS_min);
+	timeps = max(timeps, conf->timings.sdr.tDS_min);
+	ncycles = DIV_ROUND_UP(timeps, mckperiodps);
+	ncycles = ncycles > totalcycles ? ncycles - totalcycles : 0;
+	totalcycles += ncycles;
+	ret = atmel_smc_cs_conf_set_setup(smcconf, ATMEL_SMC_NWE_SHIFT,
+					  ncycles);
+	if (ret)
+		return ret;
+
+	/*
+	 * As for the write setup timing, the write hold timing depends on the
+	 * operation done on the NAND:
+	 *
+	 * NWE_HOLD = max(tCLH, tCH, tALH, tDH, tWH)
+	 */
+	timeps = max3(conf->timings.sdr.tCLH_min, conf->timings.sdr.tCH_min,
+		      conf->timings.sdr.tALH_min);
+	timeps = max3(timeps, conf->timings.sdr.tDH_min,
+		      conf->timings.sdr.tWH_min);
+	ncycles = DIV_ROUND_UP(timeps, mckperiodps);
+	totalcycles += ncycles;
+
+	/*
+	 * The write cycle timing is directly matching tWC, but is also
+	 * dependent on the other timings on the setup and hold timings we
+	 * calculated earlier, which gives:
+	 *
+	 * NWE_CYCLE = max(tWC, NWE_SETUP + NWE_PULSE + NWE_HOLD)
+	 */
+	ncycles = DIV_ROUND_UP(conf->timings.sdr.tWC_min, mckperiodps);
+	ncycles = max(totalcycles, ncycles);
+	ret = atmel_smc_cs_conf_set_cycle(smcconf, ATMEL_SMC_NWE_SHIFT,
+					  ncycles);
+	if (ret)
+		return ret;
+
+	/*
+	 * We don't want the CS line to be toggled between each byte/word
+	 * transfer to the NAND. The only way to guarantee that is to have the
+	 * NCS_{WR,RD}_{SETUP,HOLD} timings set to 0, which in turn means:
+	 *
+	 * NCS_WR_PULSE = NWE_CYCLE
+	 */
+	ret = atmel_smc_cs_conf_set_pulse(smcconf, ATMEL_SMC_NCS_WR_SHIFT,
+					  ncycles);
+	if (ret)
+		return ret;
+
+	/*
+	 * As for the write setup timing, the read hold timing depends on the
+	 * operation done on the NAND:
+	 *
+	 * NRD_HOLD = max(tREH, tRHOH)
+	 */
+	timeps = max(conf->timings.sdr.tREH_min, conf->timings.sdr.tRHOH_min);
+	ncycles = DIV_ROUND_UP(timeps, mckperiodps);
+	totalcycles = ncycles;
+
+	/*
+	 * TDF = tRHZ - NRD_HOLD
+	 */
+	ncycles = DIV_ROUND_UP(conf->timings.sdr.tRHZ_max, mckperiodps);
+	ncycles -= totalcycles;
+
+	/*
+	 * In ONFI 4.0 specs, tRHZ has been increased to support EDO NANDs and
+	 * we might end up with a config that does not fit in the TDF field.
+	 * Just take the max value in this case and hope that the NAND is more
+	 * tolerant than advertised.
+	 */
+	if (ncycles > ATMEL_SMC_MODE_TDF_MAX)
+		ncycles = ATMEL_SMC_MODE_TDF_MAX;
+	else if (ncycles < ATMEL_SMC_MODE_TDF_MIN)
+		ncycles = ATMEL_SMC_MODE_TDF_MIN;
+
+	smcconf->mode |= ATMEL_SMC_MODE_TDF(ncycles) |
+			 ATMEL_SMC_MODE_TDFMODE_OPTIMIZED;
+
+	/*
+	 * Read pulse timing directly matches tRP:
+	 *
+	 * NRD_PULSE = tRP
+	 */
+	ncycles = DIV_ROUND_UP(conf->timings.sdr.tRP_min, mckperiodps);
+	totalcycles += ncycles;
+	ret = atmel_smc_cs_conf_set_pulse(smcconf, ATMEL_SMC_NRD_SHIFT,
+					  ncycles);
+	if (ret)
+		return ret;
+
+	/*
+	 * The write cycle timing is directly matching tWC, but is also
+	 * dependent on the setup and hold timings we calculated earlier,
+	 * which gives:
+	 *
+	 * NRD_CYCLE = max(tRC, NRD_PULSE + NRD_HOLD)
+	 *
+	 * NRD_SETUP is always 0.
+	 */
+	ncycles = DIV_ROUND_UP(conf->timings.sdr.tRC_min, mckperiodps);
+	ncycles = max(totalcycles, ncycles);
+	ret = atmel_smc_cs_conf_set_cycle(smcconf, ATMEL_SMC_NRD_SHIFT,
+					  ncycles);
+	if (ret)
+		return ret;
+
+	/*
+	 * We don't want the CS line to be toggled between each byte/word
+	 * transfer from the NAND. The only way to guarantee that is to have
+	 * the NCS_{WR,RD}_{SETUP,HOLD} timings set to 0, which in turn means:
+	 *
+	 * NCS_RD_PULSE = NRD_CYCLE
+	 */
+	ret = atmel_smc_cs_conf_set_pulse(smcconf, ATMEL_SMC_NCS_RD_SHIFT,
+					  ncycles);
+	if (ret)
+		return ret;
+
+	/* Txxx timings are directly matching tXXX ones. */
+	ncycles = DIV_ROUND_UP(conf->timings.sdr.tCLR_min, mckperiodps);
+	ret = atmel_smc_cs_conf_set_timing(smcconf,
+					   ATMEL_HSMC_TIMINGS_TCLR_SHIFT,
+					   ncycles);
+	if (ret)
+		return ret;
+
+	ncycles = DIV_ROUND_UP(conf->timings.sdr.tADL_min, mckperiodps);
+	ret = atmel_smc_cs_conf_set_timing(smcconf,
+					   ATMEL_HSMC_TIMINGS_TADL_SHIFT,
+					   ncycles);
+	/*
+	 * Version 4 of the ONFI spec mandates that tADL be at least 400
+	 * nanoseconds, but, depending on the master clock rate, 400 ns may not
+	 * fit in the tADL field of the SMC reg. We need to relax the check and
+	 * accept the -ERANGE return code.
+	 *
+	 * Note that previous versions of the ONFI spec had a lower tADL_min
+	 * (100 or 200 ns). It's not clear why this timing constraint got
+	 * increased but it seems most NANDs are fine with values lower than
+	 * 400ns, so we should be safe.
+	 */
+	if (ret && ret != -ERANGE)
+		return ret;
+
+	ncycles = DIV_ROUND_UP(conf->timings.sdr.tAR_min, mckperiodps);
+	ret = atmel_smc_cs_conf_set_timing(smcconf,
+					   ATMEL_HSMC_TIMINGS_TAR_SHIFT,
+					   ncycles);
+	if (ret)
+		return ret;
+
+	ncycles = DIV_ROUND_UP(conf->timings.sdr.tRR_min, mckperiodps);
+	ret = atmel_smc_cs_conf_set_timing(smcconf,
+					   ATMEL_HSMC_TIMINGS_TRR_SHIFT,
+					   ncycles);
+	if (ret)
+		return ret;
+
+	ncycles = DIV_ROUND_UP(conf->timings.sdr.tWB_max, mckperiodps);
+	ret = atmel_smc_cs_conf_set_timing(smcconf,
+					   ATMEL_HSMC_TIMINGS_TWB_SHIFT,
+					   ncycles);
+	if (ret)
+		return ret;
+
+	/* Attach the CS line to the NFC logic. */
+	smcconf->timings |= ATMEL_HSMC_TIMINGS_NFSEL;
+
+	/* Set the appropriate data bus width. */
+	if (nand->base.options & NAND_BUSWIDTH_16)
+		smcconf->mode |= ATMEL_SMC_MODE_DBW_16;
+
+	/* Operate in NRD/NWE READ/WRITEMODE. */
+	smcconf->mode |= ATMEL_SMC_MODE_READMODE_NRD |
+			 ATMEL_SMC_MODE_WRITEMODE_NWE;
+
+	return 0;
+}
+
+static int atmel_smc_nand_setup_interface(struct atmel_nand *nand,
+					int csline,
+					const struct nand_interface_config *conf)
+{
+	struct atmel_nand_controller *nc;
+	struct atmel_smc_cs_conf smcconf;
+	struct atmel_nand_cs *cs;
+	int ret;
+
+	nc = to_nand_controller(nand->base.controller);
+
+	ret = atmel_smc_nand_prepare_smcconf(nand, conf, &smcconf);
+	if (ret)
+		return ret;
+
+	if (csline == NAND_DATA_IFACE_CHECK_ONLY)
+		return 0;
+
+	cs = &nand->cs[csline];
+	cs->smcconf = smcconf;
+	atmel_smc_cs_conf_apply(nc->smc, cs->id, &cs->smcconf);
+
+	return 0;
+}
+
+static int atmel_hsmc_nand_setup_interface(struct atmel_nand *nand,
+					int csline,
+					const struct nand_interface_config *conf)
+{
+	struct atmel_hsmc_nand_controller *nc;
+	struct atmel_smc_cs_conf smcconf;
+	struct atmel_nand_cs *cs;
+	int ret;
+
+	nc = to_hsmc_nand_controller(nand->base.controller);
+
+	ret = atmel_smc_nand_prepare_smcconf(nand, conf, &smcconf);
+	if (ret)
+		return ret;
+
+	if (csline == NAND_DATA_IFACE_CHECK_ONLY)
+		return 0;
+
+	cs = &nand->cs[csline];
+	cs->smcconf = smcconf;
+
+	if (cs->rb.type == ATMEL_NAND_NATIVE_RB)
+		cs->smcconf.timings |= ATMEL_HSMC_TIMINGS_RBNSEL(cs->rb.id);
+
+	atmel_hsmc_cs_conf_apply(nc->base.smc, nc->hsmc_layout, cs->id,
+				 &cs->smcconf);
+
+	return 0;
+}
+
+static int atmel_nand_setup_interface(struct nand_chip *chip, int csline,
+				      const struct nand_interface_config *conf)
+{
+	struct atmel_nand *nand = to_atmel_nand(chip);
+	const struct nand_sdr_timings *sdr;
+	struct atmel_nand_controller *nc;
+
+	sdr = nand_get_sdr_timings(conf);
+	if (IS_ERR(sdr))
+		return PTR_ERR(sdr);
+
+	nc = to_nand_controller(nand->base.controller);
+
+	if (csline >= nand->numcs ||
+	    (csline < 0 && csline != NAND_DATA_IFACE_CHECK_ONLY))
+		return -EINVAL;
+
+	return nc->caps->ops->setup_interface(nand, csline, conf);
+}
+
+static int atmel_nand_exec_op(struct nand_chip *chip,
+			      const struct nand_operation *op,
+			      bool check_only)
+{
+	struct atmel_nand *nand = to_atmel_nand(chip);
+	struct atmel_nand_controller *nc;
+
+	nc = to_nand_controller(nand->base.controller);
+
+	return nc->caps->ops->exec_op(nand, op, check_only);
+}
+
+static void atmel_nand_init(struct atmel_nand_controller *nc,
+			    struct atmel_nand *nand)
+{
+	struct nand_chip *chip = &nand->base;
+	struct mtd_info *mtd = nand_to_mtd(chip);
+
+	mtd->dev.parent = nc->dev;
+	nand->base.controller = &nc->base;
+
+	if (!nc->mck || !nc->caps->ops->setup_interface)
+		chip->options |= NAND_KEEP_TIMINGS;
+
+	/* Default to HW ECC if pmecc is available. */
+	if (nc->pmecc)
+		chip->ecc.engine_type = NAND_ECC_ENGINE_TYPE_ON_HOST;
+}
+
+static void atmel_smc_nand_init(struct atmel_nand_controller *nc,
+				struct atmel_nand *nand)
+{
+	struct nand_chip *chip = &nand->base;
+	struct atmel_smc_nand_controller *smc_nc;
+	int i;
+
+	atmel_nand_init(nc, nand);
+
+	smc_nc = to_smc_nand_controller(chip->controller);
+	if (!smc_nc->ebi_csa_regmap)
+		return;
+
+	/* Attach the CS to the NAND Flash logic. */
+	for (i = 0; i < nand->numcs; i++)
+		regmap_update_bits(smc_nc->ebi_csa_regmap,
+				   smc_nc->ebi_csa->offs,
+				   BIT(nand->cs[i].id), BIT(nand->cs[i].id));
+
+	if (smc_nc->ebi_csa->nfd0_on_d16)
+		regmap_update_bits(smc_nc->ebi_csa_regmap,
+				   smc_nc->ebi_csa->offs,
+				   smc_nc->ebi_csa->nfd0_on_d16,
+				   smc_nc->ebi_csa->nfd0_on_d16);
+}
+
+static struct atmel_nand *atmel_nand_create(struct atmel_nand_controller *nc,
+					    struct device_node *np,
+					    int reg_cells)
+{
+	struct atmel_nand *nand;
+	int gpio;
+	int numcs, ret, i;
+
+	numcs = of_property_count_elems_of_size(np, "reg",
+						reg_cells * sizeof(u32));
+	if (numcs < 1) {
+		dev_err(nc->dev, "Missing or invalid reg property\n");
+		return ERR_PTR(-EINVAL);
+	}
+
+	nand = kzalloc(struct_size(nand, cs, numcs), GFP_KERNEL);
+	if (!nand)
+		return ERR_PTR(-ENOMEM);
+
+	nand->cdgpio = -ENOENT;
+	nand->numcs = numcs;
+
+	gpio = dev_gpiod_get(nc->dev, np, "det", GPIOD_IN, "nand-det");
+	if (gpio < 0 && gpio != -ENOENT) {
+		ret = dev_err_probe(nc->dev, gpio, "Failed to get detect gpio\n");
+		return ERR_PTR(ret);
+	}
+
+	if (gpio < 0)
+		nand->cdgpio = gpio;
+
+	for (i = 0; i < numcs; i++) {
+		struct resource res;
+		u32 val;
+
+		ret = of_address_to_resource(np, 0, &res);
+		if (ret) {
+			dev_err(nc->dev, "Invalid reg property (err = %d)\n",
+				ret);
+			return ERR_PTR(ret);
+		}
+
+		ret = of_property_read_u32_index(np, "reg", i * reg_cells,
+						 &val);
+		if (ret) {
+			dev_err(nc->dev, "Invalid reg property (err = %d)\n",
+				ret);
+			return ERR_PTR(ret);
+		}
+
+		nand->cs[i].id = val;
+		nand->cs[i].csgpio = -ENOENT;
+
+		nand->cs[i].io.virt = IOMEM(res.start);
+		ret = dev_request_resource(nc->dev, &res);
+		if (ret < 0)
+			return ERR_PTR(ret);
+
+		if (!of_property_read_u32(np, "atmel,rb", &val)) {
+			if (val > ATMEL_NFC_MAX_RB_ID)
+				return ERR_PTR(-EINVAL);
+
+			nand->cs[i].rb.type = ATMEL_NAND_NATIVE_RB;
+			nand->cs[i].rb.id = val;
+		} else {
+			gpio = dev_gpiod_get_index(nc->dev, np, "rb", i, GPIOD_IN, "nand-rb");
+			if (gpio < 0 && gpio != -ENOENT) {
+				ret = dev_err_probe(nc->dev, gpio, "Failed to get R/B gpio\n");
+				return ERR_PTR(ret);
+			}
+
+			if (gpio < 0) {
+				nand->cs[i].rb.type = ATMEL_NAND_GPIO_RB;
+				nand->cs[i].rb.gpio = gpio;
+			}
+		}
+
+		gpio = dev_gpiod_get_index(nc->dev, np, "cs", i, GPIOD_OUT_HIGH, "nand-cs");
+		if (gpio < 0 && gpio != -ENOENT) {
+			ret = dev_err_probe(nc->dev, gpio, "Failed to get CS gpio\n");
+			return ERR_PTR(ret);
+		}
+
+		if (gpio < 0)
+			nand->cs[i].csgpio = gpio;
+	}
+
+	nand_set_flash_node(&nand->base, np);
+
+	return nand;
+}
+
+static int
+atmel_nand_controller_add_nand(struct atmel_nand_controller *nc,
+			       struct atmel_nand *nand)
+{
+	struct nand_chip *chip = &nand->base;
+	struct mtd_info *mtd = nand_to_mtd(chip);
+	int ret;
+
+	/* No card inserted, skip this NAND. */
+	if (gpio_is_valid(nand->cdgpio) && gpiod_get_value(nand->cdgpio)) {
+		dev_info(nc->dev, "No SmartMedia card inserted.\n");
+		return 0;
+	}
+
+	nc->caps->ops->nand_init(nc, nand);
+
+	ret = nand_scan(chip, nand->numcs);
+	if (ret) {
+		dev_err(nc->dev, "NAND scan failed: %d\n", ret);
+		return ret;
+	}
+
+	ret = add_mtd_nand_device(mtd, "nand");
+	if (ret) {
+		dev_err(nc->dev, "Failed to register mtd device: %d\n", ret);
+		nand_cleanup(chip);
+		return ret;
+	}
+
+	list_add_tail(&nand->node, &nc->chips);
+
+	return 0;
+}
+
+static int atmel_nand_controller_add_nands(struct atmel_nand_controller *nc)
+{
+	struct device_node *np, *nand_np;
+	struct device *dev = nc->dev;
+	int ret, reg_cells;
+	u32 val;
+
+	np = dev->of_node;
+
+	ret = of_property_read_u32(np, "#address-cells", &val);
+	if (ret) {
+		dev_err(dev, "missing #address-cells property\n");
+		return ret;
+	}
+
+	reg_cells = val;
+
+	ret = of_property_read_u32(np, "#size-cells", &val);
+	if (ret) {
+		dev_err(dev, "missing #size-cells property\n");
+		return ret;
+	}
+
+	reg_cells += val;
+
+	for_each_child_of_node(np, nand_np) {
+		struct atmel_nand *nand;
+
+		nand = atmel_nand_create(nc, nand_np, reg_cells);
+		if (IS_ERR(nand))
+			return PTR_ERR(nand);
+
+		ret = atmel_nand_controller_add_nand(nc, nand);
+		if (ret)
+			return ret;
+	}
+
+	return 0;
+}
+
+static void atmel_nand_controller_cleanup(struct atmel_nand_controller *nc)
+{
+	clk_put(nc->mck);
+}
+
+static const struct atmel_smc_nand_ebi_csa_cfg at91sam9260_ebi_csa = {
+	.offs = AT91SAM9260_MATRIX_EBICSA,
+};
+
+static const struct atmel_smc_nand_ebi_csa_cfg at91sam9261_ebi_csa = {
+	.offs = AT91SAM9261_MATRIX_EBICSA,
+};
+
+static const struct atmel_smc_nand_ebi_csa_cfg at91sam9263_ebi_csa = {
+	.offs = AT91SAM9263_MATRIX_EBI0CSA,
+};
+
+static const struct atmel_smc_nand_ebi_csa_cfg at91sam9rl_ebi_csa = {
+	.offs = AT91SAM9RL_MATRIX_EBICSA,
+};
+
+static const struct atmel_smc_nand_ebi_csa_cfg at91sam9g45_ebi_csa = {
+	.offs = AT91SAM9G45_MATRIX_EBICSA,
+};
+
+static const struct atmel_smc_nand_ebi_csa_cfg at91sam9n12_ebi_csa = {
+	.offs = AT91SAM9N12_MATRIX_EBICSA,
+};
+
+static const struct atmel_smc_nand_ebi_csa_cfg at91sam9x5_ebi_csa = {
+	.offs = AT91SAM9X5_MATRIX_EBICSA,
+};
+
+static const struct atmel_smc_nand_ebi_csa_cfg sam9x60_ebi_csa = {
+	.offs = AT91_SFR_CCFG_EBICSA,
+	.nfd0_on_d16 = AT91_SFR_CCFG_NFD0_ON_D16,
+};
+
+static const struct of_device_id __maybe_unused atmel_ebi_csa_regmap_of_ids[] = {
+	{
+		.compatible = "atmel,at91sam9260-matrix",
+		.data = &at91sam9260_ebi_csa,
+	},
+	{
+		.compatible = "atmel,at91sam9261-matrix",
+		.data = &at91sam9261_ebi_csa,
+	},
+	{
+		.compatible = "atmel,at91sam9263-matrix",
+		.data = &at91sam9263_ebi_csa,
+	},
+	{
+		.compatible = "atmel,at91sam9rl-matrix",
+		.data = &at91sam9rl_ebi_csa,
+	},
+	{
+		.compatible = "atmel,at91sam9g45-matrix",
+		.data = &at91sam9g45_ebi_csa,
+	},
+	{
+		.compatible = "atmel,at91sam9n12-matrix",
+		.data = &at91sam9n12_ebi_csa,
+	},
+	{
+		.compatible = "atmel,at91sam9x5-matrix",
+		.data = &at91sam9x5_ebi_csa,
+	},
+	{
+		.compatible = "microchip,sam9x60-sfr",
+		.data = &sam9x60_ebi_csa,
+	},
+	{ /* sentinel */ },
+};
+
+static int atmel_nand_attach_chip(struct nand_chip *chip)
+{
+	struct atmel_nand_controller *nc = to_nand_controller(chip->controller);
+	struct atmel_nand *nand = to_atmel_nand(chip);
+	struct mtd_info *mtd = nand_to_mtd(chip);
+	int ret;
+
+	ret = nc->caps->ops->ecc_init(chip);
+	if (ret)
+		return ret;
+
+	if (!mtd->name) {
+		/*
+		 * If the new bindings are used and the bootloader has not been
+		 * updated to pass a new mtdparts parameter on the cmdline, you
+		 * should define the following property in your nand node:
+		 *
+		 *	label = "atmel_nand";
+		 *
+		 * This way, mtd->name will be set by the core when
+		 * nand_set_flash_node() is called.
+		 */
+		mtd->name = basprintf("%s:nand.%d", dev_name(nc->dev),
+				      nand->cs[0].id);
+		if (!mtd->name) {
+			dev_err(nc->dev, "Failed to allocate mtd->name\n");
+			return -ENOMEM;
+		}
+	}
+
+	return 0;
+}
+
+static const struct nand_controller_ops atmel_nand_controller_ops = {
+	.attach_chip = atmel_nand_attach_chip,
+	.setup_interface = atmel_nand_setup_interface,
+	.exec_op = atmel_nand_exec_op,
+};
+
+static int atmel_nand_controller_init(struct atmel_nand_controller *nc,
+				struct device *dev,
+				const struct atmel_nand_controller_caps *caps)
+{
+	struct device_node *np = dev->of_node;
+	int ret;
+
+	nand_controller_init(&nc->base);
+	nc->base.ops = &atmel_nand_controller_ops;
+	INIT_LIST_HEAD(&nc->chips);
+	nc->dev = dev;
+	nc->caps = caps;
+
+	dev->priv = nc;
+
+	nc->pmecc = dev_atmel_pmecc_get(dev);
+	if (IS_ERR(nc->pmecc))
+		return dev_err_probe(dev, PTR_ERR(nc->pmecc),
+				     "Could not get PMECC object\n");
+
+	nc->mck = of_clk_get(dev->parent->of_node, 0);
+	if (IS_ERR(nc->mck)) {
+		dev_err(dev, "Failed to retrieve MCK clk\n");
+		ret = PTR_ERR(nc->mck);
+		goto out_release_dma;
+	}
+
+	np = of_parse_phandle(dev->parent->of_node, "atmel,smc", 0);
+	if (!np) {
+		dev_err(dev, "Missing or invalid atmel,smc property\n");
+		ret = -EINVAL;
+		goto out_release_dma;
+	}
+
+	nc->smc = syscon_node_to_regmap(np);
+	of_node_put(np);
+	if (IS_ERR(nc->smc)) {
+		ret = PTR_ERR(nc->smc);
+		dev_err(dev, "Could not get SMC regmap (err = %d)\n", ret);
+		goto out_release_dma;
+	}
+
+	return 0;
+
+out_release_dma:
+	return ret;
+}
+
+static int
+atmel_smc_nand_controller_init(struct atmel_smc_nand_controller *nc)
+{
+	struct device *dev = nc->base.dev;
+	const struct of_device_id *match;
+	struct device_node *np;
+	int ret;
+
+	np = of_parse_phandle(dev->parent->of_node,
+			      nc->base.caps->ebi_csa_regmap_name, 0);
+	if (!np)
+		return 0;
+
+	match = of_match_node(atmel_ebi_csa_regmap_of_ids, np);
+	if (!match) {
+		of_node_put(np);
+		return 0;
+	}
+
+	nc->ebi_csa_regmap = syscon_node_to_regmap(np);
+	of_node_put(np);
+	if (IS_ERR(nc->ebi_csa_regmap)) {
+		ret = PTR_ERR(nc->ebi_csa_regmap);
+		dev_err(dev, "Could not get EBICSA regmap (err = %d)\n", ret);
+		return ret;
+	}
+
+	nc->ebi_csa = (struct atmel_smc_nand_ebi_csa_cfg *)match->data;
+
+	/*
+	 * The at91sam9263 has 2 EBIs, if the NAND controller is under EBI1
+	 * add 4 to ->ebi_csa->offs.
+	 */
+	if (of_device_is_compatible(dev->parent->of_node,
+				    "atmel,at91sam9263-ebi1"))
+		nc->ebi_csa->offs += 4;
+
+	return 0;
+}
+
+static int
+atmel_hsmc_nand_controller_init(struct atmel_hsmc_nand_controller *nc)
+{
+	struct device *dev = nc->base.dev;
+	struct device_node *np;
+	int ret;
+
+	np = of_parse_phandle(dev->parent->of_node, "atmel,smc", 0);
+	if (!np) {
+		dev_err(dev, "Missing or invalid atmel,smc property\n");
+		return -EINVAL;
+	}
+
+	nc->hsmc_layout = atmel_hsmc_get_reg_layout(np);
+
+	np = of_parse_phandle(dev->of_node, "atmel,nfc-io", 0);
+	if (!np) {
+		dev_err(dev, "Missing or invalid atmel,nfc-io property\n");
+		return -EINVAL;
+	}
+
+	nc->io = syscon_node_to_regmap(np);
+	of_node_put(np);
+	if (IS_ERR(nc->io)) {
+		ret = PTR_ERR(nc->io);
+		dev_err(dev, "Could not get NFC IO regmap (err = %d)\n", ret);
+		return ret;
+	}
+
+	nc->sram.pool = of_gen_pool_get(nc->base.dev->of_node,
+					 "atmel,nfc-sram", 0);
+	if (!nc->sram.pool) {
+		dev_err(nc->base.dev, "Missing SRAM\n");
+		return -ENOMEM;
+	}
+
+	nc->sram.virt = (void __iomem *)gen_pool_dma_alloc(nc->sram.pool,
+							   ATMEL_NFC_SRAM_SIZE,
+							   NULL);
+	if (!nc->sram.virt) {
+		dev_err(nc->base.dev,
+			"Could not allocate memory from the NFC SRAM pool\n");
+		return -ENOMEM;
+	}
+
+	return 0;
+}
+
+static void
+atmel_hsmc_nand_controller_remove(struct atmel_nand_controller *nc)
+{
+	struct atmel_hsmc_nand_controller *hsmc_nc;
+
+	hsmc_nc = container_of(nc, struct atmel_hsmc_nand_controller, base);
+	regmap_write(hsmc_nc->base.smc, ATMEL_HSMC_NFC_CTRL,
+		     ATMEL_HSMC_NFC_CTRL_DIS);
+
+	atmel_nand_controller_cleanup(nc);
+}
+
+static int atmel_hsmc_nand_controller_probe(struct device *dev,
+				const struct atmel_nand_controller_caps *caps)
+{
+	struct atmel_hsmc_nand_controller *nc;
+	int ret;
+
+	nc = kzalloc(sizeof(*nc), GFP_KERNEL);
+	if (!nc)
+		return -ENOMEM;
+
+	ret = atmel_nand_controller_init(&nc->base, dev, caps);
+	if (ret)
+		return ret;
+
+	ret = atmel_hsmc_nand_controller_init(nc);
+	if (ret)
+		return ret;
+
+	/* Make sure all irqs are masked . */
+	regmap_write(nc->base.smc, ATMEL_HSMC_NFC_IDR, 0xffffffff);
+
+	/* Initial NFC configuration. */
+	regmap_write(nc->base.smc, ATMEL_HSMC_NFC_CFG,
+		     ATMEL_HSMC_NFC_CFG_DTO_MAX);
+	regmap_write(nc->base.smc, ATMEL_HSMC_NFC_CTRL,
+		     ATMEL_HSMC_NFC_CTRL_EN);
+
+	ret = atmel_nand_controller_add_nands(&nc->base);
+	if (ret)
+		goto err;
+
+	return 0;
+
+err:
+	atmel_hsmc_nand_controller_remove(&nc->base);
+
+	return ret;
+}
+
+static const struct atmel_nand_controller_ops atmel_hsmc_nc_ops = {
+	.probe = atmel_hsmc_nand_controller_probe,
+	.ecc_init = atmel_hsmc_nand_ecc_init,
+	.nand_init = atmel_nand_init,
+	.setup_interface = atmel_hsmc_nand_setup_interface,
+	.exec_op = atmel_hsmc_nand_exec_op,
+};
+
+static const struct atmel_nand_controller_caps atmel_sama5_nc_caps = {
+	.ale_offs = BIT(21),
+	.cle_offs = BIT(22),
+	.ops = &atmel_hsmc_nc_ops,
+};
+
+static int atmel_smc_nand_controller_probe(struct device *dev,
+				const struct atmel_nand_controller_caps *caps)
+{
+	struct atmel_smc_nand_controller *nc;
+	int ret;
+
+	nc = kzalloc(sizeof(*nc), GFP_KERNEL);
+	if (!nc)
+		return -ENOMEM;
+
+	ret = atmel_nand_controller_init(&nc->base, dev, caps);
+	if (ret)
+		return ret;
+
+	ret = atmel_smc_nand_controller_init(nc);
+	if (ret)
+		return ret;
+
+	return atmel_nand_controller_add_nands(&nc->base);
+}
+
+/*
+ * The SMC reg layout of at91rm9200 is completely different which prevents us
+ * from re-using atmel_smc_nand_setup_interface() for the
+ * ->setup_interface() hook.
+ * At this point, there's no support for the at91rm9200 SMC IP, so we leave
+ * ->setup_interface() unassigned.
+ */
+static const struct atmel_nand_controller_ops at91rm9200_nc_ops = {
+	.probe = atmel_smc_nand_controller_probe,
+	.ecc_init = atmel_nand_ecc_init,
+	.nand_init = atmel_smc_nand_init,
+	.exec_op = atmel_smc_nand_exec_op,
+};
+
+static const struct atmel_nand_controller_caps atmel_rm9200_nc_caps = {
+	.ale_offs = BIT(21),
+	.cle_offs = BIT(22),
+	.ebi_csa_regmap_name = "atmel,matrix",
+	.ops = &at91rm9200_nc_ops,
+};
+
+static const struct atmel_nand_controller_ops atmel_smc_nc_ops = {
+	.probe = atmel_smc_nand_controller_probe,
+	.ecc_init = atmel_nand_ecc_init,
+	.nand_init = atmel_smc_nand_init,
+	.setup_interface = atmel_smc_nand_setup_interface,
+	.exec_op = atmel_smc_nand_exec_op,
+};
+
+static const struct atmel_nand_controller_caps atmel_sam9260_nc_caps = {
+	.ale_offs = BIT(21),
+	.cle_offs = BIT(22),
+	.ebi_csa_regmap_name = "atmel,matrix",
+	.ops = &atmel_smc_nc_ops,
+};
+
+static const struct atmel_nand_controller_caps atmel_sam9261_nc_caps = {
+	.ale_offs = BIT(22),
+	.cle_offs = BIT(21),
+	.ebi_csa_regmap_name = "atmel,matrix",
+	.ops = &atmel_smc_nc_ops,
+};
+
+static const struct atmel_nand_controller_caps atmel_sam9g45_nc_caps = {
+	.ale_offs = BIT(21),
+	.cle_offs = BIT(22),
+	.ebi_csa_regmap_name = "atmel,matrix",
+	.ops = &atmel_smc_nc_ops,
+};
+
+static const struct atmel_nand_controller_caps microchip_sam9x60_nc_caps = {
+	.ale_offs = BIT(21),
+	.cle_offs = BIT(22),
+	.ebi_csa_regmap_name = "microchip,sfr",
+	.ops = &atmel_smc_nc_ops,
+};
+
+static const struct of_device_id atmel_nand_controller_of_ids[] = {
+	{
+		.compatible = "atmel,at91rm9200-nand-controller",
+		.data = &atmel_rm9200_nc_caps,
+	},
+	{
+		.compatible = "atmel,at91sam9260-nand-controller",
+		.data = &atmel_sam9260_nc_caps,
+	},
+	{
+		.compatible = "atmel,at91sam9261-nand-controller",
+		.data = &atmel_sam9261_nc_caps,
+	},
+	{
+		.compatible = "atmel,at91sam9g45-nand-controller",
+		.data = &atmel_sam9g45_nc_caps,
+	},
+	{
+		.compatible = "atmel,sama5d3-nand-controller",
+		.data = &atmel_sama5_nc_caps,
+	},
+	{
+		.compatible = "microchip,sam9x60-nand-controller",
+		.data = &microchip_sam9x60_nc_caps,
+	},
+	{ /* sentinel */ },
+};
+MODULE_DEVICE_TABLE(of, atmel_nand_controller_of_ids);
+
+static int atmel_nand_controller_probe(struct device *dev)
+{
+	const struct atmel_nand_controller_caps *caps;
+
+	if (dev->id_entry)
+		caps = (void *)dev->id_entry->driver_data;
+	else
+		caps = of_device_get_match_data(dev);
+
+	if (!caps) {
+		dev_err(dev, "Could not retrieve NFC caps\n");
+		return -EINVAL;
+	}
+
+	return caps->ops->probe(dev, caps);
+}
+
+static struct driver atmel_nand_controller_driver = {
+	.name = "atmel-nand-controller",
+	.of_match_table = atmel_nand_controller_of_ids,
+	.probe = atmel_nand_controller_probe,
+};
+device_platform_driver(atmel_nand_controller_driver);
+
+MODULE_LICENSE("GPL");
+MODULE_AUTHOR("Boris Brezillon <boris.brezillon@free-electrons.com>");
+MODULE_DESCRIPTION("NAND Flash Controller driver for Atmel SoCs");
+MODULE_ALIAS("platform:atmel-nand-controller");
diff --git a/drivers/mtd/nand/atmel/pmecc.c b/drivers/mtd/nand/atmel/pmecc.c
new file mode 100644
index 000000000000..50e29d59de3f
--- /dev/null
+++ b/drivers/mtd/nand/atmel/pmecc.c
@@ -0,0 +1,992 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright 2017 ATMEL
+ * Copyright 2017 Free Electrons
+ *
+ * Author: Boris Brezillon <boris.brezillon@free-electrons.com>
+ *
+ * Derived from the atmel_nand.c driver which contained the following
+ * copyrights:
+ *
+ *   Copyright 2003 Rick Bronson
+ *
+ *   Derived from drivers/mtd/nand/autcpu12.c (removed in v3.8)
+ *	Copyright 2001 Thomas Gleixner (gleixner@autronix.de)
+ *
+ *   Derived from drivers/mtd/spia.c (removed in v3.8)
+ *	Copyright 2000 Steven J. Hill (sjhill@cotw.com)
+ *
+ *   Add Hardware ECC support for AT91SAM9260 / AT91SAM9263
+ *	Richard Genoud (richard.genoud@gmail.com), Adeneo Copyright 2007
+ *
+ *   Derived from Das U-Boot source code
+ *	(u-boot-1.1.5/board/atmel/at91sam9263ek/nand.c)
+ *      Copyright 2006 ATMEL Rousset, Lacressonniere Nicolas
+ *
+ *   Add Programmable Multibit ECC support for various AT91 SoC
+ *	Copyright 2012 ATMEL, Hong Xu
+ *
+ *   Add Nand Flash Controller support for SAMA5 SoC
+ *	Copyright 2013 ATMEL, Josh Wu (josh.wu@atmel.com)
+ *
+ * The PMECC is an hardware assisted BCH engine, which means part of the
+ * ECC algorithm is left to the software. The hardware/software repartition
+ * is explained in the "PMECC Controller Functional Description" chapter in
+ * Atmel datasheets, and some of the functions in this file are directly
+ * implementing the algorithms described in the "Software Implementation"
+ * sub-section.
+ *
+ * TODO: it seems that the software BCH implementation in lib/bch.c is already
+ * providing some of the logic we are implementing here. It would be smart
+ * to expose the needed lib/bch.c helpers/functions and re-use them here.
+ */
+
+#include <linux/iopoll.h>
+#include <module.h>
+#include <linux/mtd/rawnand.h>
+#include <of.h>
+#include <of_device.h>
+#include <linux/slab.h>
+
+#include "pmecc.h"
+
+/* Galois field dimension */
+#define PMECC_GF_DIMENSION_13			13
+#define PMECC_GF_DIMENSION_14			14
+
+/* Primitive Polynomial used by PMECC */
+#define PMECC_GF_13_PRIMITIVE_POLY		0x201b
+#define PMECC_GF_14_PRIMITIVE_POLY		0x4443
+
+#define PMECC_LOOKUP_TABLE_SIZE_512		0x2000
+#define PMECC_LOOKUP_TABLE_SIZE_1024		0x4000
+
+/* Time out value for reading PMECC status register */
+#define PMECC_MAX_TIMEOUT_MS			100
+
+/* PMECC Register Definitions */
+#define ATMEL_PMECC_CFG				0x0
+#define PMECC_CFG_BCH_STRENGTH(x)		(x)
+#define PMECC_CFG_BCH_STRENGTH_MASK		GENMASK(2, 0)
+#define PMECC_CFG_SECTOR512			(0 << 4)
+#define PMECC_CFG_SECTOR1024			(1 << 4)
+#define PMECC_CFG_NSECTORS(x)			((fls(x) - 1) << 8)
+#define PMECC_CFG_READ_OP			(0 << 12)
+#define PMECC_CFG_WRITE_OP			(1 << 12)
+#define PMECC_CFG_SPARE_ENABLE			BIT(16)
+#define PMECC_CFG_AUTO_ENABLE			BIT(20)
+
+#define ATMEL_PMECC_SAREA			0x4
+#define ATMEL_PMECC_SADDR			0x8
+#define ATMEL_PMECC_EADDR			0xc
+
+#define ATMEL_PMECC_CLK				0x10
+#define PMECC_CLK_133MHZ			(2 << 0)
+
+#define ATMEL_PMECC_CTRL			0x14
+#define PMECC_CTRL_RST				BIT(0)
+#define PMECC_CTRL_DATA				BIT(1)
+#define PMECC_CTRL_USER				BIT(2)
+#define PMECC_CTRL_ENABLE			BIT(4)
+#define PMECC_CTRL_DISABLE			BIT(5)
+
+#define ATMEL_PMECC_SR				0x18
+#define PMECC_SR_BUSY				BIT(0)
+#define PMECC_SR_ENABLE				BIT(4)
+
+#define ATMEL_PMECC_IER				0x1c
+#define ATMEL_PMECC_IDR				0x20
+#define ATMEL_PMECC_IMR				0x24
+#define ATMEL_PMECC_ISR				0x28
+#define PMECC_ERROR_INT				BIT(0)
+
+#define ATMEL_PMECC_ECC(sector, n)		\
+	((((sector) + 1) * 0x40) + (n))
+
+#define ATMEL_PMECC_REM(sector, n)		\
+	((((sector) + 1) * 0x40) + ((n) * 4) + 0x200)
+
+/* PMERRLOC Register Definitions */
+#define ATMEL_PMERRLOC_ELCFG			0x0
+#define PMERRLOC_ELCFG_SECTOR_512		(0 << 0)
+#define PMERRLOC_ELCFG_SECTOR_1024		(1 << 0)
+#define PMERRLOC_ELCFG_NUM_ERRORS(n)		((n) << 16)
+
+#define ATMEL_PMERRLOC_ELPRIM			0x4
+#define ATMEL_PMERRLOC_ELEN			0x8
+#define ATMEL_PMERRLOC_ELDIS			0xc
+#define PMERRLOC_DISABLE			BIT(0)
+
+#define ATMEL_PMERRLOC_ELSR			0x10
+#define PMERRLOC_ELSR_BUSY			BIT(0)
+
+#define ATMEL_PMERRLOC_ELIER			0x14
+#define ATMEL_PMERRLOC_ELIDR			0x18
+#define ATMEL_PMERRLOC_ELIMR			0x1c
+#define ATMEL_PMERRLOC_ELISR			0x20
+#define PMERRLOC_ERR_NUM_MASK			GENMASK(12, 8)
+#define PMERRLOC_CALC_DONE			BIT(0)
+
+#define ATMEL_PMERRLOC_SIGMA(x)			(((x) * 0x4) + 0x28)
+
+#define ATMEL_PMERRLOC_EL(offs, x)		(((x) * 0x4) + (offs))
+
+struct atmel_pmecc_gf_tables {
+	u16 *alpha_to;
+	u16 *index_of;
+};
+
+struct atmel_pmecc_caps {
+	const int *strengths;
+	int nstrengths;
+	int el_offset;
+	bool correct_erased_chunks;
+};
+
+struct atmel_pmecc {
+	struct device *dev;
+	const struct atmel_pmecc_caps *caps;
+
+	struct {
+		void __iomem *base;
+		void __iomem *errloc;
+	} regs;
+
+	struct mutex lock;
+};
+
+struct atmel_pmecc_user_conf_cache {
+	u32 cfg;
+	u32 sarea;
+	u32 saddr;
+	u32 eaddr;
+};
+
+struct atmel_pmecc_user {
+	struct atmel_pmecc_user_conf_cache cache;
+	struct atmel_pmecc *pmecc;
+	const struct atmel_pmecc_gf_tables *gf_tables;
+	int eccbytes;
+	s16 *partial_syn;
+	s16 *si;
+	s16 *lmu;
+	s16 *smu;
+	s32 *mu;
+	s32 *dmu;
+	s32 *delta;
+	u32 isr;
+};
+
+static DEFINE_MUTEX(pmecc_gf_tables_lock);
+static const struct atmel_pmecc_gf_tables *pmecc_gf_tables_512;
+static const struct atmel_pmecc_gf_tables *pmecc_gf_tables_1024;
+
+static inline int deg(unsigned int poly)
+{
+	/* polynomial degree is the most-significant bit index */
+	return fls(poly) - 1;
+}
+
+static int atmel_pmecc_build_gf_tables(int mm, unsigned int poly,
+				       struct atmel_pmecc_gf_tables *gf_tables)
+{
+	unsigned int i, x = 1;
+	const unsigned int k = BIT(deg(poly));
+	unsigned int nn = BIT(mm) - 1;
+
+	/* primitive polynomial must be of degree m */
+	if (k != (1u << mm))
+		return -EINVAL;
+
+	for (i = 0; i < nn; i++) {
+		gf_tables->alpha_to[i] = x;
+		gf_tables->index_of[x] = i;
+		if (i && (x == 1))
+			/* polynomial is not primitive (a^i=1 with 0<i<2^m-1) */
+			return -EINVAL;
+		x <<= 1;
+		if (x & k)
+			x ^= poly;
+	}
+	gf_tables->alpha_to[nn] = 1;
+	gf_tables->index_of[0] = 0;
+
+	return 0;
+}
+
+static const struct atmel_pmecc_gf_tables *
+atmel_pmecc_create_gf_tables(const struct atmel_pmecc_user_req *req)
+{
+	struct atmel_pmecc_gf_tables *gf_tables;
+	unsigned int poly, degree, table_size;
+	int ret;
+
+	if (req->ecc.sectorsize == 512) {
+		degree = PMECC_GF_DIMENSION_13;
+		poly = PMECC_GF_13_PRIMITIVE_POLY;
+		table_size = PMECC_LOOKUP_TABLE_SIZE_512;
+	} else {
+		degree = PMECC_GF_DIMENSION_14;
+		poly = PMECC_GF_14_PRIMITIVE_POLY;
+		table_size = PMECC_LOOKUP_TABLE_SIZE_1024;
+	}
+
+	gf_tables = kzalloc(sizeof(*gf_tables) +
+			    (2 * table_size * sizeof(u16)),
+			    GFP_KERNEL);
+	if (!gf_tables)
+		return ERR_PTR(-ENOMEM);
+
+	gf_tables->alpha_to = (void *)(gf_tables + 1);
+	gf_tables->index_of = gf_tables->alpha_to + table_size;
+
+	ret = atmel_pmecc_build_gf_tables(degree, poly, gf_tables);
+	if (ret) {
+		kfree(gf_tables);
+		return ERR_PTR(ret);
+	}
+
+	return gf_tables;
+}
+
+static const struct atmel_pmecc_gf_tables *
+atmel_pmecc_get_gf_tables(const struct atmel_pmecc_user_req *req)
+{
+	const struct atmel_pmecc_gf_tables **gf_tables, *ret;
+
+	mutex_lock(&pmecc_gf_tables_lock);
+	if (req->ecc.sectorsize == 512)
+		gf_tables = &pmecc_gf_tables_512;
+	else
+		gf_tables = &pmecc_gf_tables_1024;
+
+	ret = *gf_tables;
+
+	if (!ret) {
+		ret = atmel_pmecc_create_gf_tables(req);
+		if (!IS_ERR(ret))
+			*gf_tables = ret;
+	}
+	mutex_unlock(&pmecc_gf_tables_lock);
+
+	return ret;
+}
+
+static int atmel_pmecc_prepare_user_req(struct atmel_pmecc *pmecc,
+					struct atmel_pmecc_user_req *req)
+{
+	int i, max_eccbytes, eccbytes = 0, eccstrength = 0;
+
+	if (req->pagesize <= 0 || req->oobsize <= 0 || req->ecc.bytes <= 0)
+		return -EINVAL;
+
+	if (req->ecc.ooboffset >= 0 &&
+	    req->ecc.ooboffset + req->ecc.bytes > req->oobsize)
+		return -EINVAL;
+
+	if (req->ecc.sectorsize == ATMEL_PMECC_SECTOR_SIZE_AUTO) {
+		if (req->ecc.strength != ATMEL_PMECC_MAXIMIZE_ECC_STRENGTH)
+			return -EINVAL;
+
+		if (req->pagesize > 512)
+			req->ecc.sectorsize = 1024;
+		else
+			req->ecc.sectorsize = 512;
+	}
+
+	if (req->ecc.sectorsize != 512 && req->ecc.sectorsize != 1024)
+		return -EINVAL;
+
+	if (req->pagesize % req->ecc.sectorsize)
+		return -EINVAL;
+
+	req->ecc.nsectors = req->pagesize / req->ecc.sectorsize;
+
+	max_eccbytes = req->ecc.bytes;
+
+	for (i = 0; i < pmecc->caps->nstrengths; i++) {
+		int nbytes, strength = pmecc->caps->strengths[i];
+
+		if (req->ecc.strength != ATMEL_PMECC_MAXIMIZE_ECC_STRENGTH &&
+		    strength < req->ecc.strength)
+			continue;
+
+		nbytes = DIV_ROUND_UP(strength * fls(8 * req->ecc.sectorsize),
+				      8);
+		nbytes *= req->ecc.nsectors;
+
+		if (nbytes > max_eccbytes)
+			break;
+
+		eccstrength = strength;
+		eccbytes = nbytes;
+
+		if (req->ecc.strength != ATMEL_PMECC_MAXIMIZE_ECC_STRENGTH)
+			break;
+	}
+
+	if (!eccstrength)
+		return -EINVAL;
+
+	req->ecc.bytes = eccbytes;
+	req->ecc.strength = eccstrength;
+
+	if (req->ecc.ooboffset < 0)
+		req->ecc.ooboffset = req->oobsize - eccbytes;
+
+	return 0;
+}
+
+struct atmel_pmecc_user *
+atmel_pmecc_create_user(struct atmel_pmecc *pmecc,
+			struct atmel_pmecc_user_req *req)
+{
+	struct atmel_pmecc_user *user;
+	const struct atmel_pmecc_gf_tables *gf_tables;
+	int strength, size, ret;
+
+	ret = atmel_pmecc_prepare_user_req(pmecc, req);
+	if (ret)
+		return ERR_PTR(ret);
+
+	size = sizeof(*user);
+	size = ALIGN(size, sizeof(u16));
+	/* Reserve space for partial_syn, si and smu */
+	size += ((2 * req->ecc.strength) + 1) * sizeof(u16) *
+		(2 + req->ecc.strength + 2);
+	/* Reserve space for lmu. */
+	size += (req->ecc.strength + 1) * sizeof(u16);
+	/* Reserve space for mu, dmu and delta. */
+	size = ALIGN(size, sizeof(s32));
+	size += (req->ecc.strength + 1) * sizeof(s32) * 3;
+
+	user = kzalloc(size, GFP_KERNEL);
+	if (!user)
+		return ERR_PTR(-ENOMEM);
+
+	user->pmecc = pmecc;
+
+	user->partial_syn = (s16 *)PTR_ALIGN(user + 1, sizeof(u16));
+	user->si = user->partial_syn + ((2 * req->ecc.strength) + 1);
+	user->lmu = user->si + ((2 * req->ecc.strength) + 1);
+	user->smu = user->lmu + (req->ecc.strength + 1);
+	user->mu = (s32 *)PTR_ALIGN(user->smu +
+				    (((2 * req->ecc.strength) + 1) *
+				     (req->ecc.strength + 2)),
+				    sizeof(s32));
+	user->dmu = user->mu + req->ecc.strength + 1;
+	user->delta = user->dmu + req->ecc.strength + 1;
+
+	gf_tables = atmel_pmecc_get_gf_tables(req);
+	if (IS_ERR(gf_tables)) {
+		kfree(user);
+		return ERR_CAST(gf_tables);
+	}
+
+	user->gf_tables = gf_tables;
+
+	user->eccbytes = req->ecc.bytes / req->ecc.nsectors;
+
+	for (strength = 0; strength < pmecc->caps->nstrengths; strength++) {
+		if (pmecc->caps->strengths[strength] == req->ecc.strength)
+			break;
+	}
+
+	user->cache.cfg = PMECC_CFG_BCH_STRENGTH(strength) |
+			  PMECC_CFG_NSECTORS(req->ecc.nsectors);
+
+	if (req->ecc.sectorsize == 1024)
+		user->cache.cfg |= PMECC_CFG_SECTOR1024;
+
+	user->cache.sarea = req->oobsize - 1;
+	user->cache.saddr = req->ecc.ooboffset;
+	user->cache.eaddr = req->ecc.ooboffset + req->ecc.bytes - 1;
+
+	return user;
+}
+EXPORT_SYMBOL_GPL(atmel_pmecc_create_user);
+
+void atmel_pmecc_destroy_user(struct atmel_pmecc_user *user)
+{
+	kfree(user);
+}
+EXPORT_SYMBOL_GPL(atmel_pmecc_destroy_user);
+
+static int get_strength(struct atmel_pmecc_user *user)
+{
+	const int *strengths = user->pmecc->caps->strengths;
+
+	return strengths[user->cache.cfg & PMECC_CFG_BCH_STRENGTH_MASK];
+}
+
+static int get_sectorsize(struct atmel_pmecc_user *user)
+{
+	return user->cache.cfg & PMECC_CFG_SECTOR1024 ? 1024 : 512;
+}
+
+static void atmel_pmecc_gen_syndrome(struct atmel_pmecc_user *user, int sector)
+{
+	int strength = get_strength(user);
+	u32 value;
+	int i;
+
+	/* Fill odd syndromes */
+	for (i = 0; i < strength; i++) {
+		value = readl_relaxed(user->pmecc->regs.base +
+				      ATMEL_PMECC_REM(sector, i / 2));
+		if (i & 1)
+			value >>= 16;
+
+		user->partial_syn[(2 * i) + 1] = value;
+	}
+}
+
+static void atmel_pmecc_substitute(struct atmel_pmecc_user *user)
+{
+	int degree = get_sectorsize(user) == 512 ? 13 : 14;
+	int cw_len = BIT(degree) - 1;
+	int strength = get_strength(user);
+	s16 *alpha_to = user->gf_tables->alpha_to;
+	s16 *index_of = user->gf_tables->index_of;
+	s16 *partial_syn = user->partial_syn;
+	s16 *si;
+	int i, j;
+
+	/*
+	 * si[] is a table that holds the current syndrome value,
+	 * an element of that table belongs to the field
+	 */
+	si = user->si;
+
+	memset(&si[1], 0, sizeof(s16) * ((2 * strength) - 1));
+
+	/* Computation 2t syndromes based on S(x) */
+	/* Odd syndromes */
+	for (i = 1; i < 2 * strength; i += 2) {
+		for (j = 0; j < degree; j++) {
+			if (partial_syn[i] & BIT(j))
+				si[i] = alpha_to[i * j] ^ si[i];
+		}
+	}
+	/* Even syndrome = (Odd syndrome) ** 2 */
+	for (i = 2, j = 1; j <= strength; i = ++j << 1) {
+		if (si[j] == 0) {
+			si[i] = 0;
+		} else {
+			s16 tmp;
+
+			tmp = index_of[si[j]];
+			tmp = (tmp * 2) % cw_len;
+			si[i] = alpha_to[tmp];
+		}
+	}
+}
+
+static void atmel_pmecc_get_sigma(struct atmel_pmecc_user *user)
+{
+	s16 *lmu = user->lmu;
+	s16 *si = user->si;
+	s32 *mu = user->mu;
+	s32 *dmu = user->dmu;
+	s32 *delta = user->delta;
+	int degree = get_sectorsize(user) == 512 ? 13 : 14;
+	int cw_len = BIT(degree) - 1;
+	int strength = get_strength(user);
+	int num = 2 * strength + 1;
+	s16 *index_of = user->gf_tables->index_of;
+	s16 *alpha_to = user->gf_tables->alpha_to;
+	int i, j, k;
+	u32 dmu_0_count, tmp;
+	s16 *smu = user->smu;
+
+	/* index of largest delta */
+	int ro;
+	int largest;
+	int diff;
+
+	dmu_0_count = 0;
+
+	/* First Row */
+
+	/* Mu */
+	mu[0] = -1;
+
+	memset(smu, 0, sizeof(s16) * num);
+	smu[0] = 1;
+
+	/* discrepancy set to 1 */
+	dmu[0] = 1;
+	/* polynom order set to 0 */
+	lmu[0] = 0;
+	delta[0] = (mu[0] * 2 - lmu[0]) >> 1;
+
+	/* Second Row */
+
+	/* Mu */
+	mu[1] = 0;
+	/* Sigma(x) set to 1 */
+	memset(&smu[num], 0, sizeof(s16) * num);
+	smu[num] = 1;
+
+	/* discrepancy set to S1 */
+	dmu[1] = si[1];
+
+	/* polynom order set to 0 */
+	lmu[1] = 0;
+
+	delta[1] = (mu[1] * 2 - lmu[1]) >> 1;
+
+	/* Init the Sigma(x) last row */
+	memset(&smu[(strength + 1) * num], 0, sizeof(s16) * num);
+
+	for (i = 1; i <= strength; i++) {
+		mu[i + 1] = i << 1;
+		/* Begin Computing Sigma (Mu+1) and L(mu) */
+		/* check if discrepancy is set to 0 */
+		if (dmu[i] == 0) {
+			dmu_0_count++;
+
+			tmp = ((strength - (lmu[i] >> 1) - 1) / 2);
+			if ((strength - (lmu[i] >> 1) - 1) & 0x1)
+				tmp += 2;
+			else
+				tmp += 1;
+
+			if (dmu_0_count == tmp) {
+				for (j = 0; j <= (lmu[i] >> 1) + 1; j++)
+					smu[(strength + 1) * num + j] =
+							smu[i * num + j];
+
+				lmu[strength + 1] = lmu[i];
+				return;
+			}
+
+			/* copy polynom */
+			for (j = 0; j <= lmu[i] >> 1; j++)
+				smu[(i + 1) * num + j] = smu[i * num + j];
+
+			/* copy previous polynom order to the next */
+			lmu[i + 1] = lmu[i];
+		} else {
+			ro = 0;
+			largest = -1;
+			/* find largest delta with dmu != 0 */
+			for (j = 0; j < i; j++) {
+				if ((dmu[j]) && (delta[j] > largest)) {
+					largest = delta[j];
+					ro = j;
+				}
+			}
+
+			/* compute difference */
+			diff = (mu[i] - mu[ro]);
+
+			/* Compute degree of the new smu polynomial */
+			if ((lmu[i] >> 1) > ((lmu[ro] >> 1) + diff))
+				lmu[i + 1] = lmu[i];
+			else
+				lmu[i + 1] = ((lmu[ro] >> 1) + diff) * 2;
+
+			/* Init smu[i+1] with 0 */
+			for (k = 0; k < num; k++)
+				smu[(i + 1) * num + k] = 0;
+
+			/* Compute smu[i+1] */
+			for (k = 0; k <= lmu[ro] >> 1; k++) {
+				s16 a, b, c;
+
+				if (!(smu[ro * num + k] && dmu[i]))
+					continue;
+
+				a = index_of[dmu[i]];
+				b = index_of[dmu[ro]];
+				c = index_of[smu[ro * num + k]];
+				tmp = a + (cw_len - b) + c;
+				a = alpha_to[tmp % cw_len];
+				smu[(i + 1) * num + (k + diff)] = a;
+			}
+
+			for (k = 0; k <= lmu[i] >> 1; k++)
+				smu[(i + 1) * num + k] ^= smu[i * num + k];
+		}
+
+		/* End Computing Sigma (Mu+1) and L(mu) */
+		/* In either case compute delta */
+		delta[i + 1] = (mu[i + 1] * 2 - lmu[i + 1]) >> 1;
+
+		/* Do not compute discrepancy for the last iteration */
+		if (i >= strength)
+			continue;
+
+		for (k = 0; k <= (lmu[i + 1] >> 1); k++) {
+			tmp = 2 * (i - 1);
+			if (k == 0) {
+				dmu[i + 1] = si[tmp + 3];
+			} else if (smu[(i + 1) * num + k] && si[tmp + 3 - k]) {
+				s16 a, b, c;
+
+				a = index_of[smu[(i + 1) * num + k]];
+				b = si[2 * (i - 1) + 3 - k];
+				c = index_of[b];
+				tmp = a + c;
+				tmp %= cw_len;
+				dmu[i + 1] = alpha_to[tmp] ^ dmu[i + 1];
+			}
+		}
+	}
+}
+
+static int atmel_pmecc_err_location(struct atmel_pmecc_user *user)
+{
+	int sector_size = get_sectorsize(user);
+	int degree = sector_size == 512 ? 13 : 14;
+	struct atmel_pmecc *pmecc = user->pmecc;
+	int strength = get_strength(user);
+	int ret, roots_nbr, i, err_nbr = 0;
+	int num = (2 * strength) + 1;
+	s16 *smu = user->smu;
+	u32 val;
+
+	writel(PMERRLOC_DISABLE, pmecc->regs.errloc + ATMEL_PMERRLOC_ELDIS);
+
+	for (i = 0; i <= user->lmu[strength + 1] >> 1; i++) {
+		writel_relaxed(smu[(strength + 1) * num + i],
+			       pmecc->regs.errloc + ATMEL_PMERRLOC_SIGMA(i));
+		err_nbr++;
+	}
+
+	val = (err_nbr - 1) << 16;
+	if (sector_size == 1024)
+		val |= 1;
+
+	writel(val, pmecc->regs.errloc + ATMEL_PMERRLOC_ELCFG);
+	writel((sector_size * 8) + (degree * strength),
+	       pmecc->regs.errloc + ATMEL_PMERRLOC_ELEN);
+
+	ret = readl_relaxed_poll_timeout(pmecc->regs.errloc +
+					 ATMEL_PMERRLOC_ELISR,
+					 val, val & PMERRLOC_CALC_DONE,
+					 PMECC_MAX_TIMEOUT_MS * 1000);
+	if (ret) {
+		dev_err(pmecc->dev,
+			"PMECC: Timeout to calculate error location.\n");
+		return ret;
+	}
+
+	roots_nbr = (val & PMERRLOC_ERR_NUM_MASK) >> 8;
+	/* Number of roots == degree of smu hence <= cap */
+	if (roots_nbr == user->lmu[strength + 1] >> 1)
+		return err_nbr - 1;
+
+	/*
+	 * Number of roots does not match the degree of smu
+	 * unable to correct error.
+	 */
+	return -EBADMSG;
+}
+
+int atmel_pmecc_correct_sector(struct atmel_pmecc_user *user, int sector,
+			       void *data, void *ecc)
+{
+	struct atmel_pmecc *pmecc = user->pmecc;
+	int sectorsize = get_sectorsize(user);
+	int eccbytes = user->eccbytes;
+	int i, nerrors;
+
+	if (!(user->isr & BIT(sector)))
+		return 0;
+
+	atmel_pmecc_gen_syndrome(user, sector);
+	atmel_pmecc_substitute(user);
+	atmel_pmecc_get_sigma(user);
+
+	nerrors = atmel_pmecc_err_location(user);
+	if (nerrors < 0)
+		return nerrors;
+
+	for (i = 0; i < nerrors; i++) {
+		const char *area;
+		int byte, bit;
+		u32 errpos;
+		u8 *ptr;
+
+		errpos = readl_relaxed(pmecc->regs.errloc +
+				ATMEL_PMERRLOC_EL(pmecc->caps->el_offset, i));
+		errpos--;
+
+		byte = errpos / 8;
+		bit = errpos % 8;
+
+		if (byte < sectorsize) {
+			ptr = data + byte;
+			area = "data";
+		} else if (byte < sectorsize + eccbytes) {
+			ptr = ecc + byte - sectorsize;
+			area = "ECC";
+		} else {
+			dev_dbg(pmecc->dev,
+				"Invalid errpos value (%d, max is %d)\n",
+				errpos, (sectorsize + eccbytes) * 8);
+			return -EINVAL;
+		}
+
+		dev_dbg(pmecc->dev,
+			"Bit flip in %s area, byte %d: 0x%02x -> 0x%02x\n",
+			area, byte, *ptr, (unsigned int)(*ptr ^ BIT(bit)));
+
+		*ptr ^= BIT(bit);
+	}
+
+	return nerrors;
+}
+EXPORT_SYMBOL_GPL(atmel_pmecc_correct_sector);
+
+bool atmel_pmecc_correct_erased_chunks(struct atmel_pmecc_user *user)
+{
+	return user->pmecc->caps->correct_erased_chunks;
+}
+EXPORT_SYMBOL_GPL(atmel_pmecc_correct_erased_chunks);
+
+void atmel_pmecc_get_generated_eccbytes(struct atmel_pmecc_user *user,
+					int sector, void *ecc)
+{
+	struct atmel_pmecc *pmecc = user->pmecc;
+	u8 *ptr = ecc;
+	int i;
+
+	for (i = 0; i < user->eccbytes; i++)
+		ptr[i] = readb_relaxed(pmecc->regs.base +
+				       ATMEL_PMECC_ECC(sector, i));
+}
+EXPORT_SYMBOL_GPL(atmel_pmecc_get_generated_eccbytes);
+
+void atmel_pmecc_reset(struct atmel_pmecc *pmecc)
+{
+	writel(PMECC_CTRL_RST, pmecc->regs.base + ATMEL_PMECC_CTRL);
+	writel(PMECC_CTRL_DISABLE, pmecc->regs.base + ATMEL_PMECC_CTRL);
+}
+EXPORT_SYMBOL_GPL(atmel_pmecc_reset);
+
+int atmel_pmecc_enable(struct atmel_pmecc_user *user, int op)
+{
+	struct atmel_pmecc *pmecc = user->pmecc;
+	u32 cfg;
+
+	if (op != NAND_ECC_READ && op != NAND_ECC_WRITE) {
+		dev_err(pmecc->dev, "Bad ECC operation!");
+		return -EINVAL;
+	}
+
+	mutex_lock(&user->pmecc->lock);
+
+	cfg = user->cache.cfg;
+	if (op == NAND_ECC_WRITE)
+		cfg |= PMECC_CFG_WRITE_OP;
+	else
+		cfg |= PMECC_CFG_AUTO_ENABLE;
+
+	writel(cfg, pmecc->regs.base + ATMEL_PMECC_CFG);
+	writel(user->cache.sarea, pmecc->regs.base + ATMEL_PMECC_SAREA);
+	writel(user->cache.saddr, pmecc->regs.base + ATMEL_PMECC_SADDR);
+	writel(user->cache.eaddr, pmecc->regs.base + ATMEL_PMECC_EADDR);
+
+	writel(PMECC_CTRL_ENABLE, pmecc->regs.base + ATMEL_PMECC_CTRL);
+	writel(PMECC_CTRL_DATA, pmecc->regs.base + ATMEL_PMECC_CTRL);
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(atmel_pmecc_enable);
+
+void atmel_pmecc_disable(struct atmel_pmecc_user *user)
+{
+	atmel_pmecc_reset(user->pmecc);
+	mutex_unlock(&user->pmecc->lock);
+}
+EXPORT_SYMBOL_GPL(atmel_pmecc_disable);
+
+int atmel_pmecc_wait_rdy(struct atmel_pmecc_user *user)
+{
+	struct atmel_pmecc *pmecc = user->pmecc;
+	u32 status;
+	int ret;
+
+	ret = readl_relaxed_poll_timeout(pmecc->regs.base +
+					 ATMEL_PMECC_SR,
+					 status, !(status & PMECC_SR_BUSY),
+					 PMECC_MAX_TIMEOUT_MS * 1000);
+	if (ret) {
+		dev_err(pmecc->dev,
+			"Timeout while waiting for PMECC ready.\n");
+		return ret;
+	}
+
+	user->isr = readl_relaxed(pmecc->regs.base + ATMEL_PMECC_ISR);
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(atmel_pmecc_wait_rdy);
+
+static struct atmel_pmecc *atmel_pmecc_create(struct device *dev,
+					const struct atmel_pmecc_caps *caps,
+					int pmecc_res_idx, int errloc_res_idx)
+{
+	struct atmel_pmecc *pmecc;
+
+	pmecc = kzalloc(sizeof(*pmecc), GFP_KERNEL);
+	if (!pmecc)
+		return ERR_PTR(-ENOMEM);
+
+	pmecc->caps = caps;
+	pmecc->dev = dev;
+	mutex_init(&pmecc->lock);
+
+	pmecc->regs.base = dev_request_mem_region_err_null(dev, pmecc_res_idx);
+	if (!pmecc->regs.base)
+		return ERR_PTR(-EINVAL);
+
+	pmecc->regs.errloc = dev_request_mem_region_err_null(dev, errloc_res_idx);
+	if (!pmecc->regs.errloc)
+		return ERR_PTR(-EINVAL);
+
+	/* Disable all interrupts before registering the PMECC handler. */
+	writel(0xffffffff, pmecc->regs.base + ATMEL_PMECC_IDR);
+	atmel_pmecc_reset(pmecc);
+
+	return pmecc;
+}
+
+static struct atmel_pmecc *atmel_pmecc_get_by_node(struct device *userdev,
+						   struct device_node *np)
+{
+	struct device *dev;
+	struct atmel_pmecc *pmecc;
+	int ret;
+
+	dev = of_find_device_by_node(np);
+	if (!dev)
+		return ERR_PTR(-EPROBE_DEFER);
+	pmecc = dev->priv;
+	if (!pmecc) {
+		ret = -EPROBE_DEFER;
+		goto err_put_device;
+	}
+
+	return pmecc;
+
+err_put_device:
+	put_device(dev);
+	return ERR_PTR(ret);
+}
+
+static const int atmel_pmecc_strengths[] = { 2, 4, 8, 12, 24, 32 };
+
+static struct atmel_pmecc_caps at91sam9g45_caps = {
+	.strengths = atmel_pmecc_strengths,
+	.nstrengths = 5,
+	.el_offset = 0x8c,
+};
+
+static struct atmel_pmecc_caps sama5d4_caps = {
+	.strengths = atmel_pmecc_strengths,
+	.nstrengths = 5,
+	.el_offset = 0x8c,
+	.correct_erased_chunks = true,
+};
+
+static struct atmel_pmecc_caps sama5d2_caps = {
+	.strengths = atmel_pmecc_strengths,
+	.nstrengths = 6,
+	.el_offset = 0xac,
+	.correct_erased_chunks = true,
+};
+
+static const struct of_device_id __maybe_unused atmel_pmecc_legacy_match[] = {
+	{ .compatible = "atmel,sama5d4-nand", &sama5d4_caps },
+	{ .compatible = "atmel,sama5d2-nand", &sama5d2_caps },
+	{ /* sentinel */ }
+};
+
+struct atmel_pmecc *dev_atmel_pmecc_get(struct device *userdev)
+{
+	struct atmel_pmecc *pmecc;
+	struct device_node *np;
+
+	if (!userdev)
+		return ERR_PTR(-EINVAL);
+
+	if (!userdev->of_node)
+		return NULL;
+
+	np = of_parse_phandle(userdev->of_node, "ecc-engine", 0);
+	if (np) {
+		pmecc = atmel_pmecc_get_by_node(userdev, np);
+		of_node_put(np);
+	} else {
+		/*
+		 * Support old DT bindings: in this case the PMECC iomem
+		 * resources are directly defined in the user dev at position
+		 * 1 and 2. Extract all relevant information from there.
+		 */
+		struct device *dev = userdev;
+		const struct atmel_pmecc_caps *caps;
+		const struct of_device_id *match;
+
+		/* No PMECC engine available. */
+		if (!of_property_read_bool(userdev->of_node,
+					   "atmel,has-pmecc"))
+			return NULL;
+
+		caps = &at91sam9g45_caps;
+
+		/* Find the caps associated to the NAND dev node. */
+		match = of_match_node(atmel_pmecc_legacy_match,
+				      userdev->of_node);
+		if (match && match->data)
+			caps = match->data;
+
+		pmecc = atmel_pmecc_create(dev, caps, 1, 2);
+	}
+
+	return pmecc;
+}
+EXPORT_SYMBOL(dev_atmel_pmecc_get);
+
+static const struct of_device_id atmel_pmecc_match[] = {
+	{ .compatible = "atmel,at91sam9g45-pmecc", &at91sam9g45_caps },
+	{ .compatible = "atmel,sama5d4-pmecc", &sama5d4_caps },
+	{ .compatible = "atmel,sama5d2-pmecc", &sama5d2_caps },
+	{ /* sentinel */ }
+};
+MODULE_DEVICE_TABLE(of, atmel_pmecc_match);
+
+static int atmel_pmecc_probe(struct device *dev)
+{
+	const struct atmel_pmecc_caps *caps;
+	struct atmel_pmecc *pmecc;
+
+	caps = of_device_get_match_data(dev);
+	if (!caps) {
+		dev_err(dev, "Invalid caps\n");
+		return -EINVAL;
+	}
+
+	pmecc = atmel_pmecc_create(dev, caps, 0, 1);
+	if (IS_ERR(pmecc))
+		return PTR_ERR(pmecc);
+
+	dev->priv = pmecc;
+
+	return 0;
+}
+
+static struct driver atmel_pmecc_driver = {
+	.name = "atmel-pmecc",
+	.of_match_table = atmel_pmecc_match,
+	.probe = atmel_pmecc_probe,
+};
+device_platform_driver(atmel_pmecc_driver);
+
+MODULE_LICENSE("GPL");
+MODULE_AUTHOR("Boris Brezillon <boris.brezillon@free-electrons.com>");
+MODULE_DESCRIPTION("PMECC engine driver");
+MODULE_ALIAS("platform:atmel_pmecc");
diff --git a/drivers/mtd/nand/atmel/pmecc.h b/drivers/mtd/nand/atmel/pmecc.h
new file mode 100644
index 000000000000..6178a35e9d9f
--- /dev/null
+++ b/drivers/mtd/nand/atmel/pmecc.h
@@ -0,0 +1,70 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * © Copyright 2016 ATMEL
+ * © Copyright 2016 Free Electrons
+ *
+ * Author: Boris Brezillon <boris.brezillon@free-electrons.com>
+ *
+ * Derived from the atmel_nand.c driver which contained the following
+ * copyrights:
+ *
+ *    Copyright © 2003 Rick Bronson
+ *
+ *    Derived from drivers/mtd/nand/autcpu12.c (removed in v3.8)
+ *        Copyright © 2001 Thomas Gleixner (gleixner@autronix.de)
+ *
+ *    Derived from drivers/mtd/spia.c (removed in v3.8)
+ *        Copyright © 2000 Steven J. Hill (sjhill@cotw.com)
+ *
+ *
+ *    Add Hardware ECC support for AT91SAM9260 / AT91SAM9263
+ *        Richard Genoud (richard.genoud@gmail.com), Adeneo Copyright © 2007
+ *
+ *        Derived from Das U-Boot source code
+ *              (u-boot-1.1.5/board/atmel/at91sam9263ek/nand.c)
+ *        © Copyright 2006 ATMEL Rousset, Lacressonniere Nicolas
+ *
+ *    Add Programmable Multibit ECC support for various AT91 SoC
+ *        © Copyright 2012 ATMEL, Hong Xu
+ *
+ *    Add Nand Flash Controller support for SAMA5 SoC
+ *        © Copyright 2013 ATMEL, Josh Wu (josh.wu@atmel.com)
+ */
+
+#ifndef ATMEL_PMECC_H
+#define ATMEL_PMECC_H
+
+#define ATMEL_PMECC_MAXIMIZE_ECC_STRENGTH	0
+#define ATMEL_PMECC_SECTOR_SIZE_AUTO		0
+#define ATMEL_PMECC_OOBOFFSET_AUTO		-1
+
+struct atmel_pmecc_user_req {
+	int pagesize;
+	int oobsize;
+	struct {
+		int strength;
+		int bytes;
+		int sectorsize;
+		int nsectors;
+		int ooboffset;
+	} ecc;
+};
+
+struct atmel_pmecc *dev_atmel_pmecc_get(struct device *dev);
+
+struct atmel_pmecc_user *
+atmel_pmecc_create_user(struct atmel_pmecc *pmecc,
+			struct atmel_pmecc_user_req *req);
+void atmel_pmecc_destroy_user(struct atmel_pmecc_user *user);
+
+void atmel_pmecc_reset(struct atmel_pmecc *pmecc);
+int atmel_pmecc_enable(struct atmel_pmecc_user *user, int op);
+void atmel_pmecc_disable(struct atmel_pmecc_user *user);
+int atmel_pmecc_wait_rdy(struct atmel_pmecc_user *user);
+int atmel_pmecc_correct_sector(struct atmel_pmecc_user *user, int sector,
+			       void *data, void *ecc);
+bool atmel_pmecc_correct_erased_chunks(struct atmel_pmecc_user *user);
+void atmel_pmecc_get_generated_eccbytes(struct atmel_pmecc_user *user,
+					int sector, void *ecc);
+
+#endif /* ATMEL_PMECC_H */
diff --git a/include/driver.h b/include/driver.h
index b7d6ea1e52c1..30cd5bfff50f 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -156,6 +156,8 @@ void device_detect_all(void);
  */
 int unregister_device(struct device *);
 
+static inline void put_device(struct device *) {}
+
 void free_device_res(struct device *dev);
 void free_device(struct device *dev);
 
diff --git a/include/linux/mutex.h b/include/linux/mutex.h
index 41eda79b763a..f511c45814e7 100644
--- a/include/linux/mutex.h
+++ b/include/linux/mutex.h
@@ -20,4 +20,6 @@
 #define mutex_is_locked(...)	0
 struct mutex { int i; };
 
+#define DEFINE_MUTEX(obj) struct mutex  __always_unused obj
+
 #endif /* __LINUX_MUTEX_H */
diff --git a/include/soc/at91/atmel-sfr.h b/include/soc/at91/atmel-sfr.h
index 8e75508165b7..1a909a3e06d6 100644
--- a/include/soc/at91/atmel-sfr.h
+++ b/include/soc/at91/atmel-sfr.h
@@ -19,6 +19,7 @@
 #define AT91_SFR_I2SCLKSEL	0x90	/* I2SC Register */
 
 /* Field definitions */
+#define AT91_SFR_CCFG_NFD0_ON_D16		BIT(24)
 #define AT91_OHCIICR_SUSPEND_A	BIT(8)
 #define AT91_OHCIICR_SUSPEND_B	BIT(9)
 #define AT91_OHCIICR_SUSPEND_C	BIT(10)
-- 
2.30.2



