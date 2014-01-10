Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W1d80-0002Wd-IC
 for barebox@lists.infradead.org; Fri, 10 Jan 2014 14:32:08 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 10 Jan 2014 15:31:40 +0100
Message-Id: <1389364300-8742-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1389364300-8742-1-git-send-email-s.hauer@pengutronix.de>
References: <1389364300-8742-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/3] ARM: i.MX DFI FS700-M60: Update for new boards
To: barebox@lists.infradead.org

This adds support for new board variants. Now Supported are:

- i.MX6q module with 1GiB Micron RAM
- i.MX6d/q modules with 1GiB/2GiB Nanya RAM
- i.MX6s modules with 512MiB/1GiB Nanya RAM

This has been tested on:

- i.MX6q module with 1GiB Micron RAM
- i.MX6d module with 2GiB Nanya RAM
- i.MX6s module with 1GiB Nanya RAM

The possible RAM equipment is:

- For the 512MiB module: 2x Nanya nt5cb128m16fp-di
- For the 1GiB modules: 2x Nanya nt5cc256m16cp or 4x Micron MT41K128M16JT-125
- For the 2GiB module: 4x Nanya nt5cc256m16cp

The 512MiB Nanya board is assumed to work with the same DCD table
as the 1GiB Nanya board. The variant is detected by mirroring at
512MiB, but this hasn't been tested by Pengutronix.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/dfi-fs700-m60/Makefile             |   5 +-
 arch/arm/boards/dfi-fs700-m60/board.c              |  31 +++++
 .../flash-header-fs700-m60-6q-micron.imxcfg        | 104 +++++++++++++++++
 .../flash-header-fs700-m60-6q-nanya.imxcfg         | 102 ++++++++++++++++
 .../dfi-fs700-m60/flash-header-fs700-m60-6q.imxcfg | 128 ---------------------
 .../dfi-fs700-m60/flash-header-fs700-m60-6s.imxcfg |  40 +++----
 arch/arm/boards/dfi-fs700-m60/lowlevel.c           |  71 +++++++++++-
 arch/arm/dts/imx6qdl-dfi-fs700-m60.dtsi            |   4 -
 images/Makefile.imx                                |  15 ++-
 9 files changed, 339 insertions(+), 161 deletions(-)
 create mode 100644 arch/arm/boards/dfi-fs700-m60/flash-header-fs700-m60-6q-micron.imxcfg
 create mode 100644 arch/arm/boards/dfi-fs700-m60/flash-header-fs700-m60-6q-nanya.imxcfg
 delete mode 100644 arch/arm/boards/dfi-fs700-m60/flash-header-fs700-m60-6q.imxcfg

diff --git a/arch/arm/boards/dfi-fs700-m60/Makefile b/arch/arm/boards/dfi-fs700-m60/Makefile
index 28d4f29..2d0ec7c 100644
--- a/arch/arm/boards/dfi-fs700-m60/Makefile
+++ b/arch/arm/boards/dfi-fs700-m60/Makefile
@@ -1,5 +1,4 @@
 obj-y += board.o
-obj-y += flash-header-fs700-m60-6s.dcd.o flash-header-fs700-m60-6q.dcd.o
-extra-y += flash-header-fs700-m60-6s.dcd.S flash-header-fs700-m60-6q.dcd.S
-extra-y += flash-header-fs700-m60-6s.dcd flash-header-fs700-m60-6q.dcd
+extra-y += flash-header-fs700-m60-6s.dcd.S flash-header-fs700-m60-6q-nanya.dcd.S flash-header-fs700-m60-6q-micron.dcd.S
+extra-y += flash-header-fs700-m60-6s.dcd flash-header-fs700-m60-6q-nanya.dcd flash-header-fs700-m60-6q-micron.dcd
 lwl-y += lowlevel.o
diff --git a/arch/arm/boards/dfi-fs700-m60/board.c b/arch/arm/boards/dfi-fs700-m60/board.c
index 7544ec1..cefb6ce 100644
--- a/arch/arm/boards/dfi-fs700-m60/board.c
+++ b/arch/arm/boards/dfi-fs700-m60/board.c
@@ -39,6 +39,37 @@
 #include <mach/generic.h>
 #include <mach/bbu.h>
 
