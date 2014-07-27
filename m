Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x233.google.com ([2a00:1450:4010:c03::233])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XBL3y-0006eP-3G
 for barebox@lists.infradead.org; Sun, 27 Jul 2014 09:48:18 +0000
Received: by mail-la0-f51.google.com with SMTP id el20so4436597lab.10
 for <barebox@lists.infradead.org>; Sun, 27 Jul 2014 02:47:55 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sun, 27 Jul 2014 13:47:27 +0400
Message-Id: <1406454448-10645-9-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1406454448-10645-1-git-send-email-antonynpavlov@gmail.com>
References: <1406454448-10645-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 8/9] ARM: DIGIC: add canon-a1100_defconfig
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/arm/configs/canon-a1100_defconfig | 56 ++++++++++++++++++++++++++++++++++
 1 file changed, 56 insertions(+)

diff --git a/arch/arm/configs/canon-a1100_defconfig b/arch/arm/configs/canon-a1100_defconfig
new file mode 100644
index 0000000..5c1e195
--- /dev/null
+++ b/arch/arm/configs/canon-a1100_defconfig
@@ -0,0 +1,56 @@
+CONFIG_BUILTIN_DTB=y
+CONFIG_BUILTIN_DTB_NAME="canon-a1100"
+CONFIG_ARCH_DIGIC=y
+CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_PBL_IMAGE=y
+CONFIG_IMAGE_COMPRESSION_LZ4=y
+CONFIG_TEXT_BASE=0x00300000
+CONFIG_MALLOC_SIZE=0x200000
+CONFIG_PROMPT="canon-a1100 > "
+CONFIG_GLOB=y
+CONFIG_HUSH_FANCY_PROMPT=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+# CONFIG_DEFAULT_ENVIRONMENT is not set
+CONFIG_DEBUG_LL=y
+CONFIG_LONGHELP=y
+CONFIG_CMD_IOMEM=y
+CONFIG_CMD_MEMINFO=y
+# CONFIG_CMD_BOOTM is not set
+# CONFIG_CMD_BOOTU is not set
+CONFIG_CMD_GO=y
+CONFIG_CMD_LOADY=y
+# CONFIG_CMD_MOUNT is not set
+# CONFIG_CMD_UMOUNT is not set
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_GLOBAL=y
+CONFIG_CMD_MD5SUM=y
+# CONFIG_CMD_PWD is not set
+CONFIG_CMD_SHA1SUM=y
+CONFIG_CMD_LET=y
+CONFIG_CMD_MSLEEP=y
+CONFIG_CMD_SLEEP=y
+# CONFIG_CMD_CLEAR is not set
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_MEMTEST=y
+CONFIG_CMD_MM=y
+CONFIG_CMD_GPIO=y
+CONFIG_CMD_LED=y
+CONFIG_CMD_OF_NODE=y
+CONFIG_CMD_OF_PROPERTY=y
+CONFIG_CMD_OFTREE=y
+CONFIG_OFDEVICE=y
+CONFIG_DRIVER_SERIAL_DIGIC=y
+# CONFIG_SPI is not set
+CONFIG_MTD=y
+# CONFIG_MTD_WRITE is not set
+CONFIG_DRIVER_CFI=y
+# CONFIG_DRIVER_CFI_BANK_WIDTH_1 is not set
+CONFIG_CLOCKSOURCE_DUMMY=y
+CONFIG_CLOCKSOURCE_DUMMY_RATE=2000
+CONFIG_LED=y
+CONFIG_LED_GPIO=y
+CONFIG_LED_GPIO_OF=y
+CONFIG_GPIO_DIGIC=y
+CONFIG_ZLIB=y
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
