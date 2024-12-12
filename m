Delivery-date: Thu, 12 Dec 2024 08:54:51 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tLe26-0076aa-2v
	for lore@lore.pengutronix.de;
	Thu, 12 Dec 2024 08:54:51 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tLe26-0006PI-Sj
	for lore@pengutronix.de; Thu, 12 Dec 2024 08:54:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Zd9EK/M8ouPB5Hg1LtM5MhmwGIQORDdGnISX4qRbSC8=; b=TTfk32G2mm0wUJM4zEfplZLenB
	sYcQj606JVlgi9hmp4O9BBGDzpTDj+R13EQQFFWIYX38Qhq5BpXQgLEH/23neacUmO3UHHj4ZIZIs
	lbR1uqp+reR0Sy7xlKpPR3c0hiLRL3BcAeWi9abWP+DhDcL5Yu/817SyxMq+tQ0vWhNjE8b7NOw3i
	Vk+zw3c/FLW0Wspd53XvZNOM2Z7H2GoayOyRCls6czoQkXFyRzA6zxdkI6XIFHdLw21mkbhOzMP7R
	kWHAIldzKCnpArLqUnolFGxEumJsIbq+rOB4XLeRiA362jmNVKKrby+TO7aJZmF54VyZMhDgQzs8o
	RF7XIz7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tLe1X-0000000HCyJ-3xeI;
	Thu, 12 Dec 2024 07:54:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tLe0e-0000000HCqE-0yQx
	for barebox@lists.infradead.org;
	Thu, 12 Dec 2024 07:53:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tLe0V-000684-0N; Thu, 12 Dec 2024 08:53:11 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tLe0T-002zuX-0b;
	Thu, 12 Dec 2024 08:53:09 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tLe0T-00AUKP-2o;
	Thu, 12 Dec 2024 08:53:09 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 12 Dec 2024 08:53:08 +0100
Message-Id: <20241212075308.2499846-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241212075308.2499846-1-a.fatoum@pengutronix.de>
References: <20241212075308.2499846-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241211_235320_266629_CBDC8B54 
X-CRM114-Status: GOOD (  10.54  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] ARM: beaglebone: register bbu handlers for FAT partition
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We currently only register a single barebox update handler for the eMMC,
but the MLO can also be on the SD-Card or in a FAT partition instead one
of the magic offsets.

Let's therefore register MLO bbu handlers for those as well as well as
for the second stage barebox.bin.

Fixes: df22a22f84b6 ("bbu: fix exporting i.MX NAND bbu handler over fastboot")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/beaglebone/board.c | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boards/beaglebone/board.c b/arch/arm/boards/beaglebone/board.c
index 43e2d81f3813..586d83fc4df0 100644
--- a/arch/arm/boards/beaglebone/board.c
+++ b/arch/arm/boards/beaglebone/board.c
@@ -78,9 +78,19 @@ static int beaglebone_devices_init(void)
 
 	armlinux_set_architecture(MACH_TYPE_BEAGLEBONE);
 
-	/* Register update handler */
+	/* Register update handlers */
 	am33xx_bbu_emmc_mlo_register_handler("MLO.emmc", "/dev/mmc1");
 
+	bbu_register_std_file_update("MLO.fat.emmc", 0, "/mnt/mmc1.0/MLO",
+				     filetype_ch_image);
+	bbu_register_std_file_update("barebox.fat.emmc", 0, "/mnt/mmc1.0/barebox.bin",
+				     filetype_arm_barebox);
+
+	bbu_register_std_file_update("MLO.fat.sd", 0, "/mnt/mmc0.0/MLO",
+				     filetype_ch_image);
+	bbu_register_std_file_update("barebox.fat.sd", 0, "/mnt/mmc0.0/barebox.bin",
+				     filetype_arm_barebox);
+
 	if (IS_ENABLED(CONFIG_SHELL_NONE))
 		return am33xx_of_register_bootdevice();
 
-- 
2.39.5



