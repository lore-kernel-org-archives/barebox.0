Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eKj6o-0000mR-D3
 for barebox@lists.infradead.ORG; Fri, 01 Dec 2017 11:03:56 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  1 Dec 2017 12:03:21 +0100
Message-Id: <20171201110326.31598-3-s.hauer@pengutronix.de>
In-Reply-To: <20171201110326.31598-1-s.hauer@pengutronix.de>
References: <20171201110326.31598-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/7] Documentation: Change many code blocks to no highlight
To: Barebox List <barebox@lists.infradead.org>

Several blocks cannot be sensibly highlighted, so change the highliting
to 'none'. Fixes many warnings in building the documentation.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Documentation/boards/openrisc.rst                  |  4 ++-
 Documentation/boards/x86.rst                       | 18 ++++++----
 .../bindings/barebox/barebox,environment.rst       |  4 ++-
 .../devicetree/bindings/misc/fsl,imx-iim.rst       |  4 ++-
 .../devicetree/bindings/misc/fsl,imx-ocotp.rst     |  4 ++-
 Documentation/filesystems/pstore.rst               | 40 +++++++++++++---------
 6 files changed, 47 insertions(+), 27 deletions(-)

diff --git a/Documentation/boards/openrisc.rst b/Documentation/boards/openrisc.rst
index cc00a5d8ea..fe6c48c958 100644
--- a/Documentation/boards/openrisc.rst
+++ b/Documentation/boards/openrisc.rst
@@ -12,7 +12,9 @@ Compile or1ksim emulator::
  $ ./configure
  $ make
 
-Create minimal or1ksim.cfg file::
+Create minimal or1ksim.cfg file:
+
+.. code-block:: none
 
  section cpu
    ver = 0x12
diff --git a/Documentation/boards/x86.rst b/Documentation/boards/x86.rst
index ee5e86980f..d0528a3280 100644
--- a/Documentation/boards/x86.rst
+++ b/Documentation/boards/x86.rst
@@ -47,9 +47,10 @@ Keep Sectors free
 
 Build the barebox image and check its size. At least this amount of
 sectors must be kept free after the MBR prior the first partition. Do this
-simple calulation::
+simple calulation:
 
-	sectors = (\<size of barebox image\> + 511) / 512
+.. code-block:: none
+  sectors = (\<size of barebox image\> + 511) / 512
 
 To be able to store the runtime configuration, further free sectors are
 required. Its up to you and your requirements, how large this persistant
@@ -60,8 +61,9 @@ For this example we are reserving 300 sectors for the barebox image and
 additionaly 32 sectors for the persistant storage. So, the first partition on
 the boot media must start at sector 333 or later.
 
-Run the  fdisk tool to setup such a partition table::
+Run the  fdisk tool to setup such a partition table:
 
+.. code-block:: none
 
   [jb@host]~> fdisk /dev/sda
   Command (m for help): p
@@ -74,7 +76,7 @@ Run the  fdisk tool to setup such a partition table::
 
 Change the used units to  sectors for easier handling.
 
-::
+.. code-block:: none
 
   Command (m for help): u
   Changing display/entry units to sectors
@@ -87,7 +89,9 @@ Change the used units to  sectors for easier handling.
   
   Device Boot      Start         End      Blocks   Id  System
 
-Now its possible to create the first partition with the required offset::
+Now its possible to create the first partition with the required offset:
+
+.. code-block:: none
 
   Command (m for help): n
   Command action
@@ -128,7 +132,9 @@ The barebox image gets stored on the boot media like this::
                 storage               main image              partition
 
 If the  -s option is omitted, the "persistant storage" part simply does
-not exist::
+not exist:
+
+.. code-block:: none
 
   sector 0   1                              333
          |---|--------------- ~~~ ------------|--------------
diff --git a/Documentation/devicetree/bindings/barebox/barebox,environment.rst b/Documentation/devicetree/bindings/barebox/barebox,environment.rst
index 12b103be10..029e7f04a4 100644
--- a/Documentation/devicetree/bindings/barebox/barebox,environment.rst
+++ b/Documentation/devicetree/bindings/barebox/barebox,environment.rst
@@ -26,7 +26,9 @@ The file-path is the name of a file located in a FAT filesystem on the
 device named in device-path.  This filesystem will be mounted and the
 environment loaded from the file's location in the directory tree.
 
