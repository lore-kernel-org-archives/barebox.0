Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x22b.google.com ([2a00:1450:400c:c05::22b])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UET4K-0005TK-8a
 for barebox@lists.infradead.org; Sat, 09 Mar 2013 23:20:49 +0000
Received: by mail-wi0-f171.google.com with SMTP id hn17so324059wib.16
 for <barebox@lists.infradead.org>; Sat, 09 Mar 2013 15:20:46 -0800 (PST)
From: Vicente Bergas <vicencb@gmail.com>
Date: Sun, 10 Mar 2013 00:19:39 +0100
Message-Id: <1362871182-25726-7-git-send-email-vicencb@gmail.com>
In-Reply-To: <1362871182-25726-1-git-send-email-vicencb@gmail.com>
References: <1362871182-25726-1-git-send-email-vicencb@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 6/9] omap4_romusb: allow adding usb-serial when not booting
 from usb
To: barebox@lists.infradead.org
Cc: Vicente Bergas <vicencb@gmail.com>


Signed-off-by: Vicente Bergas <vicencb@gmail.com>
---
 arch/arm/mach-omap/include/mach/omap4_rom_usb.h |  3 +++
 arch/arm/mach-omap/omap4_rom_usb.c              | 23 +++++++++++------------
 drivers/serial/serial_omap4_usbboot.c           |  2 ++
 3 files changed, 16 insertions(+), 12 deletions(-)

diff --git a/arch/arm/mach-omap/include/mach/omap4_rom_usb.h b/arch/arm/mach-omap/include/mach/omap4_rom_usb.h
index 50c359f..bf8bd15 100644
--- a/arch/arm/mach-omap/include/mach/omap4_rom_usb.h
+++ b/arch/arm/mach-omap/include/mach/omap4_rom_usb.h
@@ -122,8 +122,11 @@ struct omap4_usbboot {
 	struct per_handle dread;
 	struct per_handle dwrite;
 	struct per_driver *io;
+	int ready;
 };
 
+int omap4_usbboot_open(void);
+int omap4_usbboot_ready(void);
 void omap4_usbboot_close(void);
 
 void omap4_usbboot_queue_read(void *data, unsigned len);
diff --git a/arch/arm/mach-omap/omap4_rom_usb.c b/arch/arm/mach-omap/omap4_rom_usb.c
index 38f886b..de35d61 100644
--- a/arch/arm/mach-omap/omap4_rom_usb.c
+++ b/arch/arm/mach-omap/omap4_rom_usb.c
@@ -38,7 +38,7 @@
 
 static struct omap4_usbboot omap4_usbboot_data;
 
-static int omap4_usbboot_open(void)
+int omap4_usbboot_open(void)
 {
 	int (*rom_get_per_driver)(struct per_driver **io, u32 device_type);
 	int (*rom_get_per_device)(struct per_handle **rh);
@@ -60,7 +60,7 @@ static int omap4_usbboot_open(void)
 
 	if ((boot->device_type != DEVICE_USB) &&
 	    (boot->device_type != DEVICE_USBEXT))
-		return -1;
+		return 0;
 
 	memset(&omap4_usbboot_data, 0, sizeof(omap4_usbboot_data));
 	n = rom_get_per_driver(&omap4_usbboot_data.io, boot->device_type);
@@ -77,9 +77,16 @@ static int omap4_usbboot_open(void)
 	omap4_usbboot_data.dwrite.options = boot->options;
 	omap4_usbboot_data.dwrite.device_type = boot->device_type;
 	__asm__ __volatile__ ("cpsie i\n");
+	omap4_usbboot_data.ready = 1;
+
+	omap4_usbboot_puts("USB communications initialized\n");
 	return 0;
 }
+core_initcall(omap4_usbboot_open);
 
+int omap4_usbboot_ready(void){
+	return omap4_usbboot_data.ready;
+}
 
 static void rom_read_callback(struct per_handle *rh)
 {
@@ -110,11 +117,13 @@ int omap4_usbboot_wait_read(void)
 	omap4_usbboot_data.dread.status = -1;
 	return ret;
 }
+
 int omap4_usbboot_is_read_waiting(void)
 {
 	barrier();
 	return omap4_usbboot_data.dread.status == STATUS_WAITING;
 }
+
 int omap4_usbboot_is_read_ok(void)
 {
 	barrier();
@@ -186,13 +195,3 @@ void omap4_usbboot_puts(const char *s)
 	while ((c = *s++))
 		omap4_usbboot_write(&c, 4);
 }
-
-static int omap4_usbboot_init(void)
-{
-	if (omap4_bootsrc() == OMAP_BOOTSRC_USB1) {
-		omap4_usbboot_open();
-		omap4_usbboot_puts("USB communications initialized\n");
-	}
-	return 0;
-}
-core_initcall(omap4_usbboot_init);
diff --git a/drivers/serial/serial_omap4_usbboot.c b/drivers/serial/serial_omap4_usbboot.c
index f0a2fd1..ee5b19a 100644
--- a/drivers/serial/serial_omap4_usbboot.c
+++ b/drivers/serial/serial_omap4_usbboot.c
@@ -78,6 +78,8 @@ static struct driver_d serial_omap4_usbboot_driver = {
 
 static int serial_omap4_usbboot_init(void)
 {
+	if (!omap4_usbboot_ready())
+		return 0;
 	return platform_driver_register(&serial_omap4_usbboot_driver);
 }
 console_initcall(serial_omap4_usbboot_init);
-- 
1.8.1.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
