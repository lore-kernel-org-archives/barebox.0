Delivery-date: Thu, 11 May 2023 10:59:34 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1px299-00Dkac-1R
	for lore@lore.pengutronix.de; Thu, 11 May 2023 10:59:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1px297-0002R6-8U
	for lore@pengutronix.de; Thu, 11 May 2023 10:59:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=476jN4kYuUA/cT79h9mGRlFin8PqMcEFmUo55RhL77U=; b=qWxeCgHC+bzVLBwxmilnrjkKsc
	xE2lLt+4aoX7u9wHqcoCenSoHqbjwHcSr93vpglwIuaHBLmT6t+7pMSLxN7QHeoOw38iH05WXTIw9
	CJOzST+my72tjcvgNwV12faxhRbjpbUAPs7UwkiPzqhC0ZYCAGhWL4IageEXBdeA66Ms+ky1LpeQb
	FOOH39bAL7oOM7WLPeamm8xjBrR2cKUW9rZ29hoLM1LzVpUs9dnCQVWkIxGTtHvra4R/6fQLu65uj
	Bo+hDKpoczk+cfkq0dIGuInOJrEOHEV48ZRAByAhOIPeNjCUEMpxLpd13sy5nffKxroGPQdw6TyJy
	W5ZOmChQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1px27t-008HR7-2q;
	Thu, 11 May 2023 08:58:17 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1px27o-008HOt-0z
	for barebox@lists.infradead.org;
	Thu, 11 May 2023 08:58:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <rhi@pengutronix.de>)
	id 1px27i-0002BN-Jr; Thu, 11 May 2023 10:58:06 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <rhi@pengutronix.de>)
	id 1px27h-002gX1-U7; Thu, 11 May 2023 10:58:05 +0200
Received: from rhi by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <rhi@pengutronix.de>)
	id 1px27g-001SDq-Vu; Thu, 11 May 2023 10:58:04 +0200
From: Roland Hieber <rhi@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Roland Hieber <rhi@pengutronix.de>
Date: Thu, 11 May 2023 10:58:03 +0200
Message-Id: <20230511085803.335993-4-rhi@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230511085803.335993-1-rhi@pengutronix.de>
References: <20230511085803.335993-1-rhi@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230511_015812_413622_5FAB57EC 
X-CRM114-Status: GOOD (  12.06  )
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
Subject: [RFT][PATCH 3/3] ARM: i.MX6: TQMa6x: make tqma6x_env_init reusable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The SPI flash and eMMC are hard-wired on the TQMa6x SoM, so this
function is not specific for the mba6x baseboard but can be used on
other boards with a TQMa6x SoM too.

tqma6x_enet_init is specific to the mba6x board, so rename it to reflect
that fact.

Signed-off-by: Roland Hieber <rhi@pengutronix.de>
---
 arch/arm/boards/tqma6x/board.c | 23 +++++++++++++++--------
 1 file changed, 15 insertions(+), 8 deletions(-)

diff --git a/arch/arm/boards/tqma6x/board.c b/arch/arm/boards/tqma6x/board.c
index ae339887568a..4bb7223a6e7a 100644
--- a/arch/arm/boards/tqma6x/board.c
+++ b/arch/arm/boards/tqma6x/board.c
@@ -53,7 +53,7 @@ static int ksz9031rn_phy_fixup(struct phy_device *dev)
 	return 0;
 }
 
-static int tqma6x_enet_init(void)
+static int tq_mba6x_enet_init(void)
 {
 	if (!of_machine_is_compatible("tq,mba6x"))
 		return 0;
@@ -77,18 +77,25 @@ static int tqma6x_enet_init(void)
 
 	return 0;
 }
-fs_initcall(tqma6x_enet_init);
+fs_initcall(tq_mba6x_enet_init);
 
-static int tqma6x_env_init(void)
+static int tqma6x_init(void)
 {
-	if (!of_machine_is_compatible("tq,mba6x"))
-		return 0;
-
 	imx6_bbu_internal_spi_i2c_register_handler("spiflash", "/dev/m25p0.barebox",
 		BBU_HANDLER_FLAG_DEFAULT);
 	imx6_bbu_internal_mmcboot_register_handler("emmc", "mmc2", 0);
 
-	device_detect_by_name("mmc2");
+	device_detect_by_name("mmc2"); // eMMC
+
+	return 0;
+}
+
+static int tq_mba6x_env_init(void)
+{
+	if (!of_machine_is_compatible("tq,mba6x"))
+		return 0;
+
+	tqma6x_init();
 
 	default_environment_path_set("/dev/mmc2.boot1");
 
@@ -96,4 +103,4 @@ static int tqma6x_env_init(void)
 
 	return 0;
 }
-late_initcall(tqma6x_env_init);
+late_initcall(tq_mba6x_env_init);
-- 
2.39.2



