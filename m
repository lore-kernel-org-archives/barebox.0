Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 3.mo4.mail-out.ovh.net ([46.105.57.129]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UDAjq-0000ZL-3b
 for barebox@lists.infradead.org; Wed, 06 Mar 2013 09:35:04 +0000
Received: from mail413.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 2E17B104E796
 for <barebox@lists.infradead.org>; Wed,  6 Mar 2013 10:45:21 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed,  6 Mar 2013 10:29:49 +0100
Message-Id: <1362562189-17783-20-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1362562189-17783-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130306092643.GF4401@game.jcrosoft.org>
 <1362562189-17783-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 20/20] highbank: enable application support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/configs/highbank_defconfig |   21 +++++++++++++++++++--
 1 file changed, 19 insertions(+), 2 deletions(-)

diff --git a/arch/arm/configs/highbank_defconfig b/arch/arm/configs/highbank_defconfig
index b034ed1..5776c68 100644
--- a/arch/arm/configs/highbank_defconfig
+++ b/arch/arm/configs/highbank_defconfig
@@ -4,15 +4,16 @@ CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_PBL_IMAGE=y
 CONFIG_MMU=y
 CONFIG_MALLOC_SIZE=0xa00000
+CONFIG_EXPERIMENTAL=y
 CONFIG_MALLOC_TLSF=y
 CONFIG_PROMPT="vexpress: "
 CONFIG_LONGHELP=y
-CONFIG_GLOB=y
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
-CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
+CONFIG_PARTITION_DISK_EFI=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/highbank/env"
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
@@ -23,10 +24,16 @@ CONFIG_CMD_READLINE=y
 CONFIG_CMD_MENU=y
 CONFIG_CMD_MENU_MANAGEMENT=y
 CONFIG_CMD_PASSWD=y
+CONFIG_CMD_LN=y
+CONFIG_CMD_READLINK=y
 CONFIG_CMD_TFTP=y
+CONFIG_CMD_FILETYPE=y
+CONFIG_CMD_APPINFO=y
 CONFIG_CMD_ECHO_E=y
 CONFIG_CMD_LOADB=y
 CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_CRC=y
+CONFIG_CMD_CRC_CMP=y
 CONFIG_CMD_BOOTM_SHOW_TYPE=y
 CONFIG_CMD_BOOTM_VERBOSE=y
 CONFIG_CMD_BOOTM_INITRD=y
@@ -60,3 +67,13 @@ CONFIG_GPIO_PL061=y
 CONFIG_FS_TFTP=y
 CONFIG_SHA1=y
 CONFIG_SHA256=y
+CONFIG_APPLICATIONS=y
+CONFIG_APP_LIB_PANEL=y
+CONFIG_APP_LIB_MENU=y
+CONFIG_APP_LIB_FORM=y
+CONFIG_APP_TEXT_BASE_OFFSET=0x1000000
+CONFIG_APP_EXAMPLE=y
+CONFIG_APP_TEST_CURSES=y
+CONFIG_APP_TEST_CURSES_PANEL=y
+CONFIG_APP_TEST_CURSES_MENU=y
+CONFIG_APP_TEST_CURSES_FORM=y
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
