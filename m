Delivery-date: Fri, 02 Oct 2026 13:37:11 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xCbZf-008pBW-2L
	for lore@lore.pengutronix.de;
	Fri, 02 Oct 2026 13:37:11 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 3ABD4201F18
	for <lore@pengutronix.de>; Fri, 02 Oct 2026 13:37:11 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=v0ptC0HO;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=V+ea2f4w;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790941031; a=rsa-sha256;
	cv=pass;
	b=T4ZsmR79K1vCjbRZC8oTT+ht8J3eTYbb3Nsa4p0cjhJb0ZsUUXTmaAB/XX09wCcl1a0wOm
	V4I/br7qCGwpHbZD6ROqKdUObVRRTL3Vl0W8D1v5+MjwzW6OtdfraKiWtXfJsK4ZljWqBB
	nXupMT2wKhxKwBdzoUlIRuC63EXNxQyycBmQ4hrp5z0Jjrkfv8UFYyMfnJA/6Zc4CwoNVi
	nbnJa1BI59OWUqI8kS9RXiI8sIkr7YF4WDToDeW2oSY0X6bl/zJz8tsuxDk0U5shaLl9Pp
	ICVsvf5c6TxA4JZuX+KXr4e0upLiRy2fWiypZRkqETbfPwELhazn8CDp34u5Pw==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=v0ptC0HO;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=V+ea2f4w;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790941031;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=UNxoUoI5sofUCkbiqb6m4guF6Y4t3tNIcsS4NQUsk8E=;
	b=TeRi/urpgW4IuhaY8ZCRHd9mSNL4sMY4c59Z3VLU4JZFMAKRjKj8mELVLCLjGOIhpUUaZ7
	xJRhCXF/zAKWxjO+jvb4AOHl5S92CudlaixWjvoRr8mPoubh59op84n0yirtQJ5bje2/YG
	qPNW0OtSTaqw4NaCw1s1wziVY3DgeWDJ7gfeUGmuPKqwT8Sh8fI0vc4uPYHH9ZkcqsJBJs
	d9jTn0D4PjxZZoX1GQ4u1ODvIAp9JmRSU7Hek/Vz2og2m4F8r92j7MbQM0k1oTNTHJD0va
	QmzSwMATic9TqEmTxpbaNm3naPLbOjt7YqM6IGU/S8tBJtGh/9w5ANJdzKHaNA==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UNxoUoI5sofUCkbiqb6m4guF6Y4t3tNIcsS4NQUsk8E=; b=v0ptC0HOQhDjDDI0oebkF1Lqlm
	0UC+s9XjNzBjnAVwZHRkLDYcuNVWFPd0qKiNTndRxFz2BLuVqwl8bmxhxYG4mx35Yezy3CDmmfIDl
	llXPkvnRd9hyTC1TBDlgTW2cxp5xqy+LlRYCZNrE49HwYTz6PSPYWbjsGJD4HouilDdhkY0CbKgJj
	wllBpyYkWtrCOx4javhF1Z7r27AcrtEqYOWi7X0+Z0L6Pb0gMHPyDdVWWNGLbeAojZUzKF07cf+db
	z26aKHSuvmead2QH/aTZLorTsSBqtqtsCH51wr32I39G5ok+kcVMMbZ9+MB6erfmMhEaKm8shlAyf
	jHsJzzHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCbYY-0000000BUPl-0Ivu;
	Fri, 02 Oct 2026 11:36:02 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCbYS-0000000BUN7-46YK
	for barebox@lists.infradead.org;
	Fri, 02 Oct 2026 11:36:00 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.4.pengutronix.de [10.17.1.19])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 43926201C7E;
	Fri, 02 Oct 2026 13:35:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790940955;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=UNxoUoI5sofUCkbiqb6m4guF6Y4t3tNIcsS4NQUsk8E=;
	b=V+ea2f4wgJM5/I0WNQCokmpdX5cJjO5AAqoe0QgM/QgyFqRPe5ChrjD4j10cUnKld1ndsB
	ZbXSr9gI9j9kA2OeZChuAzW0bGFBntOk9jVm7EMEt0vTMUr5fOdAmUEkxwdejHnymt0/Q+
	T3z2MuzlleWDpH8Xx7qNCa2hlKW6UhsgMeG/eVbH2AGhLWCt8eEKc5AbDI7bfQvFq5F+os
	lHumWh8AjtkiBHjKUDa3IoqEPxMozJzY8knspMaLHn7rUPPfXgtZvOnJc2Zxt4Cv36W/KH
	KM3zAga7Ngs16/o19upujEnchf2Y9sKm4Sp+f2m3ucD834nHQhHQUzul8QohMQ==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790940955; a=rsa-sha256;
	cv=none;
	b=W2Tra0XpIbP6IMINHNxTnnIltBM9z3eFyhb3D5V8eQcirrXy61IwThDr0YZfeJn1uuxRRN
	IICu4jXl8LQVCxh7ETUghJs7rDb52nINUIxm14pJv7pWeUYoLlw755ufMaglSsKquGt0N3
	7MmC+092YAC/HWSlLFUtvg9pGj5Ai8Iq3TN1D8+2YH2i6+gYK+IBVCAgroOWBIIraxcnOh
	jLtQTBNpXFkSMM+19Q0+pfz1X3FDr+3mn+NpEdvzfQAoRZhjxxITVRdBv48iXh570a0EII
	hqkPPpM7hAeSegzHyIzB7Q/bo+Zq7HalbMspv1sSwQ4i/M97jS01B0HBZmzpsA==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790940955;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=UNxoUoI5sofUCkbiqb6m4guF6Y4t3tNIcsS4NQUsk8E=;
	b=L1UQBRzaU6Q9AxZkSnGN8eimsIWBCvQ2Ndke+vHineyj1lsDO8tbRlywtK6uyvy/8/8VZn
	P4mMvTr/E1Vmo0DKVu0lIXGdf3dnpLFzmywa8cYrlQHWeWAVOVNn73XWq2NpwQ51GCx+Ga
	Gl8wqhmaQlRyO/Bg419GV4p44+rET2Em0Np/xQvvH7Cywwh9Af0xZgg0ljEgU5SOX+gV+r
	bxw3wcK5dK95F9TUlq/8clhdZejuRhvNXvfOAJ4SYX0JU1GCR9f3JFkZSqyYoK9RdsR2M8
	qBFwjY1DGDMYVzCDIWKSSgPE071ReLdIR78N5VkRCnE0yc+AVpNG62JacFrU5Q==
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id 2A4167401F0;
	Fri, 02 Oct 2026 13:35:55 +0200 (CEST)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH master 5/5] ARM: i.MX8M: order early clock init like U-Boot
