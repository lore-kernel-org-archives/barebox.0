Delivery-date: Fri, 19 Apr 2024 08:14:14 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rxhVm-0074f2-2e
	for lore@lore.pengutronix.de;
	Fri, 19 Apr 2024 08:14:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rxhVl-00086t-VC
	for lore@pengutronix.de; Fri, 19 Apr 2024 08:14:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TeK7b5HXQPzkQ/HzydrRic3uJe8G8DT4hgTcXMR6NIA=; b=m8qy2sX97ZV6Z6LFKYh9+HtVEj
	+etNl7w2rsxgzqUtcAjJcNqjgp/cgCO+mwm+gk9pICCjdDPIK56PU0eCsIw73mxwNaP5cFNQd8Axd
	nlkXbvb7EWBMzO6ZHCaIyUmvhlW7647d2DUTcuVIZtxDh2BhPPUmmBk3Njo6KXaBstvW8FN5lZwE3
	X45rXQGHt8YJnyw1+IFqsuG3KwQdqPqgtxee9DVb94BhGPVtO8MnFG+ntYe/2IsEb03PkVMAxZw8A
	CHajzcurYYFONnyDpRCBpZgeLZwoZ/Vx/ooaHp8wbb78xO4B6o8bPnw36AEgWb2UHfj998naQh1Vj
	OHv4YlOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxhVL-00000004Z9C-38w3;
	Fri, 19 Apr 2024 06:13:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxhV8-00000004Z3c-3oSe
	for barebox@lists.infradead.org;
	Fri, 19 Apr 2024 06:13:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rxhV7-0007C3-EQ; Fri, 19 Apr 2024 08:13:33 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rxhV7-00D6hi-2H; Fri, 19 Apr 2024 08:13:33 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rxhV6-00AsV5-3B;
	Fri, 19 Apr 2024 08:13:33 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 19 Apr 2024 08:13:27 +0200
Message-Id: <20240419061331.2592739-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240419061331.2592739-1-a.fatoum@pengutronix.de>
References: <20240419061331.2592739-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240418_231335_022751_A1CDFE41 
X-CRM114-Status: GOOD (  13.96  )
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
X-Spam-Status: No, score=-6.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/5] ARM: i.MX8M: pass cpu_type parameter to __imx8m_early_clock_init
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We do some limited clock tree configuration in PBL and do the proper
configuration later in the barebox proper drivers.

The clock tree of the i.MX8MP is a bit different though than that of the
i.MX8MM and i.MX8MN and we'll want to add some more SoC-specific
configuration in the follow-up commit. Prepare for that by giving the
function a cpu_type parameter that can be checked.

Note that we can't use imx_cpu_type here, because it has not been set
yet.

No functional change intended.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-imx/imx8m.c | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

diff --git a/arch/arm/mach-imx/imx8m.c b/arch/arm/mach-imx/imx8m.c
index 52e42ee9ef63..d798c52c6a6e 100644
--- a/arch/arm/mach-imx/imx8m.c
+++ b/arch/arm/mach-imx/imx8m.c
@@ -56,8 +56,9 @@ void imx8m_ccgr_clock_disable(int index)
 #define IMX8MM_CCM_ANALOG_SYS_PLL2_GEN_CTRL	0x104
 #define IMX8MM_CCM_ANALOG_SYS_PLL3_GEN_CTRL	0x114
 
-static void __imx8m_early_clock_init(unsigned long pll3_freq) /* and later */
+static void __imx8m_early_clock_init(int cpu_type)
 {
+	unsigned long pll3_freq;
 	void __iomem *ana = IOMEM(MX8M_ANATOP_BASE_ADDR);
 	void __iomem *ccm = IOMEM(MX8M_CCM_BASE_ADDR);
 	u32 val;
@@ -99,6 +100,11 @@ static void __imx8m_early_clock_init(unsigned long pll3_freq) /* and later */
 				   IMX8M_CCM_TARGET_ROOTn_MUX(3));
 	imx8m_ccgr_clock_enable(IMX8M_CCM_CCGR_GIC);
 
+	if (cpu_type == IMX_CPU_IMX8MN)
+		pll3_freq = 600000000UL;
+	else
+		pll3_freq = 750000000UL;
+
 	/* Configure SYS_PLL3 */
 	clk_pll1416x_early_set_rate(ana + IMX8MM_CCM_ANALOG_SYS_PLL3_GEN_CTRL,
 				    pll3_freq, 25000000UL);
@@ -126,17 +132,17 @@ static void __imx8m_early_clock_init(unsigned long pll3_freq) /* and later */
 
 void imx8mm_early_clock_init(void)
 {
-	__imx8m_early_clock_init(750000000UL);
+	__imx8m_early_clock_init(IMX_CPU_IMX8MM);
 }
 
 void imx8mn_early_clock_init(void)
 {
-	__imx8m_early_clock_init(600000000UL);
+	__imx8m_early_clock_init(IMX_CPU_IMX8MN);
 }
 
 void imx8mp_early_clock_init(void)
 {
-	__imx8m_early_clock_init(750000000UL);
+	__imx8m_early_clock_init(IMX_CPU_IMX8MP);
 }
 
 
-- 
2.39.2



