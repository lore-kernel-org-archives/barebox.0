Delivery-date: Fri, 30 Sep 2022 14:17:51 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oeExj-001PQN-7T
	for lore@lore.pengutronix.de; Fri, 30 Sep 2022 14:17:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oeExh-0003el-Md
	for lore@pengutronix.de; Fri, 30 Sep 2022 14:17:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H6qwBsuy3F+xdAKdKJr8o3NTR2VRBIdVN6KP0pkoSNQ=; b=sF2HnRRXqvxc9E
	Ayg9v8psnkgLvEy4Mr1+RDgksrotO5Kj+jPnJIki382BrfamXiXVZtp44kEqC32eIsQ0mchSnfAWK
	Y9sZFif2cC1CRXVU5/4LXFL5XyqGyN7U0fdr/22ZQGZGmtVpwBhHwdqtJoHnXsJWgSJhyf0Fdi9lZ
	WCNyIURoscdDkKmRp3ODa6o0iDORbX6cgzRsbtWJdvBMI1ivjURYPUk0XFD5ijSQtGNmc0LM+BR5d
	ESQxcrS1NYxECQV1J0Zx2++L7yvfGZDT1V+wz1AvkmSL2w/lYZjbY5dZ6Fu1j00Qk14/mq9ZszWxZ
	vwALjsy4ONYU3CDU/pWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oeEwE-0094iA-1n; Fri, 30 Sep 2022 12:16:18 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oeEvv-0094Zl-EB
	for barebox@lists.infradead.org; Fri, 30 Sep 2022 12:16:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oeEvs-00030X-4M; Fri, 30 Sep 2022 14:15:56 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oeEvs-003nUn-Vk; Fri, 30 Sep 2022 14:15:55 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oeEvq-001QvN-5V; Fri, 30 Sep 2022 14:15:54 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 30 Sep 2022 14:15:53 +0200
Message-Id: <20220930121553.335796-8-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220930121553.335796-1-s.hauer@pengutronix.de>
References: <20220930121553.335796-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220930_051559_758488_6549865E 
X-CRM114-Status: GOOD (  17.94  )
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
Cc: Johannes Zink <j.zink@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 7/7] imx-bbu-nand-fcb: extend for i.MX7 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Johannes Zink <j.zink@pengutronix.de>

This adds a barebox update handler for i.MX7 NAND

Signed-off-by: Johannes Zink <j.zink@pengutronix.de>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/include/mach/imx7-regs.h |  3 +
 common/Kconfig                             |  2 +-
 common/imx-bbu-nand-fcb.c                  | 91 ++++++++++++++++++++--
 include/bbu.h                              |  5 ++
 4 files changed, 94 insertions(+), 7 deletions(-)

diff --git a/arch/arm/mach-imx/include/mach/imx7-regs.h b/arch/arm/mach-imx/include/mach/imx7-regs.h
index f116916717..1ee7d86e0e 100644
--- a/arch/arm/mach-imx/include/mach/imx7-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx7-regs.h
@@ -118,6 +118,9 @@
 #define MX7_ENET1_BASE_ADDR		(MX7_AIPS3_BASE_ADDR + 0x3E0000)
 #define MX7_ENET2_BASE_ADDR		(MX7_AIPS3_BASE_ADDR + 0x3F0000)
 
+#define MX7_GPMI_BASE			0x33002000
+#define MX7_BCH_BASE			0x33004000
+
 #define MX7_DDR_BASE_ADDR		0x80000000
 
 #endif /* __MACH_IMX7_REGS_H */
diff --git a/common/Kconfig b/common/Kconfig
index 43dd92b08a..350e6aeea7 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -78,7 +78,7 @@ config ARCH_DMA_ADDR_T_64BIT
 
 config BAREBOX_UPDATE_IMX_NAND_FCB
 	bool
-	depends on ARCH_IMX6 || ARCH_IMX28
+	depends on ARCH_IMX7 || ARCH_IMX6 || ARCH_IMX28
 	depends on BAREBOX_UPDATE
 	depends on MTD_WRITE
 	depends on NAND_MXS
