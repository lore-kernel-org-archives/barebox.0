Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVUvv-0006Ud-JF
 for barebox@lists.infradead.org; Tue, 28 May 2019 05:46:01 +0000
Received: by mail-pl1-x641.google.com with SMTP id a5so7838962pls.12
 for <barebox@lists.infradead.org>; Mon, 27 May 2019 22:45:59 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 27 May 2019 22:45:12 -0700
Message-Id: <20190528054513.21313-4-andrew.smirnov@gmail.com>
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
Subject: [PATCH 3/4] Documentation: Add zii-imx6-rdu2 board documentation
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add OpenOCD scipts and notes on usage for various ZII i.MX6Q based
boards.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 .../boards/imx/zii-imx6-rdu2/bootstrap.sh     |   6 +
 .../boards/imx/zii-imx6-rdu2/openocd.cfg      | 282 ++++++++++++++++++
 .../boards/imx/zii-imx6-rdu2/readme.rst       |  30 ++
 3 files changed, 318 insertions(+)
 create mode 100755 Documentation/boards/imx/zii-imx6-rdu2/bootstrap.sh
 create mode 100644 Documentation/boards/imx/zii-imx6-rdu2/openocd.cfg
 create mode 100644 Documentation/boards/imx/zii-imx6-rdu2/readme.rst

