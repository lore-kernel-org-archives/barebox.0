Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x233.google.com ([2a00:1450:4010:c03::233])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V64uP-00079R-8O
 for barebox@lists.infradead.org; Sun, 04 Aug 2013 20:28:10 +0000
Received: by mail-la0-f51.google.com with SMTP id fp13so1569319lab.10
 for <barebox@lists.infradead.org>; Sun, 04 Aug 2013 13:27:47 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon,  5 Aug 2013 00:25:26 +0400
Message-Id: <1375647927-30627-5-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC 4/5] ARM: DIGIC: add canon-600d_defconfig
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/arm/configs/canon-600d_defconfig | 40 +++++++++++++++++++++++++++++++++++
 1 file changed, 40 insertions(+)
 create mode 100644 arch/arm/configs/canon-600d_defconfig

diff --git a/arch/arm/configs/canon-600d_defconfig b/arch/arm/configs/canon-600d_defconfig
new file mode 100644
index 0000000..862abf2
--- /dev/null
+++ b/arch/arm/configs/canon-600d_defconfig
@@ -0,0 +1,40 @@
+CONFIG_ARCH_DIGIC=y
+CONFIG_MACH_CANON_600D=y
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
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/canon-600d/env"
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
