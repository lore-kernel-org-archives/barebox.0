Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cC2k8-0005Dz-BX
 for barebox@lists.infradead.org; Wed, 30 Nov 2016 11:08:09 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.84_2)
 (envelope-from <l.stach@pengutronix.de>) id 1cC2jl-0002Bh-Em
 for barebox@lists.infradead.org; Wed, 30 Nov 2016 12:07:41 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Wed, 30 Nov 2016 12:07:40 +0100
Message-Id: <20161130110741.23345-2-l.stach@pengutronix.de>
In-Reply-To: <20161130110741.23345-1-l.stach@pengutronix.de>
References: <20161130110741.23345-1-l.stach@pengutronix.de>
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
Subject: [PATCH 2/3] ARM: rdu2: support QP variant
To: barebox@lists.infradead.org

This adds support for the QuadPlus variant of the board as a separate
Barebox binary.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 .../zii-imx6q-rdu2/flash-header-imx6qp-rdu2.imxcfg | 132 +++++++++++++++++++++
 arch/arm/boards/zii-imx6q-rdu2/lowlevel.c          |  13 ++
 arch/arm/dts/Makefile                              |   2 +-
 arch/arm/dts/imx6qp-zii-rdu2.dts                   |  52 ++++++++
 images/Makefile.imx                                |   5 +
 5 files changed, 203 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/boards/zii-imx6q-rdu2/flash-header-imx6qp-rdu2.imxcfg
 create mode 100644 arch/arm/dts/imx6qp-zii-rdu2.dts

