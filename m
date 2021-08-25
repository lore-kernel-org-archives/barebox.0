Delivery-date: Wed, 25 Aug 2021 14:57:03 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mIsSl-0001Gr-Cf
	for lore@lore.pengutronix.de; Wed, 25 Aug 2021 14:57:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mIsSf-0005bv-Ky
	for lore@pengutronix.de; Wed, 25 Aug 2021 14:57:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DboC8rk/Ahk+UTwz8OC8awdNJDU/0nPAIZzJl6Cwxvc=; b=wZ5YbiwdLhrS4E
	iaKuHaBRZZ0BtIf6peMnj+ftuWndlwGqrg1n4gkn/2MSaKnwgfUYZnUfLLxBpV78Uk/QnDIs9wYou
	9rZDcctTE7/E8j0n0/i6J9W4+OjmHjHA9+tljnLJLwKeKJqO71GgoCeIaxmqUSK0Q+cj4FiaNNgyK
	TCSRgU/k9+vvjwbZVwDVxkXZKsYfY/b2fbslgia46XLpZ+2PPduBrcHaAoI1u/3DxEhujhzU/GUhc
	x4S7fYrAzQBcU6L0iYMxuIR+yYU87DL2vXGcYTE/WjMlvY5nJjcsf1kbul1K7gBC7d/ovvGnOix/R
	6QQxFZYWI8n+3TSvhNnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mIsQh-006y6q-IK; Wed, 25 Aug 2021 12:54:55 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mIsQU-006y3Z-Ux
 for barebox@lists.infradead.org; Wed, 25 Aug 2021 12:54:46 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1mIsQL-00050o-LY; Wed, 25 Aug 2021 14:54:33 +0200
Received: from ore by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1mIsQK-00070s-Tp; Wed, 25 Aug 2021 14:54:32 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Robin van der Gracht <robin@protonic.nl>,
 Oleksij Rempel <o.rempel@pengutronix.de>
Date: Wed, 25 Aug 2021 14:54:29 +0200
Message-Id: <20210825125430.26901-4-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210825125430.26901-1-o.rempel@pengutronix.de>
References: <20210825125430.26901-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210825_055443_050932_200AB7E1 
X-CRM114-Status: GOOD (  18.34  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v1 3/4] ARM: boards: protonic-imx6: Skip usb check on prtvt7
 by default
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Robin van der Gracht <robin@protonic.nl>

This product has physical buttons. When a certain combination is pressed,
the usb check should be performed otherwise it can be skipped to allow
faster booting.

Signed-off-by: Robin van der Gracht <robin@protonic.nl>
Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/boards/protonic-imx6/board.c | 61 +++++++++++++++++++--------
 1 file changed, 43 insertions(+), 18 deletions(-)

diff --git a/arch/arm/boards/protonic-imx6/board.c b/arch/arm/boards/protonic-imx6/board.c
index 9a95495327..cacbdafa31 100644
--- a/arch/arm/boards/protonic-imx6/board.c
+++ b/arch/arm/boards/protonic-imx6/board.c
@@ -84,6 +84,7 @@ struct prt_imx6_priv {
 	const char *name;
 	struct poller_async poller;
 	unsigned int usb_delay;
+	unsigned int no_usb_check;
 };
 
 struct prti6q_rfid_contents {
@@ -380,16 +381,20 @@ static int prt_imx6_env_init(struct prt_imx6_priv *priv)
 	if (ret)
 		goto exit_env_init;
 
-	if (dcfg->flags & PRT_IMX6_USB_LONG_DELAY)
-		priv->usb_delay = 4;
-	else
-		priv->usb_delay = 1;
-
-	/* the usb_delay value is used for poller_call_async() */
-	delay = basprintf("%d", priv->usb_delay);
-	ret = setenv("global.autoboot_timeout", delay);
-	if (ret)
-		goto exit_env_init;
+	if (priv->no_usb_check) {
+		set_autoboot_state(AUTOBOOT_BOOT);
+	} else {
+		if (dcfg->flags & PRT_IMX6_USB_LONG_DELAY)
+			priv->usb_delay = 4;
+		else
+			priv->usb_delay = 1;
+
+		/* the usb_delay value is used for poller_call_async() */
+		delay = basprintf("%d", priv->usb_delay);
+		ret = setenv("global.autoboot_timeout", delay);
+		if (ret)
+			goto exit_env_init;
+	}
 
 	if (dcfg->flags & PRT_IMX6_BOOTCHOOSER)
 		bootsrc = "bootchooser";
@@ -458,14 +463,16 @@ static int prt_imx6_devices_init(void)
 
 	prt_imx6_env_init(priv);
 
-	ret = poller_async_register(&priv->poller, "usb-boot");
-	if (ret) {
-		dev_err(priv->dev, "can't setup poller\n");
-		return ret;
-	}
+	if (!priv->no_usb_check) {
+		ret = poller_async_register(&priv->poller, "usb-boot");
+		if (ret) {
+			dev_err(priv->dev, "can't setup poller\n");
+			return ret;
+		}
 
-	poller_call_async(&priv->poller, priv->usb_delay * SECOND,
-			  &prt_imx6_check_usb_boot, priv);
+		poller_call_async(&priv->poller, priv->usb_delay * SECOND,
+				  &prt_imx6_check_usb_boot, priv);
+	}
 
 	return 0;
 }
@@ -618,6 +625,22 @@ static int prt_imx6_init_kvg_yaco(struct prt_imx6_priv *priv)
 	return prt_imx6_init_kvg_power(priv, PW_MODE_KVG_WITH_YACO);
 }
 
+#define GPIO_KEY_F6     (0xe0 + 5)
+#define GPIO_KEY_CYCLE  (0xe0 + 2)
+
+static int prt_imx6_init_prtvt7(struct prt_imx6_priv *priv)
+{
+	/* This function relies heavely on the gpio-pca9539 driver */
+
+	gpio_direction_input(GPIO_KEY_F6);
+	gpio_direction_input(GPIO_KEY_CYCLE);
+
+	if (gpio_get_value(GPIO_KEY_CYCLE) && gpio_get_value(GPIO_KEY_F6))
+		priv->no_usb_check = 1;
+
+	return 0;
+}
+
 static int prt_imx6_rfid_fixup(struct prt_imx6_priv *priv,
 			       struct device_node *root)
 {
@@ -1031,7 +1054,9 @@ static const struct prt_machine_data prt_imx6_cfg_prtvt7[] = {
 		.i2c_addr = 0x51,
 		.i2c_adapter = 0,
 		.emmc_usdhc = 2,
-		.flags = PRT_IMX6_BOOTSRC_EMMC | PRT_IMX6_BOOTCHOOSER,
+		.init = prt_imx6_init_prtvt7,
+		.flags = PRT_IMX6_BOOTSRC_EMMC | PRT_IMX6_BOOTCHOOSER |
+			PRT_IMX6_USB_LONG_DELAY,
 	}, {
 		.hw_id = UINT_MAX
 	},
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

