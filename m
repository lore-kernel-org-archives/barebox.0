Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XmMfh-0003B1-Dg
 for barebox@lists.infradead.org; Thu, 06 Nov 2014 13:00:23 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  6 Nov 2014 13:59:38 +0100
Message-Id: <1415278778-20826-12-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1415278778-20826-1-git-send-email-s.hauer@pengutronix.de>
References: <1415278778-20826-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 11/11] defaultenv-2: Make use of nonvolatile variables
To: barebox@lists.infradead.org

This moves the variable assignments previously done in /env/config-board
to non volatile variables in /env/nv/. This makes the settings adjustable
by the user without editing a file.

Most of the changes are simple conversions which for many boards makes
/env/config-board unnecessary. Some boards had some logic to assign
global.boot.default based on the current bootsource. This has been
moved to /env/init/bootsource. An additional check is added to not
overwrite a nv.boot.default should it exist.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/archosg9/env/init/bootsource       |  4 +++
 arch/arm/boards/at91sam9m10ihd/env/config          | 19 --------------
 .../boards/at91sam9m10ihd/env/init/config-board    |  8 ------
 arch/arm/boards/at91sam9m10ihd/env/nv/boot.default |  1 +
 arch/arm/boards/at91sam9m10ihd/env/nv/hostname     |  1 +
 .../at91sam9m10ihd/env/nv/linux.bootargs.base      |  1 +
 .../boards/avnet-zedboard/env/init/config-board    |  6 -----
 .../avnet-zedboard/env/init/nv/linux.bootargs.base |  1 +
 arch/arm/boards/beagle/env/config-board            |  6 -----
 arch/arm/boards/beagle/env/nv/linux.bootargs.base  |  1 +
 arch/arm/boards/ccxmx51/env/config-board           | 10 --------
 arch/arm/boards/ccxmx51/env/nv/autoboot_timeout    |  1 +
 arch/arm/boards/ccxmx51/env/nv/boot.default        |  1 +
 arch/arm/boards/ccxmx51/env/nv/linux.bootargs.base |  1 +
 arch/arm/boards/clep7212/env/config-board          | 12 ---------
 arch/arm/boards/clep7212/env/init/bootsource       |  9 +++++++
 arch/arm/boards/clep7212/env/nv/autoboot_timeout   |  1 +
 .../arm/boards/clep7212/env/nv/linux.bootargs.base |  1 +
 .../boards/crystalfontz-cfa10036/env/config-board  |  6 -----
 .../boards/crystalfontz-cfa10036/env/init/general  | 12 ---------
 .../crystalfontz-cfa10036/env/nv/boot.default      |  1 +
 .../env/nv/linux.bootargs.base                     |  1 +
 arch/arm/boards/efika-mx-smartbook/env/config      | 29 ----------------------
 .../boards/efika-mx-smartbook/env/init/bootsource  |  4 +++
 .../efika-mx-smartbook/env/nv/autoboot_timeout     |  1 +
 .../efika-mx-smartbook/env/nv/linux.bootargs.base  |  1 +
 .../efika-mx-smartbook/env/nv/linux.bootargs.lpj   |  1 +
 .../efika-mx-smartbook/env/nv/linux.bootargs.quiet |  1 +
 .../boards/embedsky-e9/defaultenv-e9/config-board  |  7 ------
 .../embedsky-e9/defaultenv-e9/init/bootsource      |  7 ++++++
 .../boards/embedsky-e9/defaultenv-e9/nv/hostname   |  1 +
 arch/arm/boards/gk802/env/config-board             |  6 -----
 arch/arm/boards/guf-vincell/env/init/config-board  |  7 ------
 arch/arm/boards/guf-vincell/env/init/nv/hostname   |  1 +
 .../guf-vincell/env/init/nv/linux.bootargs.base    |  1 +
 arch/arm/boards/highbank/env/config-board          | 10 --------
 arch/arm/boards/highbank/env/nv/boot.default       |  1 +
 arch/arm/boards/highbank/env/nv/bootargs.base      |  1 +
 arch/arm/boards/highbank/env/nv/bootm.oftree       |  1 +
 arch/arm/boards/mx31moboard/env/config-board       |  7 ------
 arch/arm/boards/mx31moboard/env/nv/boot.default    |  1 +
 .../boards/mx31moboard/env/nv/linux.bootargs.base  |  1 +
 arch/arm/boards/panda/env/config-board             |  6 -----
 arch/arm/boards/panda/env/nv/linux.bootargs.base   |  1 +
 .../defaultenv-phycard-imx6/config-board           |  9 -------
 .../defaultenv-phycard-imx6/nv/boot.default        |  1 +
 .../defaultenv-phycard-imx6/nv/bootargs.base       |  1 +
 .../defaultenv-phycard-imx6/nv/hostname            |  1 +
 .../defaultenv-phycore-am335x/config-board         | 17 -------------
 .../defaultenv-phycore-am335x/init/bootsource      | 15 +++++++++++
 .../defaultenv-phycore-am335x/init/init-usbserial  |  4 +++
 .../defaultenv-phycore-am335x/nv/bootargs.base     |  1 +
 .../defaultenv-phycore-am335x/nv/hostname          |  1 +
 .../boards/phytec-phycore-imx31/env/config-board   |  6 -----
 .../env/nv/linux.bootargs.base                     |  1 +
 .../boards/phytec-phycore-imx35/env/config-board   |  6 -----
 .../env/nv/linux.bootargs.base                     |  1 +
 .../defaultenv-phyflex-am335x/config-board         | 17 -------------
 .../defaultenv-phyflex-am335x/init/bootsource      | 15 +++++++++++
 .../defaultenv-phyflex-am335x/nv/hostname          |  1 +
 .../nv/linux.bootargs.base                         |  1 +
 .../defaultenv-phyflex-imx6/config-board           |  9 -------
 .../defaultenv-phyflex-imx6/nv/boot.default        |  1 +
 .../defaultenv-phyflex-imx6/nv/hostname            |  1 +
 .../defaultenv-phyflex-imx6/nv/linux.bootargs.base |  1 +
 arch/arm/boards/radxa-rock/env/config-board        |  6 -----
 .../boards/radxa-rock/env/nv/linux.bootargs.base   |  1 +
 arch/arm/boards/telit-evk-pro3/env/config-board    |  8 ------
 arch/arm/boards/telit-evk-pro3/env/nv/boot.default |  1 +
 .../arm/boards/telit-evk-pro3/env/nv/bootargs.base |  1 +
 arch/arm/boards/telit-evk-pro3/env/nv/hostname     |  1 +
 common/Kconfig                                     |  1 +
 defaultenv/defaultenv-2-base/bin/init              |  3 +++
 defaultenv/defaultenv-2-base/config                | 22 ++--------------
 defaultenv/defaultenv-2-base/nv/allow_color        |  1 +
 defaultenv/defaultenv-2-base/nv/autoboot_timeout   |  1 +
 defaultenv/defaultenv-2-base/nv/user               |  1 +
 77 files changed, 108 insertions(+), 249 deletions(-)
 delete mode 100644 arch/arm/boards/at91sam9m10ihd/env/config
 delete mode 100644 arch/arm/boards/at91sam9m10ihd/env/init/config-board
 create mode 100644 arch/arm/boards/at91sam9m10ihd/env/nv/boot.default
 create mode 100644 arch/arm/boards/at91sam9m10ihd/env/nv/hostname
 create mode 100644 arch/arm/boards/at91sam9m10ihd/env/nv/linux.bootargs.base
 delete mode 100644 arch/arm/boards/avnet-zedboard/env/init/config-board
 create mode 100644 arch/arm/boards/avnet-zedboard/env/init/nv/linux.bootargs.base
 delete mode 100644 arch/arm/boards/beagle/env/config-board
 create mode 100644 arch/arm/boards/beagle/env/nv/linux.bootargs.base
 delete mode 100644 arch/arm/boards/ccxmx51/env/config-board
 create mode 100644 arch/arm/boards/ccxmx51/env/nv/autoboot_timeout
 create mode 100644 arch/arm/boards/ccxmx51/env/nv/boot.default
 create mode 100644 arch/arm/boards/ccxmx51/env/nv/linux.bootargs.base
 delete mode 100644 arch/arm/boards/clep7212/env/config-board
 create mode 100644 arch/arm/boards/clep7212/env/init/bootsource
 create mode 100644 arch/arm/boards/clep7212/env/nv/autoboot_timeout
 create mode 100644 arch/arm/boards/clep7212/env/nv/linux.bootargs.base
 delete mode 100644 arch/arm/boards/crystalfontz-cfa10036/env/config-board
 delete mode 100644 arch/arm/boards/crystalfontz-cfa10036/env/init/general
 create mode 100644 arch/arm/boards/crystalfontz-cfa10036/env/nv/boot.default
 create mode 100644 arch/arm/boards/crystalfontz-cfa10036/env/nv/linux.bootargs.base
 delete mode 100644 arch/arm/boards/efika-mx-smartbook/env/config
 create mode 100644 arch/arm/boards/efika-mx-smartbook/env/nv/autoboot_timeout
 create mode 100644 arch/arm/boards/efika-mx-smartbook/env/nv/linux.bootargs.base
 create mode 100644 arch/arm/boards/efika-mx-smartbook/env/nv/linux.bootargs.lpj
 create mode 100644 arch/arm/boards/efika-mx-smartbook/env/nv/linux.bootargs.quiet
 delete mode 100644 arch/arm/boards/embedsky-e9/defaultenv-e9/config-board
 create mode 100644 arch/arm/boards/embedsky-e9/defaultenv-e9/init/bootsource
 create mode 100644 arch/arm/boards/embedsky-e9/defaultenv-e9/nv/hostname
 delete mode 100644 arch/arm/boards/gk802/env/config-board
 delete mode 100644 arch/arm/boards/guf-vincell/env/init/config-board
 create mode 100644 arch/arm/boards/guf-vincell/env/init/nv/hostname
 create mode 100644 arch/arm/boards/guf-vincell/env/init/nv/linux.bootargs.base
 delete mode 100644 arch/arm/boards/highbank/env/config-board
 create mode 100644 arch/arm/boards/highbank/env/nv/boot.default
 create mode 100644 arch/arm/boards/highbank/env/nv/bootargs.base
 create mode 100644 arch/arm/boards/highbank/env/nv/bootm.oftree
 delete mode 100644 arch/arm/boards/mx31moboard/env/config-board
 create mode 100644 arch/arm/boards/mx31moboard/env/nv/boot.default
 create mode 100644 arch/arm/boards/mx31moboard/env/nv/linux.bootargs.base
 delete mode 100644 arch/arm/boards/panda/env/config-board
 create mode 100644 arch/arm/boards/panda/env/nv/linux.bootargs.base
 delete mode 100644 arch/arm/boards/phytec-phycard-imx6/defaultenv-phycard-imx6/config-board
 create mode 100644 arch/arm/boards/phytec-phycard-imx6/defaultenv-phycard-imx6/nv/boot.default
 create mode 100644 arch/arm/boards/phytec-phycard-imx6/defaultenv-phycard-imx6/nv/bootargs.base
 create mode 100644 arch/arm/boards/phytec-phycard-imx6/defaultenv-phycard-imx6/nv/hostname
 delete mode 100644 arch/arm/boards/phytec-phycore-am335x/defaultenv-phycore-am335x/config-board
 create mode 100644 arch/arm/boards/phytec-phycore-am335x/defaultenv-phycore-am335x/init/bootsource
 create mode 100644 arch/arm/boards/phytec-phycore-am335x/defaultenv-phycore-am335x/init/init-usbserial
 create mode 100644 arch/arm/boards/phytec-phycore-am335x/defaultenv-phycore-am335x/nv/bootargs.base
 create mode 100644 arch/arm/boards/phytec-phycore-am335x/defaultenv-phycore-am335x/nv/hostname
 delete mode 100644 arch/arm/boards/phytec-phycore-imx31/env/config-board
 create mode 100644 arch/arm/boards/phytec-phycore-imx31/env/nv/linux.bootargs.base
 delete mode 100644 arch/arm/boards/phytec-phycore-imx35/env/config-board
 create mode 100644 arch/arm/boards/phytec-phycore-imx35/env/nv/linux.bootargs.base
 delete mode 100644 arch/arm/boards/phytec-phyflex-am335x/defaultenv-phyflex-am335x/config-board
 create mode 100644 arch/arm/boards/phytec-phyflex-am335x/defaultenv-phyflex-am335x/init/bootsource
 create mode 100644 arch/arm/boards/phytec-phyflex-am335x/defaultenv-phyflex-am335x/nv/hostname
 create mode 100644 arch/arm/boards/phytec-phyflex-am335x/defaultenv-phyflex-am335x/nv/linux.bootargs.base
 delete mode 100644 arch/arm/boards/phytec-phyflex-imx6/defaultenv-phyflex-imx6/config-board
 create mode 100644 arch/arm/boards/phytec-phyflex-imx6/defaultenv-phyflex-imx6/nv/boot.default
 create mode 100644 arch/arm/boards/phytec-phyflex-imx6/defaultenv-phyflex-imx6/nv/hostname
 create mode 100644 arch/arm/boards/phytec-phyflex-imx6/defaultenv-phyflex-imx6/nv/linux.bootargs.base
 delete mode 100644 arch/arm/boards/radxa-rock/env/config-board
 create mode 100644 arch/arm/boards/radxa-rock/env/nv/linux.bootargs.base
 delete mode 100644 arch/arm/boards/telit-evk-pro3/env/config-board
 create mode 100644 arch/arm/boards/telit-evk-pro3/env/nv/boot.default
 create mode 100644 arch/arm/boards/telit-evk-pro3/env/nv/bootargs.base
 create mode 100644 arch/arm/boards/telit-evk-pro3/env/nv/hostname
 create mode 100644 defaultenv/defaultenv-2-base/nv/allow_color
 create mode 100644 defaultenv/defaultenv-2-base/nv/autoboot_timeout
 create mode 100644 defaultenv/defaultenv-2-base/nv/user

