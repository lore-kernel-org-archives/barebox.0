Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vs81.iboxed.net ([185.82.85.146])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dJ2P1-0000kq-Vc
 for barebox@lists.infradead.org; Thu, 08 Jun 2017 18:43:31 +0000
From: Alexander Kurz <akurz@blala.de>
Date: Thu,  8 Jun 2017 20:41:37 +0200
Message-Id: <1496947297-23502-4-git-send-email-akurz@blala.de>
In-Reply-To: <1496947297-23502-1-git-send-email-akurz@blala.de>
References: <1496947297-23502-1-git-send-email-akurz@blala.de>
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
Subject: [PATCH 4/4] ARM: i.MX6 Wandboard: add Documentation
To: barebox@lists.infradead.org
Cc: Alexander Kurz <akurz@blala.de>

Signed-off-by: Alexander Kurz <akurz@blala.de>
---
 Documentation/boards/imx/Wandboard.rst | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)
 create mode 100644 Documentation/boards/imx/Wandboard.rst

diff --git a/Documentation/boards/imx/Wandboard.rst b/Documentation/boards/imx/Wandboard.rst
new file mode 100644
index 0000000..574318a
--- /dev/null
+++ b/Documentation/boards/imx/Wandboard.rst
@@ -0,0 +1,21 @@
+Wandboard
+=========
+
+The Wandboard is a carrier board available with three different
+System-on-Module options, the Wandboard Solo (i.MX6S, 512MiB DDR3),
+the Wandboard Dual (i.MX6DL, 1GiB DDR3) and Wandboard Quad (i.MX6Q, 2GiB DDR3).
+
+The device boots from the SD card slot on the System-on-Module board, it
+will not boot from the slot on the carrier board.
+
+To boot barebox on any wandboard, build imx_v7_defconfig
+and copy the barebox imx-image to the i.MX boot location of a SD card, e.g.
+dd bs=1024 skip=1 seek=1 if=images/barebox-imx6-wandboard.img of=/dev/mmcblk0
+
+Only one image exists, supporting all three Wandboard variants, barebox will
+detect the Wandboard variant depending on the SoC variant.
+This image is only usable for SD-boot. It will not boot via imx-usb-loader.
+
+Connect to the serial port using a null-modem cable to get console access.
+
+For further documentation, including board schematics see http://wandboard.org/
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
