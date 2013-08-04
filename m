Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x234.google.com ([2a00:1450:4010:c03::234])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V64uR-00079S-AQ
 for barebox@lists.infradead.org; Sun, 04 Aug 2013 20:28:12 +0000
Received: by mail-la0-f52.google.com with SMTP id fq13so1565984lab.39
 for <barebox@lists.infradead.org>; Sun, 04 Aug 2013 13:27:49 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon,  5 Aug 2013 00:25:27 +0400
Message-Id: <1375647927-30627-6-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1375647927-30627-1-git-send-email-antonynpavlov@gmail.com>
References: <1375647927-30627-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC 5/5] ARM: DIGIC: add canon-a1100_defconfig
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/arm/configs/canon-a1100_defconfig | 40 ++++++++++++++++++++++++++++++++++
 1 file changed, 40 insertions(+)
 create mode 100644 arch/arm/configs/canon-a1100_defconfig

diff --git a/arch/arm/configs/canon-a1100_defconfig b/arch/arm/configs/canon-a1100_defconfig
new file mode 100644
index 0000000..6fad0c6
--- /dev/null
+++ b/arch/arm/configs/canon-a1100_defconfig
@@ -0,0 +1,40 @@
+CONFIG_ARCH_DIGIC=y
+CONFIG_MACH_CANON_A1100=y
+CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_PBL_IMAGE=y
+CONFIG_PBL_RELOCATABLE=y
+CONFIG_IMAGE_COMPRESSION_LZ4=y
+CONFIG_TEXT_BASE=0x00300000
+CONFIG_MALLOC_SIZE=0x200000
+CONFIG_PANIC_HANG=y
+CONFIG_PROMPT="canon> "
+CONFIG_LONGHELP=y
+CONFIG_GLOB=y
+CONFIG_HUSH_FANCY_PROMPT=y
+CONFIG_HUSH_GETOPT=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/canon-a1100/env"
+CONFIG_DEBUG_LL=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_GLOBAL=y
+# CONFIG_CMD_RM is not set
+# CONFIG_CMD_MKDIR is not set
+# CONFIG_CMD_RMDIR is not set
+# CONFIG_CMD_PWD is not set
+# CONFIG_CMD_MOUNT is not set
+# CONFIG_CMD_UMOUNT is not set
+# CONFIG_CMD_CLEAR is not set
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_IOMEM=y
+# CONFIG_CMD_MEMCMP is not set
+# CONFIG_CMD_MEMCPY is not set
+# CONFIG_CMD_MEMSET is not set
+# CONFIG_CMD_BOOTM is not set
+# CONFIG_CMD_BOOTU is not set
+# CONFIG_CMD_TEST is not set
+# CONFIG_CMD_VERSION is not set
+# CONFIG_CMD_HELP is not set
+# CONFIG_CMD_DEVINFO is not set
+# CONFIG_SPI is not set
+CONFIG_ZLIB=y
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
