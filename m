Delivery-date: Mon, 23 Jan 2023 21:31:40 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pK3Th-003Vk7-FI
	for lore@lore.pengutronix.de; Mon, 23 Jan 2023 21:31:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pK3Tf-0002Hz-9Z
	for lore@pengutronix.de; Mon, 23 Jan 2023 21:31:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TCn5SthlfHUgRhTtLgPa/TS233quwHdlm+Zboxha6rE=; b=zjNpdDW+pLPkeXbZtdqNZw1kRK
	3R5cHUk2wCGvAfJNAOdLB+1sg85h0S1sY1w81C2VRMZ1aa8fG2VWM9jqONkZ5yLlvO03hJs++tkpr
	FkMzceJy5DAt8XaMEqVbJ175XGJYdQdtuRe8qx37ocoe209pxL5SFbmKwN5rDziv3XU/PiMUmdgVt
	/x83+HHpnqU6E7JT9/myuMoLvXL6zMQPIHxVPbkl5hHSZSwrS5PPdkxV65M5vC7s11D2AJLJHgYqr
	S//RVxUmnqTLX5mjg8Uqve85G9SGU1Phb2Lt5WGvm2ZUviqJ6pIFCtlOuFWm99JWQvj6KNIkl8MlY
	h4FK7Jcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pK3SI-001Ki0-II; Mon, 23 Jan 2023 20:30:14 +0000
Received: from out2.migadu.com ([188.165.223.204])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pK3SD-001KgW-S2
	for barebox@lists.infradead.org; Mon, 23 Jan 2023 20:30:11 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1674505808;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=TCn5SthlfHUgRhTtLgPa/TS233quwHdlm+Zboxha6rE=;
	b=pidazJLAErH763NmxrjsWHhZWON7qHpQr7rroHFtopvT4Gsl1jJAiJ3t1nUtB+PX5fMxgd
	wuPZksyw2D59nP1Jmk0V17L8vs4QgZh8hghSG3VAN4Rvw5hz4K6OUo5lxebvIv9J33o9OL
	D2Xj+IF767c8DMTH8zpNqkqlAwTVixx2zxRInpb8PXF8fohkvwzuTMxRZUqsnSoYg/R56m
	LrfO+ZXmsnYN13m98XZ+7oulx4Z9GyWcTCWWntoUqTW8w5L6mEOsMY4vbWo+b0lBSGOkRF
	WXQgjFTiyaDNw/ciqpgay5rmkWge34dOYw6vECUWrrc3V6G0gwUxXxdW6pXGCg==
From: John Watts <contact@jookia.org>
To: barebox@lists.infradead.org
Cc: John Watts <contact@jookia.org>
Date: Tue, 24 Jan 2023 07:18:20 +1100
Message-Id: <20230123201817.1084728-2-contact@jookia.org>
In-Reply-To: <20230123201817.1084728-1-contact@jookia.org>
References: <20230123201817.1084728-1-contact@jookia.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230123_123010_066552_9FF9E380 
X-CRM114-Status: GOOD (  11.59  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] imx6-mmdc: Revert calibration configuration on failure
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

When calibration fails it will clobber the existing configuration,
even if the configuration was working but not ideal.

Reverting calibration from a known bad value to a possibly good value
gives a better chance of the memory working.

I've tested this on the Novena board and had good success with it.
U-Boot implements a similar solution in its write level calibration.

Signed-off-by: John Watts <contact@jookia.org>
---
 arch/arm/mach-imx/imx6-mmdc.c | 15 ++++++++++++++-
 1 file changed, 14 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/imx6-mmdc.c b/arch/arm/mach-imx/imx6-mmdc.c
index 908771626a..0d50b39566 100644
--- a/arch/arm/mach-imx/imx6-mmdc.c
+++ b/arch/arm/mach-imx/imx6-mmdc.c
@@ -25,11 +25,18 @@ static bool wlcalib_failed(void __iomem *ips)
 
 int mmdc_do_write_level_calibration(void)
 {
+	u32 ldectrl[4] = {0};
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
@@ -69,8 +76,14 @@ int mmdc_do_write_level_calibration(void)
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



