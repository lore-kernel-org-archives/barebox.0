Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVUvu-0006UK-T8
 for barebox@lists.infradead.org; Tue, 28 May 2019 05:46:00 +0000
Received: by mail-pl1-x643.google.com with SMTP id g9so7835157plm.6
 for <barebox@lists.infradead.org>; Mon, 27 May 2019 22:45:58 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 27 May 2019 22:45:11 -0700
Message-Id: <20190528054513.21313-3-andrew.smirnov@gmail.com>
In-Reply-To: <20190528054513.21313-1-andrew.smirnov@gmail.com>
References: <20190528054513.21313-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 2/4] Documentation: Add zii-imx7d-rpu2 board documentation
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add OpenOCD scipts and notes on usage for various ZII i.MX7 based
boards.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 .../boards/imx/zii-imx7d-rpu2/bootstrap.sh    |   6 +
 .../boards/imx/zii-imx7d-rpu2/openocd.cfg     | 143 ++++++++++++++++++
 .../boards/imx/zii-imx7d-rpu2/readme.rst      |  46 ++++++
 3 files changed, 195 insertions(+)
 create mode 100755 Documentation/boards/imx/zii-imx7d-rpu2/bootstrap.sh
 create mode 100644 Documentation/boards/imx/zii-imx7d-rpu2/openocd.cfg
 create mode 100644 Documentation/boards/imx/zii-imx7d-rpu2/readme.rst

