Delivery-date: Thu, 09 Jan 2025 08:45:19 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tVnEE-00156u-37
	for lore@lore.pengutronix.de;
	Thu, 09 Jan 2025 08:45:19 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tVnEE-0003t1-UI
	for lore@pengutronix.de; Thu, 09 Jan 2025 08:45:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=FR229IOPao1LYiGEHGMZRTJl+LpGkamLybsqf6/TPwQ=; b=FEKdNH+EWeAQhS7OmS/9mWg6hF
	NFjF3Kmq29crO5IHOcBbfFSjAv6tyIyyyJYzjlCD8gb2BTfmmvWBnSBns8Y7br2GnYOxtrYYUv/U+
	QkEMUoEfLYIz4LjyBXZcKLGbXfajlaKdNojNjyS2MnijfY8vTkWvNW5EvoZwr39OGtpWbXkiQxE3b
	PY8YVA3P5qUZY8e083pJ0u6O9cFKa56ixk/zWqLYDDR85UAqPNBc01aJeM3TJSV4IvlboQXCVEFgz
	oZnShVqFBzGehxgZ9Sp/tkZ8ZMfklGyZRnMakV2ABeD5BsPZbSHWdoVY1pe/oE7EKRdFgfQYeWrpF
	y8PRKSKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tVnDi-0000000B584-0vcG;
	Thu, 09 Jan 2025 07:44:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tVnDf-0000000B57e-1RaH
	for barebox@lists.infradead.org;
	Thu, 09 Jan 2025 07:44:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tVnDd-0003k2-FM; Thu, 09 Jan 2025 08:44:41 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tVnDc-007ego-1h;
	Thu, 09 Jan 2025 08:44:41 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tVnDd-00Dbdw-0c;
	Thu, 09 Jan 2025 08:44:41 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  9 Jan 2025 08:44:33 +0100
Message-Id: <20250109074433.3242953-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250108_234443_385308_71F6F63E 
X-CRM114-Status: GOOD (  10.56  )
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
Subject: [PATCH] commands: add config option for dfu command
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add an extra config option for the dfu command to avoid building it in
non interactive builds which leads to linker errors.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/Kconfig  | 6 ++++++
 commands/Makefile | 2 +-
 2 files changed, 7 insertions(+), 1 deletion(-)

diff --git a/commands/Kconfig b/commands/Kconfig
index 67116ec9fc..a30299abf6 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -2172,6 +2172,12 @@ config CMD_USBGADGET
 	depends on USB_GADGET
 	prompt "usbgadget"
 
+config CMD_DFU
+	bool
+	depends on USB_GADGET_DFU
+	default y
+	prompt "dfu"
+
 config CMD_WD
 	bool
 	depends on WATCHDOG
diff --git a/commands/Makefile b/commands/Makefile
index a98c39637c..0dfa0a33a4 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -64,7 +64,7 @@ obj-$(CONFIG_CMD_INSMOD)	+= insmod.o
 obj-$(CONFIG_CMD_SPLASH)	+= splash.o
 obj-$(CONFIG_CMD_FBTEST)	+= fbtest.o
 obj-$(CONFIG_CMD_BEEP)		+= beep.o
-obj-$(CONFIG_USB_GADGET_DFU)	+= dfu.o
+obj-$(CONFIG_CMD_DFU)		+= dfu.o
 obj-$(CONFIG_USB_GADGET_SERIAL)	+= usbserial.o
 obj-$(CONFIG_CMD_GPIO)		+= gpio.o
 obj-$(CONFIG_CMD_UNCOMPRESS)	+= uncompress.o
-- 
2.39.5



