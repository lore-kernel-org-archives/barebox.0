Delivery-date: Tue, 24 Jan 2023 18:44:11 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKNLA-000hbk-N3
	for lore@lore.pengutronix.de; Tue, 24 Jan 2023 18:44:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKNL7-00084f-W8
	for lore@pengutronix.de; Tue, 24 Jan 2023 18:44:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=P4XHihVs/JZPAqAJJC1orHa3eatLA4tkhhxpDN30inU=; b=Z5omBEamxqIBpNljFSWKo6+7cI
	ppneNsvWJgNVZRZ9tF1NAyKUv53WzQllfW3FR6DkH0X2A7m8CjmWH20ogM6iPkCmtFuujNZ9neH9p
	YwYZeQZkVUjEcIedmUECEqFEnuP+NpjQ9RbkpEPGKYk7T5D6JckGwdEuUZq4K7BodNfvKlIOaVorU
	wy5v5IB6SpBp0ZOGPQzMFuuoeNkbVh7lWroXy2bQ9bZLEpi8XQYmpXptIZNHnVSk9GEcXGlFwQRMK
	F512eMnA67QhGc3uoDBPEk8cwhbN1m6IdCoVkMOik4QuZnsiGMnRhXWWn9TZi7UOZodiih2xxqngd
	4IO2L6wA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKNJX-004r8W-S8; Tue, 24 Jan 2023 17:42:31 +0000
Received: from out2.migadu.com ([2001:41d0:2:aacc::])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKNJR-004r5G-LB
	for barebox@lists.infradead.org; Tue, 24 Jan 2023 17:42:27 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1674582110;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=P4XHihVs/JZPAqAJJC1orHa3eatLA4tkhhxpDN30inU=;
	b=OKozrNIvvK10jo8ppr2sNJgNBcL6QqWwN18FVNBB+0PzASY9ugdHxl5hJnWAyXZqpRyDZM
	LqTzI6kHXP9B92UP8IQ/m9AKi0eBCgwmqlu3OTfvIDOW5GUe6Rr8LFo8MEfCZEnqOYWchd
	HPhAri9wSyU+icd14ld0fnGtyYToVoJo1rLldJroK8P65Dx2LjZ9POcSjur6P6MjxvEhEF
	ZrB+YVldSBH4aMFS+U/YUj3LYcfLrlcG4z3zxs2WJdY6knE4dI6KFHHeqWDsVL9b2MPvOR
	J9RaiAWZXj5h/EwxH8Ium1ndX5caOSfEtcsoIwz3hKRXs4Yxp3c/FoBlxTShYw==
From: John Watts <contact@jookia.org>
To: barebox@lists.infradead.org
Cc: John Watts <contact@jookia.org>
Date: Wed, 25 Jan 2023 04:41:16 +1100
Message-Id: <20230124174115.1509216-2-contact@jookia.org>
In-Reply-To: <20230123201817.1084728-1-contact@jookia.org>
References: <20230123201817.1084728-1-contact@jookia.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230124_094226_241699_111D1129 
X-CRM114-Status: GOOD (  11.53  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 2/2] imx6-mmdc: Revert calibration configuration on failure
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

When calibration fails it's possible the existing configuration will
work fine. At least, this is the case on my board.

This patch also fixes a comment that incorrectly states that only
PHY0 is checked when in reality both always are.

Signed-off-by: John Watts <contact@jookia.org>
---
Changes v1 -> v2:
- No longer initialized ldectrl with zeroes
---
 arch/arm/mach-imx/imx6-mmdc.c | 15 ++++++++++++++-
 1 file changed, 14 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/imx6-mmdc.c b/arch/arm/mach-imx/imx6-mmdc.c
index 45e1b030d3..e0497071d1 100644
--- a/arch/arm/mach-imx/imx6-mmdc.c
+++ b/arch/arm/mach-imx/imx6-mmdc.c
@@ -37,11 +37,18 @@ static bool wlcalib_failed(void __iomem *ips)
 
 int mmdc_do_write_level_calibration(void)
 {
+	u32 ldectrl[4];
 	u32 esdmisc_val, zq_val;
 	int errorcount = 0;
 	u32 val;
 	u32 ddr_mr1 = 0x4;
 
+	/* Store current calibration data in case of failure */
+	ldectrl[0] = readl(P0_IPS + MPWLDECTRL0);
+	ldectrl[1] = readl(P0_IPS + MPWLDECTRL1);
+	ldectrl[2] = readl(P1_IPS + MPWLDECTRL0);
+	ldectrl[3] = readl(P1_IPS + MPWLDECTRL1);
+
 	/* disable DDR logic power down timer */
 	val = readl((P0_IPS + MDPDC));
 	val &= 0xffff00ff;
@@ -81,8 +88,14 @@ int mmdc_do_write_level_calibration(void)
 	while (readl(P0_IPS + MPWLGCR) & 0x00000001);
 
 	/* check for any errors on both PHYs */
-	if (wlcalib_failed(P0_IPS) || wlcalib_failed(P1_IPS))
+	if (wlcalib_failed(P0_IPS) || wlcalib_failed(P1_IPS)) {
+		pr_debug("Calibration failed, rolling back calibration data\n");
+		writel(ldectrl[0], P0_IPS + MPWLDECTRL0);
+		writel(ldectrl[1], P0_IPS + MPWLDECTRL1);
+		writel(ldectrl[2], P1_IPS + MPWLDECTRL0);
+		writel(ldectrl[3], P1_IPS + MPWLDECTRL1);
 		errorcount++;
+	}
 
 	pr_debug("Write leveling calibration completed\n");
 
-- 
2.39.0



