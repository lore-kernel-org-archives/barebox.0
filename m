Delivery-date: Tue, 02 May 2023 11:15:44 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ptm6r-002Aeu-1w
	for lore@lore.pengutronix.de; Tue, 02 May 2023 11:15:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ptm6n-0002Hs-Pm
	for lore@pengutronix.de; Tue, 02 May 2023 11:15:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dRCki0j6v1U/Y9nu/SYD49g/Co1YE+HpXdh3HW7V2og=; b=Wf39CzG9L5ghv7CycZMpIo+yh/
	rYEwVMGPNfuLwE3svyfP0lvY4Gs/N9aGyAFm8X4gbvuXRo46jPUB0dbJKv5T0UG1qPaniDMeHxsdZ
	vjxFKaBEYr6eG87p40w6J3XUHR3GfmxQfWJ1CNz0ID2AfEmPB+TiHDDYSSkTRF2LoY3Ae+xgEZj28
	T/TCgJwiDKU/7E56ejay+LUqJUbachM/CcZVowROzn5iR1nEOVKfgR11bCdkejKwx3VnudY/JoJyh
	wW9ERxdl6/6RkW0tq7uWgq+4UxouoylqMfF0AJphsV5r6rW8WBTshOPwcSsKyQ3QDQYuR/fnK4wRl
	HIX94QXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptm5i-000jR4-1S;
	Tue, 02 May 2023 09:14:34 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptm5X-000jGu-2e
	for barebox@lists.infradead.org;
	Tue, 02 May 2023 09:14:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ptm5W-0001AQ-Iw; Tue, 02 May 2023 11:14:22 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1ptm5W-000Yja-3U; Tue, 02 May 2023 11:14:22 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1ptm5U-00Aqze-7G; Tue, 02 May 2023 11:14:20 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  2 May 2023 11:14:13 +0200
Message-Id: <20230502091419.2551228-7-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230502091419.2551228-1-s.hauer@pengutronix.de>
References: <20230502091419.2551228-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230502_021423_919932_AB453FD5 
X-CRM114-Status: GOOD (  15.72  )
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
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 06/12] ARM: versatile: Use smc91c111 from device tree
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/versatile/versatilepb.c |  7 -------
 drivers/net/smc91111.c                  | 16 +++++++++++-----
 include/platform_data/eth-smc91111.h    |  1 -
 3 files changed, 11 insertions(+), 13 deletions(-)

diff --git a/arch/arm/boards/versatile/versatilepb.c b/arch/arm/boards/versatile/versatilepb.c
index 0ea397d3cb..8079ade9a5 100644
--- a/arch/arm/boards/versatile/versatilepb.c
+++ b/arch/arm/boards/versatile/versatilepb.c
@@ -39,15 +39,8 @@ static int vpb_console_init(void)
 }
 console_initcall(vpb_console_init);
 
-static struct smc91c111_pdata net_pdata = {
-	.qemu_fixup = 1,
-};
-
 static int vpb_devices_init(void)
 {
-	add_generic_device("smc91c111", DEVICE_ID_DYNAMIC, NULL, VERSATILE_ETH_BASE,
-			64 * 1024, IORESOURCE_MEM, &net_pdata);
-
 	armlinux_set_architecture(MACH_TYPE_VERSATILE_PB);
 
 	return 0;
diff --git a/drivers/net/smc91111.c b/drivers/net/smc91111.c
index 89195fc826..46faf385f9 100644
--- a/drivers/net/smc91111.c
+++ b/drivers/net/smc91111.c
@@ -440,7 +440,6 @@ struct smc91c111_priv {
 	struct mii_bus miibus;
 	struct accessors a;
 	void __iomem *base;
-	int qemu_fixup;
 	unsigned shift;
 	int version;
 	int revision;
@@ -1048,7 +1047,8 @@ static int smc91c111_eth_open(struct eth_device *edev)
 	if (ret)
 		return ret;
 
-	if (priv->qemu_fixup && edev->phydev->phy_id == 0x00000000) {
+	if (of_machine_is_compatible("arm,versatile-pb") ||
+	    of_machine_is_compatible("arm,versatile-ab")) {
 		struct phy_device *dev = edev->phydev;
 
 		dev->speed = SPEED_100;
@@ -1451,7 +1451,6 @@ static int smc91c111_probe(struct device *dev)
 	if (dev->platform_data) {
 		struct smc91c111_pdata *pdata = dev->platform_data;
 
-		priv->qemu_fixup = pdata->qemu_fixup;
 		priv->shift = pdata->addr_shift;
 		if (pdata->bus_width == 16)
 			priv->a = access_via_16bit;
@@ -1489,8 +1488,15 @@ static int smc91c111_probe(struct device *dev)
 	return 0;
 }
 
+static __maybe_unused struct of_device_id imx_fec_dt_ids[] = {
+	{
+		.compatible = "smsc,lan91c111",
+	},
+};
+
 static struct driver smc91c111_driver = {
-        .name  = "smc91c111",
-        .probe = smc91c111_probe,
+	.of_compatible = DRV_OF_COMPAT(imx_fec_dt_ids),
+	.name  = "smc91c111",
+	.probe = smc91c111_probe,
 };
 device_platform_driver(smc91c111_driver);
diff --git a/include/platform_data/eth-smc91111.h b/include/platform_data/eth-smc91111.h
index 72193bf972..ddc28438e3 100644
--- a/include/platform_data/eth-smc91111.h
+++ b/include/platform_data/eth-smc91111.h
@@ -8,7 +8,6 @@
 #define __SMC91111_H__
 
 struct smc91c111_pdata {
-	int qemu_fixup;
 	int addr_shift;
 	int bus_width;
 	bool word_aligned_short_writes;
-- 
2.39.2



