Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 70.mail-out.ovh.net ([91.121.185.63])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OyMkP-0002gg-5i
	for barebox@lists.infradead.org; Wed, 22 Sep 2010 10:40:22 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 22 Sep 2010 12:38:54 +0200
Message-Id: <1285151935-884-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1285135558-7838-1-git-send-email-plagnioj@jcrosoft.com>
References: <1285135558-7838-1-git-send-email-plagnioj@jcrosoft.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/2 v2] nhk8815: update defconfig
To: barebox@lists.infradead.org

fix env patch
enable echo, loadb, cramfs, ubi, login/password and menu

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/configs/nhk8815_defconfig |   17 ++++++++++++++++-
 1 files changed, 16 insertions(+), 1 deletions(-)

diff --git a/arch/arm/configs/nhk8815_defconfig b/arch/arm/configs/nhk8815_defconfig
index c0fc436..8fbf752 100644
--- a/arch/arm/configs/nhk8815_defconfig
+++ b/arch/arm/configs/nhk8815_defconfig
@@ -4,10 +4,13 @@ CONFIG_TEXT_BASE=0x03F80000
 CONFIG_PROMPT="Nomadik:"
 CONFIG_LONGHELP=y
 CONFIG_GLOB=y
+CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
+CONFIG_MENU=y
+CONFIG_PASSWD_SUM_SHA1=y
 CONFIG_PARTITION=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="board/nhk8815/env"
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/nhk8815/env"
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_SAVEENV=y
@@ -15,6 +18,11 @@ CONFIG_CMD_LOADENV=y
 CONFIG_CMD_EXPORT=y
 CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_READLINE=y
+CONFIG_CMD_MENU=y
+CONFIG_CMD_MENU_MANAGEMENT=y
+CONFIG_CMD_PASSWD=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_LOADB=y
 CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_CRC=y
 CONFIG_CMD_MTEST=y
@@ -26,11 +34,14 @@ CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
+CONFIG_CMD_UNLZO=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
 CONFIG_NET_PING=y
 CONFIG_NET_TFTP=y
+CONFIG_NET_TFTP_PUSH=y
+CONFIG_NET_RESOLV=y
 CONFIG_SERIAL_AMBA_PL011=y
 CONFIG_DRIVER_NET_SMC91111=y
 # CONFIG_SPI is not set
@@ -39,3 +50,7 @@ CONFIG_NAND=y
 CONFIG_MTD_NAND_VERIFY_WRITE=y
 CONFIG_MTD_NAND_ECC_SMC=y
 CONFIG_MTD_NAND_NOMADIK=y
+CONFIG_UBI=y
+CONFIG_FS_CRAMFS=y
+CONFIG_MD5=y
+CONFIG_SHA256=y
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
