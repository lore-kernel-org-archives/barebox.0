Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aWld1-0001up-GU
 for barebox@lists.infradead.org; Fri, 19 Feb 2016 14:01:55 +0000
From: Markus Pargmann <mpa@pengutronix.de>
Date: Fri, 19 Feb 2016 15:01:22 +0100
Message-Id: <1455890482-28261-1-git-send-email-mpa@pengutronix.de>
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
Subject: [PATCH] Documentation: Update USB fastboot section
To: barebox@lists.infradead.org

Add some documentation about fastboot 'flash' command and some useful
example how to use it to boot an initrd.

Signed-off-by: Markus Pargmann <mpa@pengutronix.de>
---
 Documentation/user/usb.rst | 52 ++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 52 insertions(+)

diff --git a/Documentation/user/usb.rst b/Documentation/user/usb.rst
index 9eb1437135a2..24bb8d8b1fb9 100644
--- a/Documentation/user/usb.rst
+++ b/Documentation/user/usb.rst
@@ -113,6 +113,11 @@ The Fastboot gadget supports the following commands:
 **NOTE** ``fastboot erase`` is not yet implemented. This means flashing MTD partitions
 does not yet work.
 
+``fastboot flash`` additionally supports image types UBI and Barebox. For UBI
+Images and a MTD device as target, ubiformat is called. For a Barebox image
+with an available barebox update handler for the fastboot exported device, the
+barebox_update is called.
+
 The barebox Fastboot gadget supports the following non standard extensions:
 
 - ``fastboot getvar all``
@@ -126,6 +131,53 @@ The barebox Fastboot gadget supports the following non standard extensions:
   command returns successfully when the barebox command was successful and it fails when
   the barebox command fails.
 
+**Example booting kernel/devicetree/initrd with fastboot**
+
+In Barebox start the fastboot gadget:
+
+.. code-block:: sh
+
+  usbgadget -A /kernel(kernel)c,/initrd(initrd)c,/devicetree(devicetree)c
+
+On the host you can use this script to start a kernel with kernel, devicetree
+and initrd:
+
+.. code-block:: sh
+
+  #!/bin/bash
+
+  set -e
+  set -v
+
+  if [ "$#" -lt 3 ]
+  then
+          echo "USAGE: $0 <KERNEL> <DT> <INITRD> [<ARGS>]"
+          exit 0
+  fi
+
+  kernel=$1
+  dt=$2
+  initrd=$3
+
+  shift 3
+
+  fastboot -i 7531 flash kernel $kernel
+  fastboot -i 7531 flash devicetree $dt
+  fastboot -i 7531 flash initrd $initrd
+
+
+  fastboot -i 7531 oem exec 'global linux.bootargs.fa'$ct'=rdinit=/sbin/init'
+  if [ $# -gt 0 ]
+  then
+          ct=1
+          for i in $*
+          do
+                  fastboot -i 7531 oem exec 'global linux.bootargs.fa'$ct'='"\"$i\""
+                  ct=$(($ct + 1))
+          done
+  fi
+  timeout -k 5 3 fastboot -i 7531 oem exec -- bootm -o /devicetree -r /initrd /kernel
+
 USB Composite Multifunction Gadget
 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
 
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
