Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1avmkT-0004Gl-P9
 for barebox@lists.infradead.org; Thu, 28 Apr 2016 14:16:59 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 28 Apr 2016 16:16:29 +0200
Message-Id: <1461852989-26399-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1461852989-26399-1-git-send-email-s.hauer@pengutronix.de>
References: <1461852989-26399-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/4] ARM: i.MX: karo-tx6: Add support for the 2GiB i.MX6q+
 board variant
To: Barebox List <barebox@lists.infradead.org>

Different SDRAM setup, but same board otherwise.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 .../boards/karo-tx6x/flash-header-tx6qp-2g.imxcfg  | 183 +++++++++++++++++++++
 arch/arm/boards/karo-tx6x/lowlevel.c               |  20 +++
 images/Makefile.imx                                |   5 +
 3 files changed, 208 insertions(+)
 create mode 100644 arch/arm/boards/karo-tx6x/flash-header-tx6qp-2g.imxcfg

diff --git a/arch/arm/boards/karo-tx6x/flash-header-tx6qp-2g.imxcfg b/arch/arm/boards/karo-tx6x/flash-header-tx6qp-2g.imxcfg
new file mode 100644
index 0000000..455aab9
--- /dev/null
+++ b/arch/arm/boards/karo-tx6x/flash-header-tx6qp-2g.imxcfg
@@ -0,0 +1,183 @@
+soc imx6
+loadaddr 0x20000000
+dcdofs 0x400
+
+wm 32 0x020e00a4 0x00000016
+wm 32 0x020e00c4 0x00000011
+wm 32 0x020e03b8 0x0000f079
+wm 32 0x020e03d8 0x0000f079
+wm 32 0x020e0898 0x00000000
+wm 32 0x020e089c 0x00000000
+wm 32 0x020e0248 0x00000012
+wm 32 0x020e02c8 0x00000015
+wm 32 0x020e06b0 0x000030b0
+wm 32 0x020e00a0 0x00000015
+wm 32 0x020e03b4 0x000030b0
+wm 32 0x020e024c 0x00000005
+wm 32 0x020e061c 0x000030b0
+wm 32 0x020c402c 0x006336c1
+wm 32 0x020c4034 0x00012093
+wm 32 0x020c4038 0x00012090
+wm 32 0x020c80e0 0x00002001
+set_bits 32 0x020c4068 0x00000030
+set_bits 32 0x020c406c 0x00000c00
+set_bits 32 0x020c4070 0x000000c0
+set_bits 32 0x020c4078 0xff000000
+set_bits 32 0x020c407c 0x0f000000
+set_bits 32 0x020c4080 0x000003fc
+wm 32 0x020c80a0 0x00082029
+wm 32 0x020c80b0 0x0007a120
+wm 32 0x020c80c0 0x000f4240
+wm 32 0x020e0004 0x48640005
+wm 32 0x020e0010 0xf00000cf
+wm 32 0x020e0018 0x77177717
+wm 32 0x020e001c 0x77177717
+wm 32 0x020e02a8 0x00000001
+wm 32 0x020e02ac 0x00000001
+wm 32 0x020e0920 0x00000003
+wm 32 0x020e02c0 0x00000001
+wm 32 0x020e02c4 0x00000001
+wm 32 0x020e091c 0x00000003
+wm 32 0x020e02ec 0x00000000
+wm 32 0x020e05ac 0x00020030
+wm 32 0x020e05b4 0x00020030
+wm 32 0x020e0528 0x00020030
+wm 32 0x020e0520 0x00020030
+wm 32 0x020e0514 0x00020030
+wm 32 0x020e0510 0x00020030
+wm 32 0x020e05bc 0x00020030
+wm 32 0x020e05c4 0x00020030
+wm 32 0x020e052c 0x00020200
+wm 32 0x020e0530 0x00020200
+wm 32 0x020e0534 0x00020200
+wm 32 0x020e0538 0x00020200
+wm 32 0x020e053c 0x00020200
+wm 32 0x020e0540 0x00020200
+wm 32 0x020e0544 0x00020200
+wm 32 0x020e0548 0x00020200
+wm 32 0x020e054c 0x00020200
+wm 32 0x020e0550 0x00020200
+wm 32 0x020e0554 0x00020200
+wm 32 0x020e0558 0x00020200
+wm 32 0x020e055c 0x00020200
+wm 32 0x020e0560 0x00020200
+wm 32 0x020e0564 0x00020200
+wm 32 0x020e0568 0x00020200
+wm 32 0x020e056c 0x00020030
+wm 32 0x020e0578 0x00020030
+wm 32 0x020e0588 0x00020030
+wm 32 0x020e0594 0x00020030
+wm 32 0x020e057c 0x00020030
+wm 32 0x020e0590 0x00003000
+wm 32 0x020e0598 0x00003000
+wm 32 0x020e0580 0x00000000
+wm 32 0x020e0584 0x00000000
+wm 32 0x020e058c 0x00000000
+wm 32 0x020e059c 0x00003030
+wm 32 0x020e05a0 0x00003030
+wm 32 0x020e0784 0x00000030
+wm 32 0x020e0788 0x00000030
+wm 32 0x020e0794 0x00000030
+wm 32 0x020e079c 0x00000030
+wm 32 0x020e07a0 0x00000030
+wm 32 0x020e07a4 0x00000030
+wm 32 0x020e07a8 0x00000030
+wm 32 0x020e0748 0x00000030
+wm 32 0x020e074c 0x00000030
+wm 32 0x020e0750 0x00020000
+wm 32 0x020e0758 0x00000000
+wm 32 0x020e0774 0x00020000
+wm 32 0x020e078c 0x00000030
+wm 32 0x020e0798 0x000c0000
+wm 32 0x020e0768 0x00002000
+wm 32 0x020e0770 0x00000000
+wm 32 0x020e0754 0x00000200
+wm 32 0x020e075c 0x00000200
+wm 32 0x020e0760 0x00000200
+wm 32 0x020e0764 0x00000200
+wm 32 0x020e076c 0x00000200
+wm 32 0x020e0778 0x00000200
+wm 32 0x020e077c 0x00000200
+wm 32 0x020e0780 0x00000200
+wm 32 0x021b001c 0x04008010
+wm 32 0x021b001c 0x04008040
+wm 32 0x021b0800 0xa1390001
+wm 32 0x021b080c 0x001e001e
+wm 32 0x021b0810 0x001e001e
+wm 32 0x021b480c 0x001e001e
+wm 32 0x021b4810 0x001e001e
+wm 32 0x021b083c 0x43430349
+wm 32 0x021b0840 0x03330334
+wm 32 0x021b483c 0x434b0351
+wm 32 0x021b4840 0x033d030e
+wm 32 0x021b0848 0x40404040
+wm 32 0x021b0850 0x40404040
+wm 32 0x021b4848 0x40404040
+wm 32 0x021b4850 0x40404040
+wm 32 0x021b081c 0x33333333
+wm 32 0x021b0820 0x33333333
+wm 32 0x021b0824 0x33333333
+wm 32 0x021b0828 0x33333333
+wm 32 0x021b481c 0x33333333
+wm 32 0x021b4820 0x33333333
+wm 32 0x021b4824 0x33333333
+wm 32 0x021b4828 0x33333333
+wm 32 0x021b08b8 0x00000800
+wm 32 0x021b48b8 0x00000800
+wm 32 0x021b0018 0x00000742
+check 32 while_all_bits_clear 0x021b0018 0x00000002
+wm 32 0x021b001c 0x00008000
+check 32 while_any_bit_clear 0x021b001c 0x00004000
+wm 32 0x021b0000 0x841a0000
+check 32 while_any_bit_clear 0x021b0018 0x40000000
+wm 32 0x021b000c 0x898f78f4
+wm 32 0x021b0010 0xff328e64
+wm 32 0x021b0014 0x01ff00db
+wm 32 0x021b002c 0x000026d2
+wm 32 0x021b0030 0x008f1023
+wm 32 0x021b0008 0x24444040
+wm 32 0x021b0004 0x00020076
+wm 32 0x021b0040 0x00000047
+wm 32 0x021b001c 0x09308030
+wm 32 0x021b001c 0x00048031
+wm 32 0x021b001c 0x00488032
+wm 32 0x021b001c 0x00008033
+wm 32 0x021b0020 0x0000c000
+wm 32 0x021b001c 0x00008020
+wm 32 0x021b0818 0x00022222
+wm 32 0x021b4818 0x00022222
+wm 32 0x021b0890 0x00000003
+set_bits 32 0x021b0400 0x02000000
+wm 32 0x021b0404 0x00000001
+wm 32 0x021b001c 0x04008010
+wm 32 0x021b001c 0x04008040
+wm 32 0x021b0800 0xa1390001
+check 32 while_all_bits_clear 0x021b0800 0x00010000
+wm 32 0x021b0800 0xa1380000
+wm 32 0x021b001c 0x00048033
+wm 32 0x020e05a8 0x00000030
+wm 32 0x020e05b0 0x00000030
+wm 32 0x020e0524 0x00000030
+wm 32 0x020e051c 0x00000030
+wm 32 0x020e0518 0x00000030
+wm 32 0x020e050c 0x00000030
+wm 32 0x020e05b8 0x00000030
+wm 32 0x020e05c0 0x00000030
+wm 32 0x021b001c 0x04008050
+wm 32 0x021b0860 0x00000030
+wm 32 0x021b4860 0x00000030
+check 32 while_all_bits_clear 0x021b0860 0x0000001f
+check 32 while_all_bits_clear 0x021b4860 0x0000001f
+wm 32 0x021b001c 0x04008050
+wm 32 0x021b0864 0x00000030
+check 32 while_all_bits_clear 0x021b0864 0x0000001f
+wm 32 0x021b001c 0x04008050
+wm 32 0x021b4864 0x00000030
+check 32 while_all_bits_clear 0x021b4864 0x0000001f
+wm 32 0x021b001c 0x00008033
+wm 32 0x021b0800 0xa138002b
+wm 32 0x021b0020 0x00001800
+wm 32 0x021b0404 0x00001000
+wm 32 0x021b0004 0x00025576
+wm 32 0x021b001c 0x00000000
+check 32 while_all_bits_clear 0x021b001c 0x00004000
diff --git a/arch/arm/boards/karo-tx6x/lowlevel.c b/arch/arm/boards/karo-tx6x/lowlevel.c
index 1aa24c5..459c44b 100644
--- a/arch/arm/boards/karo-tx6x/lowlevel.c
+++ b/arch/arm/boards/karo-tx6x/lowlevel.c
@@ -77,3 +77,23 @@ ENTRY_FUNCTION(start_imx6q_tx6x_1g, r0, r1, r2)
 
 	imx6q_barebox_entry(fdt);
 }
