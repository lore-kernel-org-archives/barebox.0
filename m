Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x231.google.com ([2a00:1450:4010:c07::231])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZsWA5-0004yH-Kq
 for barebox@lists.infradead.org; Sat, 31 Oct 2015 13:25:38 +0000
Received: by lffz202 with SMTP id z202so45938947lff.3
 for <barebox@lists.infradead.org>; Sat, 31 Oct 2015 06:25:16 -0700 (PDT)
From: Anton Bondarenko <anton.bondarenko.sama@gmail.com>
Date: Sat, 31 Oct 2015 14:25:08 +0100
Message-Id: <1446297909-2001-3-git-send-email-anton.bondarenko.sama@gmail.com>
In-Reply-To: <1446297909-2001-1-git-send-email-anton.bondarenko.sama@gmail.com>
References: <1446297909-2001-1-git-send-email-anton.bondarenko.sama@gmail.com>
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
Subject: [PATCH 2/3] embedsky-e9: enable barebox_update command for booter
 update
To: s.hauer@pengutronix.de, barebox@lists.infradead.org

Simplify booter update with barebox_update command.
NOTE: current MBR partition table will be overwritten.

Signed-off-by: Anton Bondarenko <anton.bondarenko.sama@gmail.com>
---
 arch/arm/boards/embedsky-e9/board.c    | 6 ++++++
 arch/arm/configs/embedsky-e9_defconfig | 1 +
 2 files changed, 7 insertions(+)

diff --git a/arch/arm/boards/embedsky-e9/board.c b/arch/arm/boards/embedsky-e9/board.c
index e8aac0c..3730985 100644
--- a/arch/arm/boards/embedsky-e9/board.c
+++ b/arch/arm/boards/embedsky-e9/board.c
@@ -41,6 +41,7 @@
 #include <mach/usb.h>
 #include <envfs.h>
 #include <bootsource.h>
+#include <bbu.h>
 
 #define PHY_ID_RTL8211E	0x001cc915
 #define PHY_ID_MASK	0xffffffff
@@ -81,6 +82,11 @@ static int e9_devices_init(void)
 
 	defaultenv_append_directory(defaultenv_e9);
 
+	bbu_register_std_file_update("sdcard.barebox", 0, "/dev/mmc1.barebox",
+				     filetype_arm_barebox);
+	bbu_register_std_file_update("emmc.barebox", 0, "/dev/mmc3.barebox",
+				     filetype_arm_barebox);
+
 	return 0;
 }
 device_initcall(e9_devices_init);
diff --git a/arch/arm/configs/embedsky-e9_defconfig b/arch/arm/configs/embedsky-e9_defconfig
index 3dc0f3b..ed82563 100644
--- a/arch/arm/configs/embedsky-e9_defconfig
+++ b/arch/arm/configs/embedsky-e9_defconfig
@@ -83,6 +83,7 @@ CONFIG_CMD_FLASH=y
 CONFIG_CMD_GPIO=y
 CONFIG_CMD_I2C=y
 CONFIG_CMD_SPI=y
+CONFIG_CMD_BAREBOX_UPDATE=y
 CONFIG_CMD_OF_NODE=y
 CONFIG_CMD_OF_PROPERTY=y
 CONFIG_CMD_OFTREE=y
-- 
2.6.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
