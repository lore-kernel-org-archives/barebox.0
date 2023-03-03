Delivery-date: Fri, 03 Mar 2023 10:26:43 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY1gY-007Nkl-BC
	for lore@lore.pengutronix.de; Fri, 03 Mar 2023 10:26:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY1gX-0002s6-DC
	for lore@pengutronix.de; Fri, 03 Mar 2023 10:26:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zJ8ZPTlMJuHBzeuq7MARlGHt9D6iOwoGA6zbZ6HnxxU=; b=RnvQ9F7jQYLwU1wH5lAxB99uNl
	w40+EghAo6iAyyj/ONgZvCvdhFWHUYFu9hhegSJTYATzBVAcBJ41cu6ZwPp0orVKbAncnlsM4KXbp
	6e7+SXiY7a/djiqaXr1Sc3yPFBjjTyNzcnlvQfqgiRQWKA2DlTqlfRxCumsrMok+6QlSN7fT82MRi
	8ifIt6CcyAteq2jblKKJPwHfxqjBI6kV46Pfc8In4WDaQYK1MZTDOJUe3vNFv/PvnQDx2oKzEq1pA
	770X7TRe4St8+oqgQrDa/jTU+TVx7aRFk1sUuS6puOb6seQ9braEk0iCsfHC8/rSPwx59ybXvNxHL
	+QkrKkIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY1fC-005gsE-5S; Fri, 03 Mar 2023 09:25:18 +0000
Received: from metis.ext.pengutronix.de ([85.220.165.71])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY1bl-005eQG-55
	for barebox@lists.infradead.org; Fri, 03 Mar 2023 09:21:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1bj-0000Ga-8L; Fri, 03 Mar 2023 10:21:43 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1bi-001WjS-Hn; Fri, 03 Mar 2023 10:21:42 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1ba-00F2iw-TC; Fri, 03 Mar 2023 10:21:34 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri,  3 Mar 2023 10:21:13 +0100
Message-Id: <20230303092131.3063587-33-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230303092131.3063587-1-s.hauer@pengutronix.de>
References: <20230303092131.3063587-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230303_012145_357657_788E3C42 
X-CRM114-Status: GOOD (  16.00  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 32/50] ARM: omap: usbboot: Enable USB communication when needed
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Instead of activating USB communication unconditionally in an initcall,
let the users activate it once they need it. This gets us rid of an
initcall that is not protected against running on foreign SoCs.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/archosg9/board.c      | 12 ++++++++----
 arch/arm/mach-omap/omap4_rom_usb.c    |  4 +++-
 drivers/serial/serial_omap4_usbboot.c |  6 ++++++
 fs/omap4_usbbootfs.c                  |  3 ++-
 include/mach/omap/omap4_rom_usb.h     | 13 +++++++++++++
 5 files changed, 32 insertions(+), 6 deletions(-)

diff --git a/arch/arm/boards/archosg9/board.c b/arch/arm/boards/archosg9/board.c
index 8aa35262d3..547d21d6ca 100644
--- a/arch/arm/boards/archosg9/board.c
+++ b/arch/arm/boards/archosg9/board.c
@@ -33,13 +33,17 @@
 
 static int archosg9_console_init(void)
 {
+	int ret;
+
 	barebox_set_model("Archos G9");
 	barebox_set_hostname("g9");
 
-	if (IS_ENABLED(CONFIG_DRIVER_SERIAL_OMAP4_USBBOOT) &&
-			omap4_usbboot_ready()) {
-		add_generic_device("serial_omap4_usbboot", DEVICE_ID_DYNAMIC
-			, NULL, 0, 0, 0, NULL);
+	if (IS_ENABLED(CONFIG_DRIVER_SERIAL_OMAP4_USBBOOT)) {
+		ret = omap4_usbboot_open();
+		if (!ret) {
+			add_generic_device("serial_omap4_usbboot", DEVICE_ID_DYNAMIC
+				, NULL, 0, 0, 0, NULL);
+		}
 	}
 	if (IS_ENABLED(CONFIG_DRIVER_SERIAL_NS16550)) {
 		omap44xx_add_uart1();
diff --git a/arch/arm/mach-omap/omap4_rom_usb.c b/arch/arm/mach-omap/omap4_rom_usb.c
index a3e447128f..01c5565a68 100644
--- a/arch/arm/mach-omap/omap4_rom_usb.c
+++ b/arch/arm/mach-omap/omap4_rom_usb.c
@@ -46,6 +46,9 @@ int omap4_usbboot_open(void)
 	int n;
 	u32 base;
 
+	if (omap4_usbboot_ready())
+		return 0;
+
 	if (omap4_revision() >= OMAP4460_ES1_0)
 		base = PUBLIC_API_BASE_4460;
 	else
@@ -82,7 +85,6 @@ int omap4_usbboot_open(void)
 	omap4_usbboot_puts("USB communications initialized\n");
 	return 0;
 }
-core_initcall(omap4_usbboot_open);
 
 int omap4_usbboot_ready(void){
 	return omap4_usbboot_data.ready;
diff --git a/drivers/serial/serial_omap4_usbboot.c b/drivers/serial/serial_omap4_usbboot.c
index 463d217f97..709398966f 100644
--- a/drivers/serial/serial_omap4_usbboot.c
+++ b/drivers/serial/serial_omap4_usbboot.c
@@ -49,6 +49,12 @@ static int serial_omap4_usbboot_getc(struct console_device *cdev)
 static int serial_omap4_usbboot_probe(struct device *dev)
 {
 	struct serial_omap4_usbboot_priv *priv;
+	int ret;
+
+	ret = omap4_usbboot_open();
+	if (ret)
+		return ret;
+	
 	priv = xzalloc(sizeof(*priv));
 
 	priv->cdev.dev = dev;
diff --git a/fs/omap4_usbbootfs.c b/fs/omap4_usbbootfs.c
index 9b0755d539..30392d1192 100644
--- a/fs/omap4_usbbootfs.c
+++ b/fs/omap4_usbbootfs.c
@@ -143,8 +143,9 @@ static int omap4_usbbootfs_stat(struct device *dev, const char *filename,
 
 static int omap4_usbbootfs_probe(struct device *dev)
 {
-	return 0;
+	return omap4_usbboot_open();
 }
+
 static void omap4_usbbootfs_remove(struct device *dev)
 {
 }
diff --git a/include/mach/omap/omap4_rom_usb.h b/include/mach/omap/omap4_rom_usb.h
index bf8bd159ad..66295eb11e 100644
--- a/include/mach/omap/omap4_rom_usb.h
+++ b/include/mach/omap/omap4_rom_usb.h
@@ -125,8 +125,21 @@ struct omap4_usbboot {
 	int ready;
 };
 
+#ifdef CONFIG_OMAP4_USBBOOT
 int omap4_usbboot_open(void);
 int omap4_usbboot_ready(void);
+#else
+static inline int omap4_usbboot_open(void)
+{
+	return -ENODEV;
+}
+
+static inline int omap4_usbboot_ready(void)
+{
+	return 0;
+}
+#endif
+
 void omap4_usbboot_close(void);
 
 void omap4_usbboot_queue_read(void *data, unsigned len);
-- 
2.30.2