diff --git a/Documentation/boards/imx/zii-imx7d-rpu2/bootstrap.sh b/Documentation/boards/imx/zii-imx7d-rpu2/bootstrap.sh
new file mode 100755
index 000000000..49bab0320
--- /dev/null
+++ b/Documentation/boards/imx/zii-imx7d-rpu2/bootstrap.sh
@@ -0,0 +1,6 @@
+#!/bin/sh
+
+OPENOCD=${OPENOCD:-openocd}
+DIR=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
+
+${OPENOCD} -f ${DIR}/openocd.cfg --command "adapter_khz 10000; init; safe_reset; start_barebox;"
diff --git a/Documentation/boards/imx/zii-imx7d-rpu2/openocd.cfg b/Documentation/boards/imx/zii-imx7d-rpu2/openocd.cfg
new file mode 100644
index 000000000..675832b7c
--- /dev/null
+++ b/Documentation/boards/imx/zii-imx7d-rpu2/openocd.cfg
@@ -0,0 +1,143 @@
+#
+# Board configuration file for the Zodiac RPU2 board
+#
+
+interface ftdi
+ftdi_vid_pid 0x0403 0x6011
+
+ftdi_layout_init 0x0038 0x007b
+ftdi_layout_signal nSRST -data 0x0010
+ftdi_layout_signal LED -data 0x0020
+
+transport select jtag
+
+reset_config srst_only srst_push_pull connect_deassert_srst
+
+# set a slow default JTAG clock, can be overridden later
+adapter_khz 1000
+
+# need at least 100ms delay after SRST release for JTAG
+adapter_nsrst_delay 100
+
+# source the target file
+source [find target/imx7.cfg]
+source [find mem_helper.tcl]
+
+# function to disable the on-chip watchdog
+proc disable_wdog { } {
+	echo "Bootstrap: Disabling SoC watchdog"
+	mwh phys 0x30280008 0x00
+}
+
+set ddr_init_failed 0
+
+proc check_bits_set_32 { addr mask } {
+    while { [expr [mrw $addr] & $mask == 0] } { }
+}
+
+proc ddr_init { } {
+	echo "Bootstrap: Initializing DDR"
+
+	mww phys 0x30340004 0x4F400005
+	# Clear then set bit30 to ensure exit from DDR retention
+	mww phys 0x30360388 0x40000000
+	mww phys 0x30360384 0x40000000
+
+	mww phys 0x30391000 0x00000002
+	mww phys 0x307a0000 0x01040001
+	mww phys 0x307a01a0 0x80400003
+	mww phys 0x307a01a4 0x00100020
+	mww phys 0x307a01a8 0x80100004
+	mww phys 0x307a0064 0x00400046
+	mww phys 0x307a0490 0x00000001
+	mww phys 0x307a00d0 0x00020083
+	mww phys 0x307a00d4 0x00690000
+	mww phys 0x307a00dc 0x09300004
+	mww phys 0x307a00e0 0x04080000
+	mww phys 0x307a00e4 0x00100004
+	mww phys 0x307a00f4 0x0000033f
+	mww phys 0x307a0100 0x09081109
+	mww phys 0x307a0104 0x0007020d
+	mww phys 0x307a0108 0x03040407
+	mww phys 0x307a010c 0x00002006
+	mww phys 0x307a0110 0x04020205
+	mww phys 0x307a0114 0x03030202
+	mww phys 0x307a0120 0x00000803
+	mww phys 0x307a0180 0x00800020
+	mww phys 0x307a0184 0x02000100
+	mww phys 0x307a0190 0x02098204
+	mww phys 0x307a0194 0x00030303
+	mww phys 0x307a0200 0x00000016
+	mww phys 0x307a0204 0x00171717
+	mww phys 0x307a0214 0x04040404
+	mww phys 0x307a0218 0x0f040404
+	mww phys 0x307a0240 0x06000604
+	mww phys 0x307a0244 0x00000001
+	mww phys 0x30391000 0x00000000
+	mww phys 0x30790000 0x17420f40
+	mww phys 0x30790004 0x10210100
+	mww phys 0x30790010 0x00060807
+	mww phys 0x307900b0 0x1010007e
+	mww phys 0x3079009c 0x00000d6e
+	mww phys 0x30790020 0x08080808
+	mww phys 0x30790030 0x08080808
+	mww phys 0x30790050 0x01000010
+	mww phys 0x30790050 0x00000010
+
+	mww phys 0x307900c0 0x0e407304
+	mww phys 0x307900c0 0x0e447304
+	mww phys 0x307900c0 0x0e447306
+
+	check_bits_set_32 0x307900c4 0x1
+
+	mww phys 0x307900c0 0x0e447304
+	mww phys 0x307900c0 0x0e407304
+
+	mww phys 0x30384130 0x00000000
+	mww phys 0x30340020 0x00000178
+	mww phys 0x30384130 0x00000002
+	mww phys 0x30790018 0x0000000f
+
+	check_bits_set_32 0x307900c4 0x1
+}
+
+# This function applies the initial configuration after a "reset init"
+# command
+proc board_init { } {
+	global ddr_init_failed
+	disable_wdog
+
+	if {[catch {ddr_init} errmsg]} {
+		set ddr_init_failed 1
+	} else {
+		set ddr_init_failed 0
+	}
+}
+
+proc safe_reset {} {
+	global ddr_init_failed
+
+	set status 5
+	while { $status != 0 } {
+		reset init
+		if { $ddr_init_failed == 1 } {
+			incr status -1
+		} else {
+			set status 0
+		}
+	}
+}
+
+proc start_barebox { } {
+	set MX7_DDR_BASE_ADDR 0x80000000
+ 	echo "Bootstrap: Loading Barebox"
+	halt
+	load_image images/barebox-zii-imx7d-rpu2.img $MX7_DDR_BASE_ADDR bin
+	arm core_state arm
+	echo [format "Bootstrap: Jumping to 0x%08x" $MX7_DDR_BASE_ADDR]
+	resume $MX7_DDR_BASE_ADDR
+}
+
+# hook the init function into the reset-init event
+${_TARGETNAME}.0 configure -event reset-init { board_init }
+
diff --git a/Documentation/boards/imx/zii-imx7d-rpu2/readme.rst b/Documentation/boards/imx/zii-imx7d-rpu2/readme.rst
new file mode 100644
index 000000000..08d30c592
--- /dev/null
+++ b/Documentation/boards/imx/zii-imx7d-rpu2/readme.rst
@@ -0,0 +1,46 @@
+ZII i.MX7D Based Boards
+=======================
+
+Building Barebox
+----------------
+
+To build Barebox for ZII i.MX7 based boards do the following:
+
+.. code-block:: sh
+
+  make ARCH=arm CROSS_COMPILE=<ARM toolchain prefix> mrproper
+  make ARCH=arm CROSS_COMPILE=<ARM toolchain prefix> imx_v7_defconfig
+  make ARCH=arm CROSS_COMPILE=<ARM toolchain prefix>
+
+Uploading Barebox via JTAG
+--------------------------
+
+Barebox can be bootstrapped via JTAG using OpenOCD (latest master) as
+follows:
+
+.. code-block:: sh
+
+  cd barebox
+  Documentation/boards/imx/zii-imx7d-rpu2/bootstrap.sh
+
+custom OpenOCD binary and options can be specified as follows:
+
+.. code-block:: sh
+
+  OPENOCD="../openocd/src/openocd -s ../openocd/tcl " Documentation/boards/imx/zii-imx7d-rpu2/bootstrap.sh
+
+
+Disabling DSA in Embedeed Switch
+--------------------------------
+
+Booting Linux kernel that device ships with will re-configure on-board
+switch into DSA mode, which woudl make Ethernet connection unusable in
+Barebox. To undo that and re-configure switch into dumb/pass-through
+mode do the following:
+
+.. code-block:: sh
+
+  memset -b -d /dev/switch-eeprom 0x00 0xff 4
+
+Once that doen, power cycling the device should force the switch to
+re-read EEPROM and reconfigure itself.
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
