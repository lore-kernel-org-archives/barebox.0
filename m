Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YRLaD-0004rV-Fb
 for barebox@lists.infradead.org; Fri, 27 Feb 2015 14:08:05 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1YRLZp-0007tX-Rw
 for barebox@lists.infradead.org; Fri, 27 Feb 2015 15:07:37 +0100
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.84)
 (envelope-from <jbe@pengutronix.de>) id 1YRLZp-0005tk-R8
 for barebox@lists.infradead.org; Fri, 27 Feb 2015 15:07:37 +0100
From: Juergen Borleis <jbe@pengutronix.de>
Date: Fri, 27 Feb 2015 15:07:32 +0100
Message-Id: <1425046053-21214-5-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1425046053-21214-1-git-send-email-jbe@pengutronix.de>
References: <1425046053-21214-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 4/5] phyCORE-MPC5200-Tiny: switch to the new environment
 template
To: barebox@lists.infradead.org

Signed-off-by: Juergen Borleis <jbe@pengutronix.de>
---
 arch/ppc/boards/pcm030/env/init/mtdparts-nor      | 11 ++++++
 arch/ppc/boards/pcm030/env/nv/linux.bootargs.base |  1 +
 arch/ppc/configs/pcm030_defconfig                 | 42 +++++++++++------------
 3 files changed, 33 insertions(+), 21 deletions(-)
 create mode 100644 arch/ppc/boards/pcm030/env/init/mtdparts-nor
 create mode 100644 arch/ppc/boards/pcm030/env/nv/linux.bootargs.base

diff --git a/arch/ppc/boards/pcm030/env/init/mtdparts-nor b/arch/ppc/boards/pcm030/env/init/mtdparts-nor
new file mode 100644
index 0000000..e900a3b
--- /dev/null
+++ b/arch/ppc/boards/pcm030/env/init/mtdparts-nor
@@ -0,0 +1,11 @@
+#!/bin/sh
+
+if [ "$1" = menu ]; then
+        init-menu-add-entry "$0" "NOR partitions"
+        exit
+fi
+
+mtdparts="512k(nor0.bareboxlow),4M(nor0.kernel),512k(nor0.oftree),26M(nor0.root),512k(nor0.barebox),512k(nor0.bareboxenv)"
+kernelname="physmap-flash.0"
+
+mtdparts-add -d nor0 -k ${kernelname} -p ${mtdparts}
diff --git a/arch/ppc/boards/pcm030/env/nv/linux.bootargs.base b/arch/ppc/boards/pcm030/env/nv/linux.bootargs.base
new file mode 100644
index 0000000..31ce0e7
--- /dev/null
+++ b/arch/ppc/boards/pcm030/env/nv/linux.bootargs.base
@@ -0,0 +1 @@
+console=ttyPSC0,115200
diff --git a/arch/ppc/configs/pcm030_defconfig b/arch/ppc/configs/pcm030_defconfig
index 204f946..7b84e2f 100644
--- a/arch/ppc/configs/pcm030_defconfig
+++ b/arch/ppc/configs/pcm030_defconfig
@@ -1,42 +1,42 @@
 CONFIG_TEXT_BASE=0x3e00000
 CONFIG_MALLOC_SIZE=0x1000000
-CONFIG_LONGHELP=y
-CONFIG_GLOB=y
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_PARTITION=y
-CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_LOADENV=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_READLINE=y
-CONFIG_CMD_TIME=y
-CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_MEMINFO=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/ppc/boards/pcm030/env"
+CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
-CONFIG_CMD_FLASH=y
+CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_BOOTM_SHOW_TYPE=y
-CONFIG_CMD_UIMAGE=y
-CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
-CONFIG_CMD_OFTREE=y
-CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_UIMAGE=y
 CONFIG_CMD_PARTITION=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_LOADENV=y
 CONFIG_CMD_MAGICVAR=y
 CONFIG_CMD_MAGICVAR_HELP=y
+CONFIG_CMD_SAVEENV=y
 CONFIG_CMD_UNCOMPRESS=y
-CONFIG_NET=y
+CONFIG_CMD_SLEEP=y
 CONFIG_CMD_DHCP=y
 CONFIG_CMD_PING=y
 CONFIG_CMD_TFTP=y
-CONFIG_FS_TFTP=y
-CONFIG_ARCH_MPC5XXX=y
-CONFIG_MACH_PHYCORE_MPC5200B_TINY=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_CRC=y
+CONFIG_CMD_CRC_CMP=y
+CONFIG_CMD_FLASH=y
+CONFIG_CMD_OFTREE=y
+CONFIG_CMD_TIME=y
+CONFIG_NET=y
 CONFIG_DRIVER_NET_MPC5200=y
 CONFIG_MTD=y
 CONFIG_DRIVER_CFI=y
 CONFIG_CFI_BUFFER_WRITE=y
+CONFIG_FS_TFTP=y
 CONFIG_ZLIB=y
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
