Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.17.21])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fIzVy-0002ik-BJ
 for barebox@lists.infradead.org; Wed, 16 May 2018 16:42:59 +0000
From: Oleksij Rempel <linux@rempel-privat.de>
Date: Wed, 16 May 2018 18:42:33 +0200
Message-Id: <20180516164233.27581-11-linux@rempel-privat.de>
In-Reply-To: <20180516164233.27581-1-linux@rempel-privat.de>
References: <20180516164233.27581-1-linux@rempel-privat.de>
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
Subject: [PATCH v1 10/10] MIPS: malta: update malta qemu defconfig
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <linux@rempel-privat.de>

Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
---
 arch/mips/configs/qemu-malta_defconfig | 13 ++++++++++---
 1 file changed, 10 insertions(+), 3 deletions(-)

diff --git a/arch/mips/configs/qemu-malta_defconfig b/arch/mips/configs/qemu-malta_defconfig
index 9671e93dc..f7d30ba17 100644
--- a/arch/mips/configs/qemu-malta_defconfig
+++ b/arch/mips/configs/qemu-malta_defconfig
@@ -1,8 +1,10 @@
 CONFIG_BUILTIN_DTB=y
 CONFIG_BUILTIN_DTB_NAME="qemu-malta"
 CONFIG_PBL_IMAGE=y
-CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x400000
+CONFIG_MMU=y
+CONFIG_TEXT_BASE=0x84000000
 CONFIG_STACK_SIZE=0x7000
+CONFIG_MALLOC_SIZE=0x2000000
 CONFIG_EXPERIMENTAL=y
 CONFIG_BAUDRATE=38400
 CONFIG_HUSH_FANCY_PROMPT=y
@@ -11,7 +13,9 @@ CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
 CONFIG_BOOTM_SHOW_TYPE=y
 CONFIG_PARTITION=y
-# CONFIG_DEFAULT_ENVIRONMENT is not set
+CONFIG_DEFAULT_COMPRESSION_GZIP=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/mips/boards/qemu-malta/env"
 CONFIG_POLLER=y
 CONFIG_DEBUG_INFO=y
 CONFIG_LONGHELP=y
@@ -22,16 +26,19 @@ CONFIG_CMD_GO=y
 CONFIG_CMD_LOADB=y
 CONFIG_CMD_LOADY=y
 CONFIG_CMD_RESET=y
+CONFIG_KEXEC=y
 CONFIG_CMD_PARTITION=y
 CONFIG_CMD_EXPORT=y
+CONFIG_CMD_DEFAULTENV=y
 CONFIG_CMD_LOADENV=y
 CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_MAGICVAR=y
+CONFIG_CMD_MAGICVAR_HELP=y
 CONFIG_CMD_SAVEENV=y
 CONFIG_CMD_MD5SUM=y
 CONFIG_CMD_SHA1SUM=y
 CONFIG_CMD_SHA256SUM=y
 CONFIG_CMD_UNCOMPRESS=y
-CONFIG_CMD_GETOPT=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_DHCP=y
 CONFIG_CMD_MIITOOL=y
-- 
2.14.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
