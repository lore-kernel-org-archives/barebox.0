Delivery-date: Mon, 03 Mar 2025 10:02:05 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tp1gb-009Gpa-0q
	for lore@lore.pengutronix.de;
	Mon, 03 Mar 2025 10:02:05 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tp1ga-0004Fs-1m
	for lore@pengutronix.de; Mon, 03 Mar 2025 10:02:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=foF19aSwfpOdnOfCEZ3W2sbVT+wVm1BjAth0C9ZI+b0=; b=jS5hgTjFp+sGZLgQxQxSdSEpbn
	3zqbvxzSYUDrNBTxM/LHj87ir8KgO5tttWV5AuUzHH1jubk665vmQntrKzmiIS5PfdKpOe8AcaIsX
	F4ke1h9aUvwNUoRg9Hqu8jCyfSAfMLoY8uim97eAm2+ZJgr5P5pHLLp4Xve5vZwQ+xAAYyqMi+YbP
	1L2g1xq/9cSNfNxfis8OnChFH9EZEtfduOj7Rmm0hxrXi2XlzMfuk+aico9ZZyGcFQe5cp4MhM2Cd
	HM/oUMa+LFzQ8GNssIYSzHWw6zP3hc8FtnNeE+oBvPxQmm+TqoyGO6N1FgpU6YFPZkKzwiYjr/n7/
	jmNLL9Sw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tp1g4-000000002qe-1ud3;
	Mon, 03 Mar 2025 09:01:32 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tp1e5-000000002RM-3wHv
	for barebox@bombadil.infradead.org;
	Mon, 03 Mar 2025 08:59:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=foF19aSwfpOdnOfCEZ3W2sbVT+wVm1BjAth0C9ZI+b0=; b=T/tTiHM6dN/jrrSmwY0m/gm64S
	v0rrBwZVK5tDTVqCnUivgL22i/oemcYYXp8sxxCgxfAnYja+7TK+QnCbvfDVkfR9B8ESQvgQs459J
	TD49lEAfZ2E/hCpPZWzE03+gxYMj5HzAGxpmeyEqB6sEEJiXoV5tcDJ7l0+TyspTSLI9N3JpzTrlg
	cuni5na3dKV1qvQtgR3o3XVXyNKsdDwT1I8NE+KVeFFMTbyavp4H/XYhh4I/E+WlEua//PI+7Qtin
	57x1sgC5JZjxFwR+oghOBPgy0OvO9WXs5auhTLN0UNJz5xuRY94yZdbwuYTj4VYma4QTrHo5wnhhL
	VFM5eQhw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tp1e2-00000004WeI-33Sx
	for barebox@lists.infradead.org;
	Mon, 03 Mar 2025 08:59:28 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1tp1e0-0003IF-Li; Mon, 03 Mar 2025 09:59:24 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon, 03 Mar 2025 09:59:21 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250303-v2025-02-0-topic-socfpga-arria10-v1-5-d66021246a66@pengutronix.de>
References: <20250303-v2025-02-0-topic-socfpga-arria10-v1-0-d66021246a66@pengutronix.de>
In-Reply-To: <20250303-v2025-02-0-topic-socfpga-arria10-v1-0-d66021246a66@pengutronix.de>
To: barebox@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250303_085927_130629_56E22823 
X-CRM114-Status: GOOD (  14.32  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 5/5] ARM: SoCFPGA: arria10-sdram: cleanup ddr_setup
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Replace the convoluted loop-in-loop code with ad-hoc polling with
__wait_on_timeout. This makes the code more readable and ensures, that
the L4WD0 is kicked as necessary.

If a calibration fails, restart the EMIF, wait for 500ms for the
calibration to complete and check again. Try this for 32 times.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/mach-socfpga/arria10-sdram.c | 44 +++++++++++------------------------
 1 file changed, 14 insertions(+), 30 deletions(-)

diff --git a/arch/arm/mach-socfpga/arria10-sdram.c b/arch/arm/mach-socfpga/arria10-sdram.c
index c6a86f821473c9990f88906bbe4d52ff8987207c..eeb94277039dae0394aed180f970a9baa1098229 100644
--- a/arch/arm/mach-socfpga/arria10-sdram.c
+++ b/arch/arm/mach-socfpga/arria10-sdram.c
@@ -91,20 +91,6 @@ static int match_ddr_conf(uint32_t ddr_conf)
 	return 0;
 }
 
-/* Check whether SDRAM is successfully Calibrated */
-static int is_sdram_cal_success(void)
-{
-	return readl(ARRIA10_ECC_HMC_OCP_DDRCALSTAT);
-}
-
-static void ddr_delay(uint32_t delay)
-{
-	int tmr;
-
-	for (tmr = 0; tmr < delay; tmr++)
-		__udelay(1000);
-}
-
 static int emif_clear(void)
 {
 	writel(0, DDR_REG_CORE2SEQ);
@@ -162,26 +148,24 @@ static int emif_reset(void)
 
 static int arria10_ddr_setup(void)
 {
-	int i, j, ddr_setup_complete = 0;
-
-	/* Try 3 times to do a calibration */
-	for (i = 0; (i < 3) && !ddr_setup_complete; i++) {
-		/* A delay to wait for calibration bit to set */
-		for (j = 0; (j < 10) && !ddr_setup_complete; j++) {
-			ddr_delay(500);
-			ddr_setup_complete = is_sdram_cal_success();
-		}
+	int i, ret = 0;
 
-		if (!ddr_setup_complete)
-			emif_reset();
-	}
+	/* Try 32 times to do a calibration */
+	for (i = 0; i < 32; i++) {
+		ret = __wait_on_timeout(1000,
+				!(readl(ARRIA10_ECC_HMC_OCP_DDRCALSTAT)	&
+					BIT(0)));
+		if (!ret)
+			return 0;
 
-	if (!ddr_setup_complete) {
-		puts_ll("Error: Could Not Calibrate SDRAM\n");
-		return -1;
+		ret = emif_reset();
+		if (ret)
+			puts_ll("Error: arria10_ddr_setup: Failed to reset EMIF\n");
+
+		__udelay(500000);
 	}
 
-	return 0;
+	return -ETIMEDOUT;
 }
 
 /* Function to startup the SDRAM*/

-- 
2.45.2



