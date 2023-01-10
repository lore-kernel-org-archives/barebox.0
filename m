Delivery-date: Tue, 10 Jan 2023 19:02:59 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFIxg-0082WS-Kn
	for lore@lore.pengutronix.de; Tue, 10 Jan 2023 19:02:59 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFIxe-0001uM-VB
	for lore@pengutronix.de; Tue, 10 Jan 2023 19:02:59 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ug0Fa9gfv8kNz907sXWroaz574715wOCBCRLi/BiBfI=; b=4sGJiY1jG2I/oUHaTqwXhi+rfv
	Bge1Np4zatLbdHFNENRA65m4vtwPfUVQfH69MAH7qJwmg6ZkE6k3Vn//a4a44KN0msVLxEVhYyYij
	hisVLaE7/68Yc1ptH0smSHjlZesHP2epADg6pZUtWCixL/w/mOEqBuJNHrDNAuC38lsM1GE5ZpU8S
	/s/JKQMcb3g/lOHfg3rCinlTdcncVSfQSNF+7A+kHk/DL6nC+CEuAoShTHXCwxILJ9/HroC3N9IrC
	UIEaGdRl+yhLn5fz1Im2QjJ/liBZai5nWvhUzAg0dt0XlW5Tz0U8qwe7KRh29036f15fgjDIjR8ws
	2rDGqFlw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFIwP-0085KN-5t; Tue, 10 Jan 2023 18:01:41 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFIwH-0085IR-H0
	for barebox@lists.infradead.org; Tue, 10 Jan 2023 18:01:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pFIwF-0001mb-Rv; Tue, 10 Jan 2023 19:01:31 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pFIwF-0058Mo-8z; Tue, 10 Jan 2023 19:01:31 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pFIwE-000Jda-28; Tue, 10 Jan 2023 19:01:30 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 10 Jan 2023 19:01:26 +0100
Message-Id: <20230110180126.73739-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230110180126.73739-1-a.fatoum@pengutronix.de>
References: <20230110180126.73739-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230110_100133_601927_CE106385 
X-CRM114-Status: UNSURE (   9.86  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] ARM: rpi: defconfig: enable Raspberry Pi 4 drivers in 32-bit config
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Raspberry Pi 4 is also supported in 32-bit mode. Enable its network
driver and the fixed regulator driver as that's used as vMMC supply.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/configs/rpi_defconfig | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/configs/rpi_defconfig b/arch/arm/configs/rpi_defconfig
index e7d695f8ae54..500c92a8218e 100644
--- a/arch/arm/configs/rpi_defconfig
+++ b/arch/arm/configs/rpi_defconfig
@@ -80,6 +80,7 @@ CONFIG_CMD_TIME=y
 CONFIG_NET=y
 CONFIG_SERIAL_AMBA_PL011=y
 CONFIG_DRIVER_SERIAL_NS16550=y
+CONFIG_DRIVER_NET_BCMGENET=y
 CONFIG_NET_USB=y
 CONFIG_NET_USB_SMSC95XX=y
 CONFIG_I2C=y
@@ -98,6 +99,7 @@ CONFIG_WATCHDOG_BCM2835=y
 CONFIG_GPIO_RASPBERRYPI_EXP=y
 CONFIG_PINCTRL_BCM283X=y
 CONFIG_REGULATOR=y
+CONFIG_REGULATOR_FIXED=y
 CONFIG_GENERIC_PHY=y
 CONFIG_USB_NOP_XCEIV=y
 CONFIG_FS_EXT4=y
@@ -106,3 +108,4 @@ CONFIG_FS_NFS=y
 CONFIG_FS_FAT=y
 CONFIG_FS_FAT_WRITE=y
 CONFIG_FS_FAT_LFN=y
+CONFIG_ZLIB=y
-- 
2.30.2



