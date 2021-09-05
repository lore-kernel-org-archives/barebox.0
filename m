Delivery-date: Sun, 05 Sep 2021 15:53:32 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mMsaS-0007GE-JB
	for lore@lore.pengutronix.de; Sun, 05 Sep 2021 15:53:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mMsaR-0002R9-JY
	for lore@pengutronix.de; Sun, 05 Sep 2021 15:53:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rMJ5XSGgMhzfpbAqQMozHe2DqdpR4E9R0jHz5gRqS2o=; b=yVpR07zq8u1a9Z
	9RJDJfY250N7/EdoihXYkIxhAde/9sqHphvFKOUeaPL/YBc2Nsx1Rx5lBPwYpqVuxo7jEioNw68In
	5L1EO5ZP+kzv2OUOfOGpc7lDNO6yE7gbwxD/OH8Rn0cgT2j5NHjBgwEwiS0G35BZ2PWCufLrPr2cg
	CUHKuVxhGe734/nOUdioi2m6dHQmY1MTa0O5x1IFHAHIDMQIR6NrcFvAnAVTHI4kvDkDkozr/5gb0
	ObcMZHahsI6jO4VVIXAESuv0Nl8/RIyJEHooYehXc9QFLlwF/ZSnJR/Qhvj46d9FJi9hP2jg7OH3U
	3eted7OQ5/JU98q/a+BQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mMsYm-00Fqc3-8L; Sun, 05 Sep 2021 13:51:48 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mMsYY-00FqWl-OS
 for barebox@lists.infradead.org; Sun, 05 Sep 2021 13:51:37 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1mMsYU-000248-Qc
 for barebox@lists.infradead.org; Sun, 05 Sep 2021 15:51:30 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1mMsYU-00026S-7Z
 for barebox@lists.infradead.org; Sun, 05 Sep 2021 15:51:30 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Sun,  5 Sep 2021 15:51:16 +0200
Message-Id: <20210905135122.7038-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210905135122.7038-1-a.fatoum@pengutronix.de>
References: <20210905135122.7038-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210905_065134_885699_2AC51B72 
X-CRM114-Status: GOOD (  11.51  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/9] ARM: i.MX8MN: adapt early clock support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

PBL runs fine when doing the same early clock setup as for the i.MX8MM:
i2c communication works, copying to DRAM works, but boot hangs in
barebox proper. Vendor patches for U-Boot configure SYS_PLL3 as 600MHz
for i.MX8MP and i.MX8MN. barebox i.MX8MP port evidently can do without,
but for i.MX8MN, reducing PLL frequency to 600MHz was required to boot.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-imx/imx8m.c                       | 16 +++++++++++++---
 arch/arm/mach-imx/include/mach/imx8m-ccm-regs.h |  1 +
 2 files changed, 14 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-imx/imx8m.c b/arch/arm/mach-imx/imx8m.c
index ac48e7aa0ab1..6b7cdac54145 100644
--- a/arch/arm/mach-imx/imx8m.c
+++ b/arch/arm/mach-imx/imx8m.c
@@ -181,7 +181,7 @@ int imx8mq_init(void)
 #define IMX8MM_CCM_ANALOG_SYS_PLL2_GEN_CTRL	0x104
 #define IMX8MM_CCM_ANALOG_SYS_PLL3_GEN_CTRL	0x114
 
-void imx8mm_early_clock_init(void)
+static void __imx8mm_early_clock_init(unsigned long pll3_freq) /* and later */
 {
 	void __iomem *ana = IOMEM(MX8M_ANATOP_BASE_ADDR);
 	void __iomem *ccm = IOMEM(MX8M_CCM_BASE_ADDR);
@@ -224,9 +224,9 @@ void imx8mm_early_clock_init(void)
 				   IMX8M_CCM_TARGET_ROOTn_MUX(3));
 	imx8m_ccgr_clock_enable(IMX8M_CCM_CCGR_GIC);
 
-	/* Configure SYS_PLL3 to 750MHz */
+	/* Configure SYS_PLL3 */
 	clk_pll1416x_early_set_rate(ana + IMX8MM_CCM_ANALOG_SYS_PLL3_GEN_CTRL,
-				    750000000UL, 25000000UL);
+				    pll3_freq, 25000000UL);
 
 	clrsetbits_le32(ccm + IMX8M_CCM_TARGET_ROOTn(IMX8M_ARM_A53_CLK_ROOT),
 			IMX8M_CCM_TARGET_ROOTn_MUX(7),
@@ -249,6 +249,16 @@ void imx8mm_early_clock_init(void)
 			FIELD_PREP(CCM_TARGET_ROOT0_DIV, 0));
 }
 
+void imx8mm_early_clock_init(void)
+{
+	__imx8mm_early_clock_init(750000000UL);
+}
+
+void imx8mn_early_clock_init(void)
+{
+	__imx8mm_early_clock_init(600000000UL);
+}
+
 #define KEEP_ALIVE			0x18
 #define VER_L				0x1c
 #define VER_H				0x20
diff --git a/arch/arm/mach-imx/include/mach/imx8m-ccm-regs.h b/arch/arm/mach-imx/include/mach/imx8m-ccm-regs.h
index 743ed6cda0d2..985391f31ac1 100644
--- a/arch/arm/mach-imx/include/mach/imx8m-ccm-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx8m-ccm-regs.h
@@ -50,6 +50,7 @@
 
 void imx8m_early_setup_uart_clock(void);
 void imx8mm_early_clock_init(void);
+void imx8mn_early_clock_init(void);
 void imx8m_clock_set_target_val(int clock_id, u32 val);
 void imx8m_ccgr_clock_enable(int index);
 void imx8m_ccgr_clock_disable(int index);
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