diff --git a/common/imx-bbu-nand-fcb.c b/common/imx-bbu-nand-fcb.c
index 5d4841a554..63c81e4ed6 100644
--- a/common/imx-bbu-nand-fcb.c
+++ b/common/imx-bbu-nand-fcb.c
@@ -27,16 +27,16 @@
 #include <mtd/mtd-peb.h>
 #include <soc/imx/imx-nand-bcb.h>
 
-#ifdef CONFIG_ARCH_IMX6
-#include <mach/imx6.h>
+#ifdef CONFIG_ARCH_IMX28
 static inline int fcb_is_bch_encoded(void)
 {
-       return cpu_is_mx6ul() || cpu_is_mx6ull();
+       return 0;
 }
 #else
+#include <mach/imx6.h>
 static inline int fcb_is_bch_encoded(void)
 {
-       return 0;
+       return cpu_is_mx6ul() || cpu_is_mx6ull();
 }
 #endif
 
@@ -517,6 +517,9 @@ static int fcb_create(struct imx_nand_fcb_bbu_handler *imx_handler,
 
 	imx_handler->fcb_create(imx_handler, fcb, mtd);
 
+	fcb->DISBBM = 0;
+	fcb->disbbm_search = 0;
+
 	fcb->Checksum = calc_chksum((void *)fcb + 4, sizeof(*fcb) - 4);
 
 	return 0;
@@ -1482,9 +1485,11 @@ int imx6_bbu_nand_register_handler(const char *name, unsigned long flags)
 #define	MX28_BCH_FLASHLAYOUT0_ECC0_OFFSET		12
 #define	BCH_FLASHLAYOUT0_ECC0_MASK			(0x1f << 11)
 #define	BCH_FLASHLAYOUT0_ECC0_OFFSET			11
+#define	BCH_FLASHLAYOUT0_GF13_0_GF14_1_MASK		BIT(10)
+#define	BCH_FLASHLAYOUT0_GF13_0_GF14_1_OFFSET		10
 #define	BCH_FLASHLAYOUT0_DATA0_SIZE_MASK		0x3ff
-#define	MX28_BCH_FLASHLAYOUT0_DATA0_SIZE_MASK		0xfff
 #define	BCH_FLASHLAYOUT0_DATA0_SIZE_OFFSET		0
+#define	MX28_BCH_FLASHLAYOUT0_DATA0_SIZE_MASK		0xfff
 
 #define BCH_FLASH0LAYOUT1			0x00000090
 #define	BCH_FLASHLAYOUT1_PAGE_SIZE_MASK			(0xffff << 16)
@@ -1493,9 +1498,11 @@ int imx6_bbu_nand_register_handler(const char *name, unsigned long flags)
 #define	BCH_FLASHLAYOUT1_ECCN_OFFSET			11
 #define	MX28_BCH_FLASHLAYOUT1_ECCN_MASK			(0xf << 12)
 #define	MX28_BCH_FLASHLAYOUT1_ECCN_OFFSET		12
+#define	BCH_FLASHLAYOUT1_GF13_0_GF14_1_MASK		BIT(10)
+#define	BCH_FLASHLAYOUT1_GF13_0_GF14_1_OFFSET		10
+#define	BCH_FLASHLAYOUT1_DATAN_SIZE_OFFSET		0
 #define	BCH_FLASHLAYOUT1_DATAN_SIZE_MASK		0x3ff
 #define	MX28_BCH_FLASHLAYOUT1_DATAN_SIZE_MASK		0xfff
-#define	BCH_FLASHLAYOUT1_DATAN_SIZE_OFFSET		0
 
 #ifdef CONFIG_ARCH_IMX28
 #include <mach/imx28-regs.h>
@@ -1546,3 +1553,75 @@ int imx28_bbu_nand_register_handler(const char *name, unsigned long flags)
 	return ret;
 }
 #endif
