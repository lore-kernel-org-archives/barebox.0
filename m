Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22a.google.com ([2a00:1450:4010:c03::22a])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VDouO-0004dr-1B
 for barebox@lists.infradead.org; Mon, 26 Aug 2013 05:00:09 +0000
Received: by mail-la0-f42.google.com with SMTP id ep20so1966347lab.15
 for <barebox@lists.infradead.org>; Sun, 25 Aug 2013 21:59:45 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon, 26 Aug 2013 08:57:14 +0400
Message-Id: <1377493037-2229-6-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1377493037-2229-1-git-send-email-antonynpavlov@gmail.com>
References: <1377493037-2229-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC 5/8] ARM: DIGIC: add canon-a1100_defconfig
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/arm/configs/canon-a1100_defconfig | 53 ++++++++++++++++++++++++++++++++++
 1 file changed, 53 insertions(+)
 create mode 100644 arch/arm/configs/canon-a1100_defconfig

diff --git a/arch/arm/configs/canon-a1100_defconfig b/arch/arm/configs/canon-a1100_defconfig
new file mode 100644
index 0000000..60deabd
--- /dev/null
+++ b/arch/arm/configs/canon-a1100_defconfig
@@ -0,0 +1,53 @@
+CONFIG_BUILTIN_DTB=y
+CONFIG_BUILTIN_DTB_NAME="canon-a1100"
+CONFIG_ARCH_DIGIC=y
+CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_PBL_IMAGE=y
+CONFIG_PBL_RELOCATABLE=y
+CONFIG_IMAGE_COMPRESSION_LZ4=y
+CONFIG_TEXT_BASE=0x00300000
+CONFIG_MALLOC_SIZE=0x200000
+CONFIG_PROMPT="canon> "
+CONFIG_LONGHELP=y
+CONFIG_GLOB=y
+CONFIG_HUSH_FANCY_PROMPT=y
+CONFIG_HUSH_GETOPT=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/canon-a1100/env"
+CONFIG_DEBUG_LL=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_MSLEEP=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_LET=y
+CONFIG_CMD_GLOBAL=y
+# CONFIG_CMD_RM is not set
+# CONFIG_CMD_MKDIR is not set
+# CONFIG_CMD_RMDIR is not set
+# CONFIG_CMD_PWD is not set
+# CONFIG_CMD_MOUNT is not set
+# CONFIG_CMD_UMOUNT is not set
+# CONFIG_CMD_CLEAR is not set
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_LOADY=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_IOMEM=y
+CONFIG_CMD_MM=y
+# CONFIG_CMD_BOOTM is not set
+# CONFIG_CMD_BOOTU is not set
+CONFIG_CMD_GO=y
+CONFIG_CMD_OFTREE=y
+CONFIG_CMD_OF_PROPERTY=y
+CONFIG_CMD_OF_NODE=y
+CONFIG_CMD_GPIO=y
+CONFIG_CMD_LED=y
+CONFIG_OFDEVICE=y
+CONFIG_OF_BAREBOX_DRIVERS=y
+CONFIG_DRIVER_SERIAL_DIGIC=y
+# CONFIG_SPI is not set
+CONFIG_LED=y
+CONFIG_LED_GPIO=y
+CONFIG_LED_GPIO_OF=y
+CONFIG_GPIO_DIGIC=y
+CONFIG_ZLIB=y
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
