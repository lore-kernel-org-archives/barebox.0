Delivery-date: Mon, 31 Mar 2025 17:31:25 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzH6j-006cRy-1I
	for lore@lore.pengutronix.de;
	Mon, 31 Mar 2025 17:31:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzH6i-00087W-Mr
	for lore@pengutronix.de; Mon, 31 Mar 2025 17:31:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=vuNsak9yh9mWh2A8MeLHG/Qy5CM962Hl+TtoG+nzrPA=; b=pb5MQp+A2AfR2ZOEbBGIoN/FNn
	84PfdepW2eh3fuGRzaPW6FPtjfTjDuhuCjBuHDdeAmHFhY2N5mc2FznSgNXEbdH0l8dxITIgNigL3
	IDuOnRfA2gW2LQOl2kaIBczq9c0li0QLptogA7jTMohD6/+5CJhb41la5+0tEPenxgaWQhTHGmrsC
	/NK/msOTD1Z9xMguzyxT0zP2NiLX/sIH7uAYEKmIifw/OrIALgL1ufde1C+8ESuHKz3tK6PC1zs5N
	VRqmu2EghbFaaJSBLwqMxF6QNi+1D4BzCw37aSsogZWH5GHrlqcvqdGxxfwpyj3m1jNujdW+qqZo5
	SyGAHLDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzH6A-00000000nnV-3CoP;
	Mon, 31 Mar 2025 15:30:50 +0000
Received: from smtp15.bhosted.nl ([2a02:9e0:8000::26])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzGhf-00000000hIL-481s
	for barebox@lists.infradead.org;
	Mon, 31 Mar 2025 15:05:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=protonic.nl; s=202111;
	h=content-transfer-encoding:mime-version:message-id:date:subject:cc:to:from:
	 from;
	bh=vuNsak9yh9mWh2A8MeLHG/Qy5CM962Hl+TtoG+nzrPA=;
	b=qYu+tdluwR/v8XnqQt95yfK5xZ4jBTS1MYCjEnoeT601eFQ/XBbgrWXggiaBkxYoikVABeoUn+fXI
	 TOTeWVCazwmmspF3Hc3zkp9PIfnuK/GtKRs0itXwl8yKV7hN/uqe6QgLnb3sFW621WxsWpBraYXsr0
	 XGHo8WLovu9uRlDHNvnfkY2rMB4NKmoK9k6szdNnMnR6+MSjMIEfW/Z7JU0MAZRrJkleT+DxcwibcJ
	 1Od5yeMKxgDjQL7mNsz/6Gc+zEGGaMqZhDvlEaJ4V+e57SQVzeZ72TY3oWFokseXHvczGN5fAZC/jf
	 zGHkiW86mgMHL8klVRbnwr3qRYwYdHA==
X-MSG-ID: 95d39378-0e41-11f0-b160-00505681446f
From: Robin van der Gracht <robin@protonic.nl>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org,
	Robin van der Gracht <robin@protonic.nl>
Date: Mon, 31 Mar 2025 17:05:28 +0200
Message-ID: <20250331150528.3270385-1-robin@protonic.nl>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250331_080532_165392_7E5B0B4E 
X-CRM114-Status: GOOD (  10.05  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: boards: protonic-imx6: prtvt7: Use the input system for key detection
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Static gpio mapping is deprecated. Instead query the gpio-keys driver for
pressed keys.

Signed-off-by: Robin van der Gracht <robin@protonic.nl>
---
 arch/arm/boards/protonic-imx6/board.c | 17 ++++++++++-------
 1 file changed, 10 insertions(+), 7 deletions(-)

diff --git a/arch/arm/boards/protonic-imx6/board.c b/arch/arm/boards/protonic-imx6/board.c
index 9292052d30..4bfae3d608 100644
--- a/arch/arm/boards/protonic-imx6/board.c
+++ b/arch/arm/boards/protonic-imx6/board.c
@@ -13,6 +13,7 @@
 #include <globalvar.h>
 #include <gpio.h>
 #include <i2c/i2c.h>
+#include <input/input.h>
 #include <mach/imx/bbu.h>
 #include <mach/imx/imx6.h>
 #include <mach/imx/ocotp-fusemap.h>
@@ -740,19 +741,21 @@ static int prt_imx6_init_kvg_yaco(struct prt_imx6_priv *priv)
 	return prt_imx6_init_kvg_power(priv, PW_MODE_KVG_WITH_YACO);
 }
 
-#define GPIO_KEY_F6     (0xe0 + 5)
-#define GPIO_KEY_CYCLE  (0xe0 + 2)
-
 static int prt_imx6_init_prtvt7(struct prt_imx6_priv *priv)
 {
-	/* This function relies heavely on the gpio-pca9539 driver */
+	unsigned long *keys;
 
-	gpio_direction_input(GPIO_KEY_F6);
-	gpio_direction_input(GPIO_KEY_CYCLE);
+	/*
+	 * Prefer USB-boot and enable autoboot with timeout when CYCLE-F6 key
+	 * combination is pressed.
+	 */
+	keys = xzalloc((KEY_CYCLEWINDOWS / 8) + 1);
+	input_key_get_status(keys, KEY_CYCLEWINDOWS);
 
-	if (gpio_get_value(GPIO_KEY_CYCLE) && gpio_get_value(GPIO_KEY_F6))
+	if (!(test_bit(KEY_CYCLEWINDOWS, keys) && test_bit(KEY_F6, keys)))
 		priv->no_usb_check = 1;
 
+	free(keys);
 	return 0;
 }
 
-- 
2.43.0



