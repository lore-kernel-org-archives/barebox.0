Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x235.google.com ([2a00:1450:400c:c05::235])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UET4D-0005S7-3g
 for barebox@lists.infradead.org; Sat, 09 Mar 2013 23:20:42 +0000
Received: by mail-wi0-f181.google.com with SMTP id hm6so328309wib.2
 for <barebox@lists.infradead.org>; Sat, 09 Mar 2013 15:20:39 -0800 (PST)
From: Vicente Bergas <vicencb@gmail.com>
Date: Sun, 10 Mar 2013 00:19:35 +0100
Message-Id: <1362871182-25726-3-git-send-email-vicencb@gmail.com>
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
Subject: [PATCH 2/9] omap4_romusb: rename omap4_usbboot_pdata to
 omap4_usbboot_data
To: barebox@lists.infradead.org
Cc: Vicente Bergas <vicencb@gmail.com>

 omap4_usbboot_pdata is not a pointer, so remove the "p"

Signed-off-by: Vicente Bergas <vicencb@gmail.com>
---
 arch/arm/mach-omap/omap4_rom_usb.c | 72 +++++++++++++++++++-------------------
 1 file changed, 36 insertions(+), 36 deletions(-)

diff --git a/arch/arm/mach-omap/omap4_rom_usb.c b/arch/arm/mach-omap/omap4_rom_usb.c
index 48d6433..38f886b 100644
--- a/arch/arm/mach-omap/omap4_rom_usb.c
+++ b/arch/arm/mach-omap/omap4_rom_usb.c
@@ -36,7 +36,7 @@
 #include <mach/xload.h>
 #include <init.h>
 
-static struct omap4_usbboot omap4_usbboot_pdata;
+static struct omap4_usbboot omap4_usbboot_data;
 
 static int omap4_usbboot_open(void)
 {
@@ -62,20 +62,20 @@ static int omap4_usbboot_open(void)
 	    (boot->device_type != DEVICE_USBEXT))
 		return -1;
 
-	memset(&omap4_usbboot_pdata, 0, sizeof(omap4_usbboot_pdata));
-	n = rom_get_per_driver(&omap4_usbboot_pdata.io, boot->device_type);
+	memset(&omap4_usbboot_data, 0, sizeof(omap4_usbboot_data));
+	n = rom_get_per_driver(&omap4_usbboot_data.io, boot->device_type);
 	if (n)
 		return n;
 
-	omap4_usbboot_pdata.dread.status = -1;
-	omap4_usbboot_pdata.dread.xfer_mode = boot->xfer_mode;
-	omap4_usbboot_pdata.dread.options = boot->options;
-	omap4_usbboot_pdata.dread.device_type = boot->device_type;
+	omap4_usbboot_data.dread.status = -1;
+	omap4_usbboot_data.dread.xfer_mode = boot->xfer_mode;
+	omap4_usbboot_data.dread.options = boot->options;
+	omap4_usbboot_data.dread.device_type = boot->device_type;
 
-	omap4_usbboot_pdata.dwrite.status = -1;
-	omap4_usbboot_pdata.dwrite.xfer_mode = boot->xfer_mode;
-	omap4_usbboot_pdata.dwrite.options = boot->options;
-	omap4_usbboot_pdata.dwrite.device_type = boot->device_type;
+	omap4_usbboot_data.dwrite.status = -1;
+	omap4_usbboot_data.dwrite.xfer_mode = boot->xfer_mode;
+	omap4_usbboot_data.dwrite.options = boot->options;
+	omap4_usbboot_data.dwrite.device_type = boot->device_type;
 	__asm__ __volatile__ ("cpsie i\n");
 	return 0;
 }