diff --git a/Documentation/boards/imx/zii-imx6-rdu2/bootstrap.sh b/Documentation/boards/imx/zii-imx6-rdu2/bootstrap.sh
new file mode 100755
index 000000000..7342e890e
--- /dev/null
+++ b/Documentation/boards/imx/zii-imx6-rdu2/bootstrap.sh
@@ -0,0 +1,6 @@
+#!/bin/sh
+
+OPENOCD=${OPENOCD:-openocd}
+DIR=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
+
+${OPENOCD} -f ${DIR}/openocd.cfg --command "adapter_khz 10000; init; reset init; start_barebox"
diff --git a/Documentation/boards/imx/zii-imx6-rdu2/openocd.cfg b/Documentation/boards/imx/zii-imx6-rdu2/openocd.cfg
new file mode 100644
index 000000000..c5a65c44e
--- /dev/null
+++ b/Documentation/boards/imx/zii-imx6-rdu2/openocd.cfg
@@ -0,0 +1,282 @@
+#
+# Board configuration file for the Zodiac RDU2 boards (6Q/6Q+ based)
+#
+interface ftdi
+ftdi_vid_pid 0x0403 0x6011
+
+ftdi_layout_init 0x0038 0x003b
+ftdi_layout_signal nSRST -data 0x0010
+ftdi_layout_signal LED -data 0x0020
+
+# select JTAG
+transport select jtag
+
+reset_config srst_only srst_push_pull connect_deassert_srst
+
+# set a slow default JTAG clock, can be overridden later
+adapter_khz 1000
+
+# delay after SRST goes inactive
+adapter_nsrst_delay 30
+
+# board has i.MX6Q(+) with 4 Cortex-A9 cores
+set CHIPNAME imx6q
+set IMX_FLAVOUR q
+
+source [find target/imx6.cfg]
+source [find mem_helper.tcl]
+
+proc disable_wdog { } {
+	echo "Bootstrap: Disabling SoC watchdog"
+	mwh phys 0x020bc000 0x30
+}
+
+proc ddr_init_imx6q { } {
+	echo "Bootstrap: Initializing DDR for i.MX6Q"
+
+	mww phys 0x020e0798 0x000C0000
+	mww phys 0x020e0758 0x00000000
+	mww phys 0x020e0588 0x00000030
+	mww phys 0x020e0594 0x00000030
+	mww phys 0x020e056c 0x00000030
+	mww phys 0x020e0578 0x00000030
+	mww phys 0x020e074c 0x00000030
+	mww phys 0x020e057c 0x00000030
+	mww phys 0x020e058c 0x00000000
+	mww phys 0x020e059c 0x00000030
+	mww phys 0x020e05a0 0x00000030
+	mww phys 0x020e078c 0x00000030
+	mww phys 0x020e0750 0x00020000
+	mww phys 0x020e05a8 0x00000028
+	mww phys 0x020e05b0 0x00000028
+	mww phys 0x020e0524 0x00000028
+	mww phys 0x020e051c 0x00000028
+	mww phys 0x020e0518 0x00000028
+	mww phys 0x020e050c 0x00000028
+	mww phys 0x020e05b8 0x00000028
+	mww phys 0x020e05c0 0x00000028
+	mww phys 0x020e0774 0x00020000
+	mww phys 0x020e0784 0x00000028
+	mww phys 0x020e0788 0x00000028
+	mww phys 0x020e0794 0x00000028
+	mww phys 0x020e079c 0x00000028
+	mww phys 0x020e07a0 0x00000028
+	mww phys 0x020e07a4 0x00000028
+	mww phys 0x020e07a8 0x00000028
+	mww phys 0x020e0748 0x00000028
+	mww phys 0x020e05ac 0x00000028
+	mww phys 0x020e05b4 0x00000028
+	mww phys 0x020e0528 0x00000028
+	mww phys 0x020e0520 0x00000028
+	mww phys 0x020e0514 0x00000028
+	mww phys 0x020e0510 0x00000028
+	mww phys 0x020e05bc 0x00000028
+	mww phys 0x020e05c4 0x00000028
+	mww phys 0x021b0800 0xa1390003
+	mww phys 0x021b080c 0x001F001F
+	mww phys 0x021b0810 0x001F001F
+	mww phys 0x021b480c 0x001F001F
+	mww phys 0x021b4810 0x001F001F
+	mww phys 0x021b083c 0x43260335
+	mww phys 0x021b0840 0x031A030B
+	mww phys 0x021b483c 0x4323033B
+	mww phys 0x021b4840 0x0323026F
+	mww phys 0x021b0848 0x483D4545
+	mww phys 0x021b4848 0x44433E48
+	mww phys 0x021b0850 0x41444840
+	mww phys 0x021b4850 0x4835483E
+	mww phys 0x021b081c 0x33333333
+	mww phys 0x021b0820 0x33333333
+	mww phys 0x021b0824 0x33333333
+	mww phys 0x021b0828 0x33333333
+	mww phys 0x021b481c 0x33333333
+	mww phys 0x021b4820 0x33333333
+	mww phys 0x021b4824 0x33333333
+	mww phys 0x021b4828 0x33333333
+	mww phys 0x021b08b8 0x00000800
+	mww phys 0x021b48b8 0x00000800
+	mww phys 0x021b0004 0x00020036
+	mww phys 0x021b0008 0x09444040
+	mww phys 0x021b000c 0x8A8F7955
+	mww phys 0x021b0010 0xFF328F64
+	mww phys 0x021b0014 0x01FF00DB
+	mww phys 0x021b0018 0x00001740
+	mww phys 0x021b001c 0x00008000
+	mww phys 0x021b002c 0x000026d2
+	mww phys 0x021b0030 0x008F1023
+	mww phys 0x021b0040 0x00000047
+	mww phys 0x021b0000 0x841A0000
+	mww phys 0x021b001c 0x04088032
+	mww phys 0x021b001c 0x00008033
+	mww phys 0x021b001c 0x00048031
+	mww phys 0x021b001c 0x09408030
+	mww phys 0x021b001c 0x04008040
+	mww phys 0x021b0020 0x00005800
+	mww phys 0x021b0818 0x00011117
+	mww phys 0x021b4818 0x00011117
+	mww phys 0x021b0004 0x00025576
+	mww phys 0x021b0404 0x00011006
+	mww phys 0x021b001c 0x00000000
+
+	# set the default clock gate to save power
+	mww phys 0x020c4068 0x00C03F3F
+	mww phys 0x020c406c 0x0030FC03
+	mww phys 0x020c4070 0x0FFFC000
+	mww phys 0x020c4074 0x3FF00000
+	mww phys 0x020c4078 0xFFFFF300
+	mww phys 0x020c407c 0x0F0000F3
+	mww phys 0x020c4080 0x00000FFF
+
+	# enable AXI cache for VDOA/VPU/IPU
+	mww phys 0x020e0010 0xF00000CF
+	# set IPU AXI-id0 Qos=0xf(bypass) AXI-id1 Qos=0x7
+	mww phys 0x020e0018 0x007F007F
+	mww phys 0x020e001c 0x007F007F
+}
+
+proc ddr_init_imx6qp { } {
+	echo "Bootstrap: Initializing DDR for i.MX6Q+"
+
+	mww phys 0x020e0798 0x000C0000
+	mww phys 0x020e0758 0x00000000
+	mww phys 0x020e0588 0x00000030
+	mww phys 0x020e0594 0x00000030
+	mww phys 0x020e056c 0x00000030
+	mww phys 0x020e0578 0x00000030
+	mww phys 0x020e074c 0x00000030
+	mww phys 0x020e057c 0x00000030
+	mww phys 0x020e058c 0x00000000
+	mww phys 0x020e059c 0x00000030
+	mww phys 0x020e05a0 0x00000030
+	mww phys 0x020e078c 0x00000030
+	mww phys 0x020e0750 0x00020000
+	mww phys 0x020e05a8 0x00000030
+	mww phys 0x020e05b0 0x00000030
+	mww phys 0x020e0524 0x00000030
+	mww phys 0x020e051c 0x00000030
+	mww phys 0x020e0518 0x00000030
+	mww phys 0x020e050c 0x00000030
+	mww phys 0x020e05b8 0x00000030
+	mww phys 0x020e05c0 0x00000030
+	mww phys 0x020e0774 0x00020000
+	mww phys 0x020e0784 0x00000030
+	mww phys 0x020e0788 0x00000030
+	mww phys 0x020e0794 0x00000030
+	mww phys 0x020e079c 0x00000030
+	mww phys 0x020e07a0 0x00000030
+	mww phys 0x020e07a4 0x00000030
+	mww phys 0x020e07a8 0x00000030
+	mww phys 0x020e0748 0x00000030
+	mww phys 0x020e05ac 0x00000030
+	mww phys 0x020e05b4 0x00000030
+	mww phys 0x020e0528 0x00000030
+	mww phys 0x020e0520 0x00000030
+	mww phys 0x020e0514 0x00000030
+	mww phys 0x020e0510 0x00000030
+	mww phys 0x020e05bc 0x00000030
+	mww phys 0x020e05c4 0x00000030
+	mww phys 0x021b0800 0xa1390003
+	mww phys 0x021b080c 0x001b001e
+	mww phys 0x021b0810 0x002e0029
+	mww phys 0x021b480c 0x001b002a
+	mww phys 0x021b4810 0x0019002c
+	mww phys 0x021b083c 0x43240334
+	mww phys 0x021b0840 0x0324031a
+	mww phys 0x021b483c 0x43340344
+	mww phys 0x021b4840 0x03280276
+	mww phys 0x021b0848 0x44383A3E
+	mww phys 0x021b4848 0x3C3C3846
+	mww phys 0x021b0850 0x2e303230
+	mww phys 0x021b4850 0x38283E34
+	mww phys 0x021b081c 0x33333333
+	mww phys 0x021b0820 0x33333333
+	mww phys 0x021b0824 0x33333333
+	mww phys 0x021b0828 0x33333333
+	mww phys 0x021b481c 0x33333333
+	mww phys 0x021b4820 0x33333333
+	mww phys 0x021b4824 0x33333333
+	mww phys 0x021b4828 0x33333333
+	mww phys 0x021b08c0 0x24912492
+	mww phys 0x021b48c0 0x24912492
+	mww phys 0x021b08b8 0x00000800
+	mww phys 0x021b48b8 0x00000800
+	mww phys 0x021b0004 0x00020036
+	mww phys 0x021b0008 0x09444040
+	mww phys 0x021b000c 0x898E7955
+	mww phys 0x021b0010 0xFF328F64
+	mww phys 0x021b0014 0x01FF00DB
+	mww phys 0x021b0018 0x00001740
+	mww phys 0x021b001c 0x00008000
+
+	mww phys 0x021b002c 0x000026d2
+	mww phys 0x021b0030 0x008E1023
+	mww phys 0x021b0040 0x00000047
+	mww phys 0x021b0400 0x14420000
+	mww phys 0x021b0000 0x841A0000
+	mww phys 0x00bb0008 0x00000004
+	mww phys 0x00bb000c 0x2891E41A
+	mww phys 0x00bb0038 0x00000564
+	mww phys 0x00bb0014 0x00000040
+	mww phys 0x00bb0028 0x00000020
+	mww phys 0x00bb002c 0x00000020
+	mww phys 0x021b001c 0x04088032
+	mww phys 0x021b001c 0x00008033
+	mww phys 0x021b001c 0x00048031
+	mww phys 0x021b001c 0x09408030
+	mww phys 0x021b001c 0x04008040
+	mww phys 0x021b0020 0x00005800
+	mww phys 0x021b0818 0x00011117
+	mww phys 0x021b4818 0x00011117
+	mww phys 0x021b0004 0x00025576
+	mww phys 0x021b0404 0x00011006
+	mww phys 0x021b001c 0x00000000
+
+	# set the default clock gate to save power
+	mww phys 0x020c4068 0x00C03F3F
+	mww phys 0x020c406c 0x0030FC03
+	mww phys 0x020c4070 0x0FFFC000
+	mww phys 0x020c4074 0x3FF00000
+	mww phys 0x020c4078 0xFFFFF300
+	mww phys 0x020c407c 0x0F0000F3
+	mww phys 0x020c4080 0x00000FFF
+
+	# enable AXI cache for VDOA/VPU/IPU
+	mww phys 0x020e0010 0xF00000CF
+	# set IPU AXI-id1 Qos=0x1 AXI-id0/2/3 Qos=0x7
+	mww phys 0x020e0018 0x77177717
+	mww phys 0x020e001c 0x77177717
+}
+
+proc ddr_init { } {
+	#
+	# Steps to detect 6Q vs 6Q+ are borrowed from
+	# arch/arm/mach-imx/inclue/mach/imx6.h
+	#
+	set MX6_ANATOP_BASE_ADDR 0x020c8000
+	set IMX6_ANATOP_SI_REV   0x260
+	set si_rev [mrw [expr $MX6_ANATOP_BASE_ADDR + $IMX6_ANATOP_SI_REV]]
+	set rev_major [expr ($si_rev >> 8) & 0xF]
+
+	if { $rev_major >= 1 } {
+		ddr_init_imx6qp
+	} else {
+		ddr_init_imx6q
+	}
+}
+
+proc start_barebox { } {
+	set MX6_DDR_BASE_ADDR 0x10000000
+	echo "Bootstrap: Loading Barebox"
+	halt
+	load_image images/barebox-zii-imx6-rdu2.img $MX6_DDR_BASE_ADDR bin
+	arm core_state arm
+	echo [format "Bootstrap: Jumping to 0x%08x" $MX6_DDR_BASE_ADDR]
+	resume $MX6_DDR_BASE_ADDR
+}
+
+proc board_init { } {
+	disable_wdog
+	ddr_init
+}
+
+${_TARGETNAME}.0 configure -event reset-init { board_init }
diff --git a/Documentation/boards/imx/zii-imx6-rdu2/readme.rst b/Documentation/boards/imx/zii-imx6-rdu2/readme.rst
new file mode 100644
index 000000000..155d30eae
--- /dev/null
+++ b/Documentation/boards/imx/zii-imx6-rdu2/readme.rst
@@ -0,0 +1,30 @@
+ZII i.MX6 RDU2 Boards
+=====================
+
+Building Barebox
+----------------
+
+To build Barebox for ZII RDU2 boards do the following:
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
+  Documentation/boards/imx/zii-imx6-rdu2/bootstrap.sh
+
+custom OpenOCD binary and options can be specified as follows:
+
+.. code-block:: sh
+
+  OPENOCD="../openocd/src/openocd -s ../openocd/tcl " Documentation/boards/imx/zii-imx6-rdu2/bootstrap.sh
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
