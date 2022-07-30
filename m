Delivery-date: Sat, 30 Jul 2022 11:55:12 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oHjBg-004rAP-Ut
	for lore@lore.pengutronix.de; Sat, 30 Jul 2022 11:55:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oHjBf-0007xF-90
	for lore@pengutronix.de; Sat, 30 Jul 2022 11:55:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=cfOBTnJXcvXsfjo9mAe46SCT11S8cFQtf1GgcJkXJmQ=; b=SWN4SYLDB0jz3F8hEoblsSmBbP
	y0TDLb7so7vmD2uA/UoelrGZr3+zXJLNZS2eM/0gLMaeIZhljhhLV2DeDyJCRanQLZUu55yyzdQXs
	mW1w+oddI2z7t0ZB9uwbqvkgd7Owl4O6+5GY9glp6cQHfU2W/6dySx0vXMgoOSZZnFdr7mXSVMeNs
	+WJ0m7o/MFhsOStNIrPSFAXwpAOnWoxZ8NfZGYZ5RUvuGNiCqpF5Ao1/RKe3wg3nEYUlxRSV7cZG0
	2IjcVUON3qyHCwR5Ue+l5QbkFcnaS45ze3UPuMxswINrUOp2pbtFxoWD+yQnwoPXiuCVv8SRAZRU0
	WjD8SSDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oHjAX-00H9uy-WD; Sat, 30 Jul 2022 09:54:02 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oHjAT-00H9rj-K9
	for barebox@lists.infradead.org; Sat, 30 Jul 2022 09:53:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oHjAS-0007pn-9i; Sat, 30 Jul 2022 11:53:56 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oHjAR-000gPZ-Je; Sat, 30 Jul 2022 11:53:55 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oHjAQ-007Skn-Sm; Sat, 30 Jul 2022 11:53:54 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sat, 30 Jul 2022 11:53:53 +0200
Message-Id: <20220730095353.1778157-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220730_025357_689937_7F45BA5A 
X-CRM114-Status: UNSURE (   9.50  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: i.MX8MP: remove select for unused ARC PBL USB gadget driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The i.MX8MPlus uses the ROM API for chainloading over the USB, so there
is no use for the USB_GADGET_DRIVER_ARC_PBL. Besides, it is not even
applicable, because the OTG controller on the i.MX8MPlus is a Designware
Controller.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-imx/Kconfig | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 822a47dc0470..356a91644552 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -589,7 +589,6 @@ config MACH_NXP_IMX8MP_EVK
 	select MCI_IMX_ESDHC_PBL
 	select IMX8M_DRAM
 	select I2C_IMX_EARLY
-	select USB_GADGET_DRIVER_ARC_PBL
 
 config MACH_NXP_IMX8MQ_EVK
 	bool "NXP i.MX8MQ EVK Board"
-- 
2.30.2