+
+#ifdef CONFIG_ARCH_IMX7
+#include <mach/imx7-regs.h>
+
+static void imx7_fcb_create(struct imx_nand_fcb_bbu_handler *imx_handler,
+		struct fcb_block *fcb, struct mtd_info *mtd)
+{
+	void __iomem *bch_regs = IOMEM(MX7_BCH_BASE);
+	u32 fl0, fl1;
+
+	/* Also hardcoded in kobs-ng */
+	fcb->DataSetup = 10;
+	fcb->DataHold = 7;
+	fcb->AddressSetup = 15;
+	fcb->DSAMPLE_TIME = 6;
+
+	fl0 = readl(bch_regs + BCH_FLASH0LAYOUT0);
+	fcb->MetadataBytes = BF_VAL(fl0, BCH_FLASHLAYOUT0_META_SIZE);
+	fcb->NumEccBlocksPerPage = BF_VAL(fl0, BCH_FLASHLAYOUT0_NBLOCKS);
+
+	fl1 = readl(bch_regs + BCH_FLASH0LAYOUT1);
+	fcb->EccBlock0Size = 4 * BF_VAL(fl1, BCH_FLASHLAYOUT0_DATA0_SIZE);
+	fcb->EccBlock0EccType = BF_VAL(fl1, BCH_FLASHLAYOUT0_ECC0);
+	fcb->EccBlockNSize = 4 * BF_VAL(fl1, BCH_FLASHLAYOUT1_DATAN_SIZE);
+	fcb->EccBlockNEccType = BF_VAL(fl1, BCH_FLASHLAYOUT1_ECCN);
+	fcb->BCHType = BF_VAL(fl1, BCH_FLASHLAYOUT1_GF13_0_GF14_1);
+}
+
+static int imx7_fcb_read(struct mtd_info *mtd, int block, struct fcb_block **retfcb)
+{
+	struct fcb_block *fcb = xzalloc(mtd->writesize);
+	int ret;
+
+	ret = mxs_nand_read_fcb_bch62(block, fcb, sizeof(*fcb));
+	if (ret)
+		free(fcb);
+	else
+		*retfcb = fcb;
+
+	return ret;
+}
+
+static int imx7_fcb_write(struct mtd_info *mtd, int block, struct fcb_block *fcb)
+{
+	return mxs_nand_write_fcb_bch62(block, fcb, sizeof(*fcb));
+}
+
+int imx7_bbu_nand_register_handler(const char *name, unsigned long flags)
+{
+	struct imx_nand_fcb_bbu_handler *imx_handler;
+	struct bbu_handler *handler;
+	int ret;
+
+	imx_handler = xzalloc(sizeof(*imx_handler));
+	imx_handler->fcb_create = imx7_fcb_create;
+	imx_handler->fcb_read = imx7_fcb_read;
+	imx_handler->fcb_write = imx7_fcb_write;
+	imx_handler->filetype = filetype_arm_barebox;
+
+	handler = &imx_handler->handler;
+	handler->devicefile = "nand0.barebox";
+	handler->name = name;
+	handler->flags = flags | BBU_HANDLER_CAN_REFRESH;
+	handler->handler = imx_bbu_nand_update;
+
+	ret = bbu_register_handler(handler);
+	if (ret)
+		free(handler);
+
+	return ret;
+}
+#endif
diff --git a/include/bbu.h b/include/bbu.h
index 2dad26a127..cec7e22d4d 100644
--- a/include/bbu.h
+++ b/include/bbu.h
@@ -88,12 +88,17 @@ static inline void bbu_append_handlers_to_file_list(struct file_list *files)
 
 #if defined(CONFIG_BAREBOX_UPDATE_IMX_NAND_FCB)
 int imx6_bbu_nand_register_handler(const char *name, unsigned long flags);
+int imx7_bbu_nand_register_handler(const char *name, unsigned long flags);
 int imx28_bbu_nand_register_handler(const char *name, unsigned long flags);
 #else
 static inline int imx6_bbu_nand_register_handler(const char *name, unsigned long flags)
 {
 	return -ENOSYS;
 }
+static inline int imx7_bbu_nand_register_handler(const char *name, unsigned long flags)
+{
+	return -ENOSYS;
+}
 static inline int imx28_bbu_nand_register_handler(const char *name, unsigned long flags)
 {
 	return -ENOSYS;
-- 
2.30.2



