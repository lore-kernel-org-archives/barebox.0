Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TTzsq-0008Eg-K1
 for barebox@lists.infradead.org; Thu, 01 Nov 2012 18:52:55 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  1 Nov 2012 19:52:48 +0100
Message-Id: <1351795968-2352-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1351795968-2352-1-git-send-email-s.hauer@pengutronix.de>
References: <1351795968-2352-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/3] defenv-2: bring back /env/config
To: barebox@lists.infradead.org

The idea of having /env/init/* scripts was to make the configuration
more flexible and customizable for boards. It turned out though that
people (including myself) do not find the place where they should
change these settings.

So this patch brings back /env/config for defenv-2. The individual
env/init/* scripts are removed and their content is added to
/env/init/config-board. This makes the values from /env/init/config-board
the board specific defaults which can be overwritten in /env/config.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 .../crystalfontz-cfa10036/env/init/bootargs-base   |    8 --------
 .../crystalfontz-cfa10036/env/init/config-board    |    7 +++++++
 .../boards/crystalfontz-cfa10036/env/init/hostname |    8 --------
 .../freescale-mx51-pdk/env/init/bootargs-base      |    8 --------
 .../freescale-mx51-pdk/env/init/config-board       |    7 +++++++
 .../boards/freescale-mx51-pdk/env/init/hostname    |    8 --------
 .../freescale-mx6-sabrelite/env/init/bootargs-base |    8 --------
 .../freescale-mx6-sabrelite/env/init/config-board  |    7 +++++++
 .../freescale-mx6-sabrelite/env/init/hostname      |    8 --------
 arch/arm/boards/karo-tx53/env/init/bootargs-base   |    8 --------
 arch/arm/boards/karo-tx53/env/init/config-board    |    7 +++++++
 arch/arm/boards/karo-tx53/env/init/hostname        |    8 --------
 arch/arm/boards/pcm038/env/init/bootargs-base      |    8 --------
 arch/arm/boards/pcm038/env/init/config-board       |    7 +++++++
 arch/arm/boards/pcm038/env/init/hostname           |    8 --------
 arch/arm/boards/tqma53/env/init/bootargs-base      |    8 --------
 arch/arm/boards/tqma53/env/init/config-board       |    7 +++++++
 arch/arm/boards/tqma53/env/init/hostname           |    8 --------
 defaultenv-2/base/bin/init                         |   10 ++++++++--
 defaultenv-2/base/config                           |   21 ++++++++++++++++++++
 defaultenv-2/base/init/bootargs-base               |    8 --------
 defaultenv-2/base/init/general                     |   15 --------------
 defaultenv-2/base/init/hostname                    |    8 --------
 defaultenv-2/base/init/prompt                      |    7 -------
 defaultenv-2/menu/menu/mainmenu                    |    1 +
 25 files changed, 72 insertions(+), 136 deletions(-)
 delete mode 100644 arch/arm/boards/crystalfontz-cfa10036/env/init/bootargs-base
 create mode 100644 arch/arm/boards/crystalfontz-cfa10036/env/init/config-board
 delete mode 100644 arch/arm/boards/crystalfontz-cfa10036/env/init/hostname
 delete mode 100644 arch/arm/boards/freescale-mx51-pdk/env/init/bootargs-base
 create mode 100644 arch/arm/boards/freescale-mx51-pdk/env/init/config-board
 delete mode 100644 arch/arm/boards/freescale-mx51-pdk/env/init/hostname
 delete mode 100644 arch/arm/boards/freescale-mx6-sabrelite/env/init/bootargs-base
 create mode 100644 arch/arm/boards/freescale-mx6-sabrelite/env/init/config-board
 delete mode 100644 arch/arm/boards/freescale-mx6-sabrelite/env/init/hostname
 delete mode 100644 arch/arm/boards/karo-tx53/env/init/bootargs-base
 create mode 100644 arch/arm/boards/karo-tx53/env/init/config-board
 delete mode 100644 arch/arm/boards/karo-tx53/env/init/hostname
 delete mode 100644 arch/arm/boards/pcm038/env/init/bootargs-base
 create mode 100644 arch/arm/boards/pcm038/env/init/config-board
 delete mode 100644 arch/arm/boards/pcm038/env/init/hostname
 delete mode 100644 arch/arm/boards/tqma53/env/init/bootargs-base
 create mode 100644 arch/arm/boards/tqma53/env/init/config-board
 delete mode 100644 arch/arm/boards/tqma53/env/init/hostname
 create mode 100644 defaultenv-2/base/config
 delete mode 100644 defaultenv-2/base/init/bootargs-base
 delete mode 100644 defaultenv-2/base/init/general
 delete mode 100644 defaultenv-2/base/init/hostname
 delete mode 100644 defaultenv-2/base/init/prompt

diff --git a/arch/arm/boards/crystalfontz-cfa10036/env/init/bootargs-base b/arch/arm/boards/crystalfontz-cfa10036/env/init/bootargs-base
deleted file mode 100644
index 4dda550..0000000
--- a/arch/arm/boards/crystalfontz-cfa10036/env/init/bootargs-base
+++ /dev/null
@@ -1,8 +0,0 @@
-#!/bin/sh
-
-if [ "$1" = menu ]; then
-	init-menu-add-entry "$0" "Base bootargs"
-	exit
-fi
-
-global.linux.bootargs.base="console=ttyAMA0,115200"
diff --git a/arch/arm/boards/crystalfontz-cfa10036/env/init/config-board b/arch/arm/boards/crystalfontz-cfa10036/env/init/config-board
new file mode 100644
index 0000000..b99866e
--- /dev/null
+++ b/arch/arm/boards/crystalfontz-cfa10036/env/init/config-board
@@ -0,0 +1,7 @@
+#!/bin/sh
+
+# board defaults, do not change in running system. Change /env/config
+# instead
+
+global.hostname=cfa10036
+global.linux.bootargs.base="console=ttyAMA0,115200"
diff --git a/arch/arm/boards/crystalfontz-cfa10036/env/init/hostname b/arch/arm/boards/crystalfontz-cfa10036/env/init/hostname
deleted file mode 100644
index 1dbe346..0000000
--- a/arch/arm/boards/crystalfontz-cfa10036/env/init/hostname
+++ /dev/null
@@ -1,8 +0,0 @@
-#!/bin/sh
-
-if [ "$1" = menu ]; then
-	init-menu-add-entry "$0" "hostname"
-	exit
-fi
-
-global.hostname=cfa10036
diff --git a/arch/arm/boards/freescale-mx51-pdk/env/init/bootargs-base b/arch/arm/boards/freescale-mx51-pdk/env/init/bootargs-base
deleted file mode 100644
index d869754..0000000
--- a/arch/arm/boards/freescale-mx51-pdk/env/init/bootargs-base
+++ /dev/null
@@ -1,8 +0,0 @@
-#!/bin/sh
-
-if [ "$1" = menu ]; then
-	init-menu-add-entry "$0" "Base bootargs"
-	exit
-fi
-
-global.linux.bootargs.base="console=ttymxc0,115200"
diff --git a/arch/arm/boards/freescale-mx51-pdk/env/init/config-board b/arch/arm/boards/freescale-mx51-pdk/env/init/config-board
new file mode 100644
index 0000000..cfc483e
--- /dev/null
+++ b/arch/arm/boards/freescale-mx51-pdk/env/init/config-board
@@ -0,0 +1,7 @@
+#!/bin/sh
+
+# board defaults, do not change in running system. Change /env/config
+# instead
+
+global.hostname=babbage
+global.linux.bootargs.base="console=ttymxc0,115200"
diff --git a/arch/arm/boards/freescale-mx51-pdk/env/init/hostname b/arch/arm/boards/freescale-mx51-pdk/env/init/hostname
deleted file mode 100644
index 4c78902..0000000
--- a/arch/arm/boards/freescale-mx51-pdk/env/init/hostname
+++ /dev/null
@@ -1,8 +0,0 @@
-#!/bin/sh
-
-if [ "$1" = menu ]; then
-	init-menu-add-entry "$0" "hostname"
-	exit
-fi
-
-global.hostname=babbage
diff --git a/arch/arm/boards/freescale-mx6-sabrelite/env/init/bootargs-base b/arch/arm/boards/freescale-mx6-sabrelite/env/init/bootargs-base
deleted file mode 100644
index 2c51feb..0000000
--- a/arch/arm/boards/freescale-mx6-sabrelite/env/init/bootargs-base
+++ /dev/null
@@ -1,8 +0,0 @@
-#!/bin/sh
-
-if [ "$1" = menu ]; then
-	init-menu-add-entry "$0" "Base bootargs"
-	exit
-fi
-
-global.linux.bootargs.base="console=ttymxc1,115200"
diff --git a/arch/arm/boards/freescale-mx6-sabrelite/env/init/config-board b/arch/arm/boards/freescale-mx6-sabrelite/env/init/config-board
new file mode 100644
index 0000000..e39e4b6
--- /dev/null
+++ b/arch/arm/boards/freescale-mx6-sabrelite/env/init/config-board
@@ -0,0 +1,7 @@
+#!/bin/sh
+
+# board defaults, do not change in running system. Change /env/config
+# instead
+
+global.hostname=SabreLite
+global.linux.bootargs.base="console=ttymxc1,115200"
diff --git a/arch/arm/boards/freescale-mx6-sabrelite/env/init/hostname b/arch/arm/boards/freescale-mx6-sabrelite/env/init/hostname
deleted file mode 100644
index db5b2b2..0000000
--- a/arch/arm/boards/freescale-mx6-sabrelite/env/init/hostname
+++ /dev/null
@@ -1,8 +0,0 @@
-#!/bin/sh
-
-if [ "$1" = menu ]; then
-	init-menu-add-entry "$0" "hostname"
-	exit
-fi
-
-global.hostname=SabreLite
diff --git a/arch/arm/boards/karo-tx53/env/init/bootargs-base b/arch/arm/boards/karo-tx53/env/init/bootargs-base
deleted file mode 100644
index d869754..0000000
--- a/arch/arm/boards/karo-tx53/env/init/bootargs-base
+++ /dev/null
@@ -1,8 +0,0 @@
-#!/bin/sh
-
-if [ "$1" = menu ]; then
-	init-menu-add-entry "$0" "Base bootargs"
-	exit
-fi
-
-global.linux.bootargs.base="console=ttymxc0,115200"
diff --git a/arch/arm/boards/karo-tx53/env/init/config-board b/arch/arm/boards/karo-tx53/env/init/config-board
new file mode 100644
index 0000000..3ebfac6
--- /dev/null
+++ b/arch/arm/boards/karo-tx53/env/init/config-board
@@ -0,0 +1,7 @@
+#!/bin/sh
+
+# board defaults, do not change in running system. Change /env/config
+# instead
+
+global.hostname=tx53
+global.linux.bootargs.base="console=ttymxc0,115200"
diff --git a/arch/arm/boards/karo-tx53/env/init/hostname b/arch/arm/boards/karo-tx53/env/init/hostname
deleted file mode 100644
index 2de9130..0000000
--- a/arch/arm/boards/karo-tx53/env/init/hostname
+++ /dev/null
@@ -1,8 +0,0 @@
-#!/bin/sh
-
-if [ "$1" = menu ]; then
-	init-menu-add-entry "$0" "hostname"
-	exit
-fi
-
-global.hostname=tx53
diff --git a/arch/arm/boards/pcm038/env/init/bootargs-base b/arch/arm/boards/pcm038/env/init/bootargs-base
deleted file mode 100644
index d869754..0000000
--- a/arch/arm/boards/pcm038/env/init/bootargs-base
+++ /dev/null
@@ -1,8 +0,0 @@
-#!/bin/sh
-
-if [ "$1" = menu ]; then
-	init-menu-add-entry "$0" "Base bootargs"
-	exit
-fi
-
-global.linux.bootargs.base="console=ttymxc0,115200"
diff --git a/arch/arm/boards/pcm038/env/init/config-board b/arch/arm/boards/pcm038/env/init/config-board
new file mode 100644
index 0000000..93fd41b
--- /dev/null
+++ b/arch/arm/boards/pcm038/env/init/config-board
@@ -0,0 +1,7 @@
+#!/bin/sh
+
+# board defaults, do not change in running system. Change /env/config
+# instead
+
+global.hostname=pcm038
+global.linux.bootargs.base="console=ttymxc0,115200"
diff --git a/arch/arm/boards/pcm038/env/init/hostname b/arch/arm/boards/pcm038/env/init/hostname
deleted file mode 100644
index 09c2f08..0000000
--- a/arch/arm/boards/pcm038/env/init/hostname
+++ /dev/null
@@ -1,8 +0,0 @@
-#!/bin/sh
-
-if [ "$1" = menu ]; then
-	init-menu-add-entry "$0" "hostname"
-	exit
-fi
-
-global.hostname=pcm038
diff --git a/arch/arm/boards/tqma53/env/init/bootargs-base b/arch/arm/boards/tqma53/env/init/bootargs-base
deleted file mode 100644
index d869754..0000000
--- a/arch/arm/boards/tqma53/env/init/bootargs-base
+++ /dev/null
@@ -1,8 +0,0 @@
-#!/bin/sh
-
-if [ "$1" = menu ]; then
-	init-menu-add-entry "$0" "Base bootargs"
-	exit
-fi
-
-global.linux.bootargs.base="console=ttymxc0,115200"
diff --git a/arch/arm/boards/tqma53/env/init/config-board b/arch/arm/boards/tqma53/env/init/config-board
new file mode 100644
index 0000000..4776438
--- /dev/null
+++ b/arch/arm/boards/tqma53/env/init/config-board
@@ -0,0 +1,7 @@
+#!/bin/sh
+
+# board defaults, do not change in running system. Change /env/config
+# instead
+
+global.hostname=tqma53
+global.linux.bootargs.base="console=ttymxc0,115200"
diff --git a/arch/arm/boards/tqma53/env/init/hostname b/arch/arm/boards/tqma53/env/init/hostname
deleted file mode 100644
index c56ac6a..0000000
--- a/arch/arm/boards/tqma53/env/init/hostname
+++ /dev/null
@@ -1,8 +0,0 @@
-#!/bin/sh
-
-if [ "$1" = menu ]; then
-	init-menu-add-entry "$0" "hostname"
-	exit
-fi
-
-global.hostname=tqma53
diff --git a/defaultenv-2/base/bin/init b/defaultenv-2/base/bin/init
index 8e8871d..bb4abcd 100644
--- a/defaultenv-2/base/bin/init
+++ b/defaultenv-2/base/bin/init
@@ -8,12 +8,18 @@ global autoboot_timeout=3
 global boot.default=net
 global allow_color=true
 global linux.bootargs.base
-#linux.bootargs.dyn.* will be clearer at the beginning of boot
+#linux.bootargs.dyn.* will be cleared at the beginning of boot
 global linux.bootargs.dyn.ip
 global linux.bootargs.dyn.root
 global editcmd=sedit
 
-/env/init/general
+/env/config
+
+if [ ${global.allow_color} = "true" ]; then
+        export PS1="\e[1;32mbarebox@\e[1;36m\h:\w\e[0m "
+else
+        export PS1="barebox@\h:\w "
+fi
 
 if [ -e /env/menu ]; then
 	echo -e -n "\nHit m for menu or any other key to stop autoboot: "
diff --git a/defaultenv-2/base/config b/defaultenv-2/base/config
new file mode 100644
index 0000000..189e5a6
--- /dev/null
+++ b/defaultenv-2/base/config
@@ -0,0 +1,21 @@
+#!/bin/sh
+
+# change network settings in /env/network/eth0
+# change mtd partition settings and automountpoints in /env/init/*
+
+#global.hostname=
+
+# set to false if you do not want to have colors
+global.allow_color=true
+
+# user (used for network filenames)
+global.user=none
+
+# timeout in seconds before the default boot entry is started
+global.autoboot_timeout=3
+
+# default boot entry (one of /env/boot/*)
+global.boot.default=net
+
+# base bootargs
+#global.linux.bootargs.base="console=ttyS0,115200"
diff --git a/defaultenv-2/base/init/bootargs-base b/defaultenv-2/base/init/bootargs-base
deleted file mode 100644
index 8e588ad..0000000
--- a/defaultenv-2/base/init/bootargs-base
+++ /dev/null
@@ -1,8 +0,0 @@
-#!/bin/sh
-
-if [ "$1" = menu ]; then
-	init-menu-add-entry "$0" "Base bootargs"
-	exit
-fi
-
-global.linux.bootargs.base="console=ttyS0,115200"
diff --git a/defaultenv-2/base/init/general b/defaultenv-2/base/init/general
deleted file mode 100644
index 1de06ce..0000000
--- a/defaultenv-2/base/init/general
+++ /dev/null
@@ -1,15 +0,0 @@
-#!/bin/sh
-
-if [ "$1" = menu ]; then
-	init-menu-add-entry "$0" "general config settings"
-	exit
-fi
-
-# user (used for network filenames)
-global.user=none
-
-# timeout in seconds before the default boot entry is started
-global.autoboot_timeout=3
-
-# default boot entry (one of /env/boot/*)
-global.boot.default=net
diff --git a/defaultenv-2/base/init/hostname b/defaultenv-2/base/init/hostname
deleted file mode 100644
index 57a2c94..0000000
--- a/defaultenv-2/base/init/hostname
+++ /dev/null
@@ -1,8 +0,0 @@
-#!/bin/sh
-
-if [ "$1" = menu ]; then
-	init-menu-add-entry "$0" "hostname"
-	exit
-fi
-
-global.hostname=generic
diff --git a/defaultenv-2/base/init/prompt b/defaultenv-2/base/init/prompt
deleted file mode 100644
index 11dce9f..0000000
--- a/defaultenv-2/base/init/prompt
+++ /dev/null
@@ -1,7 +0,0 @@
-#!/bin/sh
-
-if [ ${global.allow_color} = "true" ]; then
-	export PS1="\e[1;32mbarebox@\e[1;36m\h:\w\e[0m "
-else
-	export PS1="barebox@\h:\w "
-fi
diff --git a/defaultenv-2/menu/menu/mainmenu b/defaultenv-2/menu/menu/mainmenu
index 5bd7027..c74cc9c 100644
--- a/defaultenv-2/menu/menu/mainmenu
+++ b/defaultenv-2/menu/menu/mainmenu
@@ -15,6 +15,7 @@ while true; do
 	boot-entries-collect
 
 	menu -e -a -R -m boot -c "$global.editcmd /env/network/eth0" -d "Network settings"
+	menu -e -a -R -m boot -c "$global.editcmd /env/config" -d "Config settings"
 	menu -e -a -m boot -c "boot-entries-edit" -d "Edit boot entries"
 	menu -e -a -m boot -c "init-entries-edit" -d "Edit init entries"
 	menu -e -a -R -m boot -c "saveenv || echo \"failed to save environment\" && sleep 2" -d "Save settings"
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
