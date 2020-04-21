Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQnV1-00071h-F1
 for barebox@lists.infradead.org; Tue, 21 Apr 2020 07:39:21 +0000
From: Clement Leger <cleger@kalray.eu>
Date: Tue, 21 Apr 2020 09:38:59 +0200
Message-Id: <20200421073859.25942-1-cleger@kalray.eu>
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
Subject: [PATCH] Documentation: kvx: add first documentation
To: barebox@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>
Cc: Clement Leger <cleger@kalray.eu>

Add documentation on kvx architecture and kalray k200 board.

Signed-off-by: Clement Leger <cleger@kalray.eu>
---
 Documentation/boards/kvx.rst             | 98 ++++++++++++++++++++++++
 Documentation/boards/kvx/kalray-k200.rst | 11 +++
 2 files changed, 109 insertions(+)
 create mode 100644 Documentation/boards/kvx.rst
 create mode 100644 Documentation/boards/kvx/kalray-k200.rst

diff --git a/Documentation/boards/kvx.rst b/Documentation/boards/kvx.rst
new file mode 100644
index 000000000..2641b002a
--- /dev/null
+++ b/Documentation/boards/kvx.rst
@@ -0,0 +1,98 @@
+KVX
+===
+
+The Kalray VLIW processor family (KVX) has the following features:
+ - 32/64 bits execution mode
+ - 6-issue VLIW architecture
+ - 64 x 64bits general purpose registers
+ - SIMD instructions
+ - little-endian
+ - deep learning co-processor
+
+Kalray kv3 core which is the third of the KVX family is embedded in Kalray
+MPPA3-80 SoC currently used on K200 boards.
+
+This SoC contains 5 clusters which are each made of:
+ - 4MiB of on-chip memory
+ - 1 dedicated safety/security core (kv3 core).
+ - 16 PEs (Processing Elements) (kv3 cores).
+ - 16 Co-processors (one per PE)
+ - 2 x Crypto accelerators
+
+MPPA3-80 SoC contains the following features:
+ - 5 x Clusters
+ - 2 x 100G Ethernet controllers
+ - 8 x PCIe GEN4 controllers (Root Complex and Endpoint capable)
+ - 2 x USB 2.0 controllers
+ - 1 x Octal SPI-NOR flash controller
+ - 1 x eMMC controller
+ - 3 x Quad SPI controllers
+ - 6 x UART
+ - 5 x I2C controllers (3 x SMBus capable)
+ - 4 x CAN controller
+ - 1 x OTP memory
+
+The Kalray VLIW architecture barebox port allows to boot it as a second stage
+bootloader (SSBL). It is loaded after the FSBL which initialize DDR and needed
+peripherals. FSBL always start on the Security Core of Cluster 0
+
+The FSBL can load elf files and pass them a device tree loaded from SPI NOR
+flash. As such, barebox should be flashed as an elf file into the SSBL
+partition.
+
+KVX boards
+----------
+
+.. toctree::
+  :glob:
+  :maxdepth: 1
+
+  kvx/*
+
+Getting a toolchain
+-------------------
+
+Pre-built toolchain are available from github ([#f1]_). In order to build one
+from scratch, build scripts are available on github too ([#f2]_).
+Once built or downloaded, a ``kvx-elf-`` toolchain will be available and should
+be added to your ``PATH``.
+
+Building barebox
+----------------
+
+Currently, kvx port is provided with a defconfig named ``generic_defconfig``.
+To build it, first generate the config and then run the build:
+
+.. code-block:: sh
+
+  make ARCH=kvx O=$PWD/build defconfig
+  make ARCH=kvx O=$PWD/build all
+
+This will generate a ``barebox`` elf file. By default barebox for kvx is
+compiled to be run at address 0x110000000.
+
+Booting barebox
+---------------
+
+``barebox`` elf file can be loaded using ``kvx-jtag-runner`` to execute the
+image via JTAG on an existing board.
+
+Depending on your board and barebox version, you should see the following
+message appearing on the serial console.
+
+.. code-block:: console
+
+  barebox 2020.03.0-00126-ga74988bf5 #3 Wed Apr 15 11:31:28 CEST 2020
+
+  Board: KONIC 200 (K200)
+  malloc space: 0x110050fe0 -> 0x200000000 (size 3.7 GiB)
+
+  Hit any to stop autoboot:    3
+  barebox:/
+
+
+.. rubric:: References
+
+.. [#f1] `Toolchain releases <https://github.com/build-scripts/releases>`_
+.. [#f2] `Build scripts <https://github.com/kalray/build-scripts/>`_
+
diff --git a/Documentation/boards/kvx/kalray-k200.rst b/Documentation/boards/kvx/kalray-k200.rst
new file mode 100644
index 000000000..9d97fa255
--- /dev/null
+++ b/Documentation/boards/kvx/kalray-k200.rst
@@ -0,0 +1,11 @@
+Kalray K200
+===========
+
+This board is based on a MPPA3-80 SoC. The board is shipped with:
+
+  - 128MiB NOR flash Memory
+  - 8GiB DDR4 SDRAM
+  - 2 x 100G Ethernet controllers supporting 8 x 1G, 10 and 25G
+  - PCIe GEN4 X16 port
+
+See https://www.kalrayinc.com/portfolio/boards/ for more information.
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
