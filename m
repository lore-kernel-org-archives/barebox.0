Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-x22f.google.com ([2a00:1450:400c:c03::22f])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X0TnX-0004Tf-Sq
 for barebox@lists.infradead.org; Fri, 27 Jun 2014 10:54:29 +0000
Received: by mail-we0-f175.google.com with SMTP id k48so5024774wev.34
 for <barebox@lists.infradead.org>; Fri, 27 Jun 2014 03:54:09 -0700 (PDT)
From: Holger Schurig <holgerschurig@gmail.com>
Date: Fri, 27 Jun 2014 13:00:16 +0200
Message-Id: <1403866821-4029-8-git-send-email-holgerschurig@gmail.com>
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
Subject: [PATCH 07/12] doc: add colon after NOTE and HINT
To: barebox@lists.infradead.org

Signed-off-by: Holger Schurig <holgerschurig@gmail.com>
---
 Documentation/boards/imx/Phytec-phyCORE-i.MX31.rst |    2 +-
 Documentation/boards/mxs/Chumby-Falconwing.rst     |    2 +-
 Documentation/boards/mxs/Freescale-i.MX23-evk.rst  |    2 +-
 Documentation/boards/mxs/KaRo-TX28.rst             |    4 ++--
 Documentation/boards/s3c/Digi-a9m2440.rst          |    2 +-
 Documentation/boards/tegra.rst                     |    4 ++--
 Documentation/boards/x86.rst                       |    6 +++---
 Documentation/user/booting-linux.rst               |    2 +-
 Documentation/user/driver-model.rst                |    2 +-
 Documentation/user/networking.rst                  |    2 +-
 Documentation/user/pbl.rst                         |    2 +-
 Documentation/user/ubi.rst                         |    2 +-
 Documentation/user/variables.rst                   |    2 +-
 13 files changed, 17 insertions(+), 17 deletions(-)

diff --git a/Documentation/boards/imx/Phytec-phyCORE-i.MX31.rst b/Documentation/boards/imx/Phytec-phyCORE-i.MX31.rst
index 527c490..1ea008f 100644
--- a/Documentation/boards/imx/Phytec-phyCORE-i.MX31.rst
+++ b/Documentation/boards/imx/Phytec-phyCORE-i.MX31.rst
@@ -33,6 +33,6 @@ Build the binary image::
 
   make ARCH=arm CROSS_COMPILE=armv5compiler
 
-**NOTE** Replace ''armv5compiler'' with your ARM v5 cross compiler, e.g.: ''arm-1136jfs-linux-gnueabi-''
+**NOTE:** replace ''armv5compiler'' with your ARM v5 cross compiler, e.g.: ''arm-1136jfs-linux-gnueabi-''
 
 The resulting binary image to be flashed will be barebox.bin, whereas the file named just barebox is an ELF executable for ARM.
diff --git a/Documentation/boards/mxs/Chumby-Falconwing.rst b/Documentation/boards/mxs/Chumby-Falconwing.rst
index 73e4c30..4cf4591 100644
--- a/Documentation/boards/mxs/Chumby-Falconwing.rst
+++ b/Documentation/boards/mxs/Chumby-Falconwing.rst
@@ -26,7 +26,7 @@ Build the bootloader binary image::
 
   make ARCH=arm CROSS_COMPILE=armv5compiler
 
-NOTE replace the armv5compiler with your ARM v5 cross compiler.
+**NOTE:** replace the armv5compiler with your ARM v5 cross compiler.
 
 How to prepare an MCI card to boot the "chumby one" with barebox
 ----------------------------------------------------------------
diff --git a/Documentation/boards/mxs/Freescale-i.MX23-evk.rst b/Documentation/boards/mxs/Freescale-i.MX23-evk.rst
index b03508c..a2cdc38 100644
--- a/Documentation/boards/mxs/Freescale-i.MX23-evk.rst
+++ b/Documentation/boards/mxs/Freescale-i.MX23-evk.rst
@@ -25,4 +25,4 @@ Build the bootloader binary image::
 
   make ARCH=arm CROSS_COMPILE=armv5compiler
 