Date: Fri,  2 Oct 2026 13:35:50 +0200
Message-ID: <20261002113554.2902941-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261002113554.2902941-1-a.fatoum@pengutronix.de>
References: <20261002113554.2902941-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261002_043558_314432_0C47FC9E 
X-CRM114-Status: GOOD (  13.02  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  The clocks configured in __imx8m_early_clock_init() now match
    U-Boot's clock_init(), but are written in a different order: DRAM first,
   then GIC, SYS_PLL3, NOC and the ARM PLL last. U-Boot sets up the ARM PLL right
    after enabling the SYS_PLL1/2 outputs, then SYS_PLL3 and its NOC consumer,
    the GIC root and the DRAM clocks last. Reorder to the same sequence, so the
    two can be compa [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Spamd-Result: default: False [-58.91 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWO(0.00)[2];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	RCVD_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 3ABD4201F18
X-Stat-Signature: zombyiuo76ij1za3k9rsc5rkjiakohsr

The clocks configured in __imx8m_early_clock_init() now match U-Boot's
clock_init(), but are written in a different order: DRAM first, then
GIC, SYS_PLL3, NOC and the ARM PLL last.

U-Boot sets up the ARM PLL right after enabling the SYS_PLL1/2 outputs,
then SYS_PLL3 and its NOC consumer, the GIC root and the DRAM clocks
last. Reorder to the same sequence, so the two can be compared side by
side. The remaining differences are:

  - barebox doesn't touch the NAND_USDHC_BUS and watchdog roots or the
    TEMP_SENSOR and SEC_DEBUG gates in the PBL

  - NXP's downstream U-Boot additionally configures the display clocks
    in clock_init() (VIDEO_PLL at 594MHz, the DISPLAY_AXI/APB and MIPI
    DSI roots, DISPMIX gate)

These are skipped as both barebox and Linux will configure these clocks
if needed before using them.

Every root and gate ends up with the same value, and each source is
enabled before a root is switched to it in either order.

No functional change.

Assisted-by: Claude:fable-5.1
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-imx/imx8m.c | 83 +++++++++++++++++++--------------------
 1 file changed, 40 insertions(+), 43 deletions(-)

diff --git a/arch/arm/mach-imx/imx8m.c b/arch/arm/mach-imx/imx8m.c
index 23a920ffae2e..b9f8906d6ed2 100644
--- a/arch/arm/mach-imx/imx8m.c
+++ b/arch/arm/mach-imx/imx8m.c
@@ -82,6 +82,46 @@ static void __imx8m_early_clock_init(int cpu_type)
 		INTPLL_DIV20_CLKE_MASK;
 	writel(val, ana + IMX8MM_CCM_ANALOG_SYS_PLL2_GEN_CTRL);
 
+	/* Configure ARM at 1.2GHz */
+	imx8m_clock_set_target_val(IMX8M_ARM_A53_CLK_ROOT,
+				   IMX8M_CCM_TARGET_ROOTn_ENABLE |
+				   IMX8M_CCM_TARGET_ROOTn_MUX(2));
+
+	clk_pll1416x_early_configure(ana + IMX8MM_CCM_ANALOG_ARM_PLL_GEN_CTRL,
+				     1200000000UL, 25000000UL);
+
+	/* Bypass the A53 root and feed the cores from arm_pll_out directly */
+	imx8m_clock_set_target_val(IMX8M_CORE_SEL_CFG,
+				   IMX8M_CCM_TARGET_ROOTn_MUX(1));
+
+	if (cpu_type == IMX_CPU_IMX8MN || cpu_type == IMX_CPU_IMX8MP)
+		pll3_freq = 600000000UL;
+	else
+		pll3_freq = 750000000UL;
+
+	/* Configure SYS_PLL3 */
+	clk_pll1416x_early_configure(ana + IMX8MM_CCM_ANALOG_SYS_PLL3_GEN_CTRL,
+				     pll3_freq, 25000000UL);
+
+	if (cpu_type == IMX_CPU_IMX8MP) {
+		/* NOC_IO from sys_pll3_out, barebox proper sets NOC and GIC */
+		imx8m_clock_set_target_val(IMX8M_NOC_IO_CLK_ROOT,
+					   IMX8M_CCM_TARGET_ROOTn_ENABLE |
+					   IMX8M_CCM_TARGET_ROOTn_MUX(2));
+	} else {
+		/* NOC from undivided sys_pll3_out */
+		imx8m_clock_set_target_val(IMX8M_NOC_CLK_ROOT,
+					   IMX8M_CCM_TARGET_ROOTn_ENABLE |
+					   IMX8M_CCM_TARGET_ROOTn_MUX(2));
+
+		/* config GIC to sys_pll2_100m */
+		imx8m_ccgr_clock_disable(IMX8M_CCM_CCGR_GIC);
+		imx8m_clock_set_target_val(IMX8M_GIC_CLK_ROOT,
+					   IMX8M_CCM_TARGET_ROOTn_ENABLE |
+					   IMX8M_CCM_TARGET_ROOTn_MUX(3));
+		imx8m_ccgr_clock_enable(IMX8M_CCM_CCGR_GIC);
+	}
+
 	imx8m_ccgr_clock_disable(IMX8M_CCM_CCGR_DDR1);
 
 	imx8m_clock_set_target_val(IMX8M_DRAM_ALT_CLK_ROOT,
@@ -94,49 +134,6 @@ static void __imx8m_early_clock_init(int cpu_type)
 				   IMX8M_CCM_TARGET_ROOTn_MUX(1));
 
 	imx8m_ccgr_clock_enable(IMX8M_CCM_CCGR_DDR1);
-
-	if (cpu_type != IMX_CPU_IMX8MP) {
-		/* 8MP ROM already set GIC to 400Mhz, system_pll1_800m with div = 2 */
-		/* For everything else, config GIC to sys_pll2_100m */
-		imx8m_ccgr_clock_disable(IMX8M_CCM_CCGR_GIC);
-		imx8m_clock_set_target_val(IMX8M_GIC_CLK_ROOT,
-					   IMX8M_CCM_TARGET_ROOTn_ENABLE |
-					   IMX8M_CCM_TARGET_ROOTn_MUX(3));
-		imx8m_ccgr_clock_enable(IMX8M_CCM_CCGR_GIC);
-	}
-
-	if (cpu_type == IMX_CPU_IMX8MN || cpu_type == IMX_CPU_IMX8MP)
-		pll3_freq = 600000000UL;
-	else
-		pll3_freq = 750000000UL;
-
-	/* Configure SYS_PLL3 */
-	clk_pll1416x_early_configure(ana + IMX8MM_CCM_ANALOG_SYS_PLL3_GEN_CTRL,
-				     pll3_freq, 25000000UL);
-
-	if (cpu_type == IMX_CPU_IMX8MP) {
-		/* 8MP ROM already set NOC to 800Mhz, only need to configure NOC_IO clk to 600Mhz */
-		imx8m_clock_set_target_val(IMX8M_NOC_IO_CLK_ROOT,
-					   IMX8M_CCM_TARGET_ROOTn_ENABLE |
-					   IMX8M_CCM_TARGET_ROOTn_MUX(2));
-	} else {
-		/* NOC from undivided sys_pll3_out */
-		imx8m_clock_set_target_val(IMX8M_NOC_CLK_ROOT,
-					   IMX8M_CCM_TARGET_ROOTn_ENABLE |
-					   IMX8M_CCM_TARGET_ROOTn_MUX(2));
-	}
-
-	imx8m_clock_set_target_val(IMX8M_ARM_A53_CLK_ROOT,
-				   IMX8M_CCM_TARGET_ROOTn_ENABLE |
-				   IMX8M_CCM_TARGET_ROOTn_MUX(2));
-
-	/* Configure ARM PLL to 1.2GHz */
-	clk_pll1416x_early_configure(ana + IMX8MM_CCM_ANALOG_ARM_PLL_GEN_CTRL,
-				     1200000000UL, 25000000UL);
-
-	/* Bypass the A53 root and feed the cores from arm_pll_out directly */
-	imx8m_clock_set_target_val(IMX8M_CORE_SEL_CFG,
-				   IMX8M_CCM_TARGET_ROOTn_MUX(1));
 }
 
 void imx8mm_early_clock_init(void)
-- 
2.47.3



