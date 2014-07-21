Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X9FJi-0003r8-V0
 for barebox@lists.infradead.org; Mon, 21 Jul 2014 15:15:55 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 21 Jul 2014 17:14:47 +0200
Message-Id: <1405955687-27433-24-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1405955687-27433-1-git-send-email-s.hauer@pengutronix.de>
References: <1405955687-27433-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 23/23] Documentation: Add documentation for Fastboot and
 Composite Multifunction Gadget
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Documentation/user/usb.rst | 48 ++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 48 insertions(+)

diff --git a/Documentation/user/usb.rst b/Documentation/user/usb.rst
index f67a2f1..7cdd6ac 100644
--- a/Documentation/user/usb.rst
+++ b/Documentation/user/usb.rst
@@ -95,3 +95,51 @@ USB serial console
 barebox can provide a serial console over USB. This can be initialized with the
 :ref:`command_usbserial` command. Once the host is plugged in it should show a
 new serial device, on Linux for example ``/dev/ttyACM0``.
+
+Android Fastboot support
+^^^^^^^^^^^^^^^^^^^^^^^^
+
+barebox has support for the android fastboot protocol. There is no dedicated command
+for initializing the fastboot protocol, instead it is integrated into the Multifunction
+Composite Gadget, see :`ref:command_usbgadget` for a usage description.
+
+The Fastboot gadget supports the following commands:
+
+- fastboot flash
+- fastboot getvar
+- fastboot boot
+- fastboot reboot
+
+**NOTE** ``fastboot erase`` is not yet implemented. This means flashing MTD partitions
+does not yet work.
+
+The barebox Fastboot gadget supports the following non standard extensions:
+
+- ``fastboot getvar all``
+  Shows a list of all variables
+- ``fastboot oem getenv <varname>``
+  Shows a barebox environment variable
+- ``fastboot oem setenv <varname>=<value>``
+  Sets a barebox environment variable
+- ``fastboot oem exec <cmd>``
+  executes a shell command. Note the output can't be seen on the host, but the fastboot
+  command returns successfully when the barebox command was successful and it fails when
+  the barebox command fails.
+
+USB Composite Multifunction Gadget
+^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
+
+With the Composite Multifunction Gadget it is possible to create a USB device with
+multiple functions. A useful combination is creating a Fastboot gadget and a USB serial
+console. This combination can be created with:
+
+.. code-block:: sh
+
+  usbgadget -A /dev/mmc2.0(root),/dev/mmc2.1(data) -a
+
+The ``-A`` option will create a Fastboot function providing ``/dev/mmc2.0`` as root
+partition and ``/dev/mmc2.1`` as data partition. The ``-a`` option will create a
+USB CDC ACM compliant serial device.
+
+Unlike the :ref:`command_dfu` command the ``usbgadget`` command returns immediately
+after creating the gadget. The gadget can be removed with ``usbgadget -d``.
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
