Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x22c.google.com ([2a00:1450:400c:c00::22c])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X0Tne-0004UE-Rl
 for barebox@lists.infradead.org; Fri, 27 Jun 2014 10:54:36 +0000
Received: by mail-wg0-f44.google.com with SMTP id x13so5062361wgg.27
 for <barebox@lists.infradead.org>; Fri, 27 Jun 2014 03:54:12 -0700 (PDT)
From: Holger Schurig <holgerschurig@gmail.com>
Date: Fri, 27 Jun 2014 13:00:19 +0200
Message-Id: <1403866821-4029-11-git-send-email-holgerschurig@gmail.com>
In-Reply-To: <1403866821-4029-1-git-send-email-holgerschurig@gmail.com>
References: <1403866821-4029-1-git-send-email-holgerschurig@gmail.com>
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
Subject: [PATCH 10/12] doc: reformat overly long lines
To: barebox@lists.infradead.org

Lines over 120 are just too long :-)

Signed-off-by: Holger Schurig <holgerschurig@gmail.com>
---
 Documentation/boards/imx/Phytec-phyCORE-i.MX31.rst |    9 +++++---
 Documentation/boards/mxs/Chumby-Falconwing.rst     |   11 +++++++---
 Documentation/boards/mxs/KaRo-TX28.rst             |    3 ++-
 Documentation/boards/x86.rst                       |   23 +++++++++++++++-----
 Documentation/filesystems/ramfs.rst                |    4 +++-
 5 files changed, 37 insertions(+), 13 deletions(-)

diff --git a/Documentation/boards/imx/Phytec-phyCORE-i.MX31.rst b/Documentation/boards/imx/Phytec-phyCORE-i.MX31.rst
index 1ea008f..45fd6be 100644
--- a/Documentation/boards/imx/Phytec-phyCORE-i.MX31.rst
+++ b/Documentation/boards/imx/Phytec-phyCORE-i.MX31.rst
@@ -6,7 +6,8 @@ The CPU module
 
 http://www.phytec.eu/europe/products/modules-overview/phycore/produktdetails/p/phycore-imx31-2.html
 
-This CPU card is based on a Freescale i.MX31 CPU. The card in configuration -0000REU is shipped with:
+This CPU card is based on a Freescale i.MX31 CPU. The card in
+configuration -0000REU is shipped with:
 
   * 128 MiB synchronous dynamic RAM (DDR type)
   * 64 MiB NAND flash
@@ -33,6 +34,8 @@ Build the binary image::
 
   make ARCH=arm CROSS_COMPILE=armv5compiler
 
-**NOTE:** replace ''armv5compiler'' with your ARM v5 cross compiler, e.g.: ''arm-1136jfs-linux-gnueabi-''
+**NOTE:** replace ''armv5compiler'' with your ARM v5 cross compiler,
+ e.g.: ''arm-1136jfs-linux-gnueabi-''
 
-The resulting binary image to be flashed will be barebox.bin, whereas the file named just barebox is an ELF executable for ARM.
+The resulting binary image to be flashed will be barebox.bin, whereas
+the file named just barebox is an ELF executable for ARM.
diff --git a/Documentation/boards/mxs/Chumby-Falconwing.rst b/Documentation/boards/mxs/Chumby-Falconwing.rst
index 4cf4591..79bff70 100644
--- a/Documentation/boards/mxs/Chumby-Falconwing.rst
+++ b/Documentation/boards/mxs/Chumby-Falconwing.rst
@@ -37,10 +37,15 @@ How to prepare an MCI card to boot the "chumby one" with barebox
     * the third one for the kernel (2 MiB ... 4 MiB in size)
     * the 4th one for the root filesystem which can fill the rest of the available space
 
-  * Mark the first partition with the partition ID "53" and copy the bootlets into this partition (currently not part of @b barebox!).
+  * Mark the first partition with the partition ID "53" and copy the
+    bootlets into this partition (currently not part of @b barebox!).
 
