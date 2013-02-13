Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp3.mail.ru ([94.100.176.131])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U5aix-0007Dq-KI
 for barebox@lists.infradead.org; Wed, 13 Feb 2013 11:42:05 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Wed, 13 Feb 2013 15:41:43 +0400
Message-Id: <1360755704-24105-8-git-send-email-shc_work@mail.ru>
In-Reply-To: <1360755704-24105-1-git-send-email-shc_work@mail.ru>
References: <1360755704-24105-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH v2 8/9] ARM: clep7212: Update default environment
To: barebox@lists.infradead.org


Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/boards/clep7212/env/bin/mtdparts-add   |   21 ---------------------
 arch/arm/boards/clep7212/env/boot/nor           |    2 +-
 arch/arm/boards/clep7212/env/config             |   20 ++++++++++++++++++++
 arch/arm/boards/clep7212/env/init/automount     |    6 ------
 arch/arm/boards/clep7212/env/init/bootargs-base |    8 --------
 arch/arm/boards/clep7212/env/init/general       |   12 ------------
 arch/arm/boards/clep7212/env/init/hostname      |    8 --------
 arch/arm/boards/clep7212/env/init/mtdparts-nor  |   11 +++++++++++
 8 files changed, 32 insertions(+), 56 deletions(-)
 delete mode 100644 arch/arm/boards/clep7212/env/bin/mtdparts-add
 create mode 100644 arch/arm/boards/clep7212/env/config
 delete mode 100644 arch/arm/boards/clep7212/env/init/automount
 delete mode 100644 arch/arm/boards/clep7212/env/init/bootargs-base
 delete mode 100644 arch/arm/boards/clep7212/env/init/general
 delete mode 100644 arch/arm/boards/clep7212/env/init/hostname
 create mode 100644 arch/arm/boards/clep7212/env/init/mtdparts-nor

diff --git a/arch/arm/boards/clep7212/env/bin/mtdparts-add b/arch/arm/boards/clep7212/env/bin/mtdparts-add
deleted file mode 100644
index ef1bc02..0000000
--- a/arch/arm/boards/clep7212/env/bin/mtdparts-add
+++ /dev/null
@@ -1,21 +0,0 @@
-#!/bin/sh
-
-if [ "$1" = menu ]; then
-	init-menu-add-entry "$0" "Partitions"
-	exit
-fi
-
-norparts="256k(barebox),256k(bareboxenv),3584k(kernel),-(root)"
-ramparts="-(ramdisk)"
-
-if [ -e /dev/nor0 ]; then
-	addpart -n /dev/nor0 "${norparts}"
-
-	global linux.mtdparts.nor
-	global.linux.mtdparts.nor="physmap-flash.0:${norparts}"
-else
-	echo "NOR Flash not found."
-fi
-
-global linux.mtdparts.ram
-global.linux.mtdparts.ram="mtd-ram.0:${ramparts}"
diff --git a/arch/arm/boards/clep7212/env/boot/nor b/arch/arm/boards/clep7212/env/boot/nor
index 5cf1e15..df8c983 100644
--- a/arch/arm/boards/clep7212/env/boot/nor
+++ b/arch/arm/boards/clep7212/env/boot/nor
@@ -6,4 +6,4 @@ if [ "$1" = menu ]; then
 fi
 
 global.bootm.image="/dev/kernel"
-global.linux.bootargs.dyn.root="root=/dev/mtdblock4 ro"
+global.linux.bootargs.dyn.root="root=/dev/mtdblock3 ro"
diff --git a/arch/arm/boards/clep7212/env/config b/arch/arm/boards/clep7212/env/config
new file mode 100644
index 0000000..e8f2c3a
--- /dev/null
+++ b/arch/arm/boards/clep7212/env/config
@@ -0,0 +1,20 @@
+#!/bin/sh
+
+global.hostname=clps711x
+
+# set to false if you do not want to have colors
+global.allow_color=true
+
+# user (used for network filenames)
+global.user=anonymous
+
+# timeout in seconds before the default boot entry is started
+global.autoboot_timeout=2
+
+# default boot entry (one of /env/boot/*)
+if [ -e /dev/nor0 ]; then
+	global.boot.default=nor
+fi
+
+# default bootargs
+global.linux.bootargs.base="earlyprintk console=ttyCL0,57600n8"
diff --git a/arch/arm/boards/clep7212/env/init/automount b/arch/arm/boards/clep7212/env/init/automount
deleted file mode 100644
index 978b964..0000000
--- a/arch/arm/boards/clep7212/env/init/automount
+++ /dev/null
@@ -1,6 +0,0 @@
-#!/bin/sh
-
-if [ "$1" = menu ]; then
-	init-menu-add-entry "$0" "Automountpoints"
-	exit
-fi
diff --git a/arch/arm/boards/clep7212/env/init/bootargs-base b/arch/arm/boards/clep7212/env/init/bootargs-base
deleted file mode 100644
index ec08e39..0000000
--- a/arch/arm/boards/clep7212/env/init/bootargs-base
+++ /dev/null
@@ -1,8 +0,0 @@
-#!/bin/sh
-
-if [ "$1" = menu ]; then
-	init-menu-add-entry "$0" "Base bootargs"
-	exit
-fi
-
-global.linux.bootargs.base="earlyprintk console=ttyCL0,57600n8"
diff --git a/arch/arm/boards/clep7212/env/init/general b/arch/arm/boards/clep7212/env/init/general
deleted file mode 100644
index 77e6a59..0000000
--- a/arch/arm/boards/clep7212/env/init/general
+++ /dev/null
@@ -1,12 +0,0 @@
-#!/bin/sh
-
-if [ "$1" = menu ]; then
-	init-menu-add-entry "$0" "general config settings"
-	exit
-fi
-
-global.user=barebox
-global.autoboot_timeout=2
-global.boot.default=nor
-
-/env/bin/mtdparts-add
diff --git a/arch/arm/boards/clep7212/env/init/hostname b/arch/arm/boards/clep7212/env/init/hostname
deleted file mode 100644
index 684ee63..0000000
--- a/arch/arm/boards/clep7212/env/init/hostname
+++ /dev/null
@@ -1,8 +0,0 @@
-#!/bin/sh
-
-if [ "$1" = menu ]; then
-	init-menu-add-entry "$0" "hostname"
-	exit
-fi
-
-global.hostname=clep7212
diff --git a/arch/arm/boards/clep7212/env/init/mtdparts-nor b/arch/arm/boards/clep7212/env/init/mtdparts-nor
new file mode 100644
index 0000000..7910299
--- /dev/null
+++ b/arch/arm/boards/clep7212/env/init/mtdparts-nor
@@ -0,0 +1,11 @@
+#!/bin/sh
+
+if [ "$1" = menu ]; then
+	init-menu-add-entry "$0" "NOR partitions"
+	exit
+fi
+
+mtdparts="256k(barebox),256k(bareboxenv),3584k(kernel),-(root)"
+kernelname="physmap-flash.0"
+
+mtdparts-add -d nor0 -k ${kernelname} -p ${mtdparts}
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