+/*
+ * This board can have 512MiB, 1GiB or 2GiB of SDRAM. The actual amount of SDRAM
+ * is detected using mirror detection in lowlevel init and is stored in the first
+ * SDRAM address from the lowlevel code.
+ */
+static int dfi_fs700_m60_mem_init(void)
+{
+	u32 memsize;
+
+	if (!of_machine_is_compatible("dfi,fs700-m60"))
+		return 0;
+
+	memsize = *(u32 *)0x10000000;
+
+	/* play safe if we find some corrupted amount of SDRAM */
+	switch (memsize) {
+	case SZ_512M:
+	case SZ_1G:
+	case SZ_2G:
+		break;
+	default:
+		pr_err("unknown SDRAM size 0x%08x defaulting to 512MiB\n", memsize);
+		memsize = SZ_512M;
+	}
+
+	arm_add_mem_device("ram0", 0x10000000, memsize);
+
+	return 0;
+}
+mem_initcall(dfi_fs700_m60_mem_init);
+
 static int ar8031_phy_fixup(struct phy_device *dev)
 {
 	u16 val;
diff --git a/arch/arm/boards/dfi-fs700-m60/flash-header-fs700-m60-6q-micron.imxcfg b/arch/arm/boards/dfi-fs700-m60/flash-header-fs700-m60-6q-micron.imxcfg
new file mode 100644
index 0000000..835d0c7
--- /dev/null
+++ b/arch/arm/boards/dfi-fs700-m60/flash-header-fs700-m60-6q-micron.imxcfg
@@ -0,0 +1,104 @@
+loadaddr 0x27800000
+soc imx6
+dcdofs 0x400
+
+wm 32 0x020e050c 0x00000030
+wm 32 0x020e0510 0x00020030
+wm 32 0x020e0514 0x00020030
+wm 32 0x020e0518 0x00000030
+wm 32 0x020e051c 0x00000030
+wm 32 0x020e0520 0x00020030
+wm 32 0x020e0524 0x00000030
+wm 32 0x020e0528 0x00020030
+wm 32 0x020e056c 0x00020030
+wm 32 0x020e0578 0x00020030
+wm 32 0x020e057c 0x00020030
+wm 32 0x020e0588 0x00020030
+wm 32 0x020e058c 0x00000000
+wm 32 0x020e0590 0x00003000
+wm 32 0x020e0594 0x00020030
+wm 32 0x020e0598 0x00003000
+wm 32 0x020e059c 0x00003030
+wm 32 0x020e05a0 0x00003030
+wm 32 0x020e05a8 0x00000030
+wm 32 0x020e05ac 0x00020030
+wm 32 0x020e05b0 0x00000030
+wm 32 0x020e05b4 0x00020030
+wm 32 0x020e05bc 0x00020030
+wm 32 0x020e05b8 0x00000030
+wm 32 0x020e05c0 0x00000030
+wm 32 0x020e05c4 0x00020030
+wm 32 0x020e0748 0x00000030
+wm 32 0x020e074c 0x00000030
+wm 32 0x020e0750 0x00020000
+wm 32 0x020e0758 0x00000000
+wm 32 0x020e0774 0x00020000
+wm 32 0x020e0784 0x00000030
+wm 32 0x020e0788 0x00000030
+wm 32 0x020e078c 0x00000030
+wm 32 0x020e0794 0x00000030
+wm 32 0x020e0798 0x000c0000
+wm 32 0x020e079c 0x00000030
+wm 32 0x020e07a0 0x00000030
+wm 32 0x020e07a4 0x00000030
+wm 32 0x020e07a8 0x00000030
+wm 32 0x021b081c 0x33333333
+wm 32 0x021b0820 0x33333333
+wm 32 0x021b0824 0x33333333
+wm 32 0x021b0828 0x33333333
+wm 32 0x021b481c 0x33333333
+wm 32 0x021b4820 0x33333333
+wm 32 0x021b4824 0x33333333
+wm 32 0x021b4828 0x33333333
+wm 32 0x021b0018 0x00081740
+wm 32 0x021b001c 0x00008000
+wm 32 0x021b000c 0x555a7974
+wm 32 0x021b0010 0xdb538f64
+wm 32 0x021b0014 0x01ff00db
+wm 32 0x021b002c 0x000026d2
+wm 32 0x021b0030 0x005a1023
+wm 32 0x021b0008 0x09444040
+wm 32 0x021b0004 0x00025576
+wm 32 0x021b0040 0x00000027
+wm 32 0x021b0000 0x831a0000
+wm 32 0x021b001c 0x04088032
+wm 32 0x021b001c 0x0408803a
+wm 32 0x021b001c 0x00008033
+wm 32 0x021b001c 0x0000803b
+wm 32 0x021b001c 0x00428031
+wm 32 0x021b001c 0x00428039
+wm 32 0x021b001c 0x19308030
+wm 32 0x021b001c 0x19308038
+wm 32 0x021b001c 0x04008040
+wm 32 0x021b001c 0x04008048
+wm 32 0x021b0800 0xa1380003
+wm 32 0x021b4800 0xa1380003
+wm 32 0x021b0020 0x00005800
+wm 32 0x021b0818 0x00022227
+wm 32 0x021b4818 0x00022227
+wm 32 0x021b083c 0x434b0350
+wm 32 0x021b0840 0x034c0359
+wm 32 0x021b483c 0x434b0350
+wm 32 0x021b4840 0x03650348
+wm 32 0x021b0848 0x4436383b
+wm 32 0x021b4848 0x39393341
+wm 32 0x021b0850 0x35373933
+wm 32 0x021b4850 0x48254a36
+wm 32 0x021b080c 0x001f001f
+wm 32 0x021b0810 0x001f001f
+wm 32 0x021b480c 0x00440044
+wm 32 0x021b4810 0x00440044
+wm 32 0x021b08b8 0x00000800
+wm 32 0x021b48b8 0x00000800
+wm 32 0x021b001c 0x00000000
+wm 32 0x021b0404 0x00011006
+wm 32 0x020c4068 0x00c03f3f
+wm 32 0x020c406c 0x0030fc03
+wm 32 0x020c4070 0x0fffc000
+wm 32 0x020c4074 0x3ff00000
+wm 32 0x020c4078 0x00fff300
+wm 32 0x020c407c 0x0f0000c3
+wm 32 0x020c4080 0x000003ff
+wm 32 0x020e0010 0xf00000cf
+wm 32 0x020e0018 0x007f007f
+wm 32 0x020e001c 0x007f007f
diff --git a/arch/arm/boards/dfi-fs700-m60/flash-header-fs700-m60-6q-nanya.imxcfg b/arch/arm/boards/dfi-fs700-m60/flash-header-fs700-m60-6q-nanya.imxcfg
new file mode 100644
index 0000000..e5bc762
--- /dev/null
+++ b/arch/arm/boards/dfi-fs700-m60/flash-header-fs700-m60-6q-nanya.imxcfg
@@ -0,0 +1,102 @@
+loadaddr 0x27800000
+soc imx6
+dcdofs 0x400
+
+wm 32 0x020e0798 0x000C0000
+wm 32 0x020e0758 0x00000000
+wm 32 0x020e0588 0x00000030
+wm 32 0x020e0594 0x00000030
+wm 32 0x020e056c 0x00000030
+wm 32 0x020e0578 0x00000030
+wm 32 0x020e074c 0x00000030
+wm 32 0x020e057c 0x00000030
+wm 32 0x020e058c 0x00000000
+wm 32 0x020e059c 0x00000030
+wm 32 0x020e05a0 0x00000030
+wm 32 0x020e078c 0x00000030
+wm 32 0x020e0750 0x00020000
+wm 32 0x020e05a8 0x00000030
+wm 32 0x020e05b0 0x00000028
+wm 32 0x020e0524 0x00000028
+wm 32 0x020e051c 0x00000028
+wm 32 0x020e0518 0x00000028
+wm 32 0x020e050c 0x00000028
+wm 32 0x020e05b8 0x00000028
+wm 32 0x020e05c0 0x00000028
+wm 32 0x020e0774 0x00020000
+wm 32 0x020e0784 0x00000028
+wm 32 0x020e0788 0x00000028
+wm 32 0x020e0794 0x00000028
+wm 32 0x020e079c 0x00000028
+wm 32 0x020e07a0 0x00000028
+wm 32 0x020e07a4 0x00000028
+wm 32 0x020e07a8 0x00000028
+wm 32 0x020e0748 0x00000028
+wm 32 0x020e05ac 0x00000028
+wm 32 0x020e05b4 0x00000028
+wm 32 0x020e0528 0x00000028
+wm 32 0x020e0520 0x00000028
+wm 32 0x020e0514 0x00000028
+wm 32 0x020e0510 0x00000028
+wm 32 0x020e05bc 0x00000028
+wm 32 0x020e05c4 0x00000028
+
+wm 32 0x021b0800 0xA1390003
+wm 32 0x021b080c 0x001F001F
+wm 32 0x021b0810 0x001F001F
+wm 32 0x021b480c 0x001F001F
+wm 32 0x021b4810 0x001F001F
+
+wm 32 0x021b083c 0x43260335
+wm 32 0x021b0840 0x031A030B
+wm 32 0x021b483c 0x4323033B
+wm 32 0x021b4840 0x0323026F
+
+wm 32 0x021b0848 0x483D4545
+wm 32 0x021b4848 0x44433E48
+
+wm 32 0x021b0850 0x41444840
+wm 32 0x021b4850 0x4835483E
+
+wm 32 0x021b081c 0x33333333
+wm 32 0x021b0820 0x33333333
+wm 32 0x021b0824 0x33333333
+wm 32 0x021b0828 0x33333333
+
+wm 32 0x021b481c 0x33333333
+wm 32 0x021b4820 0x33333333
+wm 32 0x021b4824 0x33333333
+wm 32 0x021b4828 0x33333333
+
+wm 32 0x021b08b8 0x00000800
+wm 32 0x021b48b8 0x00000800
+
+wm 32 0x021b0004 0x00020036
+wm 32 0x021b0008 0x09444040
+
+wm 32 0x021b000c 0x8A8F7955
+wm 32 0x021b0010 0xFF328F64
+wm 32 0x021b0014 0x01FF00DB
+
+wm 32 0x021b0018 0x00001740
+wm 32 0x021b001c 0x00008000
+
+wm 32 0x021b002c 0x000026D2
+
+wm 32 0x021b0030 0x008F1023
+wm 32 0x021b0040 0x00000047
+wm 32 0x021b0000 0x841A0000
+
+wm 32 0x021b001c 0x04088032
+wm 32 0x021b001c 0x00008033
+wm 32 0x021b001c 0x00048031
+wm 32 0x021b001c 0x09408030
+wm 32 0x021b001c 0x04008040
+
+wm 32 0x021b0020 0x00005800
+wm 32 0x021b0818 0x00011117
+wm 32 0x021b4818 0x00011117
+
+wm 32 0x021b0004 0x00025576
+wm 32 0x021b0404 0x00011006
+wm 32 0x021b001c 0x00000000
diff --git a/arch/arm/boards/dfi-fs700-m60/flash-header-fs700-m60-6q.imxcfg b/arch/arm/boards/dfi-fs700-m60/flash-header-fs700-m60-6q.imxcfg
deleted file mode 100644
index f88157f..0000000
--- a/arch/arm/boards/dfi-fs700-m60/flash-header-fs700-m60-6q.imxcfg
+++ /dev/null
@@ -1,128 +0,0 @@
-loadaddr 0x27800000
-soc imx6
-dcdofs 0x400
-wm 32 0x020e05a8 0x00000030
-wm 32 0x020e05b0 0x00000030
-wm 32 0x020e0524 0x00000030
-wm 32 0x020e051c 0x00000030
-
-wm 32 0x020e0518 0x00000030
-wm 32 0x020e050c 0x00000030
-wm 32 0x020e05b8 0x00000030
-wm 32 0x020e05c0 0x00000030
-
-wm 32 0x020e05ac 0x00020030
-wm 32 0x020e05b4 0x00020030
-wm 32 0x020e0528 0x00020030
-wm 32 0x020e0520 0x00020030
-
-wm 32 0x020e0514 0x00020030
-wm 32 0x020e0510 0x00020030
-wm 32 0x020e05bc 0x00020030
-wm 32 0x020e05c4 0x00020030
-
-wm 32 0x020e056c 0x00020030
-wm 32 0x020e0578 0x00020030
-wm 32 0x020e0588 0x00020030
-wm 32 0x020e0594 0x00020030
-
-wm 32 0x020e057c 0x00020030
-wm 32 0x020e0590 0x00003000
-wm 32 0x020e0598 0x00003000
-wm 32 0x020e058c 0x00000000
-
-wm 32 0x020e059c 0x00003030
-wm 32 0x020e05a0 0x00003030
-wm 32 0x020e0784 0x00000030
-wm 32 0x020e0788 0x00000030
-
-wm 32 0x020e0794 0x00000030
-wm 32 0x020e079c 0x00000030
-wm 32 0x020e07a0 0x00000030
-wm 32 0x020e07a4 0x00000030
-
-wm 32 0x020e07a8 0x00000030
-wm 32 0x020e0748 0x00000030
-wm 32 0x020e074c 0x00000030
-wm 32 0x020e0750 0x00020000
-
-wm 32 0x020e0758 0x00000000
-wm 32 0x020e0774 0x00020000
-wm 32 0x020e078c 0x00000030
-wm 32 0x020e0798 0x000C0000
-
-wm 32 0x021b081c 0x33333333
-wm 32 0x021b0820 0x33333333
-wm 32 0x021b0824 0x33333333
-wm 32 0x021b0828 0x33333333
-
-wm 32 0x021b481c 0x33333333
-wm 32 0x021b4820 0x33333333
-wm 32 0x021b4824 0x33333333
-wm 32 0x021b4828 0x33333333
-
-wm 32 0x021b0018 0x00081740
-
-wm 32 0x021b001c 0x00008000
-wm 32 0x021b000c 0x555A7974
-wm 32 0x021b0010 0xDB538F64
-wm 32 0x021b0014 0x01FF00DB
-wm 32 0x021b002c 0x000026D2
-
-wm 32 0x021b0030 0x005A1023
-wm 32 0x021b0008 0x09444040
-wm 32 0x021b0004 0x00025576
-wm 32 0x021b0040 0x00000027
-wm 32 0x021b0000 0x831A0000
-
-wm 32 0x021b001c 0x04088032
-wm 32 0x021b001c 0x0408803A
-wm 32 0x021b001c 0x00008033
-wm 32 0x021b001c 0x0000803B
-wm 32 0x021b001c 0x00428031
-wm 32 0x021b001c 0x00428039
-wm 32 0x021b001c 0x19308030
-wm 32 0x021b001c 0x19308038
-
-wm 32 0x021b001c 0x04008040
-wm 32 0x021b001c 0x04008048
-wm 32 0x021b0800 0xA1380003
-wm 32 0x021b4800 0xA1380003
-wm 32 0x021b0020 0x00005800
-wm 32 0x021b0818 0x00022227
-wm 32 0x021b4818 0x00022227
-
-wm 32 0x021b083c 0x434B0350
-wm 32 0x021b0840 0x034C0359
-wm 32 0x021b483c 0x434B0350
-wm 32 0x021b4840 0x03650348
-wm 32 0x021b0848 0x4436383B
-wm 32 0x021b4848 0x39393341
-wm 32 0x021b0850 0x35373933
-wm 32 0x021b4850 0x48254A36
-
-wm 32 0x021b080c 0x001F001F
-wm 32 0x021b0810 0x001F001F
-
-wm 32 0x021b480c 0x00440044
-wm 32 0x021b4810 0x00440044
-
-wm 32 0x021b08b8 0x00000800
-wm 32 0x021b48b8 0x00000800
-
-wm 32 0x021b001c 0x00000000
-wm 32 0x021b0404 0x00011006
-
-wm 32 0x020c4068 0x00C03F3F
-wm 32 0x020c406c 0x0030FC03
-wm 32 0x020c4070 0x0FFFC000
-wm 32 0x020c4074 0x3FF00000
-wm 32 0x020c4078 0x00FFF300
-wm 32 0x020c407c 0x0F0000C3
-wm 32 0x020c4080 0x000003FF
-
-
-wm 32 0x020e0010 0xF00000CF
-
-wm 32 0x020e0018 0x007F007F
-wm 32 0x020e001c 0x007F007F
diff --git a/arch/arm/boards/dfi-fs700-m60/flash-header-fs700-m60-6s.imxcfg b/arch/arm/boards/dfi-fs700-m60/flash-header-fs700-m60-6s.imxcfg
index 9f5b14f..25cef4a 100644
--- a/arch/arm/boards/dfi-fs700-m60/flash-header-fs700-m60-6s.imxcfg
+++ b/arch/arm/boards/dfi-fs700-m60/flash-header-fs700-m60-6s.imxcfg
@@ -15,40 +15,40 @@ wm 32 0x020e04b4 0x00000030
 wm 32 0x020e04b8 0x00000030
 wm 32 0x020e076c 0x00000030
 wm 32 0x020e0750 0x00020000
-wm 32 0x020e04bc 0x00000030
-wm 32 0x020e04c0 0x00000030
-wm 32 0x020e04c4 0x00000030
-wm 32 0x020e04c8 0x00000030
+wm 32 0x020e04bc 0x00000028
+wm 32 0x020e04c0 0x00000028
+wm 32 0x020e04c4 0x00000028
+wm 32 0x020e04c8 0x00000028
 wm 32 0x020e0760 0x00020000
-wm 32 0x020e0764 0x00000030
-wm 32 0x020e0770 0x00000030
-wm 32 0x020e0778 0x00000030
-wm 32 0x020e077c 0x00000030
-wm 32 0x020e0470 0x00000030
-wm 32 0x020e0474 0x00000030
-wm 32 0x020e0478 0x00000030
-wm 32 0x020e047c 0x00000030
+wm 32 0x020e0764 0x00000028
+wm 32 0x020e0770 0x00000028
+wm 32 0x020e0778 0x00000028
+wm 32 0x020e077c 0x00000028
+wm 32 0x020e0470 0x00000028
+wm 32 0x020e0474 0x00000028
+wm 32 0x020e0478 0x00000028
+wm 32 0x020e047c 0x00000028
 wm 32 0x021b0800 0xa1390003
 wm 32 0x021b080c 0x001f001f
 wm 32 0x021b0810 0x001f001f
-wm 32 0x021b083c 0x42190219
-wm 32 0x021b0840 0x017b0177
-wm 32 0x021b0848 0x4b4d4e4d
-wm 32 0x021b0850 0x3f3e2d36
+wm 32 0x021b083c 0x421c0216
+wm 32 0x021b0840 0x017b017a
+wm 32 0x021b0848 0x4b4a4e4c
+wm 32 0x021b0850 0x3f3f3334
 wm 32 0x021b081c 0x33333333
 wm 32 0x021b0820 0x33333333
 wm 32 0x021b0824 0x33333333
 wm 32 0x021b0828 0x33333333
 wm 32 0x021b08b8 0x00000800
-wm 32 0x021b0004 0x0002002d
+wm 32 0x021b0004 0x00020025
 wm 32 0x021b0008 0x00333030
-wm 32 0x021b000c 0x3f435313
+wm 32 0x021b000c 0x676b5313
 wm 32 0x021b0010 0xb66e8b63
 wm 32 0x021b0014 0x01ff00db
 wm 32 0x021b0018 0x00001740
 wm 32 0x021b001c 0x00008000
 wm 32 0x021b002c 0x000026d2
-wm 32 0x021b0030 0x00431023
+wm 32 0x021b0030 0x006b1023
 wm 32 0x021b0040 0x00000027
 wm 32 0x021b0000 0x84190000
 wm 32 0x021b001c 0x04008032
@@ -58,6 +58,6 @@ wm 32 0x021b001c 0x05208030
 wm 32 0x021b001c 0x04008040
 wm 32 0x021b0020 0x00005800
 wm 32 0x021b0818 0x00011117
-wm 32 0x021b0004 0x0002556d
+wm 32 0x021b0004 0x00025565
 wm 32 0x021b0404 0x00011006
 wm 32 0x021b001c 0x00000000
diff --git a/arch/arm/boards/dfi-fs700-m60/lowlevel.c b/arch/arm/boards/dfi-fs700-m60/lowlevel.c
index 2995bd4..f9eaa58 100644
--- a/arch/arm/boards/dfi-fs700-m60/lowlevel.c
+++ b/arch/arm/boards/dfi-fs700-m60/lowlevel.c
@@ -35,6 +35,8 @@ static inline void early_uart_init(void)
 	writel(0x0000047f, MX6_UART1_BASE_ADDR + 0xa4);
 	writel(0x0000c34f, MX6_UART1_BASE_ADDR + 0xa8);
 	writel(0x00000001, MX6_UART1_BASE_ADDR + 0x80);
+
+	putc_ll('>');
 }
 
 static inline void early_uart_init_6q(void)
