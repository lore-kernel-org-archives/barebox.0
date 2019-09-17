Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAC4u-0003zO-0L
 for barebox@lists.infradead.org; Tue, 17 Sep 2019 11:55:31 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 17 Sep 2019 13:55:18 +0200
Message-Id: <20190917115518.14953-7-a.fatoum@pengutronix.de>
In-Reply-To: <20190917115518.14953-1-a.fatoum@pengutronix.de>
References: <20190917115518.14953-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH v2 6/6] Documentation: boards: document layerscape support
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Some peripherals are still missing, but the main functionality to boot
an OS is already in place. Document how to use it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/boards/layerscape.rst           | 61 +++++++++++++++++++
 .../boards/layerscape/ls1046ardb.rst          | 36 +++++++++++
 .../boards/layerscape/tqmls1046a.rst          | 49 +++++++++++++++
 3 files changed, 146 insertions(+)
 create mode 100644 Documentation/boards/layerscape.rst
 create mode 100644 Documentation/boards/layerscape/ls1046ardb.rst
 create mode 100644 Documentation/boards/layerscape/tqmls1046a.rst

diff --git a/Documentation/boards/layerscape.rst b/Documentation/boards/layerscape.rst
new file mode 100644
index 000000000000..ae089539e564
--- /dev/null
+++ b/Documentation/boards/layerscape.rst
@@ -0,0 +1,61 @@
+NXP Layerscape
+==============
+
+barebox has support for some of the ARM64 based Layerscape SoCs from NXP.
+
+Booting barebox
+---------------
+
+The Layerscape SoCs contain logic dubbed the Pre-Bootloader (PBL). This unit
+reads the boot medium and conducts basic IO multiplexing according to the RCW
+(Reset Configuration Word). The RCW then refers the PBL to the location of the
+Pre-Bootloader Instructions (PBI). These do basic device configuration and
+afterwards poke the barebox PBL into On-Chip SRAM.
+The barebox PBL then loads the complete barebox image and runs the PBL again,
+this time from SDRAM after it has been set up.
+
+For each board, a barebox image per supported boot medium is generated.
+They may differ in the RCW, PBI and endianess depending on the boot medium.
+
+Flashing barebox
+----------------
+
+The barebox binary is expected to be located 4K bytes into the SD-Card::
+
+  dd if=images/barebox-${boardname}-sd.image of=/dev/sdX bs=512 seek=8
+
+From there on, ``barebox_update`` can be used to flash
+barebox to the QSPI NOR-Flash if required::
+
+  barebox_update -t qspi /mnt/tftp/barebox-${global.hostname}-qspi.imaag
+
+Flashing to the eMMC is possible likewise::
+
+  barebox_update -t sd /mnt/tftp/barebox-${global.hostname}-sd.imaag
+
+.. note:: Some SoCs like the LS1046A feature only a single eSDHC.
+  In such a case, using eMMC and SD-Card at the same time is not possible.
+  Boot from QSPI to flash the eMMC.
+
+Firmware Blobs
+--------------
+
+Network: `fsl_fman_ucode_ls1046_r1.0_106_4_18.bin <https://github.com/NXP/qoriq-fm-ucode/raw/integration/fsl_fman_ucode_ls1046_r1.0_106_4_18.bin>`_.
+
+PSCI Firmware: `ppa-ls1046a.bin <https://github.com/NXP/qoriq-ppa-binary/raw/integration/soc-ls1046/ppa.itb>`_.
+
+Layerscape boards
+-----------------
+
+With multi-image and device trees, it's expected to have ``layerscape_defconfig``
+as sole defconfig for all Layerscape boards::
+
+  make ARCH=arm layerscape_defconfig
+
+Generated images will be placed under ``images/``.
+
+.. toctree::
+  :glob:
+  :maxdepth: 1
+
+  layerscape/*
diff --git a/Documentation/boards/layerscape/ls1046ardb.rst b/Documentation/boards/layerscape/ls1046ardb.rst
new file mode 100644
index 000000000000..323f2ca990c9
--- /dev/null
+++ b/Documentation/boards/layerscape/ls1046ardb.rst
@@ -0,0 +1,36 @@
+NXP LS1046A Reference Design Board
+==================================
+
+Boot DIP Switches
+-----------------
+
+Boot source selection happens via the the bottom most DIP switch (near the micro-usb port)::
+
+     OFF -> ON
+    +---------+
+  1 |  O----  |
+  2 |  O----  |
+  3 |  ----O  |
+  4 |  O----  |
+  5 |  O----  |
+  6 |  O----  |
+  7 |  ----O  |  <---- Boot from QSPI (default)
+  8 |  O----  |
+    +---------+
+
+     OFF -> ON
+    +---------+
+  1 |  O----  |
+  2 |  O----  |
+  3 |  ----O  |
+  4 |  O----  |
+  5 |  O----  |
+  6 |  O----  |
+  7 |  O----  |  <---- Boot from SDHC
+  8 |  O----  |
+    +---------+
+
+Known Issues
+------------
+
+System reset may not complete if the CMSIS-DAP micro-usb is connected.
diff --git a/Documentation/boards/layerscape/tqmls1046a.rst b/Documentation/boards/layerscape/tqmls1046a.rst
new file mode 100644
index 000000000000..55a5dff4a396
--- /dev/null
+++ b/Documentation/boards/layerscape/tqmls1046a.rst
@@ -0,0 +1,49 @@
+TQ-Group TQMLS1046A Module
+==========================
+
+Ethernet Ports
+--------------
+
+There two RGMII ports are the two closest to the RS-232 socket.
+They are ``eth2`` for the lower port and ``eth3`` for the upper port.
+
+MBLS10xxA (Base Board) Boot DIP Switches
+----------------------------------------
+
+Boot source selection happens via the ``S5`` DIP-Switch::
+
+  +---------+
+  |         |
+  | | | O x |
+  | | | | x |  <---- SDHC (X31)
+  | O O | x |
+  |         |
+  | 1 2 3 4 |
+  +---------+
+
+  +---------+
+  |         |
+  | O | O x |
+  | | | | x |  <---- eMMC
+  | | O | x |
+  |         |
+  | 1 2 3 4 |
+  +---------+
+
+  +---------+
+  |         |
+  | | O O x |
+  | | | | x |  <---- QSPI (eSDHC controls SDHC)
+  | O | | x |
+  |         |
+  | 1 2 3 4 |
+  +---------+
+
+  +---------+
+  |         |
+  | O O O x |
+  | | | | x |  <---- QSPI (eSDHC controls eMMC)
+  | | | | x |
+  |         |
+  | 1 2 3 4 |
+  +---------+
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