diff --git a/arch/arm/boards/archosg9/env/init/bootsource b/arch/arm/boards/archosg9/env/init/bootsource
index b3df447..6145a76 100644
--- a/arch/arm/boards/archosg9/env/init/bootsource
+++ b/arch/arm/boards/archosg9/env/init/bootsource
@@ -1,5 +1,9 @@
 #!/bin/sh
 
+if [ -n "$nv.boot.default" ]; then
+	exit
+fi
+
 if [ -f /mnt/sd/zImage ]; then
 	global.boot.default=sd-card-linux
 elif [ -f /mnt/sd/android ]; then
diff --git a/arch/arm/boards/at91sam9m10ihd/env/config b/arch/arm/boards/at91sam9m10ihd/env/config
deleted file mode 100644
index db2713c..0000000
--- a/arch/arm/boards/at91sam9m10ihd/env/config
+++ /dev/null
@@ -1,19 +0,0 @@
-#!/bin/sh
-
-# change network settings in /env/network/eth0
-# change mtd partition settings and automountpoints in /env/init/*
-
-# set to false if you do not want to have colors
-global.allow_color=true
-
-# user (used for network filenames)
-global.user=none
-
-# timeout in seconds before the default boot entry is started
-global.autoboot_timeout=3
-
-# default boot entry (one of /env/boot/*)
-global.boot.default=android
-
-# base bootargs
-#global.linux.bootargs.base="console=ttyS0,115200"
diff --git a/arch/arm/boards/at91sam9m10ihd/env/init/config-board b/arch/arm/boards/at91sam9m10ihd/env/init/config-board
deleted file mode 100644
index 32c1071..0000000
--- a/arch/arm/boards/at91sam9m10ihd/env/init/config-board
+++ /dev/null
@@ -1,8 +0,0 @@
-#!/bin/sh
-
-# board defaults, do not change in running system. Change /env/config
-# instead
-
-global.hostname=at91sam9m10ihd
-global.linux.bootargs.base="console=ttyS0,115200"
-global.boot.default=android
diff --git a/arch/arm/boards/at91sam9m10ihd/env/nv/boot.default b/arch/arm/boards/at91sam9m10ihd/env/nv/boot.default
new file mode 100644
index 0000000..7473a25
--- /dev/null
+++ b/arch/arm/boards/at91sam9m10ihd/env/nv/boot.default
@@ -0,0 +1 @@
+android
diff --git a/arch/arm/boards/at91sam9m10ihd/env/nv/hostname b/arch/arm/boards/at91sam9m10ihd/env/nv/hostname
new file mode 100644
index 0000000..9361c5a
--- /dev/null
+++ b/arch/arm/boards/at91sam9m10ihd/env/nv/hostname
@@ -0,0 +1 @@
+at91sam9m10ihd
diff --git a/arch/arm/boards/at91sam9m10ihd/env/nv/linux.bootargs.base b/arch/arm/boards/at91sam9m10ihd/env/nv/linux.bootargs.base
new file mode 100644
index 0000000..476b1fb
--- /dev/null
+++ b/arch/arm/boards/at91sam9m10ihd/env/nv/linux.bootargs.base
@@ -0,0 +1 @@
+console=ttyS0,115200
diff --git a/arch/arm/boards/avnet-zedboard/env/init/config-board b/arch/arm/boards/avnet-zedboard/env/init/config-board
deleted file mode 100644
index f3032a4..0000000
--- a/arch/arm/boards/avnet-zedboard/env/init/config-board
+++ /dev/null
@@ -1,6 +0,0 @@
-#!/bin/sh
-
-# board defaults, do not change in running system. Change /env/config
-# instead
-
-global.linux.bootargs.base="console=ttyPS1,115200"
diff --git a/arch/arm/boards/avnet-zedboard/env/init/nv/linux.bootargs.base b/arch/arm/boards/avnet-zedboard/env/init/nv/linux.bootargs.base
new file mode 100644
index 0000000..6c9f9da
--- /dev/null
+++ b/arch/arm/boards/avnet-zedboard/env/init/nv/linux.bootargs.base
@@ -0,0 +1 @@
+console=ttyPS1,115200
diff --git a/arch/arm/boards/beagle/env/config-board b/arch/arm/boards/beagle/env/config-board
deleted file mode 100644
index dcabf4c..0000000
--- a/arch/arm/boards/beagle/env/config-board
+++ /dev/null
@@ -1,6 +0,0 @@
-#!/bin/sh
-
-# board defaults, do not change in running system. Change /env/config
-# instead
-
-global.linux.bootargs.base="console=ttyO2,115200"
diff --git a/arch/arm/boards/beagle/env/nv/linux.bootargs.base b/arch/arm/boards/beagle/env/nv/linux.bootargs.base
new file mode 100644
index 0000000..5fef726
--- /dev/null
+++ b/arch/arm/boards/beagle/env/nv/linux.bootargs.base
@@ -0,0 +1 @@
+console=ttyO2,115200
diff --git a/arch/arm/boards/ccxmx51/env/config-board b/arch/arm/boards/ccxmx51/env/config-board
deleted file mode 100644
index 1405344..0000000
--- a/arch/arm/boards/ccxmx51/env/config-board
+++ /dev/null
@@ -1,10 +0,0 @@
-#!/bin/sh
-
-# Timeout in seconds before the default boot entry is started
-global.autoboot_timeout=2
-
-# Default boot entry (one of /env/boot/*)
-global.boot.default=nand
-
-# Board bootargs
-global.linux.bootargs.base="earlyprintk console=ttymxc0,115200n8"
diff --git a/arch/arm/boards/ccxmx51/env/nv/autoboot_timeout b/arch/arm/boards/ccxmx51/env/nv/autoboot_timeout
new file mode 100644
index 0000000..0cfbf08
--- /dev/null
+++ b/arch/arm/boards/ccxmx51/env/nv/autoboot_timeout
@@ -0,0 +1 @@
+2
diff --git a/arch/arm/boards/ccxmx51/env/nv/boot.default b/arch/arm/boards/ccxmx51/env/nv/boot.default
new file mode 100644
index 0000000..026a25c
--- /dev/null
+++ b/arch/arm/boards/ccxmx51/env/nv/boot.default
@@ -0,0 +1 @@
+nand
diff --git a/arch/arm/boards/ccxmx51/env/nv/linux.bootargs.base b/arch/arm/boards/ccxmx51/env/nv/linux.bootargs.base
new file mode 100644
index 0000000..d83eb94
--- /dev/null
+++ b/arch/arm/boards/ccxmx51/env/nv/linux.bootargs.base
@@ -0,0 +1 @@
+earlyprintk console=ttymxc0,115200n8
diff --git a/arch/arm/boards/clep7212/env/config-board b/arch/arm/boards/clep7212/env/config-board
deleted file mode 100644
index f7a8f60..0000000
--- a/arch/arm/boards/clep7212/env/config-board
+++ /dev/null
@@ -1,12 +0,0 @@
-#!/bin/sh
-
-# Timeout in seconds before the default boot entry is started
-global.autoboot_timeout=2
-
-# Default boot entry (one of /env/boot/*)
-if [ -e /dev/nor0 ]; then
-	global.boot.default=nor
-fi
-
-# Board bootargs
-global.linux.bootargs.base="earlyprintk console=ttyCL0,57600n8"
diff --git a/arch/arm/boards/clep7212/env/init/bootsource b/arch/arm/boards/clep7212/env/init/bootsource
new file mode 100644
index 0000000..2f09c0c
--- /dev/null
+++ b/arch/arm/boards/clep7212/env/init/bootsource
@@ -0,0 +1,9 @@
+#!/bin/sh
+
+if [ -n "$nv.boot.default" ]; then
+	exit
+fi
+
+if [ -e /dev/nor0 ]; then
+	global.boot.default=nor
+fi
diff --git a/arch/arm/boards/clep7212/env/nv/autoboot_timeout b/arch/arm/boards/clep7212/env/nv/autoboot_timeout
new file mode 100644
index 0000000..0cfbf08
--- /dev/null
+++ b/arch/arm/boards/clep7212/env/nv/autoboot_timeout
@@ -0,0 +1 @@
+2
diff --git a/arch/arm/boards/clep7212/env/nv/linux.bootargs.base b/arch/arm/boards/clep7212/env/nv/linux.bootargs.base
new file mode 100644
index 0000000..77ea2ec
--- /dev/null
+++ b/arch/arm/boards/clep7212/env/nv/linux.bootargs.base
@@ -0,0 +1 @@
+earlyprintk console=ttyCL0,57600n8
diff --git a/arch/arm/boards/crystalfontz-cfa10036/env/config-board b/arch/arm/boards/crystalfontz-cfa10036/env/config-board
deleted file mode 100644
index fff4caa..0000000
--- a/arch/arm/boards/crystalfontz-cfa10036/env/config-board
+++ /dev/null
@@ -1,6 +0,0 @@
-#!/bin/sh
-
-# board defaults, do not change in running system. Change /env/config
-# instead
-
-global.linux.bootargs.base="console=ttyAMA0,115200"
diff --git a/arch/arm/boards/crystalfontz-cfa10036/env/init/general b/arch/arm/boards/crystalfontz-cfa10036/env/init/general
deleted file mode 100644
index 5cb3a75..0000000
--- a/arch/arm/boards/crystalfontz-cfa10036/env/init/general
+++ /dev/null
@@ -1,12 +0,0 @@
-#!/bin/sh
-
-if [ "$1" = menu ]; then
-	init-menu-add-entry "$0" "general config settings"
-	exit
-fi
-
-# timeout in seconds before the default boot entry is started
-global.autoboot_timeout=3
-
-# default boot entry (one of /env/boot/*)
-global.boot.default=mmc-ext3
diff --git a/arch/arm/boards/crystalfontz-cfa10036/env/nv/boot.default b/arch/arm/boards/crystalfontz-cfa10036/env/nv/boot.default
new file mode 100644
index 0000000..1bbb823
--- /dev/null
+++ b/arch/arm/boards/crystalfontz-cfa10036/env/nv/boot.default
@@ -0,0 +1 @@
+mmc-ext3
diff --git a/arch/arm/boards/crystalfontz-cfa10036/env/nv/linux.bootargs.base b/arch/arm/boards/crystalfontz-cfa10036/env/nv/linux.bootargs.base
new file mode 100644
index 0000000..5b56caf
--- /dev/null
+++ b/arch/arm/boards/crystalfontz-cfa10036/env/nv/linux.bootargs.base
@@ -0,0 +1 @@
+console=ttyAMA0,115200
diff --git a/arch/arm/boards/efika-mx-smartbook/env/config b/arch/arm/boards/efika-mx-smartbook/env/config
deleted file mode 100644
index c63c6a1..0000000
--- a/arch/arm/boards/efika-mx-smartbook/env/config
+++ /dev/null
@@ -1,29 +0,0 @@
-#!/bin/sh
-
-# change network settings in /env/network/eth0
-# change mtd partition settings and automountpoints in /env/init/*
-
-#global.hostname=
-
-# set to false if you do not want to have colors
-global.allow_color=true
-
-# user (used for network filenames)
-global.user=none
-
-# timeout in seconds before the default boot entry is started
-global.autoboot_timeout=1
-
-# default boot entry (one of /env/boot/*)
-# (if not overwritten here, the bootdevice barebox comes from
-# is used)
-#global.boot.default=net
-
-# base bootargs
-global.linux.bootargs.base="console=tty1"
-
-# suitable for 800MHz
-global linux.bootargs.lpj="lpj=3997696"
-
-# speed up booting by being more quiet
-global linux.bootargs.quiet="quiet"
diff --git a/arch/arm/boards/efika-mx-smartbook/env/init/bootsource b/arch/arm/boards/efika-mx-smartbook/env/init/bootsource
index 380e855..eb98a3c 100644
--- a/arch/arm/boards/efika-mx-smartbook/env/init/bootsource
+++ b/arch/arm/boards/efika-mx-smartbook/env/init/bootsource
@@ -1,5 +1,9 @@
 #!/bin/sh
 
