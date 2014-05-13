Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x22b.google.com ([2a00:1450:4013:c00::22b])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wk80u-0001kM-Mx
 for barebox@lists.infradead.org; Tue, 13 May 2014 08:24:47 +0000
Received: by mail-ee0-f43.google.com with SMTP id d17so124605eek.16
 for <barebox@lists.infradead.org>; Tue, 13 May 2014 01:24:19 -0700 (PDT)
From: Holger Schurig <holgerschurig@gmail.com>
Date: Tue, 13 May 2014 10:28:45 +0200
Message-Id: <1399969739-10355-6-git-send-email-holgerschurig@gmail.com>
In-Reply-To: <1399969739-10355-1-git-send-email-holgerschurig@gmail.com>
References: <1399969739-10355-1-git-send-email-holgerschurig@gmail.com>
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
Subject: [PATCH 05/19] commands: CMD_DIGEST -> COMPILE_DIGEST
To: barebox@lists.infradead.org

This config just turned on the compilation of digest.c (used by 'SHA1',
'sha256sum' etc), so name it accordingly.

Signed-off-by: Holger Schurig <holgerschurig@gmail.com>
---
 arch/arm/configs/phytec-phycard-omap3_defconfig |    2 +-
 commands/Kconfig                                |   20 ++++++++++----------
 commands/Makefile                               |    2 +-
 3 files changed, 12 insertions(+), 12 deletions(-)

diff --git a/arch/arm/configs/phytec-phycard-omap3_defconfig b/arch/arm/configs/phytec-phycard-omap3_defconfig
index d242c19..95383aa 100644
--- a/arch/arm/configs/phytec-phycard-omap3_defconfig
+++ b/arch/arm/configs/phytec-phycard-omap3_defconfig
@@ -95,7 +95,7 @@ CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_IOMEM=y
 CONFIG_CMD_CRC=y
 CONFIG_CMD_CRC_CMP=y
-CONFIG_CMD_DIGEST=y
+CONFIG_COMPILE_DIGEST=y
 CONFIG_CMD_MD5SUM=y
 CONFIG_CMD_SHA1SUM=y
 CONFIG_CMD_SHA256SUM=y
diff --git a/commands/Kconfig b/commands/Kconfig
index d987688..ad23dbf 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -12,6 +12,12 @@ config HAS_POWEROFF
 
 if COMMAND_SUPPORT
 
+config COMPILE_DIGEST
+	tristate
+	select DIGEST
+	help
+	  Turns on compilation of digest.c
+
 config COMPILE_MEMORY
 	bool
 	help
@@ -591,12 +597,6 @@ endmenu
 
 menu "File"
 
-config CMD_DIGEST
-	tristate
-	select DIGEST
-	help
-	  TODO This is actually not a command, but turns on digest.c compilation.
-
 config CMD_BASENAME
 	tristate
 	prompt "basename"
@@ -716,7 +716,7 @@ config CMD_LS
 
 config CMD_MD5SUM
 	tristate
-	select CMD_DIGEST
+	select COMPILE_DIGEST
 	select MD5
 	prompt "md5sum"
 	help
@@ -781,7 +781,7 @@ config CMD_RMDIR
 
 config CMD_SHA1SUM
 	tristate
-	select CMD_DIGEST
+	select COMPILE_DIGEST
 	select SHA1
 	prompt "sha1sum"
 	help
@@ -793,7 +793,7 @@ config CMD_SHA1SUM
 
 config CMD_SHA224SUM
 	tristate
-	select CMD_DIGEST
+	select COMPILE_DIGEST
 	select SHA224
 	prompt "sha224sum"
 	help
@@ -805,7 +805,7 @@ config CMD_SHA224SUM
 
 config CMD_SHA256SUM
 	tristate
-	select CMD_DIGEST
+	select COMPILE_DIGEST
 	select SHA256
 	prompt "sha256sum"
 	help
diff --git a/commands/Makefile b/commands/Makefile
index f5aaf1c..2373ccf 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -1,4 +1,5 @@
 obj-$(CONFIG_STDDEV)		+= stddev.o
+obj-$(CONFIG_COMPILE_DIGEST)	+= digest.o
 obj-$(CONFIG_COMPILE_MEMORY)	+= mem.o
 obj-$(CONFIG_CMD_BOOTM)		+= bootm.o
 obj-$(CONFIG_CMD_UIMAGE)	+= uimage.o
@@ -34,7 +35,6 @@ obj-$(CONFIG_CMD_MOUNT)		+= mount.o
 obj-$(CONFIG_CMD_UMOUNT)	+= umount.o
 obj-$(CONFIG_CMD_REGINFO)	+= reginfo.o
 obj-$(CONFIG_CMD_CRC)		+= crc.o
-obj-$(CONFIG_CMD_DIGEST)	+= digest.o
 obj-$(CONFIG_CMD_CLEAR)		+= clear.o
 obj-$(CONFIG_CMD_TEST)		+= test.o
 obj-$(CONFIG_CMD_FLASH)		+= flash.o
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