-**NOTE** replace the armv5compiler with your ARM v5 cross compiler.
+**NOTE:** replace the armv5compiler with your ARM v5 cross compiler.
diff --git a/Documentation/boards/mxs/KaRo-TX28.rst b/Documentation/boards/mxs/KaRo-TX28.rst
index a6c308c..85d200b 100644
--- a/Documentation/boards/mxs/KaRo-TX28.rst
+++ b/Documentation/boards/mxs/KaRo-TX28.rst
@@ -31,9 +31,9 @@ Build the binary image::
 
   make ARCH=arm CROSS_COMPILE=armv5compiler
 
-**NOTE** replace the armv5compiler with your ARM v5 cross compiler.
+**NOTE:** replace the armv5compiler with your ARM v5 cross compiler.
 
-**NOTE** To use the result, you also need the following resources from Freescale:
+**NOTE:** to use the result, you also need the following resources from Freescale:
   * the 'bootlets' archive
   * the 'elftosb2' encryption tool
   * in the case you want to start @b barebox from an attached SD card the 'sdimage' tool from Freescale's 'uuc' archive.
diff --git a/Documentation/boards/s3c/Digi-a9m2440.rst b/Documentation/boards/s3c/Digi-a9m2440.rst
index 4ed8ae4..be3710a 100644
--- a/Documentation/boards/s3c/Digi-a9m2440.rst
+++ b/Documentation/boards/s3c/Digi-a9m2440.rst
@@ -64,4 +64,4 @@ Build the binary image::
 
   make ARCH=arm CROSS_COMPILE=armv4compiler
 
-**NOTE** replace the armv4compiler with your ARM v4 cross compiler.
+**NOTE:** replace the armv4compiler with your ARM v4 cross compiler.
diff --git a/Documentation/boards/tegra.rst b/Documentation/boards/tegra.rst
index f28c506..d2d1a25 100644
--- a/Documentation/boards/tegra.rst
+++ b/Documentation/boards/tegra.rst
@@ -14,7 +14,7 @@ multi-image build (:ref:`multi_image`). Building is as easy as typing:
   make ARCH=arm tegra_v7_defconfig
   make ARCH=arm CROSS_COMPILE=arm-v7-compiler-
 
-**NOTE** replace the arm-v7-compiler- with your ARM v7 cross compiler.
+**NOTE:** replace the arm-v7-compiler- with your ARM v7 cross compiler.
 
 Tegra images are specific to the bootsource. The build will generate images for
 all combinations of bootsources and supported boards. You can find the
@@ -69,7 +69,7 @@ You should now see barebox coming up on the serial console.
 Writing barebox to the primary boot device
 ------------------------------------------
 
-**NOTE** This may change in the near future to work with the standard
+**NOTE:** this may change in the near future to work with the standard
 barebox update mechanism (:ref:`update`).
 
 Copy the image corresponding to the primary boot device for your board to a
diff --git a/Documentation/boards/x86.rst b/Documentation/boards/x86.rst
index 5d38955..4e7ccd8 100644
--- a/Documentation/boards/x86.rst
+++ b/Documentation/boards/x86.rst
@@ -122,7 +122,7 @@ not exist::
         MBR               barebox                 first
                          main image              partition
 
-**NOTE** The  setupmbr tool is also working on real image file than on device
-      nodes only. So, there is no restriction what kind of file will be
-      modified.
+**NOTE:** the ``setupmbr`` tool is also working on real image file than on device
+nodes only. So, there is no restriction what kind of file will be
+modified.
 
