Delivery-date: Fri, 10 Nov 2023 14:02:07 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1R9C-005rha-1x
	for lore@lore.pengutronix.de;
	Fri, 10 Nov 2023 14:02:07 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1R9C-0005Em-AF
	for lore@pengutronix.de; Fri, 10 Nov 2023 14:02:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fWmcg8mYuFs1+HClcxvEbpnueb+Q8KCcsnmJrHxFijM=; b=zRHsvWRN6NJSpNhu7Md+0UTcsq
	A4jcoXQ6KwjiX05YTALrgdTvokS0rZCsQrzIcr3GtV9eDv/wmNIDD6Qxx+ttADoFcRNUzlHhl98su
	XsMwpzlDGrTV2Oi7UhK4zGlYEa5TtdDVF9Wug0ZLqeRzz9SjMXLZSofzb4c0mYAySvAT6V9bKVkrz
	HvZaamw7peFVr3VUDRX/LVnIDWo7fXSrmab/7Mo8ow9EL+gawhiwt99wNnS5/hl3vvJeUrPhCAItF
	iUM1RiBr3an7wlexceaikpy5diZBvZTpuVc/9xcHlhhBRjjcD0WPAFxmBnkPls50pQAPQ5i3PnQZ/
	s4071UZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r1R87-008m8S-0p;
	Fri, 10 Nov 2023 13:00:59 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1R7u-008lxo-0A
	for barebox@bombadil.infradead.org;
	Fri, 10 Nov 2023 13:00:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=fWmcg8mYuFs1+HClcxvEbpnueb+Q8KCcsnmJrHxFijM=; b=aPtMWY+a1NJqptCQeLTZIErYZC
	j1ES96sJcXoQI+R8zguldV5pAkg+arYcTB3il1hrFM7/VcUu2Hg9xsdy4nklytNVp2uFb8spm3+D1
	5DfRh8yAPJNdCvJ1GyXPn8j8U9q8lc23+NLKcRZssm88GsIPg0ivnFVjCHhppZmj5bTqOLanTLXMa
	5jUZagPgYtZRSdmFlNR/yqqoV8X/4/9heWC3CxtE7m2Fq96vjKQFufdtvRhWGFEs2TIfMPFVA5dtI
	8psCcmJv8CGREECOoiHSU2U05RkYpS9y9MTjn/TZBQuXimxGZmrnEdKvRsMs9wAns2FPhn8pe4pWU
	raeUY3Ug==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1R7n-00Fc6S-05
	for barebox@lists.infradead.org;
	Fri, 10 Nov 2023 13:00:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r1R7e-00043E-BP; Fri, 10 Nov 2023 14:00:30 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1r1R7d-0081Z2-8t; Fri, 10 Nov 2023 14:00:29 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1r1R7d-0096Mt-0h;
	Fri, 10 Nov 2023 14:00:29 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 10 Nov 2023 14:00:20 +0100
Message-Id: <20231110130028.2123895-6-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231110130028.2123895-1-s.hauer@pengutronix.de>
References: <20231110130028.2123895-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231110_130042_331607_35682172 
X-CRM114-Status: GOOD (  12.52  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 05/13] ddr: imx8m: clean up defines
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Use register defines we already have in mach/imx/imx8m-regs.h rather
than duplicating them in the ddr code. Also remove some unused defines.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/ddr/imx/helper.c         |  8 --------
 drivers/ddr/imx/imx8m_ddr_init.c |  2 +-
 include/soc/imx8m/ddr.h          | 11 +++--------
 3 files changed, 4 insertions(+), 17 deletions(-)

diff --git a/drivers/ddr/imx/helper.c b/drivers/ddr/imx/helper.c
index 98e4084958..81c3ed7f30 100644
--- a/drivers/ddr/imx/helper.c
+++ b/drivers/ddr/imx/helper.c
@@ -10,14 +10,6 @@
 #include <errno.h>
 #include <soc/imx8m/ddr.h>
 
