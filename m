Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eZXd4-0003l6-Bn
 for barebox@lists.infradead.org; Thu, 11 Jan 2018 07:50:28 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 11 Jan 2018 08:50:08 +0100
Message-Id: <20180111075012.9050-4-s.hauer@pengutronix.de>
In-Reply-To: <20180111075012.9050-1-s.hauer@pengutronix.de>
References: <20180111075012.9050-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/7] Documentation: USB gadget: Add section for partition
 description
To: Barebox List <barebox@lists.infradead.org>

Partition descriptions are used with both fastboot and DFU, so add
a separate section describing them and remove it from the DFU section.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Documentation/user/usb.rst | 48 ++++++++++++++++++++++++++++++++++++----------
 1 file changed, 38 insertions(+), 10 deletions(-)

diff --git a/Documentation/user/usb.rst b/Documentation/user/usb.rst
index ec219cfbe4..3844e7941a 100644
--- a/Documentation/user/usb.rst
+++ b/Documentation/user/usb.rst
@@ -35,6 +35,42 @@ command, they show up as ``/dev/diskx`` and can be used like any other device.
 USB device support
 ------------------
 
+barebox supports several different USB gadget drivers:
+
+- Device Firmware Upgrade (DFU)
+- Android Fastboot
+- serial gadget
+
+The recommended way to use USB gadget is with the :ref:`command_usbgadget` command.
+While there are individual commands for :ref:`command_dfu` and :ref:`command_usbserial`,
+the :ref:`command_usbgadget` commands supports registering composite gadgets.
+
+Partition description
+^^^^^^^^^^^^^^^^^^^^^
+
+The USB gadget commands for Android Fastboot and DFU take a partition description
+which describes which barebox partitions are exported via USB. The partition
+description is referred to as ``<desc>`` in the command help texts. It has
+the general form ``partition(name)flags,partition(name)flags,...``.
+
+The **partition** field is the partition as accessible in barebox. This can be a
+path in ``/dev/``, but could also be a regular file.
+
+The **name** field is the name under which the partition shall be exported. This
+is the name under which the partition can be found with the host tool.
+
+Several **flags** are supported, each denoted by a single character:
+
+* ``s`` Safe mode. The file is downloaded completely before it is written (DFU specific)
+* ``r`` Readback. The partition is allowed to be read back (DFU specific)
+* ``c`` The file shall be created if it doesn't exist. Needed when a regular file is exported.
+
+Example:
+
+.. code-block:: sh
+
+  /dev/nand0.barebox.bb(barebox)sr,/kernel(kernel)rc
+
 DFU
 ^^^
 
@@ -43,16 +79,8 @@ Implementers Forum. It provides a vendor-independent way to update the firmware
 devices. The current specification is version 1.1 and can be downloaded here:
 http://www.usb.org/developers/devclass_docs/DFU_1.1.pdf
 
-On the barebox side, the update is handled with the :ref:`command_dfu` command.
-It is passed a list of partitions to provide to the host. The partition list
-has the form ``<file>(<name>)<flags>``.  ``file`` is the path to the device or
-regular file which shall be updated. ``name`` is the name under which the partition
-shall be provided to the host. For the possible ``flags`` see
-:ref:`command_dfu`. A typical ``dfu`` command could look like this:
-
-.. code-block:: sh
-
-  dfu "/dev/nand0.barebox.bb(barebox)sr,/dev/nand0.kernel.bb(kernel)r,/dev/nand0.root.bb(root)r"
+On the barebox side, the update is handled with the :ref:`command_usbgadget` or the
+:ref:`command_dfu` command.
 
 On the host side, the tool `dfu-util <http://dfu-util.gnumonks.org/>`_ can be used
 to update the partitions. It is available for most distributions and typically
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
