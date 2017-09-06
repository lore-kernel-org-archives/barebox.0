Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.17.21])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dpZBO-0001GP-6M
 for barebox@lists.infradead.org; Wed, 06 Sep 2017 12:11:52 +0000
From: Oleksij Rempel <linux@rempel-privat.de>
Date: Wed,  6 Sep 2017 14:11:06 +0200
Message-Id: <20170906121106.26024-1-linux@rempel-privat.de>
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
Subject: [PATCH] Documentation: efi: add example how to create EFI partition
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

From: Oleksij Rempel <o.rempel@pengutronix.de>

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 Documentation/boards/efi.rst | 25 +++++++++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/Documentation/boards/efi.rst b/Documentation/boards/efi.rst
index 8f78a800e..6c90e6cdf 100644
--- a/Documentation/boards/efi.rst
+++ b/Documentation/boards/efi.rst
@@ -47,6 +47,31 @@ has to be put into the ``EFI/barebox/`` directory.
 Supported backends for EFI are raw partitions that can be discovered via a
 partition UUID.
 
+With this sample script you can create bootable image and transfer it to the
+flash driver:
+
+.. code-block:: sh
+
+  truncate --size 128M barebox-boot.img
+  echo 'start=2048, type=ef' | sfdisk barebox-boot.img
+
+  LOOPDEV=$(losetup --find --show barebox-boot.img)
+  partprobe ${LOOPDEV}
+
+  # Create filesystems
+  mkfs.fat -F32 ${LOOPDEV}p1
+  MOUNTDIR=$(mktemp -d -t demoXXXXXX)
+  mount ${LOOPDEV}p1 $MOUNTDIR
+  mkdir -p ${MOUNTDIR}/EFI/BOOT/
+  cp barebox.efi ${MOUNTDIR}/EFI/BOOT/BOOTx64.EFI
+  if [ -d network-drivers ]; then
+    cp -r network-drivers ${MOUNTDIR}/
+  fi
+  umount ${MOUNTDIR}
+  losetup -d ${LOOPDEV}
+
+  dd if=barebox-boot.img of=/dev/sdX
+
 Running EFI barebox on qemu
 ^^^^^^^^^^^^^^^^^^^^^^^^^^^
 
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