diff --git a/arch/arm/boards/zii-imx6q-rdu2/flash-header-imx6qp-rdu2.imxcfg b/arch/arm/boards/zii-imx6q-rdu2/flash-header-imx6qp-rdu2.imxcfg
new file mode 100644
index 000000000000..03e764b3b366
--- /dev/null
+++ b/arch/arm/boards/zii-imx6q-rdu2/flash-header-imx6qp-rdu2.imxcfg
@@ -0,0 +1,132 @@
+loadaddr 0x10000000
+soc imx6
+dcdofs 0x400
+
+wm 32 0x020e0798 0x000C0000
+wm 32 0x020e0758 0x00000000
+
+wm 32 0x020e0588 0x00020030
+wm 32 0x020e0594 0x00020030
+
+wm 32 0x020e056c 0x00020030
+wm 32 0x020e0578 0x00020030
+wm 32 0x020e074c 0x00020030
+
+wm 32 0x020e057c 0x00020030
+wm 32 0x020e058c 0x00000000
+wm 32 0x020e059c 0x00020030
+wm 32 0x020e05a0 0x00020030
+wm 32 0x020e078c 0x00020030
+
+wm 32 0x020e0750 0x00020000
+wm 32 0x020e05a8 0x00020030
+wm 32 0x020e05b0 0x00020030
+wm 32 0x020e0524 0x00020030
+wm 32 0x020e051c 0x00020030
+wm 32 0x020e0518 0x00020030
+wm 32 0x020e050c 0x00020030
+wm 32 0x020e05b8 0x00020030
+wm 32 0x020e05c0 0x00020030
+
+wm 32 0x020e0534 0x00018200
+wm 32 0x020e0538 0x00008000
+wm 32 0x020e053c 0x00018200
+wm 32 0x020e0540 0x00018200
+wm 32 0x020e0544 0x00018200
+wm 32 0x020e0548 0x00018200
+wm 32 0x020e054c 0x00018200
+wm 32 0x020e0550 0x00018200
+
+wm 32 0x020e0774 0x00020000
+wm 32 0x020e0784 0x00020030
+wm 32 0x020e0788 0x00020030
+wm 32 0x020e0794 0x00020030
+wm 32 0x020e079c 0x00020030
+wm 32 0x020e07a0 0x00020030
+wm 32 0x020e07a4 0x00020030
+wm 32 0x020e07a8 0x00020030
+wm 32 0x020e0748 0x00020030
+
+wm 32 0x020e05ac 0x00020030
+wm 32 0x020e05b4 0x00020030
+wm 32 0x020e0528 0x00020030
+wm 32 0x020e0520 0x00020030
+wm 32 0x020e0514 0x00020030
+wm 32 0x020e0510 0x00020030
+wm 32 0x020e05bc 0x00020030
+wm 32 0x020e05c4 0x00020030
+
+wm 32 0x021b001c 0x00008000
+
+wm 32 0x021b0800 0xA1390003
+
+wm 32 0x021b080c 0x002A001F
+wm 32 0x021b0810 0x002F002A
+wm 32 0x021b480c 0x001F0031
+wm 32 0x021b4810 0x001B0022
+
+wm 32 0x021b083c 0x433C0354
+wm 32 0x021b0840 0x03380330
+wm 32 0x021b483c 0x43440358
+wm 32 0x021b4840 0x03340300
+
+wm 32 0x021b0848 0x483A4040
+wm 32 0x021b4848 0x3E383648
+
+wm 32 0x021b0850 0x3C424048
+wm 32 0x021b4850 0x4C425042
+
+wm 32 0x021b081c 0x33333333
+wm 32 0x021b0820 0x33333333
+wm 32 0x021b0824 0x33333333
+wm 32 0x021b0828 0x33333333
+wm 32 0x021b481c 0x33333333
+wm 32 0x021b4820 0x33333333
+wm 32 0x021b4824 0x33333333
+wm 32 0x021b4828 0x33333333
+
+wm 32 0x021b08c0 0x24912489
+wm 32 0x021b48c0 0x24914452
+
+wm 32 0x021b08b8 0x00000800
+wm 32 0x021b48b8 0x00000800
+
+wm 32 0x021b0004 0x00020036
+wm 32 0x021b0008 0x09444040
+wm 32 0x021b000c 0x898E7955
+wm 32 0x021b0010 0xFF328F64
+wm 32 0x021b0014 0x01FF00DB
+
+wm 32 0x021b0018 0x00011740
+wm 32 0x021b001c 0x00008000
+wm 32 0x021b002c 0x000026D2
+wm 32 0x021b0030 0x008E1023
+wm 32 0x021b0040 0x00000047
+
+wm 32 0x021b0400 0x14420000
+wm 32 0x021b0000 0x841A0000
+wm 32 0x021b0890 0x00400c58
+
+wm 32 0x00bb0008 0x00000000
+wm 32 0x00bb000c 0x2891E41A
+wm 32 0x00bb0038 0x00000564
+wm 32 0x00bb0014 0x00000040
+wm 32 0x00bb0028 0x00000020
+wm 32 0x00bb002c 0x00000020
+
+wm 32 0x021b001c 0x02088032
+wm 32 0x021b001c 0x00008033
+wm 32 0x021b001c 0x00048031
+wm 32 0x021b001c 0x19408030
+wm 32 0x021b001c 0x04008040
+
+wm 32 0x021b0020 0x00007800
+
+wm 32 0x021b0818 0x00022227
+wm 32 0x021b4818 0x00022227
+
+wm 32 0x021b0004 0x00025576
+
+wm 32 0x021b0404 0x00011006
+
+wm 32 0x021b001c 0x00000000
diff --git a/arch/arm/boards/zii-imx6q-rdu2/lowlevel.c b/arch/arm/boards/zii-imx6q-rdu2/lowlevel.c
index df35aaee15fd..0d3520de476d 100644
--- a/arch/arm/boards/zii-imx6q-rdu2/lowlevel.c
+++ b/arch/arm/boards/zii-imx6q-rdu2/lowlevel.c
@@ -39,6 +39,7 @@ static inline void setup_uart(void)
 }
 
 extern char __dtb_imx6q_zii_rdu2_start[];
+extern char __dtb_imx6qp_zii_rdu2_start[];
 
 ENTRY_FUNCTION(start_imx6q_zii_rdu2, r0, r1, r2)
 {
@@ -51,3 +52,15 @@ ENTRY_FUNCTION(start_imx6q_zii_rdu2, r0, r1, r2)
 
 	imx6q_barebox_entry(fdt - get_runtime_offset());
 }