diff --git a/Documentation/user/booting-linux.rst b/Documentation/user/booting-linux.rst
index 4ae9d1b..17427f3 100644
--- a/Documentation/user/booting-linux.rst
+++ b/Documentation/user/booting-linux.rst
@@ -48,7 +48,7 @@ variable:
   global.bootm.image=/path/to/zImage
   bootm
 
-**NOTE** It may happen that barebox is probed from the devicetree, but you have
+**NOTE:** it may happen that barebox is probed from the devicetree, but you have
 want to start a Kernel without passing a devicetree. In this case call ``oftree -f``
 to free the internal devicetree before calling ``bootm``
 
diff --git a/Documentation/user/driver-model.rst b/Documentation/user/driver-model.rst
index 2ec55f1..fae275e 100644
--- a/Documentation/user/driver-model.rst
+++ b/Documentation/user/driver-model.rst
@@ -87,5 +87,5 @@ device variables may have a type, so assigning wrong values may fail::
   barebox@Genesi Efika MX Smartbook:/ echo $?
   1
 
-**HINT** barebox has tab completion for variables. Typing ``eth0.<TAB><TAB>``
+**HINT:** barebox has tab completion for variables. Typing ``eth0.<TAB><TAB>``
 will show the parameters for eth0.
diff --git a/Documentation/user/networking.rst b/Documentation/user/networking.rst
index 9c7bde4..c22685f 100644
--- a/Documentation/user/networking.rst
+++ b/Documentation/user/networking.rst
@@ -52,7 +52,7 @@ or
 
   mount -t nfs 192.168.2.1:/export none /mnt
 
-**NOTE** This can often be hidden behind the :ref:`command_automount` command to make
+**NOTE:** this can often be hidden behind the :ref:`command_automount` command to make
 mounting transparent to the user.
 
 Network console
diff --git a/Documentation/user/pbl.rst b/Documentation/user/pbl.rst
index a08d6c9..6757768 100644
--- a/Documentation/user/pbl.rst
+++ b/Documentation/user/pbl.rst
@@ -26,6 +26,6 @@ This way source code can be shared between regular barebox and PBL. A special
 case is ``lwl-y += file.o`` which expands to ``obj-y`` when PBL is disabled
 and to ``pbl-y`` when PBL is enabled.
 
-**HINT** For getting an overview over the binaries, disassemble barebox.bin
+**HINT:** for getting an overview over the binaries, disassemble barebox.bin
 (``make barebox.S``) with or without PBL support and also disassemble the
 PBL (``make arch/$ARCH/pbl/zbarebox.S``)
diff --git a/Documentation/user/ubi.rst b/Documentation/user/ubi.rst
index a2e386f..a187680 100644
--- a/Documentation/user/ubi.rst
+++ b/Documentation/user/ubi.rst
@@ -19,7 +19,7 @@ If you intend to use a device with UBI you should always use ``ubiformat`` inste
 :ref:`command_erase`. ``ubiformat`` will make sure the erasecounters are preserved and also
 :ref:`ubi_fastmap` won't work when a flash is erased with ``erase``
 
-NOTE: When using the :ref:`ubi_fastmap` feature make sure that the UBI is attached and detached
+**NOTE:** when using the :ref:`ubi_fastmap` feature make sure that the UBI is attached and detached
 once after using ``ubiformat``. This makes sure the Fastmap is written.
 
 After a device has been formatted it can be attached with :ref:`command_ubiattach`.
diff --git a/Documentation/user/variables.rst b/Documentation/user/variables.rst
index 04e1791..e349874 100644
--- a/Documentation/user/variables.rst
+++ b/Documentation/user/variables.rst
@@ -18,7 +18,7 @@ other variable. You can also directly assign a value during creation::
 
   global myvar1=foobar
 
-**NOTE** creating a variable with ``global myvar1=foobar`` looks very similar
+**NOTE:** creating a variable with ``global myvar1=foobar`` looks very similar
 to assigning a value with ``global.myvar1=foobar``, but the latter fails when
 a variable has not been created before.
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
