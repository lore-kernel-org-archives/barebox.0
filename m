Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gWNu1-00059S-E9
 for barebox@lists.infradead.org; Mon, 10 Dec 2018 15:55:27 +0000
From: Roland Hieber <rhi@pengutronix.de>
Date: Mon, 10 Dec 2018 16:55:11 +0100
Message-Id: <20181210155511.1376-3-rhi@pengutronix.de>
In-Reply-To: <20181210155511.1376-1-rhi@pengutronix.de>
References: <20181210155511.1376-1-rhi@pengutronix.de>
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
Subject: [PATCH 3/3] Documentation: i.MX: Kindle 4/5: fix sphinx warnings
To: Barebox Mailing List <barebox@lists.infradead.org>
Cc: Roland Hieber <rhi@pengutronix.de>

sphinx warns:

  Documentation/boards/imx/amazon-kindle-4-5.rst:39: WARNING: Enumerated list ends without a blank line; unexpected unindent.
  Documentation/boards/imx/amazon-kindle-4-5.rst:42: WARNING: Enumerated list ends without a blank line; unexpected unindent.
  Documentation/boards/imx/amazon-kindle-4-5.rst:45: WARNING: Enumerated list ends without a blank line; unexpected unindent.

Solve this by fixing the list enumeration and adding blank lines.

Signed-off-by: Roland Hieber <rhi@pengutronix.de>
---
 Documentation/boards/imx/amazon-kindle-4-5.rst | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/Documentation/boards/imx/amazon-kindle-4-5.rst b/Documentation/boards/imx/amazon-kindle-4-5.rst
index 58f38a058e..26f072e28d 100644
--- a/Documentation/boards/imx/amazon-kindle-4-5.rst
+++ b/Documentation/boards/imx/amazon-kindle-4-5.rst
@@ -25,35 +25,37 @@ on iomux pullups may significantly reduce your standby-time.
 Building barebox
 ----------------
 
 ``make kindle-mx50_defconfig`` should get you a working config.
 
 Uploading barebox
 -----------------
 
 To upload and run a new bootloader, the older devices can be put into
 USB bootloader mode by the SoC microcode:
 
 1. Connect the Kindle to your host computer with a USB cable.
 2. Power down the device by holding the power button until the power LED goes
    dark (about 10 seconds).
-4. Hold the power button, and hold down a device-specific special key:
+3. Hold the power button, and hold down a device-specific special key:
+
    * the fiveway down button on the model D01100
    * the home button on model D01200
+
 4. Then release the power button, but still hold the special key.
 5. A new USB device named ``NS Blank CODEX`` should appear on your host computer.
    You can now release the special button.
-7. Finally, upload barebox to the Kindle by using:
+6. Finally, upload barebox to the Kindle by using:
 
    .. code-block:: console
 
         $ scripts/imx/imx-usb-loader barebox-kindle-d01100.img
         $ scripts/imx/imx-usb-loader barebox-kindle-d01200.img
 
 Additionally, a USB serial ACM console will be launched by a barebox init script
 when:
 
 * the cursor select key is pressed during startup of model D01100
 * the home button is pressed within a second after startup of model D01200.
   (If you press the home button during startup, you will enter USB boot mode.)
 * the EY21 has no keys to press, a USB console will be launched for 10s.
 
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