+
+BAREBOX_IMD_TAG_STRING(tx6x_mx6_memsize_2G, IMD_TYPE_PARAMETER, "memsize=2048", 0);
+
+ENTRY_FUNCTION(start_imx6q_tx6x_2g, r0, r1, r2)
+{
+	void *fdt;
+
+	imx6_cpu_lowlevel_init();
+
+	arm_setup_stack(0x00920000 - 8);
+
+	IMD_USED(tx6x_mx6_memsize_2G);
+
+	if (IS_ENABLED(CONFIG_DEBUG_LL))
+		setup_uart();
+
+	fdt = __dtb_imx6q_tx6q_start - get_runtime_offset();
+
+	imx6q_barebox_entry(fdt);
+}
diff --git a/images/Makefile.imx b/images/Makefile.imx
index 6870bce..4caccdb 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -293,6 +293,11 @@ CFG_start_imx6q_tx6x_1g.pblx.imximg = $(board)/karo-tx6x/flash-header-tx6q-1g.im
 FILE_barebox-karo-imx6q-tx6x-1g.img = start_imx6q_tx6x_1g.pblx.imximg
 image-$(CONFIG_MACH_TX6X) += barebox-karo-imx6q-tx6x-1g.img
 
+pblx-$(CONFIG_MACH_TX6X) += start_imx6q_tx6x_2g
+CFG_start_imx6q_tx6x_2g.pblx.imximg = $(board)/karo-tx6x/flash-header-tx6qp-2g.imxcfg
+FILE_barebox-karo-imx6qp-tx6x-2g.img = start_imx6q_tx6x_2g.pblx.imximg
+image-$(CONFIG_MACH_TX6X) += barebox-karo-imx6qp-tx6x-2g.img
+
 pblx-$(CONFIG_MACH_UDOO) += start_imx6_udoo
 CFG_start_imx6_udoo.pblx.imximg = $(board)/udoo/flash-header-mx6-udoo.imxcfg
 FILE_barebox-udoo-imx6q.img = start_imx6_udoo.pblx.imximg
-- 
2.8.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
