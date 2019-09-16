Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9lks-0006tA-Cp
 for barebox@lists.infradead.org; Mon, 16 Sep 2019 07:49:03 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 16 Sep 2019 09:48:58 +0200
Message-Id: <20190916074858.25592-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH] squash! ARM: imx6: add Embest MarSBoard support
To: barebox@lists.infradead.org
Cc: Stefan Lengfeld <contact@stefanchrist.eu>, Ahmad Fatoum <a.fatoum@pengutronix.de>

Fix some typos that made it into the documentation.

Tested-by: Stefan Lengfeld <contact@stefanchrist.eu>

Can be added to the original commit's message as well.
---
 Documentation/boards/imx/embest-marsboard.rst | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/Documentation/boards/imx/embest-marsboard.rst b/Documentation/boards/imx/embest-marsboard.rst
index 1ee2a0b982e4..bdaa0880ae7a 100644
--- a/Documentation/boards/imx/embest-marsboard.rst
+++ b/Documentation/boards/imx/embest-marsboard.rst
@@ -28,7 +28,7 @@ Layout::
 Boot Configuration
 ==================
 
-DIP Switch S1 on the board can be used to set ``BOOT_MODE1`` and
+DIP Switch ``SW1`` on the board can be used to set ``BOOT_MODE1`` and
 ``BOOT_MODE0`` going to the i.MX6:
 
 Set ``SW1 = 01`` for serial boot::
@@ -58,11 +58,11 @@ Set ``SW1 = 00`` for boot from eFuses::
 Flashing barebox
 ----------------
 
-  1. Connect to the boards's Debug Mini-USB (115200 8N1)
+  1. Connect to the board's Debug Mini-USB (115200 8N1)
 
   2. Set ``SW1 = 01`` for serial boot mode (see above)
 
-  3. Turn board's power on;
+  3. Turn board's power on
 
   4. Upload barebox image to the board via imx-usb-loader
 
@@ -75,8 +75,8 @@ Flashing barebox
 
 .. code-block:: none
 
-  target$ fastboot flash bbu-spiflash images/barebox-embest-imx6q-marsboard.img
+  host$ fastboot flash bbu-spiflash images/barebox-embest-imx6q-marsboard.img
 
 ..
 
-  5. Resore ``SW1 = 10`` for internal (SPI-NOR) boot (see above)
+  5. Restore ``SW1 = 10`` for internal (SPI-NOR) boot (see above)
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