+if [ -n "$nv.boot.default" ]; then
+	exit
+fi
+
 # by default pick kernel from MMC card if booting from
 # it, otherwise default to boot from internal harddisk
 
diff --git a/arch/arm/boards/efika-mx-smartbook/env/nv/autoboot_timeout b/arch/arm/boards/efika-mx-smartbook/env/nv/autoboot_timeout
new file mode 100644
index 0000000..d00491f
--- /dev/null
+++ b/arch/arm/boards/efika-mx-smartbook/env/nv/autoboot_timeout
@@ -0,0 +1 @@
+1
diff --git a/arch/arm/boards/efika-mx-smartbook/env/nv/linux.bootargs.base b/arch/arm/boards/efika-mx-smartbook/env/nv/linux.bootargs.base
new file mode 100644
index 0000000..04415e6
--- /dev/null
+++ b/arch/arm/boards/efika-mx-smartbook/env/nv/linux.bootargs.base
@@ -0,0 +1 @@
+console=tty1
diff --git a/arch/arm/boards/efika-mx-smartbook/env/nv/linux.bootargs.lpj b/arch/arm/boards/efika-mx-smartbook/env/nv/linux.bootargs.lpj
new file mode 100644
index 0000000..e5c753e
--- /dev/null
+++ b/arch/arm/boards/efika-mx-smartbook/env/nv/linux.bootargs.lpj
@@ -0,0 +1 @@
+lpj=3997696
diff --git a/arch/arm/boards/efika-mx-smartbook/env/nv/linux.bootargs.quiet b/arch/arm/boards/efika-mx-smartbook/env/nv/linux.bootargs.quiet
new file mode 100644
index 0000000..2448b2c
--- /dev/null
+++ b/arch/arm/boards/efika-mx-smartbook/env/nv/linux.bootargs.quiet
@@ -0,0 +1 @@
+quiet
diff --git a/arch/arm/boards/embedsky-e9/defaultenv-e9/config-board b/arch/arm/boards/embedsky-e9/defaultenv-e9/config-board
deleted file mode 100644
index 6cba769..0000000
--- a/arch/arm/boards/embedsky-e9/defaultenv-e9/config-board
+++ /dev/null
@@ -1,7 +0,0 @@
-#!/bin/sh
-
-# board defaults, do not change in running system. Change /env/config
-# instead
-
-global.hostname=e9
-global.boot.default=$bootsource$bootsource_instance
diff --git a/arch/arm/boards/embedsky-e9/defaultenv-e9/init/bootsource b/arch/arm/boards/embedsky-e9/defaultenv-e9/init/bootsource
new file mode 100644
index 0000000..42a0c5c
--- /dev/null
+++ b/arch/arm/boards/embedsky-e9/defaultenv-e9/init/bootsource
@@ -0,0 +1,7 @@
+#!/bin/sh
+
+if [ -n "$nv.boot.default" ]; then
+	exit
+fi
+
+global.boot.default=$bootsource$bootsource_instance
diff --git a/arch/arm/boards/embedsky-e9/defaultenv-e9/nv/hostname b/arch/arm/boards/embedsky-e9/defaultenv-e9/nv/hostname
new file mode 100644
index 0000000..0c1945a
--- /dev/null
+++ b/arch/arm/boards/embedsky-e9/defaultenv-e9/nv/hostname
@@ -0,0 +1 @@
+e9
diff --git a/arch/arm/boards/gk802/env/config-board b/arch/arm/boards/gk802/env/config-board
deleted file mode 100644
index e25a419..0000000
--- a/arch/arm/boards/gk802/env/config-board
+++ /dev/null
@@ -1,6 +0,0 @@
-#!/bin/sh
-
-# board defaults, do not change in running system. Change /env/config
-# instead
-
-global.linux.bootargs.base="console=ttymxc3,115200"
diff --git a/arch/arm/boards/guf-vincell/env/init/config-board b/arch/arm/boards/guf-vincell/env/init/config-board
deleted file mode 100644
index 77e9fc8..0000000
--- a/arch/arm/boards/guf-vincell/env/init/config-board
+++ /dev/null
@@ -1,7 +0,0 @@
-#!/bin/sh
-
-# board defaults, do not change in running system. Change /env/config
-# instead
-
-global.hostname=vincell
-global.linux.bootargs.base="console=ttymxc0,115200"
diff --git a/arch/arm/boards/guf-vincell/env/init/nv/hostname b/arch/arm/boards/guf-vincell/env/init/nv/hostname
new file mode 100644
index 0000000..922106e
--- /dev/null
+++ b/arch/arm/boards/guf-vincell/env/init/nv/hostname
@@ -0,0 +1 @@
+vincell
diff --git a/arch/arm/boards/guf-vincell/env/init/nv/linux.bootargs.base b/arch/arm/boards/guf-vincell/env/init/nv/linux.bootargs.base
new file mode 100644
index 0000000..d775310
--- /dev/null
+++ b/arch/arm/boards/guf-vincell/env/init/nv/linux.bootargs.base
@@ -0,0 +1 @@
+console=ttymxc0,115200
diff --git a/arch/arm/boards/highbank/env/config-board b/arch/arm/boards/highbank/env/config-board
deleted file mode 100644
index da8fcf6..0000000
--- a/arch/arm/boards/highbank/env/config-board
+++ /dev/null
@@ -1,10 +0,0 @@
-#!/bin/sh
-
-# board defaults, do not change in running system. Change /env/config
-# instead
-
-global.allow_color=true
-global.autoboot_timeout=3
-global.bootm.oftree="/dev/dtb"
-global.linux.bootargs.base="console=ttyAMA0,115200n8 CONSOLE=/dev/ttyAMA0"
-global.boot.default=/env/boot.d
diff --git a/arch/arm/boards/highbank/env/nv/boot.default b/arch/arm/boards/highbank/env/nv/boot.default
new file mode 100644
index 0000000..c47e1b2
--- /dev/null
+++ b/arch/arm/boards/highbank/env/nv/boot.default
@@ -0,0 +1 @@
+/env/boot.d
diff --git a/arch/arm/boards/highbank/env/nv/bootargs.base b/arch/arm/boards/highbank/env/nv/bootargs.base
new file mode 100644
index 0000000..826debe
--- /dev/null
+++ b/arch/arm/boards/highbank/env/nv/bootargs.base
@@ -0,0 +1 @@
+console=ttyAMA0,115200n8 CONSOLE=/dev/ttyAMA0
diff --git a/arch/arm/boards/highbank/env/nv/bootm.oftree b/arch/arm/boards/highbank/env/nv/bootm.oftree
new file mode 100644
index 0000000..c373173
--- /dev/null
+++ b/arch/arm/boards/highbank/env/nv/bootm.oftree
@@ -0,0 +1 @@
+/dev/dtb
diff --git a/arch/arm/boards/mx31moboard/env/config-board b/arch/arm/boards/mx31moboard/env/config-board
deleted file mode 100644
index f67b333..0000000
--- a/arch/arm/boards/mx31moboard/env/config-board
+++ /dev/null
@@ -1,7 +0,0 @@
-#!/bin/sh
-
-# board defaults, do not change in running system. Change /env/config
-# instead
-
-global.boot.default="usbmsd sd nor"
-global.linux.bootargs.base="console=ttymxc0,921600"
diff --git a/arch/arm/boards/mx31moboard/env/nv/boot.default b/arch/arm/boards/mx31moboard/env/nv/boot.default
new file mode 100644
index 0000000..7957ab3
--- /dev/null
+++ b/arch/arm/boards/mx31moboard/env/nv/boot.default
@@ -0,0 +1 @@
+usbmsd sd nor
diff --git a/arch/arm/boards/mx31moboard/env/nv/linux.bootargs.base b/arch/arm/boards/mx31moboard/env/nv/linux.bootargs.base
new file mode 100644
index 0000000..84e488d
--- /dev/null
+++ b/arch/arm/boards/mx31moboard/env/nv/linux.bootargs.base
@@ -0,0 +1 @@
+console=ttymxc0,921600
diff --git a/arch/arm/boards/panda/env/config-board b/arch/arm/boards/panda/env/config-board
deleted file mode 100644
index dcabf4c..0000000
--- a/arch/arm/boards/panda/env/config-board
+++ /dev/null
@@ -1,6 +0,0 @@
-#!/bin/sh
-
-# board defaults, do not change in running system. Change /env/config
-# instead
-
-global.linux.bootargs.base="console=ttyO2,115200"
diff --git a/arch/arm/boards/panda/env/nv/linux.bootargs.base b/arch/arm/boards/panda/env/nv/linux.bootargs.base
new file mode 100644
index 0000000..5fef726
--- /dev/null
+++ b/arch/arm/boards/panda/env/nv/linux.bootargs.base
@@ -0,0 +1 @@
+console=ttyO2,115200
diff --git a/arch/arm/boards/phytec-phycard-imx6/defaultenv-phycard-imx6/config-board b/arch/arm/boards/phytec-phycard-imx6/defaultenv-phycard-imx6/config-board
deleted file mode 100644
index 4d7b37c..0000000
--- a/arch/arm/boards/phytec-phycard-imx6/defaultenv-phycard-imx6/config-board
+++ /dev/null
@@ -1,9 +0,0 @@
-#!/bin/sh
-
-# board defaults, do not change in running system. Change /env/config
-# instead
-
-global.boot.default=nand
-
-global.hostname=phyCARD-i.MX6
-global.linux.bootargs.base="console=ttymxc2,115200"
diff --git a/arch/arm/boards/phytec-phycard-imx6/defaultenv-phycard-imx6/nv/boot.default b/arch/arm/boards/phytec-phycard-imx6/defaultenv-phycard-imx6/nv/boot.default
new file mode 100644
index 0000000..026a25c
--- /dev/null
+++ b/arch/arm/boards/phytec-phycard-imx6/defaultenv-phycard-imx6/nv/boot.default
@@ -0,0 +1 @@
+nand
diff --git a/arch/arm/boards/phytec-phycard-imx6/defaultenv-phycard-imx6/nv/bootargs.base b/arch/arm/boards/phytec-phycard-imx6/defaultenv-phycard-imx6/nv/bootargs.base
new file mode 100644
index 0000000..6b62c99
--- /dev/null
+++ b/arch/arm/boards/phytec-phycard-imx6/defaultenv-phycard-imx6/nv/bootargs.base
@@ -0,0 +1 @@
+console=ttymxc2,115200
diff --git a/arch/arm/boards/phytec-phycard-imx6/defaultenv-phycard-imx6/nv/hostname b/arch/arm/boards/phytec-phycard-imx6/defaultenv-phycard-imx6/nv/hostname
new file mode 100644
index 0000000..47b16cc
--- /dev/null
+++ b/arch/arm/boards/phytec-phycard-imx6/defaultenv-phycard-imx6/nv/hostname
@@ -0,0 +1 @@
+phyCARD-i.MX6
diff --git a/arch/arm/boards/phytec-phycore-am335x/defaultenv-phycore-am335x/config-board b/arch/arm/boards/phytec-phycore-am335x/defaultenv-phycore-am335x/config-board
deleted file mode 100644
index a492ed1..0000000
--- a/arch/arm/boards/phytec-phycore-am335x/defaultenv-phycore-am335x/config-board
+++ /dev/null
@@ -1,17 +0,0 @@
-#!/bin/sh
-
-# board defaults, do not change in running system. Change /env/config
-# instead
-
-global.hostname=pcm051
-global.linux.bootargs.base="console=ttyO0,115200"
-
-if [ $bootsource = mmc ]; then
-	global.boot.default="mmc nand spi net"
-elif [ $boosource = nand ]; then
-	global.boot.default="nand spi mmc net"
-elif [ $boosource = spi ]; then
-	global.boot.default="spi nand mmc net"
-elif [ $boosource = net ]; then
-	global.boot.default="net nand spi mmc"
-fi
diff --git a/arch/arm/boards/phytec-phycore-am335x/defaultenv-phycore-am335x/init/bootsource b/arch/arm/boards/phytec-phycore-am335x/defaultenv-phycore-am335x/init/bootsource
new file mode 100644
index 0000000..76d1f9b
--- /dev/null
+++ b/arch/arm/boards/phytec-phycore-am335x/defaultenv-phycore-am335x/init/bootsource
@@ -0,0 +1,15 @@
+#!/bin/sh
+
+if [ -n "$nv.boot.default" ]; then
+	exit
+fi
+
+if [ $bootsource = mmc ]; then
+	global.boot.default="mmc nand spi net"
+elif [ $boosource = nand ]; then
+	global.boot.default="nand spi mmc net"
+elif [ $boosource = spi ]; then
+	global.boot.default="spi nand mmc net"
+elif [ $boosource = net ]; then
+	global.boot.default="net nand spi mmc"
+fi
diff --git a/arch/arm/boards/phytec-phycore-am335x/defaultenv-phycore-am335x/init/init-usbserial b/arch/arm/boards/phytec-phycore-am335x/defaultenv-phycore-am335x/init/init-usbserial
new file mode 100644
index 0000000..a154fd1
--- /dev/null
+++ b/arch/arm/boards/phytec-phycore-am335x/defaultenv-phycore-am335x/init/init-usbserial
@@ -0,0 +1,4 @@
+#!/bin/sh
+
+#otg1.mode=peripheral
+usbgadget -a -A /dev/nand0.kernel.bb(kernel)
diff --git a/arch/arm/boards/phytec-phycore-am335x/defaultenv-phycore-am335x/nv/bootargs.base b/arch/arm/boards/phytec-phycore-am335x/defaultenv-phycore-am335x/nv/bootargs.base
new file mode 100644
index 0000000..d7b01a1
--- /dev/null
+++ b/arch/arm/boards/phytec-phycore-am335x/defaultenv-phycore-am335x/nv/bootargs.base
@@ -0,0 +1 @@
+console=ttyO0,115200
diff --git a/arch/arm/boards/phytec-phycore-am335x/defaultenv-phycore-am335x/nv/hostname b/arch/arm/boards/phytec-phycore-am335x/defaultenv-phycore-am335x/nv/hostname
new file mode 100644
index 0000000..988ab6d
--- /dev/null
+++ b/arch/arm/boards/phytec-phycore-am335x/defaultenv-phycore-am335x/nv/hostname
@@ -0,0 +1 @@
+pcm051
diff --git a/arch/arm/boards/phytec-phycore-imx31/env/config-board b/arch/arm/boards/phytec-phycore-imx31/env/config-board
deleted file mode 100644
index e8e8378..0000000
--- a/arch/arm/boards/phytec-phycore-imx31/env/config-board
+++ /dev/null
@@ -1,6 +0,0 @@
-#!/bin/sh
-
-# board defaults, do not change in running system. Change /env/config
-# instead
-
-global.linux.bootargs.base="console=ttymxc0,115200"
diff --git a/arch/arm/boards/phytec-phycore-imx31/env/nv/linux.bootargs.base b/arch/arm/boards/phytec-phycore-imx31/env/nv/linux.bootargs.base
new file mode 100644
index 0000000..d775310
--- /dev/null
+++ b/arch/arm/boards/phytec-phycore-imx31/env/nv/linux.bootargs.base
@@ -0,0 +1 @@
+console=ttymxc0,115200
diff --git a/arch/arm/boards/phytec-phycore-imx35/env/config-board b/arch/arm/boards/phytec-phycore-imx35/env/config-board
deleted file mode 100644
index e8e8378..0000000
--- a/arch/arm/boards/phytec-phycore-imx35/env/config-board
+++ /dev/null
@@ -1,6 +0,0 @@
-#!/bin/sh
-
-# board defaults, do not change in running system. Change /env/config
-# instead
-
-global.linux.bootargs.base="console=ttymxc0,115200"
diff --git a/arch/arm/boards/phytec-phycore-imx35/env/nv/linux.bootargs.base b/arch/arm/boards/phytec-phycore-imx35/env/nv/linux.bootargs.base
new file mode 100644
index 0000000..d775310
--- /dev/null
+++ b/arch/arm/boards/phytec-phycore-imx35/env/nv/linux.bootargs.base
@@ -0,0 +1 @@
+console=ttymxc0,115200
diff --git a/arch/arm/boards/phytec-phyflex-am335x/defaultenv-phyflex-am335x/config-board b/arch/arm/boards/phytec-phyflex-am335x/defaultenv-phyflex-am335x/config-board
deleted file mode 100644
index b620ac1..0000000
--- a/arch/arm/boards/phytec-phyflex-am335x/defaultenv-phyflex-am335x/config-board
+++ /dev/null
@@ -1,17 +0,0 @@
-#!/bin/sh
-
-# board defaults, do not change in running system. Change /env/config
-# instead
-
-global.hostname=pfla03
-global.linux.bootargs.base="console=ttyO0,115200"
-
-if [ $bootsource = mmc ]; then
-	global.boot.default="mmc nand spi net"
-elif [ $boosource = nand ]; then
-	global.boot.default="nand spi mmc net"
-elif [ $boosource = spi ]; then
-	global.boot.default="spi nand mmc net"
-elif [ $boosource = net ]; then
-	global.boot.default="net nand spi mmc"
-fi
diff --git a/arch/arm/boards/phytec-phyflex-am335x/defaultenv-phyflex-am335x/init/bootsource b/arch/arm/boards/phytec-phyflex-am335x/defaultenv-phyflex-am335x/init/bootsource
new file mode 100644
index 0000000..76d1f9b
--- /dev/null
+++ b/arch/arm/boards/phytec-phyflex-am335x/defaultenv-phyflex-am335x/init/bootsource
@@ -0,0 +1,15 @@
+#!/bin/sh
+
+if [ -n "$nv.boot.default" ]; then
+	exit
+fi
+
+if [ $bootsource = mmc ]; then
+	global.boot.default="mmc nand spi net"
+elif [ $boosource = nand ]; then
+	global.boot.default="nand spi mmc net"
+elif [ $boosource = spi ]; then
+	global.boot.default="spi nand mmc net"
+elif [ $boosource = net ]; then
+	global.boot.default="net nand spi mmc"
+fi
diff --git a/arch/arm/boards/phytec-phyflex-am335x/defaultenv-phyflex-am335x/nv/hostname b/arch/arm/boards/phytec-phyflex-am335x/defaultenv-phyflex-am335x/nv/hostname
new file mode 100644
index 0000000..09c5821
--- /dev/null
+++ b/arch/arm/boards/phytec-phyflex-am335x/defaultenv-phyflex-am335x/nv/hostname
@@ -0,0 +1 @@
+pfla03
diff --git a/arch/arm/boards/phytec-phyflex-am335x/defaultenv-phyflex-am335x/nv/linux.bootargs.base b/arch/arm/boards/phytec-phyflex-am335x/defaultenv-phyflex-am335x/nv/linux.bootargs.base
new file mode 100644
index 0000000..d7b01a1
--- /dev/null
+++ b/arch/arm/boards/phytec-phyflex-am335x/defaultenv-phyflex-am335x/nv/linux.bootargs.base
@@ -0,0 +1 @@
+console=ttyO0,115200
diff --git a/arch/arm/boards/phytec-phyflex-imx6/defaultenv-phyflex-imx6/config-board b/arch/arm/boards/phytec-phyflex-imx6/defaultenv-phyflex-imx6/config-board
deleted file mode 100644
index b40a4de..0000000
--- a/arch/arm/boards/phytec-phyflex-imx6/defaultenv-phyflex-imx6/config-board
+++ /dev/null
@@ -1,9 +0,0 @@
-#!/bin/sh
-
-# board defaults, do not change in running system. Change /env/config
-# instead
-
-global.boot.default=nand
-
-global.hostname=phyFLEX-i.MX6
-global.linux.bootargs.base="console=ttymxc3,115200"
diff --git a/arch/arm/boards/phytec-phyflex-imx6/defaultenv-phyflex-imx6/nv/boot.default b/arch/arm/boards/phytec-phyflex-imx6/defaultenv-phyflex-imx6/nv/boot.default
new file mode 100644
index 0000000..026a25c
--- /dev/null
+++ b/arch/arm/boards/phytec-phyflex-imx6/defaultenv-phyflex-imx6/nv/boot.default
@@ -0,0 +1 @@
+nand
diff --git a/arch/arm/boards/phytec-phyflex-imx6/defaultenv-phyflex-imx6/nv/hostname b/arch/arm/boards/phytec-phyflex-imx6/defaultenv-phyflex-imx6/nv/hostname
new file mode 100644
index 0000000..192f6b4
--- /dev/null
+++ b/arch/arm/boards/phytec-phyflex-imx6/defaultenv-phyflex-imx6/nv/hostname
@@ -0,0 +1 @@
+phyFLEX-i.MX6
diff --git a/arch/arm/boards/phytec-phyflex-imx6/defaultenv-phyflex-imx6/nv/linux.bootargs.base b/arch/arm/boards/phytec-phyflex-imx6/defaultenv-phyflex-imx6/nv/linux.bootargs.base
new file mode 100644
index 0000000..c61c603
--- /dev/null
+++ b/arch/arm/boards/phytec-phyflex-imx6/defaultenv-phyflex-imx6/nv/linux.bootargs.base
@@ -0,0 +1 @@
+console=ttymxc3,115200
diff --git a/arch/arm/boards/radxa-rock/env/config-board b/arch/arm/boards/radxa-rock/env/config-board
deleted file mode 100644
index d986e30..0000000
--- a/arch/arm/boards/radxa-rock/env/config-board
+++ /dev/null
@@ -1,6 +0,0 @@
-#!/bin/sh
-
-# board defaults, do not change in running system. Change /env/config
-# instead
-
-global.linux.bootargs.base="console=ttyS2,115200"
\ No newline at end of file
diff --git a/arch/arm/boards/radxa-rock/env/nv/linux.bootargs.base b/arch/arm/boards/radxa-rock/env/nv/linux.bootargs.base
new file mode 100644
index 0000000..37a03fd
--- /dev/null
+++ b/arch/arm/boards/radxa-rock/env/nv/linux.bootargs.base
@@ -0,0 +1 @@
+console=ttyS2,115200
diff --git a/arch/arm/boards/telit-evk-pro3/env/config-board b/arch/arm/boards/telit-evk-pro3/env/config-board
deleted file mode 100644
index 741b902..0000000
--- a/arch/arm/boards/telit-evk-pro3/env/config-board
+++ /dev/null
@@ -1,8 +0,0 @@
-#!/bin/sh
-
-# board defaults, do not change in running system. Change /env/config
-# instead
-
-global.hostname=evk-pro3
-global.linux.bootargs.base="console=ttyS0,115200"
-global.boot.default=nand-ubi
diff --git a/arch/arm/boards/telit-evk-pro3/env/nv/boot.default b/arch/arm/boards/telit-evk-pro3/env/nv/boot.default
new file mode 100644
index 0000000..d9dfbbc
--- /dev/null
+++ b/arch/arm/boards/telit-evk-pro3/env/nv/boot.default
@@ -0,0 +1 @@
+nand-ubi
diff --git a/arch/arm/boards/telit-evk-pro3/env/nv/bootargs.base b/arch/arm/boards/telit-evk-pro3/env/nv/bootargs.base
new file mode 100644
index 0000000..476b1fb
--- /dev/null
+++ b/arch/arm/boards/telit-evk-pro3/env/nv/bootargs.base
@@ -0,0 +1 @@
+console=ttyS0,115200
diff --git a/arch/arm/boards/telit-evk-pro3/env/nv/hostname b/arch/arm/boards/telit-evk-pro3/env/nv/hostname
new file mode 100644
index 0000000..92941fa
--- /dev/null
+++ b/arch/arm/boards/telit-evk-pro3/env/nv/hostname
@@ -0,0 +1 @@
+evk-pro3
diff --git a/common/Kconfig b/common/Kconfig
index a2cce39..b11f8a5 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -631,6 +631,7 @@ config DEFAULT_ENVIRONMENT_GENERIC_NEW
 	select CMD_BASENAME
 	select CMD_READLINK
 	select CMD_DIRNAME
