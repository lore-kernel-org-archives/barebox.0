Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.x-arc.co.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aYttb-000304-03
 for barebox@lists.infradead.org; Thu, 25 Feb 2016 11:15:48 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id AA7D2A003EC
 for <barebox@lists.infradead.org>; Thu, 25 Feb 2016 12:15:45 +0100 (CET)
From: Stefan Christ <s.christ@phytec.de>
Date: Thu, 25 Feb 2016 12:15:22 +0100
Message-Id: <1456398922-8253-1-git-send-email-s.christ@phytec.de>
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
Subject: [PATCH] ARM: i.MX: bbu-internal: call detect for mmc devices
To: barebox@lists.infradead.org

For the MMC update_handler it makes sense to probe the device before
writing to it. If the device is not probed yet, you get errors like

    $ barebox_update -y -t mmc0 /mnt/tftp/barebox.bin
    barebox_update: Read-only file system

The code is nearly equivalent to

    $ detect mmc0
    $ barebox_update -y -t mmc0 /mnt/tftp/barebox.bin

The function device_detect_by_name also handles device names with
partition suffix like "/dev/mmc3.boot0".

While at it, use the macro BIT for the bit field.

Signed-off-by: Stefan Christ <s.christ@phytec.de>
---
 arch/arm/mach-imx/imx-bbu-internal.c | 23 +++++++++++++++++++----
 1 file changed, 19 insertions(+), 4 deletions(-)

diff --git a/arch/arm/mach-imx/imx-bbu-internal.c b/arch/arm/mach-imx/imx-bbu-internal.c
index ac90c53..1ecc0d7 100644
--- a/arch/arm/mach-imx/imx-bbu-internal.c
+++ b/arch/arm/mach-imx/imx-bbu-internal.c
@@ -34,9 +34,10 @@
 
 #define FLASH_HEADER_OFFSET_MMC		0x400
 
-#define IMX_INTERNAL_FLAG_NAND		(1 << 0)
-#define IMX_INTERNAL_FLAG_KEEP_DOSPART	(1 << 1)
-#define IMX_INTERNAL_FLAG_ERASE		(1 << 2)
+#define IMX_INTERNAL_FLAG_NAND		BIT(0)
+#define IMX_INTERNAL_FLAG_KEEP_DOSPART	BIT(1)
+#define IMX_INTERNAL_FLAG_ERASE		BIT(2)
+#define IMX_INTERNAL_FLAG_PROBE		BIT(3)
 
 struct imx_internal_bbu_handler {
 	struct bbu_handler handler;
@@ -52,8 +53,21 @@ struct imx_internal_bbu_handler {
 static int imx_bbu_write_device(struct imx_internal_bbu_handler *imx_handler,
 		struct bbu_data *data, void *buf, int image_len)
 {
+	const char *devname;
 	int fd, ret;
 
+	if (imx_handler->flags & IMX_INTERNAL_FLAG_PROBE) {
+		devname = data->devicefile;
+		if (!strncmp(devname, "/dev/", 5))
+			devname += 5;
+		ret = device_detect_by_name(devname);
+		if (ret) {
+			printf("Detecting device %s failed: %s\n", devname,
+					strerror(-ret));
+			return ret;
+		}
+	}
+
 	fd = open(data->devicefile, O_RDWR | O_CREAT);
 	if (fd < 0)
 		return fd;
@@ -487,7 +501,8 @@ int imx6_bbu_internal_mmc_register_handler(const char *name, char *devicefile,
 	imx_handler = __init_handler(name, devicefile, flags);
 	imx_handler->flash_header_offset = FLASH_HEADER_OFFSET_MMC;
 
-	imx_handler->flags = IMX_INTERNAL_FLAG_KEEP_DOSPART;
+	imx_handler->flags = IMX_INTERNAL_FLAG_KEEP_DOSPART |
+						IMX_INTERNAL_FLAG_PROBE;
 	imx_handler->handler.handler = imx_bbu_internal_v2_update;
 
 	return __register_handler(imx_handler);
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
