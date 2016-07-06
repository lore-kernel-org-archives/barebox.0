Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bKnQj-0007cF-Ed
 for barebox@lists.infradead.org; Wed, 06 Jul 2016 14:04:01 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  6 Jul 2016 16:03:32 +0200
Message-Id: <1467813812-29723-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1467813812-29723-1-git-send-email-s.hauer@pengutronix.de>
References: <1467813812-29723-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] ARM: i.MX: karo-tx6: Add support for the 512MiB i.MX6s
 variant
To: Barebox List <barebox@lists.infradead.org>

This adds support for the TX6S-8x35 board variant.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 .../karo-tx6x/flash-header-tx6dl-512m.imxcfg       | 136 +++++++++++++++++++++
 arch/arm/boards/karo-tx6x/lowlevel.c               |  20 +++
 images/Makefile.imx                                |   5 +
 3 files changed, 161 insertions(+)
 create mode 100644 arch/arm/boards/karo-tx6x/flash-header-tx6dl-512m.imxcfg

diff --git a/arch/arm/boards/karo-tx6x/flash-header-tx6dl-512m.imxcfg b/arch/arm/boards/karo-tx6x/flash-header-tx6dl-512m.imxcfg
new file mode 100644
index 0000000..dd1ae6e
--- /dev/null
+++ b/arch/arm/boards/karo-tx6x/flash-header-tx6dl-512m.imxcfg
@@ -0,0 +1,136 @@
+soc imx6
+loadaddr 0x20000000
+dcdofs 0x400
+
+wm 32 0x020e0158 0x00000016
+wm 32 0x020e0174 0x00000011
+wm 32 0x020e0528 0x0000f079
+wm 32 0x020e0544 0x0000f079
+wm 32 0x020e0868 0x00000001
+wm 32 0x020e086c 0x00000001
+wm 32 0x020e0214 0x00000012
+wm 32 0x020e031c 0x00000015
+wm 32 0x020e0704 0x000030b0
+wm 32 0x020e0154 0x00000015
+wm 32 0x020e0524 0x000030b0
+wm 32 0x020e0218 0x00000005
+wm 32 0x020e05e8 0x000030b0
+wm 32 0x020c402c 0x006336c1
+wm 32 0x020c4034 0x00012093
+wm 32 0x020c4038 0x00012090
+wm 32 0x020c80e0 0x00002001
+wm 32 0x020c80a0 0x80082029
+wm 32 0x020c80b0 0x00065b9a
+wm 32 0x020c80c0 0x000f4240
+wm 32 0x020e0004 0x48640005
+wm 32 0x020e0330 0x00000001
+wm 32 0x020e032c 0x00000001
+wm 32 0x020e08fc 0x00000002
+wm 32 0x020e0314 0x00000001
+wm 32 0x020e0318 0x00000001
+wm 32 0x020e08f8 0x00000003
+wm 32 0x020e027c 0x00000000
+wm 32 0x020e0470 0x00020030
+wm 32 0x020e0474 0x00020030
+wm 32 0x020e0478 0x00020030
+wm 32 0x020e047c 0x00020030
+wm 32 0x020e0424 0x00020200
+wm 32 0x020e0428 0x00020200
+wm 32 0x020e0444 0x00020200
+wm 32 0x020e0448 0x00020200
+wm 32 0x020e044c 0x00020200
+wm 32 0x020e0450 0x00020200
+wm 32 0x020e0454 0x00020200
+wm 32 0x020e0458 0x00020200
+wm 32 0x020e045c 0x00020200
+wm 32 0x020e0460 0x00020200
+wm 32 0x020e042c 0x00020200
+wm 32 0x020e0430 0x00020200
+wm 32 0x020e0434 0x00020200
+wm 32 0x020e0438 0x00020200
+wm 32 0x020e043c 0x00020200
+wm 32 0x020e0440 0x00020200
+wm 32 0x020e0464 0x00020030
+wm 32 0x020e0490 0x00020030
+wm 32 0x020e04ac 0x00020030
+wm 32 0x020e04b0 0x00020030
+wm 32 0x020e0494 0x00020030
+wm 32 0x020e04a4 0x00003000
+wm 32 0x020e04a8 0x00003000
+wm 32 0x020e0498 0x00000000
+wm 32 0x020e049c 0x00000000
+wm 32 0x020e04a0 0x00000000
+wm 32 0x020e04b4 0x00003030
+wm 32 0x020e04b8 0x00003030
+wm 32 0x020e0784 0x00000030
+wm 32 0x020e0788 0x00000030
+wm 32 0x020e0794 0x00000030
+wm 32 0x020e079c 0x00000030
+wm 32 0x020e074c 0x00000030
+wm 32 0x020e0750 0x00020000
+wm 32 0x020e0754 0x00000000
+wm 32 0x020e0760 0x00020000
+wm 32 0x020e078c 0x00000030
+wm 32 0x020e0798 0x000c0000
+wm 32 0x020e0758 0x00002000
+wm 32 0x020e075c 0x00000000
+wm 32 0x021b001c 0x04008010
+wm 32 0x021b001c 0x04008040
+wm 32 0x021b0800 0xa1390001
+wm 32 0x021b080c 0x001e001e
+wm 32 0x021b0810 0x001e001e
+wm 32 0x021b083c 0x42490244
+wm 32 0x021b0840 0x022f0238
+wm 32 0x021b0848 0x40404040
+wm 32 0x021b0850 0x40404040
+wm 32 0x021b081c 0x33333333
+wm 32 0x021b0820 0x33333333
+wm 32 0x021b0824 0x33333333
+wm 32 0x021b0828 0x33333333
+wm 32 0x021b08b8 0x00000800
+wm 32 0x021b0018 0x00000742
+check 32 while_all_bits_clear 0x021b0018 0x00000002
+wm 32 0x021b001c 0x00008000
+check 32 while_any_bit_clear 0x021b001c 0x00004000
+wm 32 0x021b0000 0x83190000
+check 32 while_any_bit_clear 0x021b0018 0x40000000
+wm 32 0x021b000c 0x3f435333
+wm 32 0x021b0010 0xb66e8a63
+wm 32 0x021b0014 0x01ff00db
+wm 32 0x021b002c 0x000026d2
+wm 32 0x021b0030 0x00431023
+wm 32 0x021b0008 0x1b333030
+wm 32 0x021b0004 0x0002006d
+wm 32 0x021b0040 0x00000017
+wm 32 0x021b001c 0x05208030
+wm 32 0x021b001c 0x00048031
+wm 32 0x021b001c 0x00408032
+wm 32 0x021b001c 0x00008033
+wm 32 0x021b0020 0x0000c000
+wm 32 0x021b001c 0x00008020
+wm 32 0x021b0818 0x00022222
+wm 32 0x021b0890 0x00000003
+wm 32 0x021b0404 0x00000001
+wm 32 0x021b001c 0x04008010
+wm 32 0x021b001c 0x04008040
+wm 32 0x021b0800 0xa1390001
+check 32 while_all_bits_clear 0x021b0800 0x00010000
+wm 32 0x021b0800 0xa1380000
+wm 32 0x021b001c 0x00048033
+wm 32 0x020e04bc 0x00000030
+wm 32 0x020e04c0 0x00000030
+wm 32 0x020e04c4 0x00000030
+wm 32 0x020e04c8 0x00000030
+wm 32 0x021b001c 0x04008050
+wm 32 0x021b0860 0x00000030
+check 32 while_all_bits_clear 0x021b0860 0x0000001f
+wm 32 0x021b001c 0x04008050
+wm 32 0x021b0864 0x00000030
+check 32 while_all_bits_clear 0x021b0864 0x0000001f
+wm 32 0x021b001c 0x00008033
+wm 32 0x021b0800 0xa138002b
+wm 32 0x021b0020 0x00001800
+wm 32 0x021b0404 0x00001000
+wm 32 0x021b0004 0x0002556d
+wm 32 0x021b001c 0x00000000
+check 32 while_all_bits_clear 0x021b001c 0x00004000
diff --git a/arch/arm/boards/karo-tx6x/lowlevel.c b/arch/arm/boards/karo-tx6x/lowlevel.c
index 459c44b..f2643ef 100644
--- a/arch/arm/boards/karo-tx6x/lowlevel.c
+++ b/arch/arm/boards/karo-tx6x/lowlevel.c
@@ -38,6 +38,26 @@ static inline void setup_uart(void)
 
 extern char __dtb_imx6dl_tx6u_start[];
 