+	select CMD_NV
 	select FLEXIBLE_BOOTARGS
 	select CMD_BOOT
 	select NET_CMD_IFUP if NET
diff --git a/defaultenv/defaultenv-2-base/bin/init b/defaultenv/defaultenv-2-base/bin/init
index 3a0e93b..34807bc 100644
--- a/defaultenv/defaultenv-2-base/bin/init
+++ b/defaultenv/defaultenv-2-base/bin/init
@@ -16,9 +16,12 @@ global editcmd
 
 [ -z "${global.hostname}" ] && global.hostname=generic
 [ -z "${global.user}" ] && global.user=none
+magicvar -a global.user "username (used in network filenames)"
 [ -z "${global.autoboot_timeout}" ] && global.autoboot_timeout=3
+magicvar -a global.autoboot_timeout "timeout in seconds before automatic booting"
 [ -z "${global.boot.default}" ] && global.boot.default=net
 [ -z "${global.allow_color}" ] && global.allow_color=true
+magicvar -a global.allow_color "Allow color on the console (boolean)"
 [ -z "${global.editcmd}" ] && global.editcmd=sedit
 
 [ -e /env/config-board ] && /env/config-board
diff --git a/defaultenv/defaultenv-2-base/config b/defaultenv/defaultenv-2-base/config
index 784ae52..49fa605 100644
--- a/defaultenv/defaultenv-2-base/config
+++ b/defaultenv/defaultenv-2-base/config
@@ -3,23 +3,5 @@
 # change network settings in /env/network/eth0
 # change mtd partition settings and automountpoints in /env/init/*
 
