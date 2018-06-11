Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fSTeT-0000Bg-Ld
 for barebox@lists.infradead.org; Mon, 11 Jun 2018 20:43:00 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 11 Jun 2018 22:42:45 +0200
Message-Id: <20180611204245.8351-4-s.hauer@pengutronix.de>
In-Reply-To: <20180611204245.8351-1-s.hauer@pengutronix.de>
References: <20180611204245.8351-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/3] Documentation: explain new way to boot using ATAGs
To: Barebox List <barebox@lists.infradead.org>

oftree -f is gone and now global.bootm.boot_atag must be set to true
if boot using ATAGs is desired. Update the documentation accordingly.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Documentation/user/booting-linux.rst             |  4 ++--
 Documentation/user/devicetree.rst                | 16 ++++------------
 .../defaultenv-kindle-mx50/boot/mmc_kernel       |  4 ++--
 arch/arm/boards/radxa-rock/env/boot/mshc1        |  2 +-
 arch/arm/boards/radxa-rock/env/boot/mshc1-old    |  2 +-
 5 files changed, 10 insertions(+), 18 deletions(-)

diff --git a/Documentation/user/booting-linux.rst b/Documentation/user/booting-linux.rst
index 408f87d8e8..437f4e80ca 100644
--- a/Documentation/user/booting-linux.rst
+++ b/Documentation/user/booting-linux.rst
@@ -49,8 +49,8 @@ variable:
   bootm
 
 **NOTE:** it may happen that barebox is probed from the devicetree, but you have
-want to start a Kernel without passing a devicetree. In this case call ``oftree -f``
-to free the internal devicetree before calling ``bootm``
+want to start a Kernel without passing a devicetree. In this case set the
+``global.bootm.boot_atag`` variable to ``true``.
 
 Passing Kernel Arguments
 ^^^^^^^^^^^^^^^^^^^^^^^^
diff --git a/Documentation/user/devicetree.rst b/Documentation/user/devicetree.rst
index 17934d86e3..679cae7f00 100644
--- a/Documentation/user/devicetree.rst
+++ b/Documentation/user/devicetree.rst
@@ -71,15 +71,7 @@ work on the internal devicetree. It is possible to add/remove nodes using the
   # add a property to it
   of_property -s /chosen/mynode/ myproperty myvalue
 
-It is important to know that these commands always work on the internal
-devicetree. If you modify the internal devicetree to influence the behaviour of
-a kernel booted later, make sure that you start the kernel with the internal
-devicetree (i.e. don't pass a devicetree to the :ref:`command_bootm` command). If you
-wish to use another devicetree than the internal devicetree for starting the kernel,
-you can exchange the internal devicetree during runtime using the
-:ref:`command_oftree` command:
-
-.. code-block:: sh
-
-   oftree -f
-   oftree -l /new/dtb
+It is important to know that these commands normally work on the internal
+devicetree. If you want to modify the devicetree the kernel is started with
+see the -f options to of_property and of_node. This option will register the
+operation for later execution on the Kernel devicetree.
diff --git a/arch/arm/boards/kindle-mx50/defaultenv-kindle-mx50/boot/mmc_kernel b/arch/arm/boards/kindle-mx50/defaultenv-kindle-mx50/boot/mmc_kernel
index a43ee0cc92..4f2cabd54e 100644
--- a/arch/arm/boards/kindle-mx50/defaultenv-kindle-mx50/boot/mmc_kernel
+++ b/arch/arm/boards/kindle-mx50/defaultenv-kindle-mx50/boot/mmc_kernel
@@ -2,8 +2,8 @@
 # Boot the Amazon factory-shipped kernel uimage stored on
 # the eMMC at CONFIG_MMC_BOOTFLASH_ADDR 0x41000
 
-# Purge the OF tree to enable passing of ATAGs
-oftree -f
+# Force ATAG boot
+global.bootm.boot_atag=true
 
 # The same machine type introduced with freescale ENGR00124359
 armlinux_architecture=2955
diff --git a/arch/arm/boards/radxa-rock/env/boot/mshc1 b/arch/arm/boards/radxa-rock/env/boot/mshc1
index 964b6cc3eb..7393c4e63b 100644
--- a/arch/arm/boards/radxa-rock/env/boot/mshc1
+++ b/arch/arm/boards/radxa-rock/env/boot/mshc1
@@ -2,7 +2,7 @@
 
 mount /dev/mshc1.0
 
-oftree -f
+global.bootm.boot_atag=true
 oftree -l /mnt/mshc1.0/rk3188-radxarock.dtb
 
 global.bootm.image=/mnt/mshc1.0/zImage
diff --git a/arch/arm/boards/radxa-rock/env/boot/mshc1-old b/arch/arm/boards/radxa-rock/env/boot/mshc1-old
index 1e1b57751d..2e43a3aafe 100644
--- a/arch/arm/boards/radxa-rock/env/boot/mshc1-old
+++ b/arch/arm/boards/radxa-rock/env/boot/mshc1-old
@@ -2,7 +2,7 @@
 
 mount /dev/mshc1.0
 
-oftree -f
+global.bootm.boot_atag=true
 
 global.bootm.image=/mnt/mshc1.0/zImage-old
 global.linux.bootargs.dyn.root="root=/dev/mmcblk0p2 rootwait"
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
