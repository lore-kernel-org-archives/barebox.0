Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x22f.google.com ([2a00:1450:400c:c05::22f])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UH05j-0007S5-Sp
 for barebox@lists.infradead.org; Sat, 16 Mar 2013 23:00:44 +0000
Received: by mail-wi0-f175.google.com with SMTP id l13so1579656wie.14
 for <barebox@lists.infradead.org>; Sat, 16 Mar 2013 16:00:42 -0700 (PDT)
From: Vicente Bergas <vicencb@gmail.com>
Date: Sat, 16 Mar 2013 23:59:37 +0100
Message-Id: <1363474782-21973-2-git-send-email-vicencb@gmail.com>
In-Reply-To: <1363474782-21973-1-git-send-email-vicencb@gmail.com>
References: <1363474782-21973-1-git-send-email-vicencb@gmail.com>
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
Subject: [PATCH 1/6] OMAP4: check for usb availability at device registration
To: barebox@lists.infradead.org
Cc: Vicente Bergas <vicencb@gmail.com>

this way serial-over-usb driver is registered always, but the device is
only registered when booting from usb.

Signed-off-by: Vicente Bergas <vicencb@gmail.com>
---
 arch/arm/boards/archosg9/board.c      | 6 +++++-
 drivers/serial/serial_omap4_usbboot.c | 2 --
 2 files changed, 5 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boards/archosg9/board.c b/arch/arm/boards/archosg9/board.c
index bf247de..3ae7051 100644
--- a/arch/arm/boards/archosg9/board.c
+++ b/arch/arm/boards/archosg9/board.c
@@ -17,15 +17,19 @@
 #include <generated/mach-types.h>
 #include <mach/omap4-silicon.h>
 #include <mach/omap4-devices.h>
+#include <mach/omap4_rom_usb.h>
 #include <sizes.h>
 #include <i2c/i2c.h>
 #include <gpio.h>
 #include "archos_features.h"
 
 static int archosg9_console_init(void){
-	if (IS_ENABLED(CONFIG_DRIVER_SERIAL_OMAP4_USBBOOT))
+	if (IS_ENABLED(CONFIG_DRIVER_SERIAL_OMAP4_USBBOOT) &&
+		omap4_usbboot_ready()
+	){
 		add_generic_device("serial_omap4_usbboot", DEVICE_ID_DYNAMIC
 			, NULL, 0, 0, 0, NULL);
+	}
 	if (IS_ENABLED(CONFIG_DRIVER_SERIAL_NS16550)) {
 		gpio_direction_output(41, 0); /* gps_disable */
 		gpio_direction_output(34, 1); /* 1v8_pwron */
diff --git a/drivers/serial/serial_omap4_usbboot.c b/drivers/serial/serial_omap4_usbboot.c
index e377fc4..f0a2fd1 100644
--- a/drivers/serial/serial_omap4_usbboot.c
+++ b/drivers/serial/serial_omap4_usbboot.c
@@ -78,8 +78,6 @@ static struct driver_d serial_omap4_usbboot_driver = {
 
 static int serial_omap4_usbboot_init(void)
 {
-	if (!omap4_usbboot_ready())
-		return 0;
 	return platform_driver_register(&serial_omap4_usbboot_driver);
 }
 console_initcall(serial_omap4_usbboot_init);
-- 
1.8.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