@@ -59,20 +61,85 @@ static inline void early_uart_init_6s(void)
 	early_uart_init();
 }
 
+static inline unsigned int memsize_512M_1G(void)
+{
+	volatile u32 *a = (u32 *)0x10000000;
+	volatile u32 *b = (u32 *)0x30000000;
+	u32 size;
+
+	*a = 0x55555555;
+	*b = 0xaaaaaaaa;
+
+	if (*a == 0xaaaaaaaa)
+		size = SZ_512M;
+	else
+		size = SZ_1G;
+
+	*a = size;
+
+	return size;
+}
+
+static inline unsigned int memsize_1G_2G(void)
+{
+	volatile u32 *a = (u32 *)0x10000000;
+	volatile u32 *b = (u32 *)0x50000000;
+	u32 size;
+
+	*a = 0x55555555;
+	*b = 0xaaaaaaaa;
+
+	if (*a == 0xaaaaaaaa)
+		size = SZ_1G;
+	else
+		size = SZ_2G;
+
+	*a = size;
+
+	return size;
+}
+
 extern char __dtb_imx6q_dfi_fs700_m60_6q_start[];
 
-ENTRY_FUNCTION(start_imx6q_dfi_fs700_m60_6q, r0, r1, r2)
+ENTRY_FUNCTION(start_imx6q_dfi_fs700_m60_6q_nanya, r0, r1, r2)
 {
 	uint32_t fdt;
+	int i;
 
 	arm_cpu_lowlevel_init();
 
 	arm_setup_stack(0x00940000 - 8);
 
+	for (i = 0x68; i <= 0x80; i += 4)
+		writel(0xffffffff, MX6_CCM_BASE_ADDR + i);
+
 	early_uart_init_6q();
 
 	fdt = (uint32_t)__dtb_imx6q_dfi_fs700_m60_6q_start - get_runtime_offset();
 
+	barebox_arm_entry(0x10000000, memsize_1G_2G(), fdt);
+}
+
+ENTRY_FUNCTION(start_imx6q_dfi_fs700_m60_6q_micron, r0, r1, r2)
+{
+	uint32_t fdt;
+	int i;
+
+	__barebox_arm_head();
+
+	arm_cpu_lowlevel_init();
+
+	arm_setup_stack(0x00940000 - 8);
+
+	for (i = 0x68; i <= 0x80; i += 4)
+		writel(0xffffffff, MX6_CCM_BASE_ADDR + i);
+
+	early_uart_init_6q();
+
+	fdt = (uint32_t)__dtb_imx6q_dfi_fs700_m60_6q_start - get_runtime_offset();
+
+	*(uint32_t *)0x10000000 = SZ_1G;
+
 	barebox_arm_entry(0x10000000, SZ_1G, fdt);
 }
 
