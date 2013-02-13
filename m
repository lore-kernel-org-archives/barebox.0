Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 14.mo1.mail-out.ovh.net ([178.32.97.215]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U5ZFs-0008L0-Gz
 for barebox@lists.infradead.org; Wed, 13 Feb 2013 10:08:02 +0000
Received: from mail239.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 29E7EFFA3DC
 for <barebox@lists.infradead.org>; Wed, 13 Feb 2013 11:23:17 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 13 Feb 2013 11:06:44 +0100
Message-Id: <1360750004-17713-6-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1360750004-17713-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130213100249.GL19322@game.jcrosoft.org>
 <1360750004-17713-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 6/6] highbank: use the provided dtb by the firmware to probe
 barebox device and mem size
To: barebox@lists.infradead.org
Cc: Rob Herring <rob.herring@calxeda.com>

the dtb is at 0x1000

if no dtb present use C code device

keep in C the timer/gpio/uart

have a nice tree

barebox 2013.02.0-00294-g6802ddf #124 Wed Feb 13 02:31:01 CST 2013

Board: Calxeda Highbank
memory: ram0: 0xff900000@0x0
highbank: dtb probed memory size
registered netconsole as cs1
malloc space: 0x03500000 -> 0x03efffff (size 10 MiB)
Open /dev/env0 No such file or directory
no valid environment found on /dev/env0. Using default environment
running /env/bin/init...
ahci ffe08000.sata: port 0: SATA link ok
ahci ffe08000.sata: port 0: Spinning up device...
ahci ffe08000.sata: port 0: ok.
ahci ffe08000.sata: registered /dev/ata0
eth0: got preset MAC address: 52:54:00:12:34:56
eth1: got preset MAC address: 52:54:00:12:34:57

Hit any key to stop autoboot:  3
[barebox@Calxeda Highbank]:/
 # devinfo
devices:
`---- platform
     `---- mem0
          `---- 0x00000000-0x3fffffff: /dev/ram0
          `---- 0x00001000-0x00010fff: /dev/dtb
     `---- mem1
          `---- 0x00000000-0x000051af: /dev/defaultenv
     `---- mem2
          `---- 0x00000000-0xfffffffe: /dev/mem
     `---- cs1
     `---- fff10600.timer
     `---- fff10620.watchdog
     `---- fff11000.interrupt-controller
     `---- l2-cache
     `---- ffe08000.sata
          `---- 0x00000000-0x3fffffff: /dev/ata0
          `---- 0x00100000-0x014fffff: /dev/ata0.0
          `---- 0x01500000-0x3fffffff: /dev/ata0.1
     `---- ffe0e000.sdhci
     `---- fff00000.memory-controller
     `---- mem3
     `---- fff3c000.sregs
     `---- fff3c200.sregs
     `---- fff50000.ethernet
          `---- eth0
     `---- fff51000.ethernet
          `---- eth1
`---- amba
     `---- sp804
     `---- uart-pl011
          `---- cs0
     `---- fff30000.gpio
     `---- fff31000.gpio
     `---- fff32000.gpio
     `---- fff33000.gpio
     `---- fff35000.rtc
`---- fs
     `---- ramfs0
     `---- devfs0
`---- net
`---- global

drivers:
uart-pl011
sp804
pl061_gpio
ramfs
devfs
tftp
hb-xgmac
ahci
mem
[barebox@Calxeda Highbank]:/
 #

Cc: Rob Herring <rob.herring@calxeda.com>
Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/highbank/env/bin/init_board |    7 ++++
 arch/arm/boards/highbank/init.c             |   52 ++++++++++++++++++++++-----
 arch/arm/configs/highbank_defconfig         |    1 +
 3 files changed, 52 insertions(+), 8 deletions(-)
 create mode 100644 arch/arm/boards/highbank/env/bin/init_board

diff --git a/arch/arm/boards/highbank/env/bin/init_board b/arch/arm/boards/highbank/env/bin/init_board
new file mode 100644
index 0000000..610db15
--- /dev/null
+++ b/arch/arm/boards/highbank/env/bin/init_board
@@ -0,0 +1,7 @@
+#!/bin/sh
+
+if [ -e /dev/dtb ]
+then
+	oftree -l /dev/dtb
+	oftree -p
+fi
diff --git a/arch/arm/boards/highbank/init.c b/arch/arm/boards/highbank/init.c
index b793642..bcd2783 100644
--- a/arch/arm/boards/highbank/init.c
+++ b/arch/arm/boards/highbank/init.c
@@ -15,23 +15,59 @@
 #include <sizes.h>
 #include <io.h>
 
+#define FIRMWARE_DTB_BASE	0x1000
+
+struct fdt_header *fdt = NULL;
+
 static int highbank_mem_init(void)
 {
-	highbank_add_ddram(4089 << 20);
+	struct device_node *np;
+	int ret;
+
+	/* load by the firmware at 0x1000 */
+	fdt = IOMEM(FIRMWARE_DTB_BASE);
+
+	ret = of_unflatten_dtb(fdt);
+	if (ret) {
+		pr_warn("no dtb found at 0x1000 use default configuration\n");
+		fdt = NULL;
+		goto not_found;
+	}
 
+	np = of_find_node_by_path("/memory");
+	if (!np) {
+		pr_warn("no memory node use default configuration\n");
+		goto not_found;
+	}
+
+	ret = of_add_memory(np, true);
+	if (ret) {
+		pr_warn("memory node: probe failed use default configuration\n");
+		goto not_found;
+	}
+
+	pr_info("highbank: dtb probed memory size\n");
+
+	return 0;
+not_found:
+	highbank_add_ddram(4089 << 20);
 	return 0;
 }
 mem_initcall(highbank_mem_init);
 
 static int highbank_devices_init(void)
 {
-	highbank_register_gpio(0);
-	highbank_register_gpio(1);
-	highbank_register_gpio(2);
-	highbank_register_gpio(3);
-	highbank_register_ahci();
-	highbank_register_xgmac(0);
-	highbank_register_xgmac(1);
+	if (!fdt) {
+		highbank_register_gpio(0);
+		highbank_register_gpio(1);
+		highbank_register_gpio(2);
+		highbank_register_gpio(3);
+		highbank_register_ahci();
+		highbank_register_xgmac(0);
+		highbank_register_xgmac(1);
+	} else {
+		devfs_add_partition("ram0", FIRMWARE_DTB_BASE, SZ_64K, DEVFS_PARTITION_FIXED, "dtb");
+	}
 
 	armlinux_set_bootparams((void *)(0x00000100));
 
diff --git a/arch/arm/configs/highbank_defconfig b/arch/arm/configs/highbank_defconfig
index 22c1dcd..31ac954 100644
--- a/arch/arm/configs/highbank_defconfig
+++ b/arch/arm/configs/highbank_defconfig
@@ -37,6 +37,7 @@ CONFIG_CMD_UIMAGE=y
 CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_OFTREE=y
+CONFIG_CMD_OFTREE_PROBE=y
 CONFIG_CMD_MTEST=y
 CONFIG_CMD_MTEST_ALTERNATIVE=y
 CONFIG_CMD_TIMEOUT=y
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