+BAREBOX_IMD_TAG_STRING(tx6x_mx6_memsize_512M, IMD_TYPE_PARAMETER, "memsize=512", 0);
+
+ENTRY_FUNCTION(start_imx6dl_tx6x_512m, r0, r1, r2)
+{
+	void *fdt;
+
+	imx6_cpu_lowlevel_init();
+
+	arm_setup_stack(0x00920000 - 8);
+
+	IMD_USED(tx6x_mx6_memsize_512M);
+
+	if (IS_ENABLED(CONFIG_DEBUG_LL))
+		setup_uart();
+
+	fdt = __dtb_imx6dl_tx6u_start - get_runtime_offset();
+
+	barebox_arm_entry(0x10000000, SZ_512M, fdt);
+}
+
 BAREBOX_IMD_TAG_STRING(tx6x_mx6_memsize_1G, IMD_TYPE_PARAMETER, "memsize=1024", 0);
 
 ENTRY_FUNCTION(start_imx6dl_tx6x_1g, r0, r1, r2)
diff --git a/images/Makefile.imx b/images/Makefile.imx
index 0ff317b..effa5ed 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -288,6 +288,11 @@ CFG_start_imx6dl_nitrogen6x_2g.pblx.imximg = $(board)/boundarydevices-nitrogen6x
 FILE_barebox-boundarydevices-imx6dl-nitrogen6x-2g.img = start_imx6dl_nitrogen6x_2g.pblx.imximg
 image-$(CONFIG_MACH_NITROGEN6X) += barebox-boundarydevices-imx6dl-nitrogen6x-2g.img
 
+pblx-$(CONFIG_MACH_TX6X) += start_imx6dl_tx6x_512m
+CFG_start_imx6dl_tx6x_512m.pblx.imximg = $(board)/karo-tx6x/flash-header-tx6dl-512m.imxcfg
+FILE_barebox-karo-imx6dl-tx6x-512m.img = start_imx6dl_tx6x_512m.pblx.imximg
+image-$(CONFIG_MACH_TX6X) += barebox-karo-imx6dl-tx6x-512m.img
+
 pblx-$(CONFIG_MACH_TX6X) += start_imx6dl_tx6x_1g
 CFG_start_imx6dl_tx6x_1g.pblx.imximg = $(board)/karo-tx6x/flash-header-tx6dl-1g.imxcfg
 FILE_barebox-karo-imx6dl-tx6x-1g.img = start_imx6dl_tx6x_1g.pblx.imximg
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
