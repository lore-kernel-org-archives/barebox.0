Delivery-date: Sun, 03 May 2026 10:45:30 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wJSSB-000UAe-1G
	for lore@lore.pengutronix.de;
	Sun, 03 May 2026 10:45:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wJSS9-0004eM-1V
	for lore@pengutronix.de; Sun, 03 May 2026 10:45:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KmPrWke/nE0412uUCKkUFVCWQkoOH+TQE9xHAKPycMw=; b=49l3553YXF8XL8KF2JDAErYy1M
	bBT+s1YUrn1v9ERNBWYNfU17b2Hnt3nD6hUw7N/O7gawjGsZiVK5xDAuhe0eF0SyHhl7IPkrL3spN
	iXmHie6ORRGlU2XBj2h1dj9Nku3Tv4dzIAJQ6xtZyt2Ks2p5OE5A5W4rA4K95NvZTWfXTyrgREcGN
	gpsOblDmS3U8ToRBauujY0KIYQ/x/ckgQrvmhBynIUaE1GuYySKRZxqow6fsndI4MMBd7IROdIi7z
	KhHLX+F3DeEUR+GdlYpqvTPQ66QtJOj8TCv05mdXmxNE82Ivq82u6Y1z3zhCaPCjiooz5XT1VEnHr
	9DWBmPmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJSRU-0000000AfAl-1Cl3;
	Sun, 03 May 2026 08:44:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJSRN-0000000Aeux-44un
	for barebox@lists.infradead.org;
	Sun, 03 May 2026 08:44:43 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wJSRM-0003oP-AO; Sun, 03 May 2026 10:44:40 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Sun,  3 May 2026 10:33:21 +0200
Message-ID: <20260503084430.2765761-20-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260503084430.2765761-1-a.fatoum@barebox.org>
References: <20260503084430.2765761-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260503_014442_063948_02E2A737 
X-CRM114-Status: GOOD (  18.74  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 19/20] fbconsole: adapt logging depending on activated streams
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The console_device::f_active member is only set after the console has
been successfully opened. Setting it earlier is not feasible as that
means a poller could attempt outputting on a console while it's being
enabled.

Instead, let's pass the activation flags as argument to the optional
open callback. The callback is only used by the netconsole and the
fbconsole.

This resolves two issues at the same time:

- We can suppress log messages when the device is briefly opened via
  `echo -a /dev/fbconsoleX MESSAGE`. Otherwise writing a message while
  the fbconsole is not activated for a CONSOLE_STD* stream, would each
  time result in a message like "fb0: framebuffer console WxH
  activated".

- We can replay all accumulated log messages, so users without access
  to the serial output still see what had transpired prior to console
  activation. This is especially useful for the framebuffer console as
  it does not support output on its own.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 common/console.c          |  8 ++++----
 common/serdev.c           |  2 +-
 drivers/video/fbconsole.c | 12 ++++++++----
 include/console.h         |  4 ++--
 net/netconsole.c          |  2 +-
 5 files changed, 16 insertions(+), 12 deletions(-)

diff --git a/common/console.c b/common/console.c
index acb4c772672c..fd859b97bf4a 100644
--- a/common/console.c
+++ b/common/console.c
@@ -48,12 +48,12 @@ static struct kfifo __console_output_fifo;
 static struct kfifo *console_input_fifo = &__console_input_fifo;
 static struct kfifo *console_output_fifo = &__console_output_fifo;
 
-int console_open(struct console_device *cdev)
+int console_open(struct console_device *cdev, unsigned activate)
 {
 	int ret;
 
 	if (cdev->open && !cdev->open_count) {
-		ret = cdev->open(cdev);
+		ret = cdev->open(cdev, activate);
 		if (ret)
 			return ret;
 	}
@@ -102,7 +102,7 @@ int console_set_active(struct console_device *cdev, unsigned flag)
 		if (ret)
 			return ret;
 	} else {
-		ret = console_open(cdev);
+		ret = console_open(cdev, flag);
 		if (ret)
 			return ret;
 	}