-#define IMEM_LEN 32768 /* byte */
-#define DMEM_LEN 16384 /* byte */
-#define IMEM_2D_OFFSET	49152
-
-#define IMEM_OFFSET_ADDR 0x00050000
-#define DMEM_OFFSET_ADDR 0x00054000
-#define DDR_TRAIN_CODE_BASE_ADDR IP2APB_DDRPHY_IPS_BASE_ADDR(0)
-
 void ddrphy_trained_csr_save(struct dram_cfg_param *ddrphy_csr,
 			     unsigned int num)
 {
diff --git a/drivers/ddr/imx/imx8m_ddr_init.c b/drivers/ddr/imx/imx8m_ddr_init.c
index 856e7ee4fe..f76aafe769 100644
--- a/drivers/ddr/imx/imx8m_ddr_init.c
+++ b/drivers/ddr/imx/imx8m_ddr_init.c
@@ -543,7 +543,7 @@ int imx8m_ddr_init(struct dram_controller *dram, struct dram_timing_info *dram_t
 	 */
 	tmp = reg32_read(DDRC_MSTR(0));
 	if (tmp & (0x1 << 5) && dram->ddrc_type != DDRC_TYPE_MN)
-		reg32_write(DDRC_DDR_SS_GPR0, 0x01); /* LPDDR4 mode */
+		reg32_write(MX8M_DDRC_DDR_SS_GPR0, 0x01); /* LPDDR4 mode */
 
 	/* determine the initial boot frequency */
 	target_freq = reg32_read(DDRC_MSTR2(0)) & 0x3;
diff --git a/include/soc/imx8m/ddr.h b/include/soc/imx8m/ddr.h
index ec82f3233a..9ff9c0a2da 100644
--- a/include/soc/imx8m/ddr.h
+++ b/include/soc/imx8m/ddr.h
@@ -8,11 +8,9 @@
 
 #include <io.h>
 #include <asm/types.h>
+#include <mach/imx/imx8m-regs.h>
 
-#define DDRC_DDR_SS_GPR0		0x3d000000
-#define DDRC_IPS_BASE_ADDR_0		0x3f400000
-#define IP2APB_DDRPHY_IPS_BASE_ADDR(X)	(0x3c000000 + (X * 0x2000000))
-#define DDRPHY_MEM(X)			(0x3c000000 + (X * 0x2000000) + 0x50000)
+#define IP2APB_DDRPHY_IPS_BASE_ADDR(X)	MX8M_DDRC_PHY_BASE_ADDR
 
 #define DDRC_MSTR(X)             (DDRC_IPS_BASE_ADDR(X) + 0x00)
 #define DDRC_STAT(X)             (DDRC_IPS_BASE_ADDR(X) + 0x04)
@@ -320,7 +318,7 @@
 #define DRC_PERF_MON_MRR14_DAT(X)            (DRC_PERF_MON_BASE_ADDR(X) + 0x78)
 #define DRC_PERF_MON_MRR15_DAT(X)            (DRC_PERF_MON_BASE_ADDR(X) + 0x7C)
 
-#define DDRC_IPS_BASE_ADDR(X) (0x3d400000 + (X * 0x2000000))
+#define DDRC_IPS_BASE_ADDR(X) MX8M_DDRC_IPS_BASE_ADDR(X)
 
 /* user data type */
 enum fw_type {
@@ -391,8 +389,6 @@ struct dram_controller {
 	void (*set_dfi_clk)(struct dram_controller *dram, unsigned int drate_mhz);
 };
 
-extern struct dram_timing_info dram_timing;
-
 void ddr_get_firmware_lpddr4(void);
 void ddr_get_firmware_ddr(void);
 
@@ -453,7 +449,6 @@ static inline int imx8mp_ddr_init(struct dram_timing_info *dram_timing,
 }
 
 int ddr_cfg_phy(struct dram_controller *dram, struct dram_timing_info *timing_info);
-void load_lpddr4_phy_pie(void);
 void ddrphy_trained_csr_save(struct dram_cfg_param *param, unsigned int num);
 void dram_config_save(struct dram_timing_info *info, unsigned long base);
 
-- 
2.39.2



