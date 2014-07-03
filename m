Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X2gTh-0006ek-PT
 for barebox@lists.infradead.org; Thu, 03 Jul 2014 12:51:07 +0000
Received: from [69.196.158.250] (port=36397 helo=crashcourse.ca)
 by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
 (Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
 id 1X2gTL-0000ZW-O1
 for barebox@lists.infradead.org; Thu, 03 Jul 2014 08:50:43 -0400
Date: Thu, 3 Jul 2014 08:50:36 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
Message-ID: <alpine.LFD.2.11.1407030848330.24495@localhost>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] Documentation: usb chapter of user manual
To: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>


A number of minor fixes, and including the help output from the
"dfu-util" command for the benefit of the reader.

Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

  i added the output of "dfu-util -h" since it didn't seem onerously
long and i thought it would be useful for the reader.

diff --git a/Documentation/user/usb.rst b/Documentation/user/usb.rst
index 9bbfcca..8b700d3 100644
--- a/Documentation/user/usb.rst
+++ b/Documentation/user/usb.rst
@@ -4,21 +4,21 @@ USB support
 USB host support
 ----------------

-barebox has support for USB host and USB device mode. USB devices
+barebox has support for both USB host and USB device mode. USB devices
 take a long time to probe, so they are not probed automatically. Probing
 has to be triggered using the :ref:`command_usb` or :ref:`command_detect` command.
-USB devices in barebox are not hotpluggable. It is expected that USB
+USB devices in barebox are not hot-pluggable. It is expected that USB
 devices are not disconnected while barebox is running.

 USB Networking
 ^^^^^^^^^^^^^^

-barebox supports ASIX compatible devices and the SMSC95xx. After
-detection the device shows up as eth0 and can be used like a regular network
+barebox supports ASIX-compatible devices and the SMSC95xx. After
+detection, the device shows up as eth0 and can be used like a regular network
 device.

 To use a USB network device together with the :ref:`command_ifup` command, add the
-following to /env/network/eth0-discover:
+following to ``/env/network/eth0-discover``:

 .. code-block:: sh

@@ -30,7 +30,7 @@ USB mass storage
 ^^^^^^^^^^^^^^^^

 barebox supports USB mass storage devices. After probing them with the :ref:`command_usb`
-they show up as ``/dev/diskx`` and can be used like any other device.
+command, they show up as ``/dev/diskx`` and can be used like any other device.

 USB device support
 ------------------
@@ -39,27 +39,52 @@ DFU
 ^^^

 USB Device Firmware Upgrade (DFU) is an official USB device class specification of the USB
-Implementers Forum. It provides a vendor independent way to update the firmware of embedded
+Implementers Forum. It provides a vendor-independent way to update the firmware of embedded
 devices. The current specification is version 1.1 and can be downloaded here:
 http://www.usb.org/developers/devclass_docs/DFU_1.1.pdf

-On barebox side the update is handled with the :ref:`command_dfu` command. It is passes a list
-of partitions to provide to the host. The partition list has the form ``<file>(<name>)<flags>``.
-``file`` is the path to the device or regular file which shall be updated. ``name`` is the
-name under which the partition shall be provided to the host. For the possible ``flags`` see
+On the barebox side, the update is handled with the :ref:`command_dfu` command.
+It is passed a list of partitions to provide to the host. The partition list
+has the form ``<file>(<name>)<flags>``.  ``file`` is the path to the device or
+regular file which shall be updated. ``name`` is the name under which the partition
+shall be provided to the host. For the possible ``flags`` see
 :ref:`command_dfu`. A typical ``dfu`` command could look like this:

 .. code-block:: sh

   dfu "/dev/nand0.barebox.bb(barebox)sr,/dev/nand0.kernel.bb(kernel)r,/dev/nand0.root.bb(root)r"

-On the host the tool `dfu-util <http://dfu-util.gnumonks.org/>`_ can be used to update the
-partitions. It is available for the most distributions. To update the Kernel for the above
-example the following can be used:
+On the host side, the tool `dfu-util <http://dfu-util.gnumonks.org/>`_ can be used
+to update the partitions. It is available for most distributions and typically
+supports the following options::
+
+  dfu-util -h
+  Usage: dfu-util [options] ...
+    -h --help                     Print this help message
+    -V --version                  Print the version number
+    -v --verbose                  Print verbose debug statements
+    -l --list                     List the currently attached DFU capable USB devices
+    -e --detach                   Detach the currently attached DFU capable USB devices
+    -d --device vendor:product    Specify Vendor/Product ID of DFU device
+    -p --path bus-port. ... .port Specify path to DFU device
+    -c --cfg config_nr            Specify the Configuration of DFU device
+    -i --intf intf_nr             Specify the DFU Interface number
+    -a --alt alt                  Specify the Altsetting of the DFU Interface
+                                  by name or by number
+    -t --transfer-size            Specify the number of bytes per USB Transfer
+    -U --upload file              Read firmware from device into <file>
+    -D --download file            Write firmware from <file> into device
+    -R --reset                    Issue USB Reset signalling once we're finished
+    -s --dfuse-address address    ST DfuSe mode, specify target address for
+                                  raw file download or upload. Not applicable for
+                                  DfuSe file (.dfu) downloads
+
+To update the kernel for the above example, you would use something like
+the following:

 .. code-block:: sh

   dfu-util -D arch/arm/boot/zImage -a kernel

-The dfu-util command automatically finds dfu capable devices. If there are multiple devices
-found it has to be specified with the ``-d``/``-p`` options.
+The ``dfu-util`` command automatically finds DFU-capable devices. If there are
+multiple devices found, you need to identify one with the ``-d``/``-p`` options.

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
