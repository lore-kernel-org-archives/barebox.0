Delivery-date: Wed, 06 May 2026 11:07:57 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wKYEX-001Xe3-2Z
	for lore@lore.pengutronix.de;
	Wed, 06 May 2026 11:07:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wKYES-0000sX-Nz
	for lore@pengutronix.de; Wed, 06 May 2026 11:07:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4ujyzg0bP/2EDof0nbTs6vY9wbQ9x/yEu85GEx/UanI=; b=YJ0tPHSdRL5qEFLvAfba5ti3kG
	sGDmqnQTCIsC66NULgclQmoXaHgDq00RD1nmym5Wvpa6qHz+VjbtXH/ZiwgphbcA0Pp3p1dIB26pp
	U3IQaNzCH+O8KTBz4Wou5RQNFeibtI6GQVcBV2HNXikcFTJFb34mhIgk80SQgQNcDM5bq37ngTzSm
	d5w+N+Vr1Zxmjh8vHxMmDKG/B4cb5sjEXMxHZ7vqicOT3XS21IS0uGwkKp5OgRp6bfQawGY+7xinN
	98jSBIoFrHHSnLMQnIOsNbAy+iMiOK20JK7TDFWmwgSZJob6gzyM8zrnvUWAiYr9/cVCT0N5JVGNn
	tTfs3HdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKYCx-00000000Htd-3JB3;
	Wed, 06 May 2026 09:06:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKYCv-00000000Hqj-3bhM
	for barebox@lists.infradead.org;
	Wed, 06 May 2026 09:06:17 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1wKYCs-0008RK-5m; Wed, 06 May 2026 11:06:14 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Wed, 06 May 2026 11:06:11 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260506-socfpga-agilex5-qspi-v1-5-94def85c1b80@pengutronix.de>
References: <20260506-socfpga-agilex5-qspi-v1-0-94def85c1b80@pengutronix.de>
In-Reply-To: <20260506-socfpga-agilex5-qspi-v1-0-94def85c1b80@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>, 
 Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260506_020617_918395_90C9D54A 
X-CRM114-Status: GOOD (  12.59  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 5/6] arm: socfpga: mailbox_s10: add write_qspi_refclk
 helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add a helper function that hides the actually used register, field, and
format. This makes the code easier to read and allows to move it to a
better location.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 arch/arm/mach-socfpga/mailbox_s10.c         |  9 +++------
 include/mach/socfpga/soc64-system-manager.h | 21 +++++++++++++++++++++
 2 files changed, 24 insertions(+), 6 deletions(-)

diff --git a/arch/arm/mach-socfpga/mailbox_s10.c b/arch/arm/mach-socfpga/mailbox_s10.c
index c6ea081165d4..417816673c3d 100644
--- a/arch/arm/mach-socfpga/mailbox_s10.c
+++ b/arch/arm/mach-socfpga/mailbox_s10.c
@@ -299,7 +299,6 @@ int socfpga_mailbox_s10_qspi_open(void)
 	int ret;
 	u32 resp_buf[1] = {};
 	u32 resp_buf_len = ARRAY_SIZE(resp_buf);
-	u32 reg;
 	u32 clk_rate;
 	int try = 0;
 
@@ -340,11 +339,9 @@ int socfpga_mailbox_s10_qspi_open(void)
 
 	pr_info("QSPI: reference clock at %d kHz\n", clk_rate / 1000);
 
-	reg = (readl(SOCFPGA_SYSMGR_ADDRESS + SYSMGR_SOC64_BOOT_SCRATCH_COLD0)) &
-			~(SYSMGR_SCRATCH_REG_0_QSPI_REFCLK_MASK);
-
-	writel(((clk_rate / 1000) & SYSMGR_SCRATCH_REG_0_QSPI_REFCLK_MASK) | reg,
-	       SOCFPGA_SYSMGR_ADDRESS + SYSMGR_SOC64_BOOT_SCRATCH_COLD0);
+	ret = socfpga_agilex5_write_qspi_refclk(clk_rate);
+	if (ret)
+		return ret;
 
 	return 0;
 
diff --git a/include/mach/socfpga/soc64-system-manager.h b/include/mach/socfpga/soc64-system-manager.h
index 862e974b1902..a5df69855a28 100644
--- a/include/mach/socfpga/soc64-system-manager.h
+++ b/include/mach/socfpga/soc64-system-manager.h
@@ -8,6 +8,8 @@
 
 #include <linux/bitops.h>
 
+#include <mach/socfpga/soc64-regs.h>
+
 #define SYSMGR_SOC64_SILICONID_1		0x00
 #define SYSMGR_SOC64_SILICONID_2		0x04
 #define SYSMGR_SOC64_WDDBG			0x08
@@ -173,4 +175,23 @@ void agilex5_security_interleaving_off(void);
 void agilex5_initialize_security_policies(void);
 void agilex5_sysmgr_pinmux_init(void);
 
+static inline int socfpga_agilex5_write_qspi_refclk(unsigned long clkrate)
+{
+	unsigned long clkrate_khz;
+	u32 reg;
+
+	/* Follow U-Boot and store clock rate in kHz */
+	clkrate_khz = clkrate / 1000;
+	if (clkrate_khz & ~SYSMGR_SCRATCH_REG_0_QSPI_REFCLK_MASK)
+		return -EINVAL;
+
+	reg = readl(SOCFPGA_SYSMGR_ADDRESS + SYSMGR_SOC64_BOOT_SCRATCH_COLD0);
+	reg &= ~SYSMGR_SCRATCH_REG_0_QSPI_REFCLK_MASK;
+	reg |= (SYSMGR_SCRATCH_REG_0_QSPI_REFCLK_MASK & clkrate_khz);
+
+	writel(reg, SOCFPGA_SYSMGR_ADDRESS + SYSMGR_SOC64_BOOT_SCRATCH_COLD0);
+
+	return 0;
+}
+
 #endif /* _SOC64_SYSTEM_MANAGER_H_ */

-- 
2.47.3