-  * Copy the default @b barebox environment into the second partition (no filesystem required).
+  * Copy the default @b barebox environment into the second partition
+    (no filesystem required).
 
   * Copy the kernel into the third partition (no filesystem required).
 
-  * Create the root filesystem in the 4th partition. You may copy an image into this partition or you can do it in the classic way: mkfs on it, mount it and copy all required data and programs into it.
+  * Create the root filesystem in the 4th partition. You may copy an
+    image into this partition or you can do it in the classic way:
+    mkfs on it, mount it and copy all required data and programs into
+    it.
diff --git a/Documentation/boards/mxs/KaRo-TX28.rst b/Documentation/boards/mxs/KaRo-TX28.rst
index 85d200b..15984d7 100644
--- a/Documentation/boards/mxs/KaRo-TX28.rst
+++ b/Documentation/boards/mxs/KaRo-TX28.rst
@@ -36,7 +36,8 @@ Build the binary image::
 **NOTE:** to use the result, you also need the following resources from Freescale:
   * the 'bootlets' archive
   * the 'elftosb2' encryption tool
-  * in the case you want to start @b barebox from an attached SD card the 'sdimage' tool from Freescale's 'uuc' archive.
+  * in the case you want to start @b barebox from an attached SD card
+    the 'sdimage' tool from Freescale's 'uuc' archive.
 
 Memory layout when barebox is running
 -------------------------------------
diff --git a/Documentation/boards/x86.rst b/Documentation/boards/x86.rst
index 4e7ccd8..ee5e869 100644
--- a/Documentation/boards/x86.rst
+++ b/Documentation/boards/x86.rst
@@ -16,11 +16,24 @@ Restrictions
 Due to some BIOS and barebox restrictions the boot media must be
 prepared in some special way:
 
-  * barebox must be stored in the MBR (Master Boot Record) of the boot media. Currently its not possible to store and boot it in one of the partition sectors  to use it as a second stage loader). This is no eternal restriction. It only needs further effort to add this feature.
-  * barebox currently cannot run a chained boot loader. Also, this is no external restriction, only further effort needed.
-  * barebox comes with limited filesystem support. There is currently no support for the most common and popular filesystems used in the \*NIX world. This restricts locations where to store a kernel and other runtime information
-  * barebox must be stored to the first n sectors of the boot media. To ensure this does not collide with partitions on the boot media, the first partition must start at a sector behind the ones barebox occupies.
-  * barebox handles its runtime configuration in a special way: It stores it in a binary way into some reserved sectors ("persistant storage").
+  * barebox must be stored in the MBR (Master Boot Record) of the boot
+    media. Currently its not possible to store and boot it in one of
+    the partition sectors to use it as a second stage loader). This is
+    no eternal restriction. It only needs further effort to add this
+    feature.
+  * barebox currently cannot run a chained boot loader. Also, this is
+    no external restriction, only further effort needed.
+  * barebox comes with limited filesystem support. There is currently
+    no support for the most common and popular filesystems used in the
+    \*NIX world. This restricts locations where to store a kernel and
+    other runtime information
+  * barebox must be stored to the first n sectors of the boot media.
+    To ensure this does not collide with partitions on the boot media,
+    the first partition must start at a sector behind the ones barebox
+    occupies.
+  * barebox handles its runtime configuration in a special way: It
+    stores it in a binary way into some reserved sectors ("persistant
+    storage").
 
 Boot Preparations
 -----------------
diff --git a/Documentation/filesystems/ramfs.rst b/Documentation/filesystems/ramfs.rst
index 2921a35..70e7282 100644
--- a/Documentation/filesystems/ramfs.rst
+++ b/Documentation/filesystems/ramfs.rst
@@ -3,7 +3,9 @@
 RAM filesystem
 ==============
 
-ramfs is a simple malloc based filesystem. An instance of ramfs is mounted during startup on /. The filesystem type passed to mount is 'ramfs'
+ramfs is a simple malloc based filesystem. An instance of ramfs is
+mounted during startup on /. The filesystem type passed to mount is
+'ramfs'
 
 example::
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
