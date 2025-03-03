Delivery-date: Mon, 03 Mar 2025 10:02:02 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tp1gZ-009Gog-1P
	for lore@lore.pengutronix.de;
	Mon, 03 Mar 2025 10:02:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tp1gX-0004Ct-C3
	for lore@pengutronix.de; Mon, 03 Mar 2025 10:02:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6zeSA0ckDBHgiHO/Uyjsbop442A3LPXjZBGc5YLTMaY=; b=IzT+sLf94IYhK79hDj6eI7BIyK
	GxVpXhDCW4nVeS37crjsRq8N7xz+UU8J25jfQ/qKPK6oDD3lFIfnCwvAL+1NJL4rTrf+ls+V0uiGE
	h2MyPxNbsQkYv6xV/JPyLO/ewCjgUP4s4dsoiCqNq/Ee0AnRTrm64oeB0L97UZ3Au2rKRayHYAKyH
	xVY59jBT/J7CA2En2CxoUmYKHvMaY+fmXiEIKs6nW5tpSBLdCjlslBPYbCe8WOzSOXwkWV2d8DYeY
	pKj6prMWfZR6HmWIT6sUfbwXWAiMkVSwgnUk9klfUfWNVmsag34JosuWThKZcfas9JBQk8DiY6K3L
	sp88oibg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tp1g3-000000002pv-306t;
	Mon, 03 Mar 2025 09:01:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tp1e1-000000002PA-0j6p
	for barebox@lists.infradead.org;
	Mon, 03 Mar 2025 08:59:26 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1tp1dz-0003IF-Uu; Mon, 03 Mar 2025 09:59:24 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon, 03 Mar 2025 09:59:20 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250303-v2025-02-0-topic-socfpga-arria10-v1-4-d66021246a66@pengutronix.de>
References: <20250303-v2025-02-0-topic-socfpga-arria10-v1-0-d66021246a66@pengutronix.de>
In-Reply-To: <20250303-v2025-02-0-topic-socfpga-arria10-v1-0-d66021246a66@pengutronix.de>
To: barebox@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250303_005925_222919_FC4A7248 
X-CRM114-Status: GOOD (  14.21  )
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
Subject: [PATCH 4/5] ARM: SoCFPGA: arria10-sdram: remove workaround
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Early engineering sample silicon needed a workaround for DDR setup. No
supported board has this early silicion, Altera doesn't have this
workaround in their u-boot. Just get rid of this old code.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/mach-socfpga/arria10-sdram.c | 125 +---------------------------------
 1 file changed, 2 insertions(+), 123 deletions(-)

diff --git a/arch/arm/mach-socfpga/arria10-sdram.c b/arch/arm/mach-socfpga/arria10-sdram.c
index c28cf50eb55fb97c2dfe52acfbc360784ca3e36b..c6a86f821473c9990f88906bbe4d52ff8987207c 100644
--- a/arch/arm/mach-socfpga/arria10-sdram.c
+++ b/arch/arm/mach-socfpga/arria10-sdram.c
@@ -23,9 +23,6 @@
 #define ARRIA10_NIOS_OCT_DONE	BIT(7)
 #define ARRIA10_NIOS_OCT_ACK	7
 
-/* Engineering sample silicon */
-#define ARRIA10_ES_SILICON_VER	0x00010001
-
 #define DDR_REG_SEQ2CORE        0xFFD0507C
 #define DDR_REG_CORE2SEQ        0xFFD05078
 #define DDR_REG_GPOUT           0xFFD03010
@@ -100,27 +97,6 @@ static int is_sdram_cal_success(void)
 	return readl(ARRIA10_ECC_HMC_OCP_DDRCALSTAT);
 }
 
-static unsigned char ddr_get_bit(uint32_t ereg, unsigned char bit)
-{
-	unsigned int reg = readl(ereg);
-
-	return (reg & (1 << bit)) ? 1 : 0;
-}
-
-static unsigned char ddr_wait_bit(uint32_t ereg, uint32_t bit,
-				  uint32_t expected, uint32_t timeout_usec)
-{
-	unsigned int tmr;
-
-	for (tmr = 0; tmr < timeout_usec; tmr += 100) {
-		__udelay(100);
-		if (ddr_get_bit(ereg, bit) == expected)
-			return 0;
-	}
-
-	return 1;
-}
-
 static void ddr_delay(uint32_t delay)
 {
 	int tmr;
@@ -129,91 +105,6 @@ static void ddr_delay(uint32_t delay)
 		__udelay(1000);
 }
 
