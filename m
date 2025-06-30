Delivery-date: Mon, 30 Jun 2025 09:47:00 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uW9EC-00CYCO-22
	for lore@lore.pengutronix.de;
	Mon, 30 Jun 2025 09:47:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uW9EB-0005i9-HM
	for lore@pengutronix.de; Mon, 30 Jun 2025 09:47:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XP692H5lgjlDj4VpMVffgbwKhB0s97s5Mj1KG+s2QDA=; b=cW8PW6adEftUMaeFrCcmoPV3pw
	SNX0xxOGdvir2qn4eb9nsJyz9iEmgmwVuTY7pOZfwpmZAVCLvYdr+0MJh4G+PUIAF64q3V+MklEUJ
	B5BoCGdX/7dawqHa6whlT2TUubj9mkDeHCGpon1fuQy4h9gTIq/cO0cRvl4GOs/KLxrxWAlmUi63p
	k6IbznxlqPI9DOVGVMv7PNMKK8iMa99lwpNyN4wzdc2UuWBDknNqjhtWZo+mUtUKU6ePP4wJ77loT
	oUpBg5ceDoUmkYoZrDJuRIV6mhx2vqJUHYllvo57nQgoBM8y7yMTDvR9sTA3X30Wel0tRkBWSQv7R
	oVxGnPng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uW9Dj-00000001Ugx-1hA6;
	Mon, 30 Jun 2025 07:46:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uW9DB-00000001UUl-3xwE
	for barebox@lists.infradead.org;
	Mon, 30 Jun 2025 07:46:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uW9D2-0004OF-LB; Mon, 30 Jun 2025 09:45:48 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uW9D2-00648N-12;
	Mon, 30 Jun 2025 09:45:48 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uW9D2-004Sjo-0X;
	Mon, 30 Jun 2025 09:45:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 30 Jun 2025 09:45:51 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250630-arm-optee-early-helper-v2-9-c8cce3ae42b0@pengutronix.de>
References: <20250630-arm-optee-early-helper-v2-0-c8cce3ae42b0@pengutronix.de>
In-Reply-To: <20250630-arm-optee-early-helper-v2-0-c8cce3ae42b0@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1751269547; l=2774;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=nDrl2y8LI18a4E4me1Qw/YAO9G75YsY9l+Gl+Bj0d8g=;
 b=iQSWQLBeayDiFlWXxRyEYN1Loiz76ZO1TzpY/DWLli0+sLsvgPT5MQ4KNMxx8DAGOxmPQJtQI
 EYImlT9DIeBBZMUqGcDrG1ugY9evuNnoy4Yujz2vgJ3Z0Lbdo1a8wsU
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250630_004558_041444_28DCD302 
X-CRM114-Status: GOOD (  15.42  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, Marco Felsch <m.felsch@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 09/14] ARM: mach-imx: tzasc: add
 imx6[q|ul]_tzc380_is_bypassed()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Marco Felsch <m.felsch@pengutronix.de>

The TZASC_BYP bits default to not bypass DDR transactions from the
TZASC. These bits must be set while the DDR controller is inactive, so
when the DDR controller is initialized in the DCD table and barebox is
directly loaded and startes in DDR we must set the bits in the DCD.
As this is board specific it's easy to forget this setting and the whole
DDR is accessible by the normal world regardless of the TZASC
configuration. This patch adds a check if the bits have been set
correctly so that we can warn the user if necessary.

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/tzasc.c | 26 ++++++++++++++++++++++++++
 include/mach/imx/tzasc.h  |  2 ++
 2 files changed, 28 insertions(+)

diff --git a/arch/arm/mach-imx/tzasc.c b/arch/arm/mach-imx/tzasc.c
index 169c4b9801e5fdd01edd3c5661418a945cf21c55..ed20ad8803a2e91b67b5d8c3ab1a4265c4228ec7 100644
--- a/arch/arm/mach-imx/tzasc.c
+++ b/arch/arm/mach-imx/tzasc.c
@@ -76,6 +76,9 @@
 #define MX6_TZASC1_BASE			0x21d0000
 #define MX6_TZASC2_BASE			0x21d4000
 
+#define MX6_GPR_TZASC1_EN		BIT(0)
+#define MX6_GPR_TZASC2_EN		BIT(1)
+
 #define GPR_TZASC_EN					BIT(0)
 #define GPR_TZASC_ID_SWAP_BYPASS		BIT(1)
 #define GPR_TZASC_EN_LOCK				BIT(16)
@@ -303,6 +306,29 @@ void imx6ul_tzc380_early_ns_region1(void)
 				  TZC380_REGION_SP_NS_RW);
 }
 
+bool imx6q_tzc380_is_bypassed(void)
+{
+	u32 __iomem *gpr = IOMEM(MX6_IOMUXC_BASE_ADDR);
+
+	/*
+	 * MX6_GPR_TZASC1_EN and MX6_GPR_TZASC2_EN are sticky bits which
+	 * preserve their values once set until the next power-up cycle.
+	 */
+	return (readl(&gpr[9]) & (MX6_GPR_TZASC1_EN | MX6_GPR_TZASC2_EN)) !=
+	       (MX6_GPR_TZASC1_EN | MX6_GPR_TZASC2_EN);
+}
+
+bool imx6ul_tzc380_is_bypassed(void)
+{
+	u32 __iomem *gpr = IOMEM(MX6_IOMUXC_BASE_ADDR + 0x4000);
+
+	/*
+	 * MX6_GPR_TZASC1_EN is a sticky bit which preserves its value
+	 * once set until the next power-up cycle.
+	 */
+	return !(readl(&gpr[9]) & MX6_GPR_TZASC1_EN);
+}
+
 void imx8m_tzc380_init(void)
 {
 	u32 __iomem *gpr = IOMEM(MX8M_IOMUXC_GPR_BASE_ADDR);
diff --git a/include/mach/imx/tzasc.h b/include/mach/imx/tzasc.h
index eb479ad55c9c101a5fb47fc4a7178b3669b9e44f..0fbcdc2150e63864366a8dddeed2d1b97685903d 100644
--- a/include/mach/imx/tzasc.h
+++ b/include/mach/imx/tzasc.h
@@ -8,6 +8,8 @@
 
 void imx6q_tzc380_early_ns_region1(void);
 void imx6ul_tzc380_early_ns_region1(void);
+bool imx6q_tzc380_is_bypassed(void);
+bool imx6ul_tzc380_is_bypassed(void);
 void imx8m_tzc380_init(void);
 bool imx8m_tzc380_is_enabled(void);
 

-- 
2.39.5



