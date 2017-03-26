Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vs81.iboxed.net ([185.82.85.146])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cs3xv-0005JT-1Q
 for barebox@lists.infradead.org; Sun, 26 Mar 2017 08:56:01 +0000
From: Alexander Kurz <akurz@blala.de>
Date: Sun, 26 Mar 2017 10:54:57 +0200
Message-Id: <1490518497-12690-1-git-send-email-akurz@blala.de>
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
Subject: [PATCH] ARM Kindle3 defconfig: add clock manipulation command
To: barebox@lists.infradead.org
Cc: Alexander Kurz <akurz@blala.de>

The clock manipulation command provides usefull information for a
potential kernel developper. Just add it for kindle3 defconfig.

Signed-off-by: Alexander Kurz <akurz@blala.de>
---
 arch/arm/configs/kindle3_defconfig | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/configs/kindle3_defconfig b/arch/arm/configs/kindle3_defconfig
index 0b7088e..a4e08df 100644
--- a/arch/arm/configs/kindle3_defconfig
+++ b/arch/arm/configs/kindle3_defconfig
@@ -1,8 +1,8 @@
 CONFIG_ARCH_IMX=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x30000
 CONFIG_MACH_KINDLE3=y
-CONFIG_ARCH_IMX_USBLOADER=y
 CONFIG_IMX_IIM=y
+CONFIG_ARCH_IMX_USBLOADER=y
 CONFIG_AEABI=y
 CONFIG_ARM_BOARD_APPEND_ATAG=y
 CONFIG_ARM_BOARD_PREPEND_ATAG=y
@@ -46,6 +46,7 @@ CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_CRC=y
 CONFIG_CMD_CRC_CMP=y
 CONFIG_CMD_MEMTEST=y
+CONFIG_CMD_CLK=y
 CONFIG_CMD_GPIO=y
 CONFIG_CMD_I2C=y
 CONFIG_CMD_SPI=y
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