+
+ENTRY_FUNCTION(start_imx6qp_zii_rdu2, r0, r1, r2)
+{
+	void *fdt = __dtb_imx6qp_zii_rdu2_start;
+
+	imx6_cpu_lowlevel_init();
+
+	if (IS_ENABLED(CONFIG_DEBUG_LL))
+		setup_uart();
+
+	imx6q_barebox_entry(fdt - get_runtime_offset());
+}
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index dbf089a5de40..72832d55a2d8 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -79,6 +79,6 @@ pbl-dtb-$(CONFIG_MACH_USI_TOPKICK) += kirkwood-topkick-bb.dtb.o
 pbl-dtb-$(CONFIG_MACH_VARISCITE_MX6) += imx6q-var-custom.dtb.o
 pbl-dtb-$(CONFIG_MACH_VSCOM_BALTOS) += am335x-baltos-minimal.dtb.o
 pbl-dtb-$(CONFIG_MACH_VF610_TWR) += vf610-twr.dtb.o
-pbl-dtb-$(CONFIG_MACH_ZII_RDU2) += imx6q-zii-rdu2.dtb.o
+pbl-dtb-$(CONFIG_MACH_ZII_RDU2) += imx6q-zii-rdu2.dtb.o imx6qp-zii-rdu2.dtb.o
 
 clean-files := *.dtb *.dtb.S .*.dtc .*.pre .*.dts *.dtb.lzo
diff --git a/arch/arm/dts/imx6qp-zii-rdu2.dts b/arch/arm/dts/imx6qp-zii-rdu2.dts
new file mode 100644
index 000000000000..fcf2ee5a104b
--- /dev/null
+++ b/arch/arm/dts/imx6qp-zii-rdu2.dts
@@ -0,0 +1,52 @@
+/*
+ * Copyright 2016 Zodiac Inflight Innovations
+ *
+ * This file is dual-licensed: you can use it either under the terms
+ * of the GPL or the X11 license, at your option. Note that this dual
+ * licensing only applies to this file, and not this project as a
+ * whole.
+ *
+ *  a) This file is free software; you can redistribute it and/or
+ *     modify it under the terms of the GNU General Public License as
+ *     published by the Free Software Foundation; either version 2 of the
+ *     License, or (at your option) any later version.
+ *
+ *     This file is distributed in the hope that it will be useful,
+ *     but WITHOUT ANY WARRANTY; without even the implied warranty of
+ *     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ *     GNU General Public License for more details.
+ *
+ * Or, alternatively,
+ *
+ *  b) Permission is hereby granted, free of charge, to any person
+ *     obtaining a copy of this software and associated documentation
+ *     files (the "Software"), to deal in the Software without
+ *     restriction, including without limitation the rights to use,
+ *     copy, modify, merge, publish, distribute, sublicense, and/or
+ *     sell copies of the Software, and to permit persons to whom the
+ *     Software is furnished to do so, subject to the following
+ *     conditions:
+ *
+ *     The above copyright notice and this permission notice shall be
+ *     included in all copies or substantial portions of the Software.
+ *
+ *     THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
+ *     EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
+ *     OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
+ *     NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
+ *     HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
+ *     WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
+ *     FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
+ *     OTHER DEALINGS IN THE SOFTWARE.
+ */
+
+/dts-v1/;
+
+#include <arm/imx6qp.dtsi>
+#include "imx6q.dtsi"
+#include "imx6qdl-zii-rdu2.dtsi"
+
+/ {
+	model = "ZII RDU2+ Board";
+	compatible = "zii,imx6qp-zii-rdu2", "fsl,imx6qp";
+};
diff --git a/images/Makefile.imx b/images/Makefile.imx
index 4038ad4ef5a0..276711453aa3 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -413,3 +413,8 @@ pblx-$(CONFIG_MACH_ZII_RDU2) += start_imx6q_zii_rdu2
 CFG_start_imx6q_zii_rdu2.pblx.imximg = $(board)/zii-imx6q-rdu2/flash-header-imx6q-rdu2.imxcfg
 FILE_barebox-zii-imx6q-rdu2.img = start_imx6q_zii_rdu2.pblx.imximg
 image-$(CONFIG_MACH_ZII_RDU2) += barebox-zii-imx6q-rdu2.img
+
+pblx-$(CONFIG_MACH_ZII_RDU2) += start_imx6qp_zii_rdu2
+CFG_start_imx6qp_zii_rdu2.pblx.imximg = $(board)/zii-imx6q-rdu2/flash-header-imx6qp-rdu2.imxcfg
+FILE_barebox-zii-imx6qp-rdu2.img = start_imx6qp_zii_rdu2.pblx.imximg
+image-$(CONFIG_MACH_ZII_RDU2) += barebox-zii-imx6qp-rdu2.img
-- 
2.10.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
