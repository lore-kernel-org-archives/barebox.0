Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z8O6q-0005i5-1r
 for barebox@lists.infradead.org; Fri, 26 Jun 2015 07:31:38 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 26 Jun 2015 09:31:07 +0200
Message-Id: <1435303867-12889-9-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1435303867-12889-1-git-send-email-s.hauer@pengutronix.de>
References: <1435303867-12889-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 8/8] ubi: Update documentation
To: Barebox List <barebox@lists.infradead.org>

The previous patches changed the UBI naming and made automounting
UBIFS easier. Update the documentation accordingly.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Documentation/user/ubi.rst | 44 +++++++++++++++-----------------------------
 1 file changed, 15 insertions(+), 29 deletions(-)

diff --git a/Documentation/user/ubi.rst b/Documentation/user/ubi.rst
index a187680..c300c0f 100644
--- a/Documentation/user/ubi.rst
+++ b/Documentation/user/ubi.rst
@@ -5,9 +5,6 @@ barebox has both UBI and UBIFS support. For handling UBI barebox has commands si
 the Linux commands :ref:`command_ubiformat`, :ref:`command_ubiattach`, :ref:`command_ubidetach`,
 :ref:`command_ubimkvol` and :ref:`command_ubirmvol`.
 
-The following examples assume we work on the first UBI device. Replace ``ubi0`` with
-the appropriate number when you have multiple UBI devices.
-
 The first step for preparing a pristine Flash for UBI is to :ref:`command_ubiformat` the
 device:
 
@@ -28,17 +25,17 @@ After a device has been formatted it can be attached with :ref:`command_ubiattac
 
   ubiattach /dev/nand0.root
 
-This will create the controlling node ``/dev/ubi0`` and also register all volumes present
-on the device as ``/dev/ubi0.<volname>``. When freshly formatted there won't be any volumes
-present. A volume can be created with:
+This will create the controlling node ``/dev/nand0.root.ubi`` and also register all volumes
+present on the device as ``/dev/nand0.root.ubi.<volname>``. When freshly formatted there won't
+be any volumes present. A volume can be created with:
 
 .. code-block:: sh
 
-  ubimkvol /dev/ubi0 root 0
+  ubimkvol /dev/nand0.root.ubi root 0
 
 The first parameter is the controlling node. The second parameter is the name of the volume.
-In this case the volume can be found under ``/dev/ubi.root``. The third parameter contains
-the size. A size of zero means that all available space shall be used.
+In this case the volume can be found under ``/dev/dev/nand0.root.ubi.root``. The third
+parameter contains the size. A size of zero means that all available space shall be used.
 
 The next step is to write a UBIFS image to the volume. The image must be created on a host using
 the ``mkfs.ubifs`` command. ``mkfs.ubifs`` requires several arguments for describing the
@@ -46,7 +43,7 @@ flash layout. Values for these arguments can be retrieved from a ``devinfo ubi``
 
 .. code-block:: sh
 
-  barebox@Phytec pcm970:/ devinfo ubi0
+  barebox@Phytec pcm970:/ devinfo nand0.root.ubi
   Parameters:
     peb_size: 16384
     leb_size: 15360
@@ -76,38 +73,27 @@ The UBIFS image can be transferred to the board for example with TFTP:
 
 .. code-block:: sh
 
-  cp /mnt/tftp/root.ubifs /dev/ubi0.root
+  cp /mnt/tftp/root.ubifs /dev/nand0.root.ubi.root
 
 Finally it can be mounted using the :ref:`command_mount` command:
 
 .. code-block:: sh
 
-  mkdir -p /mnt/ubi
-  mount -t ubifs /dev/ubi0.root /mnt/ubi
+  mount /dev/nand0.root.ubi.root
 
+The default mount path when the mount point is skipped is ``/mnt/<devname>``,
+so in this example it will be ``/mnt/nand0.root.ubi.root``.
 The second time the UBIFS is mounted the above can be simplified to:
 
 .. code-block:: sh
 
   ubiattach /dev/nand0.root
-  mount -t ubifs /dev/ubi0.root /mnt/ubi
+  mount /dev/nand0.root.ubi.root
 
 Mounting the UBIFS can also be made transparent with the automount command.
-With this helper script in ``/env/bin/automount-ubi:``:
-
-.. code-block:: sh
-
-  #!/bin/sh
-
-  if [ ! -e /dev/ubi0 ]; then
-	ubiattach /dev/nand0 || exit 1
-  fi
-
-  mount -t ubifs /dev/ubi0.root $automount_path
-
-
-The command ``automount -d /mnt/ubi/ '/env/bin/automount-ubi'`` will automatically
-attach the UBI device and mount the UBIFS image to ``/mnt/ubi`` whenever ``/mnt/ubi``
+The command ``automount -d /mnt/nand0.root.ubi.root 'mount nand0.root.ubi.root'``
+will automatically attach the UBI device and mount the UBIFS image to
+``/mnt/nand0.root.ubi.root`` whenever ``/mnt/nand0.root.ubi.root``
 is first accessed. The automount command can be added to ``/env/init/automount`` to
 execute it during startup.
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