@@ -83,71 +83,71 @@ static int omap4_usbboot_open(void)
 
 static void rom_read_callback(struct per_handle *rh)
 {
-	omap4_usbboot_pdata.dread.status = rh->status;
+	omap4_usbboot_data.dread.status = rh->status;
 	return;
 }
 
 void omap4_usbboot_queue_read(void *data, unsigned len)
 {
 	int n;
-	omap4_usbboot_pdata.dread.data = data;
-	omap4_usbboot_pdata.dread.length = len;
-	omap4_usbboot_pdata.dread.status = STATUS_WAITING;
-	omap4_usbboot_pdata.dread.xfer_mode = 1;
-	omap4_usbboot_pdata.dread.callback = rom_read_callback;
-	n = omap4_usbboot_pdata.io->read(&omap4_usbboot_pdata.dread);
+	omap4_usbboot_data.dread.data = data;
+	omap4_usbboot_data.dread.length = len;
+	omap4_usbboot_data.dread.status = STATUS_WAITING;
+	omap4_usbboot_data.dread.xfer_mode = 1;
+	omap4_usbboot_data.dread.callback = rom_read_callback;
+	n = omap4_usbboot_data.io->read(&omap4_usbboot_data.dread);
 	if (n)
-		omap4_usbboot_pdata.dread.status = n;
+		omap4_usbboot_data.dread.status = n;
 }
 
 int omap4_usbboot_wait_read(void)
 {
 	int ret;
-	while (omap4_usbboot_pdata.dread.status == STATUS_WAITING)
+	while (omap4_usbboot_data.dread.status == STATUS_WAITING)
 		/* cpu_relax(); */
 		barrier();
-	ret = omap4_usbboot_pdata.dread.status;
-	omap4_usbboot_pdata.dread.status = -1;
+	ret = omap4_usbboot_data.dread.status;
+	omap4_usbboot_data.dread.status = -1;
 	return ret;
 }
 int omap4_usbboot_is_read_waiting(void)
 {
 	barrier();
-	return omap4_usbboot_pdata.dread.status == STATUS_WAITING;
+	return omap4_usbboot_data.dread.status == STATUS_WAITING;
 }
 int omap4_usbboot_is_read_ok(void)
 {
 	barrier();
-	return omap4_usbboot_pdata.dread.status == STATUS_OKAY;
+	return omap4_usbboot_data.dread.status == STATUS_OKAY;
 }
 
 static void rom_write_callback(struct per_handle *rh)
 {
-	omap4_usbboot_pdata.dwrite.status = rh->status;
+	omap4_usbboot_data.dwrite.status = rh->status;
 	return;
 }
 
 void omap4_usbboot_queue_write(void *data, unsigned len)
 {
 	int n;
-	omap4_usbboot_pdata.dwrite.data = data;
-	omap4_usbboot_pdata.dwrite.length = len;
-	omap4_usbboot_pdata.dwrite.status = STATUS_WAITING;
-	omap4_usbboot_pdata.dwrite.xfer_mode = 1;
-	omap4_usbboot_pdata.dwrite.callback = rom_write_callback;
-	n = omap4_usbboot_pdata.io->write(&omap4_usbboot_pdata.dwrite);
+	omap4_usbboot_data.dwrite.data = data;
+	omap4_usbboot_data.dwrite.length = len;
+	omap4_usbboot_data.dwrite.status = STATUS_WAITING;
+	omap4_usbboot_data.dwrite.xfer_mode = 1;
+	omap4_usbboot_data.dwrite.callback = rom_write_callback;
+	n = omap4_usbboot_data.io->write(&omap4_usbboot_data.dwrite);
 	if (n)
-		omap4_usbboot_pdata.dwrite.status = n;
+		omap4_usbboot_data.dwrite.status = n;
 }
 
 int omap4_usbboot_wait_write(void)
 {
 	int ret;
-	while (omap4_usbboot_pdata.dwrite.status == STATUS_WAITING)
+	while (omap4_usbboot_data.dwrite.status == STATUS_WAITING)
 		/* cpu_relax(); */
 		barrier();
-	ret = omap4_usbboot_pdata.dwrite.status;
-	omap4_usbboot_pdata.dwrite.status = -1;
+	ret = omap4_usbboot_data.dwrite.status;
+	omap4_usbboot_data.dwrite.status = -1;
 	return ret;
 }
 
@@ -177,7 +177,7 @@ int omap4_usbboot_write(void *data, unsigned len)
 
 void omap4_usbboot_close(void)
 {
-	omap4_usbboot_pdata.io->close(&omap4_usbboot_pdata.dread);
+	omap4_usbboot_data.io->close(&omap4_usbboot_data.dread);
 }
 
 void omap4_usbboot_puts(const char *s)
-- 
1.8.1.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
