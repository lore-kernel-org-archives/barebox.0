Delivery-date: Fri, 20 Oct 2023 15:39:00 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qtpiO-00FaVq-NF
	for lore@lore.pengutronix.de; Fri, 20 Oct 2023 15:39:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qtpiN-0003J8-8U
	for lore@pengutronix.de; Fri, 20 Oct 2023 15:39:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sgqmBXFoI32534LP68IwbbA6OPXmMILt3WwZHRjgknY=; b=iFM+zpF20zQVKW4tAt3lLZZJ78
	o9DZKQJzCHqZRPSBP/lVMCL94NcKnoMTzP4VML4T9D1MM0BibgEm7drXXNmLVh0c1tDRh+pNyeL9i
	GC+wKy+YVMEu7dQZuZqvyfL3E4EixuaSWRkO3NJjwWxdVHEZsmeFKoKyeZEfqKmrrXs15gCC76P9R
	saHPjRo7BOySSt1jg0v53vXW01dPXR2fe9mYEnED47Rwfpn9VOzV1QQSog5it3EXjOLszhfOMOHO5
	vfjI7xy3zx7r8NbfuozJOBgFVgH+jDahTwDBkHn1PUqvt9jSVWF7l/28sXgNEc/yvzcr+QIKTpnUt
	7VvP9FQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qtphI-002O7p-37;
	Fri, 20 Oct 2023 13:37:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qtphD-002O62-1O
	for barebox@lists.infradead.org;
	Fri, 20 Oct 2023 13:37:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qtphC-0002zh-3P; Fri, 20 Oct 2023 15:37:46 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qtphB-0032VZ-NQ; Fri, 20 Oct 2023 15:37:45 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qtphB-002Luw-1y;
	Fri, 20 Oct 2023 15:37:45 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Robert Schwebel <rsc@pengutronix.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 20 Oct 2023 15:37:44 +0200
Message-Id: <20231020133744.555063-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231020133744.555063-1-a.fatoum@pengutronix.de>
References: <20231020133744.555063-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231020_063747_471787_3A924313 
X-CRM114-Status: GOOD (  21.05  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 2/2] remoteproc: stm32: fix breakage after DT sync with upstream
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Once more, a device tree sync with Linux breaks a barebox driver.

This time, the STM32 remoteproc driver ported from Linux was broken by
the upstream stm32mp151.dtsi removing the st,syscfg-tz property.

This property is only needed for the SiP secure monitor call case,
but was so far always specified and the driver required its presence,
even if it went unused.

The Linux driver has since removed this hard requirement and added a new
third way to do co-processor reset: Besides direct access to hardware
and Silicon Provider specific secure monitor call, there's also support
for doing it over SCMI now.

Sync that part with the Linux driver to fix following boot-time error
message:

  ERROR: stm32-rproc 10000000.m4@10000000.of: failed to get tz syscfg

Reported-by: Robert Schwebel <rsc@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/remoteproc/stm32_rproc.c | 72 ++++++++++++++++++++++----------
 1 file changed, 51 insertions(+), 21 deletions(-)

