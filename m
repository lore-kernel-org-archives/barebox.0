Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycore.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bcXfD-0005MA-Fr
 for barebox@lists.infradead.org; Wed, 24 Aug 2016 12:52:17 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id BD7D1A00431
 for <barebox@lists.infradead.org>; Wed, 24 Aug 2016 14:51:37 +0200 (CEST)
From: Wadim Egorov <w.egorov@phytec.de>
Date: Wed, 24 Aug 2016 14:49:30 +0200
Message-Id: <1472042970-35151-8-git-send-email-w.egorov@phytec.de>
In-Reply-To: <1472042970-35151-1-git-send-email-w.egorov@phytec.de>
References: <1472042970-35151-1-git-send-email-w.egorov@phytec.de>
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
Subject: [PATCH v2 8/8] doc: Add RK3288 Documentation
To: barebox@lists.infradead.org

Signed-off-by: Wadim Egorov <w.egorov@phytec.de>
---
 Documentation/boards/rk3288.rst            | 57 ++++++++++++++++++++++++++++++
 Documentation/boards/rk3288/phytec-som.rst | 24 +++++++++++++
 2 files changed, 81 insertions(+)
 create mode 100644 Documentation/boards/rk3288.rst
 create mode 100644 Documentation/boards/rk3288/phytec-som.rst

diff --git a/Documentation/boards/rk3288.rst b/Documentation/boards/rk3288.rst
new file mode 100644
index 0000000..3acca74
--- /dev/null
+++ b/Documentation/boards/rk3288.rst
@@ -0,0 +1,57 @@
+Rockchip RK3288
+===============
+
+The RK3288 SoC has a two stage boot process. The booting is completed in two
+consecutive stages. The binary for the 1st stage is referred to as the
+Secondary Program Loader (SPL). The binary for the 2nd stage is simply referred to
+as barebox.
+SPL is a non-interactive loader and is only used to boot the 2nd stage loader.
+
+At this moment barebox can only be used as a 2nd stage bootloader.
+Starting barebox requires another bootloader which will do the very basic
+SDRAM initialization for us. We can use the u-boot for that.
+
+Building barebox
+----------------
+
+The RK3288 boards in barebox are covered by the ``rk3288_defconfig``.
+The resulting images will be placed under ``images/``:
+
+::
+  barebox-rk3288-phycore-som.img
+
+
+Starting and updating barebox
+-----------------------------
+
+SD/MMC
+^^^^^^
+
+For the first stage bootloader we will need an u-boot image. A detailed
+description on how to build and flash an RK3288 SPL image can be found in the
+u-boot source ``u-boot/doc/README.rockchip``.
+
+U-boot requires an image with a special header.
+
+  mkimage -A arm -T firmware -C none -O u-boot -a 0x02000000 -e 0 -n "barebox image" -d images/barebox-rk3288-phycore-som.img barebox.img
+
+To write an image that boots from an SD card (assumed to be /dev/sdc):
+
+  sudo dd if=u-boot/u-boot-spl-dtb.bin of=/dev/sdc seek=64 bs=512
+  sudo dd if=barebox.img of=/dev/sdc seek=256 bs=512
+
+This puts the Rockchip header and SPL image first and then places the barebox
+image at block 256 (i.e. 128KB from the start of the SD card). This
+corresponds with this setting in U-Boot:
+
+  #define CONFIG_SYS_MMCSD_RAW_MODE_U_BOOT_SECTOR      256
+
+RK3288 Boards
+-------------
+
+.. toctree::
+  :glob:
+  :numbered:
+  :maxdepth: 1
+
+  rk3288/*
diff --git a/Documentation/boards/rk3288/phytec-som.rst b/Documentation/boards/rk3288/phytec-som.rst
new file mode 100644
index 0000000..1f3c714
--- /dev/null
+++ b/Documentation/boards/rk3288/phytec-som.rst
@@ -0,0 +1,24 @@
+Phytec RK3288 based SOMs
+========================
+
+The phycore-som-rk3288 is actually not a real board. It represents a RK3288
+based Phytec module and its boards in the barebox.
+You can find out more about the Phytec SOM concept on the website:
+
+  http://phytec.com/products/system-on-modules/
+
+
+Supported modules and boards
+----------------------------
+
+Currently, barebox supports the following SOMs and boards:
+
+  - phyCORE
+
+    - PCM-946
+    - PCM-947
+
+Building phycore-som-rk3288
+---------------------------
+
+The phycore-som-rk3288 boards are covered by the ``rk3288_defconfig``.
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