-/*
- * Diagram of OCT Workaround:
- *
- * EMIF Core                     HPS Processor              OCT FSM
- * =================================================================
- *
- * seq2core      ==============>
- * [0x?????????]   OCT Request   [0xFFD0507C]
- *
- * core2seq
- * [0x?????????] <==============
- *                 OCT Ready     [0xFFD05078]
- *
- *                               [0xFFD03010] ============> Request
- *                                             OCT Request
- *
- *                               [0xFFD03014] <============ Ready
- *                                              OCT Ready
- * Signal definitions:
- *
- * seq2core[7] - OCT calibration request (act-high)
- * core2seq[7] - Signals OCT FSM is ready (active high)
- * gpout[31]   - EMIF Reset override (active low)
- * gpout[30]   - OCT calibration request (act-high)
- * gpin[31]    - OCT calibration ready (act-high)
- */
-
-static int ddr_calibration_es_workaround(void)
-{
-	ddr_delay(500);
-	/* Step 1 - Initiating Reset Sequence */
-	clrbits_le32(DDR_REG_GPOUT, ARRIA10_EMIF_RST);
-	ddr_delay(10);
-
-	/* Step 2 - Clearing registers to EMIF core */
-	writel(0, DDR_REG_CORE2SEQ);	/*Clear the HPS->NIOS COM reg.*/
-
-	/* Step 3 - Clearing registers to OCT core */
-	clrbits_le32(DDR_REG_GPOUT, ARRIA10_OCT_CAL_REQ);
-	ddr_delay(5);
-
-	/* Step 4 - Taking EMIF out of reset */
-	setbits_le32(DDR_REG_GPOUT, ARRIA10_EMIF_RST);
-	ddr_delay(10);
-
-	/* Step 5 - Waiting for OCT circuitry to come out of reset */
-	if (ddr_wait_bit(DDR_REG_GPIN, ARRIA10_OCT_CAL_ACK, 1, 1000000))
-		return -1;
-
-	/* Step 6 - Allowing EMIF to proceed with OCT calibration */
-	setbits_le32(DDR_REG_CORE2SEQ, ARRIA10_NIOS_OCT_DONE);
-
-	/* Step 7 - Waiting for EMIF request */
-	if (ddr_wait_bit(DDR_REG_SEQ2CORE, ARRIA10_NIOS_OCT_ACK, 1, 2000000))
-		return -2;
-
-	/* Step 8 - Acknowledging EMIF OCT request */
-	clrbits_le32(DDR_REG_CORE2SEQ, ARRIA10_NIOS_OCT_DONE);
-
-	/* Step 9 - Waiting for EMIF response */
-	if (ddr_wait_bit(DDR_REG_SEQ2CORE, ARRIA10_NIOS_OCT_ACK, 0, 2000000))
-		return -3;
-
-	/* Step 10 - Triggering OCT Calibration */
-	setbits_le32(DDR_REG_GPOUT, ARRIA10_OCT_CAL_REQ);
-
-	/* Step 11 - Waiting for OCT response */
-	if (ddr_wait_bit(DDR_REG_GPIN, ARRIA10_OCT_CAL_ACK, 0, 1000))
-		return -4;
-
-	/* Step 12 - Clearing OCT Request bit */
-	clrbits_le32(DDR_REG_GPOUT, ARRIA10_OCT_CAL_REQ);
-
-	/* Step 13 - Waiting for OCT Engine */
-	if (ddr_wait_bit(DDR_REG_GPIN, ARRIA10_OCT_CAL_ACK, 1, 200000))
-		return -5;
-
-	/* Step 14 - Proceeding with EMIF calibration */
-	setbits_le32(DDR_REG_CORE2SEQ, ARRIA10_NIOS_OCT_DONE);
-
-	ddr_delay(100);
-
-	return 0;
-}
-
 static int emif_clear(void)
 {
 	writel(0, DDR_REG_CORE2SEQ);
@@ -271,30 +162,18 @@ static int emif_reset(void)
 
 static int arria10_ddr_setup(void)
 {
-	int i, j, retcode, ddr_setup_complete = 0;
-	int chip_version = readl(ARRIA10_SYSMGR_SILICONID1);
+	int i, j, ddr_setup_complete = 0;
 
 	/* Try 3 times to do a calibration */
 	for (i = 0; (i < 3) && !ddr_setup_complete; i++) {
-		/* Only engineering sample needs calibration workaround */
-		if (ARRIA10_ES_SILICON_VER == chip_version) {
-			retcode = ddr_calibration_es_workaround();
-			if (retcode) {
-				printf("DDRCAL: Failure: %d\n", retcode);
-				continue;
-			}
-		}
-
 		/* A delay to wait for calibration bit to set */
 		for (j = 0; (j < 10) && !ddr_setup_complete; j++) {
 			ddr_delay(500);
 			ddr_setup_complete = is_sdram_cal_success();
 		}
 
-		if (!ddr_setup_complete &&
-			(ARRIA10_ES_SILICON_VER != chip_version)) {
+		if (!ddr_setup_complete)
 			emif_reset();
-		}
 	}
 
 	if (!ddr_setup_complete) {

-- 
2.45.2