diff --git a/drivers/remoteproc/stm32_rproc.c b/drivers/remoteproc/stm32_rproc.c
index b2282f2fac5b..a7df29e57051 100644
--- a/drivers/remoteproc/stm32_rproc.c
+++ b/drivers/remoteproc/stm32_rproc.c
@@ -30,8 +30,9 @@ struct stm32_syscon {
 
 struct stm32_rproc {
 	struct reset_control *rst;
+	struct reset_control *hold_boot_rst;
 	struct stm32_syscon hold_boot;
-	bool secured_soc;
+	bool hold_boot_smc;
 };
 
 static void *stm32_rproc_da_to_va(struct rproc *rproc, u64 da, int len)
@@ -54,13 +55,28 @@ static int stm32_rproc_set_hold_boot(struct rproc *rproc, bool hold)
 	struct arm_smccc_res smc_res;
 	int val, err;
 
+	/*
+	 * Three ways to manage the hold boot
+	 * - using SCMI: the hold boot is managed as a reset,
+	 * - using Linux(no SCMI): the hold boot is managed as a syscon register
+	 * - using SMC call (deprecated): use SMC reset interface
+	 */
+
 	val = hold ? HOLD_BOOT : RELEASE_BOOT;
 
-	if (IS_ENABLED(CONFIG_ARM_SMCCC) && ddata->secured_soc) {
+	if (ddata->hold_boot_rst) {
+		/* Use the SCMI reset controller */
+		if (!hold)
+			err = reset_control_deassert(ddata->hold_boot_rst);
+		else
+			err =  reset_control_assert(ddata->hold_boot_rst);
+	} else if (IS_ENABLED(CONFIG_HAVE_ARM_SMCCC) && ddata->hold_boot_smc) {
+		/* Use the SMC call */
 		arm_smccc_smc(STM32_SMC_RCC, STM32_SMC_REG_WRITE,
 			      hold_boot->reg, val, 0, 0, 0, 0, &smc_res);
 		err = smc_res.a0;
 	} else {
+		/* Use syscon */
 		err = regmap_update_bits(hold_boot->map, hold_boot->reg,
 					 hold_boot->mask, val);
 	}
@@ -142,28 +158,42 @@ static int stm32_rproc_parse_dt(struct device *dev, struct stm32_rproc *ddata)
 	}
 
 	/*
-	 * if platform is secured the hold boot bit must be written by
-	 * smc call and read normally.
-	 * if not secure the hold boot bit could be read/write normally
+	 * Three ways to manage the hold boot
+	 * - using SCMI: the hold boot is managed as a reset
+	 *    The DT "reset-mames" property should be defined with 2 items:
+	 *        reset-names = "mcu_rst", "hold_boot";
+	 * - using SMC call (deprecated): use SMC reset interface
+	 *    The DT "reset-mames" property is optional, "st,syscfg-tz" is required
+	 * - default(no SCMI, no SMC): the hold boot is managed as a syscon register
+	 *    The DT "reset-mames" property is optional, "st,syscfg-holdboot" is required
 	 */
-	err = stm32_rproc_get_syscon(np, "st,syscfg-tz", &tz);
-	if (err) {
-		dev_err(dev, "failed to get tz syscfg\n");
-		return err;
+
+	ddata->hold_boot_rst = reset_control_get_optional(dev, "hold_boot");
+	if (IS_ERR(ddata->hold_boot_rst))
+		return dev_err_probe(dev, PTR_ERR(ddata->hold_boot_rst),
+				     "failed to get hold_boot reset\n");
+
+	if (!ddata->hold_boot_rst && IS_ENABLED(CONFIG_HAVE_ARM_SMCCC)) {
+		/* Manage the MCU_BOOT using SMC call */
+		err = stm32_rproc_get_syscon(np, "st,syscfg-tz", &tz);
+		if (!err) {
+			err = regmap_read(tz.map, tz.reg, &tzen);
+			if (err) {
+				dev_err(dev, "failed to read tzen\n");
+				return err;
+			}
+			ddata->hold_boot_smc = tzen & tz.mask;
+		}
 	}
 
-	err = regmap_read(tz.map, tz.reg, &tzen);
-	if (err) {
-		dev_err(dev, "failed to read tzen\n");
-		return err;
-	}
-	ddata->secured_soc = tzen & tz.mask;
-
-	err = stm32_rproc_get_syscon(np, "st,syscfg-holdboot",
-				     &ddata->hold_boot);
-	if (err) {
-		dev_err(dev, "failed to get hold boot\n");
-		return err;
+	if (!ddata->hold_boot_rst && !ddata->hold_boot_smc) {
+		/* Default: hold boot manage it through the syscon controller */
+		err = stm32_rproc_get_syscon(np, "st,syscfg-holdboot",
+					     &ddata->hold_boot);
+		if (err) {
+			dev_err(dev, "failed to get hold boot\n");
+			return err;
+		}
 	}
 
 	return 0;
-- 
2.39.2



