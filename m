Delivery-date: Tue, 12 Jul 2022 15:34:13 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oBG1l-004Y8o-QU
	for lore@lore.pengutronix.de; Tue, 12 Jul 2022 15:34:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oBG1h-000640-OB
	for lore@pengutronix.de; Tue, 12 Jul 2022 15:34:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2+nJ8Fkl6i1lSALEPRe54ucy9f6NCpZ0aSrlZ8YmHlw=; b=CW/TQf3aTevoqGoGalbZNtn/4Y
	EWIWTXsV8Ku0vrRjvz5f1V7xq64jK4g8mO7WYDHBUhY1xLSCMVWWRNG7oqA0Oig9dxOW5j1vkDdzM
	YRIr+DDxBV8jV4kvH8aDRbfVjJ48qHWCOATDzyFZi6PFKaEwqtvty5NtS2ajyDtxwN4R2mgWTMJHN
	riq+8RUGUP3nJ/JuJIFFk4iQaKqVY3HEpZrlBhrl9UFughJ4b87r2qSBQARmDN8SbKHX59SdOrKQb
	bYrGRhlheghlFXymfebW52SPxclKF8LIyjs0/gSrrjh5azLAVDysF5Kgtv9aSofL8sVRALPzVahYq
	uekLbLgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBFzq-00BMob-Q3; Tue, 12 Jul 2022 13:32:14 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBFzm-00BMka-2q
	for barebox@lists.infradead.org; Tue, 12 Jul 2022 13:32:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oBFzg-0005dG-QL; Tue, 12 Jul 2022 15:32:04 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oBFzg-000WMW-3V; Tue, 12 Jul 2022 15:32:04 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oBFzf-00AN8A-F9; Tue, 12 Jul 2022 15:32:03 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 12 Jul 2022 15:32:02 +0200
Message-Id: <20220712133202.2472149-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220712133202.2472149-1-s.hauer@pengutronix.de>
References: <20220712133202.2472149-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220712_063210_138571_B3052A51 
X-CRM114-Status: UNSURE (   9.24  )
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
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/2] ARM: i.MX8MP-EVK: Use compressed dtb
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Use a compressed dtb to save some space in OCRAM.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 54a4f7a33a..fb96234de2 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -591,6 +591,7 @@ config MACH_NXP_IMX8MP_EVK
 	select IMX8M_DRAM
 	select I2C_IMX_EARLY
 	select USB_GADGET_DRIVER_ARC_PBL
+	select ARM_USE_COMPRESSED_DTB
 
 config MACH_NXP_IMX8MQ_EVK
 	bool "NXP i.MX8MQ EVK Board"
-- 
2.30.2