-Example::
+Example:
+
+.. code-block:: none
 
   environment@0 {
   	compatible = "barebox,environment";
diff --git a/Documentation/devicetree/bindings/misc/fsl,imx-iim.rst b/Documentation/devicetree/bindings/misc/fsl,imx-iim.rst
index b9d5bcba98..1fa4735db8 100644
--- a/Documentation/devicetree/bindings/misc/fsl,imx-iim.rst
+++ b/Documentation/devicetree/bindings/misc/fsl,imx-iim.rst
@@ -12,7 +12,9 @@ Optional properties:
   can be multiple entries in the form <&phandle bankno fuseofs> to assign a MAC
   address to an Ethernet device.
 
-Example::
+Example:
+
+.. code-block:: none
 
   iim: iim@83f98000 {
   	compatible = "fsl,imx51-iim", "fsl,imx27-iim";
diff --git a/Documentation/devicetree/bindings/misc/fsl,imx-ocotp.rst b/Documentation/devicetree/bindings/misc/fsl,imx-ocotp.rst
index 403863e927..202bb3aa07 100644
--- a/Documentation/devicetree/bindings/misc/fsl,imx-ocotp.rst
+++ b/Documentation/devicetree/bindings/misc/fsl,imx-ocotp.rst
@@ -12,7 +12,9 @@ Optional properties:
   can be multiple entries in the form <&phandle regofs> to assign a MAC
   address to an Ethernet device.
 
-Example::
+Example:
+
+.. code-block:: none
 
   ocotp1: ocotp@021bc000 {
   	compatible = "fsl,imx6q-ocotp";
diff --git a/Documentation/filesystems/pstore.rst b/Documentation/filesystems/pstore.rst
index 0f3a2239e3..8eee374bdd 100644
--- a/Documentation/filesystems/pstore.rst
+++ b/Documentation/filesystems/pstore.rst
@@ -11,7 +11,9 @@ pstore is a filesystem to store kernel log or kernel panic messages. These
 messages are stored by the kernel in a specified RAM area which is never
 overwritten by any user. This data can be accessed after a reboot through
 /pstore in Barebox or the kernel. The pstore filesystem is automatically mounted
-at boot::
+at boot:
+
+.. code-block:: none
 
 	none on / type ramfs
 	none on /dev type devfs
@@ -20,21 +22,23 @@ at boot::
 pstore may add additional warnings during boot due to wrong ECCs (no data
 written)::
 
-	persistent_ram: found existing invalid buffer, size 791282217, start 1116786789
-	persistent_ram: uncorrectable error in header
-	persistent_ram: found existing invalid buffer, size 791282281, start 1133564005
-	persistent_ram: uncorrectable error in header
-	persistent_ram: found existing invalid buffer, size 791347753, start 1133564005
-	persistent_ram: uncorrectable error in header
-	persistent_ram: found existing invalid buffer, size 791347753, start 1133572197
-	persistent_ram: uncorrectable error in header
-	persistent_ram: found existing invalid buffer, size 774505001, start 1133564005
-	persistent_ram: uncorrectable error in header
-	persistent_ram: found existing invalid buffer, size 791282281, start 1133564005
-	persistent_ram: uncorrectable error in header
-	persistent_ram: found existing invalid buffer, size 791282217, start 1133564005
-	pstore: Registered ramoops as persistent store backend
-	ramoops: attached 0x200000@0x1fdf4000, ecc: 16/0
+.. code-block:: none
+
+  persistent_ram: found existing invalid buffer, size 791282217, start 1116786789
+  persistent_ram: uncorrectable error in header
+  persistent_ram: found existing invalid buffer, size 791282281, start 1133564005
+  persistent_ram: uncorrectable error in header
+  persistent_ram: found existing invalid buffer, size 791347753, start 1133564005
+  persistent_ram: uncorrectable error in header
+  persistent_ram: found existing invalid buffer, size 791347753, start 1133572197
+  persistent_ram: uncorrectable error in header
+  persistent_ram: found existing invalid buffer, size 774505001, start 1133564005
+  persistent_ram: uncorrectable error in header
+  persistent_ram: found existing invalid buffer, size 791282281, start 1133564005
+  persistent_ram: uncorrectable error in header
+  persistent_ram: found existing invalid buffer, size 791282217, start 1133564005
+  pstore: Registered ramoops as persistent store backend
+  ramoops: attached 0x200000@0x1fdf4000, ecc: 16/0
 
 To use pstore/RAMOOPS both Barebox and Kernel have to be compiled with pstore
 and RAM backend support. The kernel receives the parameters describing the
@@ -44,7 +48,9 @@ RAMOOPS parameters for the Kernel are stored in the variable
 global.linux.bootargs.ramoops.
 
 To see where the RAMOOPS area is located, you can execute iomem in Barebox. The
-RAMOOPS area is listed as 'persistent ram'::
+RAMOOPS area is listed as 'persistent ram':
+
+.. code-block:: none
 
   0x10000000 - 0x1fffffff (size 0x10000000) ram0
     0x17e7c0c0 - 0x1fcf817f (size 0x07e7c0c0) malloc space
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
