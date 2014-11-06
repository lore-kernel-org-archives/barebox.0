Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XmLNl-0002fh-6M
 for barebox@lists.infradead.org; Thu, 06 Nov 2014 11:37:42 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  6 Nov 2014 12:37:10 +0100
Message-Id: <1415273830-19706-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1415273830-19706-1-git-send-email-s.hauer@pengutronix.de>
References: <1415273830-19706-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] Documentation: Add GuF Santaro documentation
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Documentation/boards/garz-fricke.rst | 33 +++++++++++++++++++++++++++++++++
 1 file changed, 33 insertions(+)
 create mode 100644 Documentation/boards/garz-fricke.rst

diff --git a/Documentation/boards/garz-fricke.rst b/Documentation/boards/garz-fricke.rst
new file mode 100644
index 0000000..33d0dd3
--- /dev/null
+++ b/Documentation/boards/garz-fricke.rst
@@ -0,0 +1,33 @@
+Garz & Fricke based boards
+==========================
+
+Garz & Fricke have a variety of Freescale i.MX based boards. Most boards are
+shipped with the redboot bootloader, newer boards are shipped with a combination
+of a shim (U-Boot based) non interactive loader and a Linux based rescue system
+called 'Flash-N-Go'.
+
+Santaro (i.MX6)
+---------------
+
+This board comes with Flash-N-Go. It boots from the internal eMMC boot0 partition.
+To put barebox on this board boot the system up in the Flash-N-Go system by holding
+the user button pressed during startup. The barebox image can be transferred via
+network or any other medium the Santaro supports. You can backup the original bootloader
+with:
+
+.. code-block:: sh
+  cat /dev/mmcblk0boot0 > /mnt/mmcblk0boot0.backup
+  cat /dev/mmcblk0boot1 > /mnt/mmcblk0boot1.backup
+
+The original bootloader can be restored by copying the backup files back to the
+device.
+
+To install barebox on the board do:
+
+.. code-block:: sh
+  echo 0 > /sys/block/mmcblk0boot0/force_ro
+  cat barebox-guf-santaro.img > /dev/mmcblk0boot0
+
+The board will come up with barebox after restart. Should you end up with a nonworking
+barebox or otherwise brick your board this way write a mail to s.hauer@pengutronix.de.
+There's a way to put the board into SD/USB boot mode, but this requires opening the case.
-- 
2.1.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