-#global.hostname=
-
-# set to false if you do not want to have colors
-#global.allow_color=true
-
-# user (used for network filenames)
-#global.user=none
-
-# timeout in seconds before the default boot entry is started
-#global.autoboot_timeout=3
-
-# list of boot entries. These are executed in order until one
-# succeeds. An entry can be:
-# - a filename in /env/boot/
-# - a full path to a directory. All files in this directory are
-#   treated as boot files and executed in alphabetical order
-#global.boot.default=net
-
-# base bootargs
-#global.linux.bootargs.base="console=ttyS0,115200"
+# The settings that used to be here are in nv variables now.
+# See 'help nv', 'magicvar'
diff --git a/defaultenv/defaultenv-2-base/nv/allow_color b/defaultenv/defaultenv-2-base/nv/allow_color
new file mode 100644
index 0000000..f32a580
--- /dev/null
+++ b/defaultenv/defaultenv-2-base/nv/allow_color
@@ -0,0 +1 @@
+true
\ No newline at end of file
diff --git a/defaultenv/defaultenv-2-base/nv/autoboot_timeout b/defaultenv/defaultenv-2-base/nv/autoboot_timeout
new file mode 100644
index 0000000..e440e5c
--- /dev/null
+++ b/defaultenv/defaultenv-2-base/nv/autoboot_timeout
@@ -0,0 +1 @@
+3
\ No newline at end of file
diff --git a/defaultenv/defaultenv-2-base/nv/user b/defaultenv/defaultenv-2-base/nv/user
new file mode 100644
index 0000000..c86c3f3
--- /dev/null
+++ b/defaultenv/defaultenv-2-base/nv/user
@@ -0,0 +1 @@
+none
\ No newline at end of file
-- 
2.1.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
