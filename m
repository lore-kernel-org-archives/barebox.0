Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 19.mo3.mail-out.ovh.net ([178.32.98.231]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SGMNB-0005j0-3U
 for barebox@lists.infradead.org; Sat, 07 Apr 2012 03:31:34 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id B3600FF889F
 for <barebox@lists.infradead.org>; Sat,  7 Apr 2012 05:32:22 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat,  7 Apr 2012 05:15:01 +0200
Message-Id: <1333768501-25204-4-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20120407031228.GF16306@game.jcrosoft.org>
References: <20120407031228.GF16306@game.jcrosoft.org>
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
Subject: [PATCH 4/4] at91sam9m10g45ek: add boot menu support
To: barebox@lists.infradead.org

by default we boot the same way as before

The menu add interactive interface to choice boot, reset or update the system.
We still can access the shell.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 .../arm/boards/at91sam9m10g45ek/env/bin/boot_board |   51 ++++++++++++++++++++
 arch/arm/boards/at91sam9m10g45ek/env/bin/menu_boot |   37 ++++++++++++++
 2 files changed, 88 insertions(+), 0 deletions(-)
 create mode 100644 arch/arm/boards/at91sam9m10g45ek/env/bin/boot_board
 create mode 100644 arch/arm/boards/at91sam9m10g45ek/env/bin/menu_boot

diff --git a/arch/arm/boards/at91sam9m10g45ek/env/bin/boot_board b/arch/arm/boards/at91sam9m10g45ek/env/bin/boot_board
new file mode 100644
index 0000000..3d7426f
--- /dev/null
+++ b/arch/arm/boards/at91sam9m10g45ek/env/bin/boot_board
@@ -0,0 +1,51 @@
+#!/bin/sh
+
+PATH=/env/bin
+export PATH
+
+. /env/config
+
+menu -r -m boot
+menu -a -m boot -d "\e[1;36mWelcome on Barebox Boot Sequence\e[0m"
+menu -e -a -m boot -c 'menu_boot'			-d "boot (default)             "
+menu -e -a -m boot -c 'menu_boot -m nand'		-d "boot from nand             "
+menu -e -a -m boot -c 'menu_boot -k nfs -r net'		-d "boot from nfs (kernel nfs) "
+menu -e -a -m boot -c 'menu_boot -k tftp -r net'	-d "boot from nfs (kernel tftp)"
+menu -e -a -m boot -c 'clear'			-d "\e[2;33mshell                      \e[0m"
+menu -e -a -m boot -u update				-d "update                     "
+menu -e -a -m boot -c reset			-d "\e[1;31mreset                      \e[0m"
+
+# Submenu Update
+menu -r -m update
+menu -a -m update -d "\e[1;36mUpdate\e[0m"
+menu -e -a -m update -u update_barebox	-d "\e[2;33mbarebox\e[0m"
+menu -e -a -m update -u update_kernel		-d "kernel"
+menu -e -a -m update -u update_rootfs		-d "rootfs"
+menu -e -a -m update -c 'true'			-d "back  "
+
+# submenu update barebox
+menu -r -m update_barebox
+menu -a -m update_barebox -d "\e[2;33mBarebox Update Methode\e[0m"
+menu -e -a -m update_barebox -c 'update -t barebox -d nand -m tftp -c; echo ; timeout -a 3'	-d "tftp  "
+menu -e -a -m update_barebox -c 'update -t barebox -d nand -m xmodem -c; echo ; timeout -a 3'	-d "xmodem"
+menu -e -a -m update_barebox -c 'update -t barebox -d nand -m nfs -c; echo ; timeout -a 3'	-d "nfs   "
+menu -e -a -m update_barebox -c 'true'								-d "back  "
+
+# submenu update kernel
+menu -r -m update_kernel
+menu -a -m update_kernel -d "\e[1;36mKernel Update Methode\e[0m"
+menu -e -a -m update_kernel -c 'update -t kernel -d nand -m tftp -c; echo ; timeout -a 3'	-d "tftp  "
+menu -e -a -m update_kernel -c 'update -t kernel -d nand -m xmodem -c; echo ; timeout -a 3'	-d "xmodem"
+menu -e -a -m update_kernel -c 'update -t kernel -d nand -m nfs -c; echo ; timeout -a 3'	-d "nfs   "
+menu -e -a -m update_kernel -c 'true'								-d "back  "
+
+# submenu update barebox
+menu -r -m update_rootfs
+menu -a -m update_rootfs -d "\e[1;36mRootfs Update Methode\e[0m"
+menu -e -a -m update_rootfs -c 'update -t rootfs -d nand -m tftp -c; echo ; timeout -a 3'	-d "tftp  "
+menu -e -a -m update_rootfs -c 'update -t rootfs -d nand -m xmodem -c; echo ; timeout -a 3'	-d "xmodem"
+menu -e -a -m update_rootfs -c 'update -t rootfs -d nand -m nfs -c; echo ; timeout -a 3'	-d "nfs   "
+menu -e -a -m update_rootfs -c 'true'								-d "back  "
+
+menu -s -m boot -A $autoboot_timeout
+exit 1
diff --git a/arch/arm/boards/at91sam9m10g45ek/env/bin/menu_boot b/arch/arm/boards/at91sam9m10g45ek/env/bin/menu_boot
new file mode 100644
index 0000000..d0b1396
--- /dev/null
+++ b/arch/arm/boards/at91sam9m10g45ek/env/bin/menu_boot
@@ -0,0 +1,37 @@
+#!/bin/sh
+
+. /env/config
+
+while getopt "k:r:i:m:" Option
+do
+if [ ${Option} = k ]; then
+	kernel_loc=${OPTARG}
+elif [ ${Option} = r ]; then
+	rootfs_loc=${OPTARG}
+elif [ ${Option} = i ]; then
+	ip=${OPTARG}
+elif [ ${Option} = m ]; then
+	mode=${OPTARG}
+else
+fi
+done
+
+boot_opt=
+
+if [ x$mode != x ]; then
+	boot_opt="-m ${mode}"
+else
+	if [ x$kernel_loc != x ]; then
+		boot_opt="-k ${kernel_loc}"
+	fi
+	if [ x$kernel_loc != x ]; then
+		boot_opt="-r ${rootfs_loc}"
+	fi
+fi
+
+boot ${boot_opt} -i ${ip}
+
+echo -n "boot error: Hit any key to return to the menu: "
+timeout -a 3
+menu -s -m boot
+exit 1
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