@@ -94,5 +161,5 @@ ENTRY_FUNCTION(start_imx6dl_dfi_fs700_m60_6s, r0, r1, r2)
 
 	fdt = (uint32_t)__dtb_imx6dl_dfi_fs700_m60_6s_start - get_runtime_offset();
 
-	barebox_arm_entry(0x10000000, SZ_1G, fdt);
+	barebox_arm_entry(0x10000000, memsize_512M_1G(), fdt);
 }
diff --git a/arch/arm/dts/imx6qdl-dfi-fs700-m60.dtsi b/arch/arm/dts/imx6qdl-dfi-fs700-m60.dtsi
index 67b2138..46b32aa 100644
--- a/arch/arm/dts/imx6qdl-dfi-fs700-m60.dtsi
+++ b/arch/arm/dts/imx6qdl-dfi-fs700-m60.dtsi
@@ -1,8 +1,4 @@
 / {
-	memory {
-		reg = <0x10000000 0x40000000>;
-	};
-
 	regulators {
 		compatible = "simple-bus";
 
diff --git a/images/Makefile.imx b/images/Makefile.imx
index 49c7e3e..3127495 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -67,10 +67,17 @@ CFG_start_imx6dl_dfi_fs700_m60_6s.pblx.imximg = $(board)/dfi-fs700-m60/flash-hea
 FILE_barebox-dfi-fs700-m60-6s.img = start_imx6dl_dfi_fs700_m60_6s.pblx.imximg
 image-$(CONFIG_MACH_DFI_FS700_M60) += barebox-dfi-fs700-m60-6s.img
 
-pblx-$(CONFIG_MACH_DFI_FS700_M60) += start_imx6q_dfi_fs700_m60_6q
-CFG_start_imx6q_dfi_fs700_m60_6q.pblx.imximg = $(board)/dfi-fs700-m60/flash-header-fs700-m60-6q.imxcfg
-FILE_barebox-dfi-fs700-m60-6q.img = start_imx6q_dfi_fs700_m60_6q.pblx.imximg
-image-$(CONFIG_MACH_DFI_FS700_M60) += barebox-dfi-fs700-m60-6q.img
+pblx-$(CONFIG_MACH_DFI_FS700_M60) += start_imx6q_dfi_fs700_m60_6q_micron
+CFG_start_imx6q_dfi_fs700_m60_6q_micron.pblx.imximg = $(board)/dfi-fs700-m60/flash-header-fs700-m60-6q-micron.imxcfg
+imximage-$(CONFIG_MACH_DFI_FS700_M60) += start_imx6q_dfi_fs700_m60_6q_micron.pblx.imximg
+FILE_barebox-dfi-fs700-m60-6q-micron.img = start_imx6q_dfi_fs700_m60_6q_micron.pblx.imximg
+image-$(CONFIG_MACH_DFI_FS700_M60) += barebox-dfi-fs700-m60-6q-micron.img
+
+pblx-$(CONFIG_MACH_DFI_FS700_M60) += start_imx6q_dfi_fs700_m60_6q_nanya
+CFG_start_imx6q_dfi_fs700_m60_6q_nanya.pblx.imximg = $(board)/dfi-fs700-m60/flash-header-fs700-m60-6q-nanya.imxcfg
+imximage-$(CONFIG_MACH_DFI_FS700_M60) += start_imx6q_dfi_fs700_m60_6q_nanya.pblx.imximg
+FILE_barebox-dfi-fs700-m60-6q-nanya.img = start_imx6q_dfi_fs700_m60_6q_nanya.pblx.imximg
+image-$(CONFIG_MACH_DFI_FS700_M60) += barebox-dfi-fs700-m60-6q-nanya.img
 
 pblx-$(CONFIG_MACH_SABRELITE) += start_imx6_sabrelite
 CFG_start_imx6_sabrelite.pblx.imximg = $(board)/freescale-mx6-sabrelite/flash-header-mx6-sabrelite.imxcfg
-- 
1.8.5.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