@@ -311,7 +311,7 @@ static int fops_open(struct cdev *cdev, unsigned long flags)
 	if ((flags & (O_WRONLY | O_RDWR)) && !priv->puts )
 		return -EPERM;
 
-	return console_open(priv);
+	return console_open(priv, 0);
 }
 
 static int fops_close(struct cdev *dev)
diff --git a/common/serdev.c b/common/serdev.c
index 1c8cfbd59447..319a17580760 100644
--- a/common/serdev.c
+++ b/common/serdev.c
@@ -80,7 +80,7 @@ int serdev_device_open(struct serdev_device *serdev)
 	if (ret)
 		goto err_free_fifo;
 
-	ret = console_open(cdev);
+	ret = console_open(cdev, 0);
 	if (ret)
 		goto err_poller_unregister;
 
diff --git a/drivers/video/fbconsole.c b/drivers/video/fbconsole.c
index 3a2a680fc719..a86005ada244 100644
--- a/drivers/video/fbconsole.c
+++ b/drivers/video/fbconsole.c
@@ -922,7 +922,7 @@ static int setup_font(struct fbc_priv *priv)
 	return 0;
 }
 
-static int fbc_open(struct console_device *cdev)
+static int fbc_open(struct console_device *cdev, unsigned activate)
 {
 	struct fbc_priv *priv = container_of(cdev,
 					struct fbc_priv, cdev);
@@ -941,11 +941,15 @@ static int fbc_open(struct console_device *cdev)
 
 	priv->state = LIT;
 
-	dev_info(priv->cdev.dev, "framebuffer console %dx%d activated\n",
-		priv->cols, priv->rows);
-
 	priv->active = true;
 
+	if (activate)
+		dev_info(priv->cdev.dev, "framebuffer console %dx%d activated\n",
+			priv->cols, priv->rows);
+
+	if (activate & CONSOLE_STDERR)
+		log_print(&priv->cdev, 0, GENMASK(LOGLEVEL, 0));
+
 	return 0;
 }
 
diff --git a/include/console.h b/include/console.h
index cfd2480f30d3..4b2893d5c4df 100644
--- a/include/console.h
+++ b/include/console.h
@@ -41,7 +41,7 @@ struct console_device {
 	int (*setbrg)(struct console_device *cdev, int baudrate);
 	void (*flush)(struct console_device *cdev);
 	int (*set_mode)(struct console_device *cdev, enum console_mode mode);
-	int (*open)(struct console_device *cdev);
+	int (*open)(struct console_device *cdev, unsigned activate);
 	int (*close)(struct console_device *cdev);
 	int (*get_size)(struct console_device *cdev, int *width, int *height);
 
@@ -110,7 +110,7 @@ struct console_device *of_console_get_by_alias(const char *alias);
 
 #define CFG_PBSIZE (CONFIG_CBSIZE+sizeof(CONFIG_PROMPT)+16)
 
-int console_open(struct console_device *cdev);
+int console_open(struct console_device *cdev, unsigned activate);
 int console_close(struct console_device *cdev);
 int console_set_active(struct console_device *cdev, unsigned active);
 unsigned console_get_active(struct console_device *cdev);
diff --git a/net/netconsole.c b/net/netconsole.c
index 859cfe8e6f35..f2e9447526bf 100644
--- a/net/netconsole.c
+++ b/net/netconsole.c
@@ -94,7 +94,7 @@ static void nc_putc(struct console_device *cdev, char c)
 	priv->busy = 0;
 }
 
-static int nc_open(struct console_device *cdev)
+static int nc_open(struct console_device *cdev, unsigned activate)
 {
 	struct nc_priv *priv = container_of(cdev,
 					struct nc_priv, cdev);
-- 
2.47.3



