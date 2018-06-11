Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from calrissian.rohieb.name ([81.20.132.56] helo=rohieb.name)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fSUvk-0001sG-M8
 for barebox@lists.infradead.org; Mon, 11 Jun 2018 22:05:17 +0000
From: Roland Hieber <rohieb@rohieb.name>
Date: Tue, 12 Jun 2018 00:02:35 +0200
Message-Id: <20180611220235.15995-10-rohieb@rohieb.name>
In-Reply-To: <20180611220235.15995-1-rohieb@rohieb.name>
References: <20180611220235.15995-1-rohieb@rohieb.name>
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
Subject: [PATCH 9/9] doc: boards: Wandboard: fix formatting and punctuation
To: barebox@lists.infradead.org
Cc: Roland Hieber <rohieb@rohieb.name>

Signed-off-by: Roland Hieber <rohieb@rohieb.name>
---
 Documentation/boards/imx/wandboard.rst | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/Documentation/boards/imx/wandboard.rst b/Documentation/boards/imx/wandboard.rst
index 574318a009..8283b47260 100644
--- a/Documentation/boards/imx/wandboard.rst
+++ b/Documentation/boards/imx/wandboard.rst
@@ -8,14 +8,15 @@ the Wandboard Dual (i.MX6DL, 1GiB DDR3) and Wandboard Quad (i.MX6Q, 2GiB DDR3).
 The device boots from the SD card slot on the System-on-Module board, it
 will not boot from the slot on the carrier board.
 
-To boot barebox on any wandboard, build imx_v7_defconfig
-and copy the barebox imx-image to the i.MX boot location of a SD card, e.g.
-dd bs=1024 skip=1 seek=1 if=images/barebox-imx6-wandboard.img of=/dev/mmcblk0
+To boot barebox on any wandboard, build ``imx_v7_defconfig``
+and copy the barebox imx-image to the i.MX boot location of a SD card, e.g.::
+
+        dd bs=1024 skip=1 seek=1 if=images/barebox-imx6-wandboard.img of=/dev/mmcblk0
 
 Only one image exists, supporting all three Wandboard variants, barebox will
 detect the Wandboard variant depending on the SoC variant.
-This image is only usable for SD-boot. It will not boot via imx-usb-loader.
+This image is only usable for SD boot. It will not boot via imx-usb-loader.
 
 Connect to the serial port using a null-modem cable to get console access.
 
-For further documentation, including board schematics see http://wandboard.org/
+For further documentation, including board schematics, see http://wandboard.org/.
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
