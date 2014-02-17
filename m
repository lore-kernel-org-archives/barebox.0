Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WFMw7-0003Rz-56
 for barebox@lists.infradead.org; Mon, 17 Feb 2014 12:04:37 +0000
Received: from dude.hi.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <l.stach@pengutronix.de>) id 1WFMvk-0000va-Ar
 for barebox@lists.infradead.org; Mon, 17 Feb 2014 13:04:12 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Mon, 17 Feb 2014 13:04:12 +0100
Message-Id: <1392638652-27364-2-git-send-email-l.stach@pengutronix.de>
In-Reply-To: <1392638652-27364-1-git-send-email-l.stach@pengutronix.de>
References: <1392638652-27364-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 2/2] ARM: i.MX6: sabresd: switch to multi-image
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/Makefile                                  |   1 -
 arch/arm/boards/freescale-mx6-sabresd/Makefile     |   3 +-
 arch/arm/boards/freescale-mx6-sabresd/board.c      |  33 ++----
 .../flash-header-mx6-sabresd.imxcfg                | 128 +++++++++++++++++++++
 .../freescale-mx6-sabresd/flash-header.imxcfg      | 128 ---------------------
 arch/arm/boards/freescale-mx6-sabresd/lowlevel.c   |  11 +-
 arch/arm/dts/Makefile                              |   1 +
 arch/arm/dts/imx6q-sabresd.dts                     |   5 +
 arch/arm/dts/imx6qdl-sabresd.dtsi                  |  13 +++
 arch/arm/mach-imx/Kconfig                          |   8 +-
 images/Makefile.imx                                |   5 +
 11 files changed, 178 insertions(+), 158 deletions(-)
 create mode 100644 arch/arm/boards/freescale-mx6-sabresd/flash-header-mx6-sabresd.imxcfg
 delete mode 100644 arch/arm/boards/freescale-mx6-sabresd/flash-header.imxcfg

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 87e8d4a08bfd..daea9da526c9 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -210,7 +210,6 @@ barebox.imximg: $(KBUILD_BINARY) FORCE
 
 boarddir = $(srctree)/arch/arm/boards
 imxcfg-$(CONFIG_MACH_FREESCALE_MX53_SMD) += $(boarddir)/freescale-mx53-smd/flash-header.imxcfg
-imxcfg-$(CONFIG_MACH_SABRESD) += $(boarddir)/freescale-mx6-sabresd/flash-header.imxcfg
 imxcfg-$(CONFIG_MACH_MX6Q_ARM2) += $(boarddir)/freescale-mx6-arm2/flash-header.imxcfg
 imxcfg-$(CONFIG_MACH_CCMX51) += $(boarddir)/ccxmx51/flash-header.imxcfg
 imxcfg-$(CONFIG_MACH_TX51) += $(boarddir)/karo-tx51/flash-header-karo-tx51.imxcfg
diff --git a/arch/arm/boards/freescale-mx6-sabresd/Makefile b/arch/arm/boards/freescale-mx6-sabresd/Makefile
index 01c7a259e9a5..f72c641e17d1 100644
--- a/arch/arm/boards/freescale-mx6-sabresd/Makefile
+++ b/arch/arm/boards/freescale-mx6-sabresd/Makefile
@@ -1,2 +1,3 @@
-obj-y += board.o
+obj-y += board.o flash-header-mx6-sabresd.dcd.o
+extra-y += flash-header-mx6-sabresd.dcd.S flash-header-mx6-sabresd.dcd
 lwl-y += lowlevel.o
diff --git a/arch/arm/boards/freescale-mx6-sabresd/board.c b/arch/arm/boards/freescale-mx6-sabresd/board.c
index c87b55538423..4e4ce7a01583 100644
--- a/arch/arm/boards/freescale-mx6-sabresd/board.c
+++ b/arch/arm/boards/freescale-mx6-sabresd/board.c
@@ -40,14 +40,6 @@
 #define PHY_ID_AR8031	0x004dd074
 #define AR_PHY_ID_MASK	0xffffffff
 
-static int sabresd_mem_init(void)
-{
-	arm_add_mem_device("ram0", 0x10000000, SZ_1G);
-
-	return 0;
-}
-mem_initcall(sabresd_mem_init);
-
 static int ar8031_phy_fixup(struct phy_device *dev)
 {
 	u16 val;
@@ -71,27 +63,21 @@ static int ar8031_phy_fixup(struct phy_device *dev)
 	return 0;
 }
 
-static void sabresd_phy_reset(void)
-{
-	/* Reset AR8031 PHY */
-	gpio_direction_output(IMX_GPIO_NR(1, 25) , 0);
-	udelay(500);
-	gpio_set_value(IMX_GPIO_NR(1, 25), 1);
-}
-
 static int sabresd_devices_init(void)
 {
+	if (!of_machine_is_compatible("fsl,imx6q-sabresd"))
+		return 0;
+
 	armlinux_set_architecture(3980);
 
-	devfs_add_partition("disk0", 0, SZ_1M, DEVFS_PARTITION_FIXED, "self0");
-	devfs_add_partition("disk0", SZ_1M + SZ_1M, SZ_512K, DEVFS_PARTITION_FIXED, "env0");
 	return 0;
 }
 device_initcall(sabresd_devices_init);
 
 static int sabresd_coredevices_init(void)
 {
-	sabresd_phy_reset();
+	if (!of_machine_is_compatible("fsl,imx6q-sabresd"))
+		return 0;
 
 	phy_register_fixup_for_uid(PHY_ID_AR8031, AR_PHY_ID_MASK,
 			ar8031_phy_fixup);
@@ -102,14 +88,17 @@ static int sabresd_coredevices_init(void)
  * Do this before the fec initializes but after our
  * gpios are available.
  */
-fs_initcall(sabresd_coredevices_init);
+coredevice_initcall(sabresd_coredevices_init);
 
-static int sabresd_core_init(void)
+static int sabresd_postcore_init(void)
 {
+	if (!of_machine_is_compatible("fsl,imx6q-sabresd"))
+		return 0;
+
 	imx6_init_lowlevel();
 
 	barebox_set_hostname("sabresd");
 
 	return 0;
 }
-core_initcall(sabresd_core_init);
+postcore_initcall(sabresd_postcore_init);
diff --git a/arch/arm/boards/freescale-mx6-sabresd/flash-header-mx6-sabresd.imxcfg b/arch/arm/boards/freescale-mx6-sabresd/flash-header-mx6-sabresd.imxcfg
new file mode 100644
index 000000000000..21f217cdf32b
--- /dev/null
+++ b/arch/arm/boards/freescale-mx6-sabresd/flash-header-mx6-sabresd.imxcfg
@@ -0,0 +1,128 @@
+loadaddr 0x10000000
+soc imx6
+dcdofs 0x400
+wm 32 0x20e05a8 0x00000030
+wm 32 0x20e05b0 0x00000030
+wm 32 0x20e0524 0x00000030
+wm 32 0x20e051c 0x00000030
+
+wm 32 0x20e0518 0x00000030
+wm 32 0x20e050c 0x00000030
+wm 32 0x20e05b8 0x00000030
+wm 32 0x20e05c0 0x00000030
+
+wm 32 0x20e05ac 0x00020030
+wm 32 0x20e05b4 0x00020030
+wm 32 0x20e0528 0x00020030
+wm 32 0x20e0520 0x00020030
+
+wm 32 0x20e0514 0x00020030
+wm 32 0x20e0510 0x00020030
+wm 32 0x20e05bc 0x00020030
+wm 32 0x20e05c4 0x00020030
+
+wm 32 0x20e056c 0x00020030
+wm 32 0x20e0578 0x00020030
+wm 32 0x20e0588 0x00020030
+wm 32 0x20e0594 0x00020030
+
+wm 32 0x20e057c 0x00020030
+wm 32 0x20e0590 0x00003000
+wm 32 0x20e0598 0x00003000
+wm 32 0x20e058c 0x00000000
+
+wm 32 0x20e059c 0x00003030
+wm 32 0x20e05a0 0x00003030
+wm 32 0x20e0784 0x00000030
+wm 32 0x20e0788 0x00000030
+
+wm 32 0x20e0794 0x00000030
+wm 32 0x20e079c 0x00000030
+wm 32 0x20e07a0 0x00000030
+wm 32 0x20e07a4 0x00000030
+
+wm 32 0x20e07a8 0x00000030
+wm 32 0x20e0748 0x00000030
+wm 32 0x20e074c 0x00000030
+wm 32 0x20e0750 0x00020000
+
+wm 32 0x20e0758 0x00000000
+wm 32 0x20e0774 0x00020000
+wm 32 0x20e078c 0x00000030
+wm 32 0x20e0798 0x000C0000
+
+wm 32 0x21b081c 0x33333333
+wm 32 0x21b0820 0x33333333
+wm 32 0x21b0824 0x33333333
+wm 32 0x21b0828 0x33333333
+
+wm 32 0x21b481c 0x33333333
+wm 32 0x21b4820 0x33333333
+wm 32 0x21b4824 0x33333333
+wm 32 0x21b4828 0x33333333
+
+wm 32 0x21b0018 0x00081740
+
+wm 32 0x21b001c 0x00008000
+wm 32 0x21b000c 0x555A7975
+wm 32 0x21b0010 0xFF538E64
+wm 32 0x21b0014 0x01FF00DB
+wm 32 0x21b002c 0x000026D2
+
+wm 32 0x21b0030 0x005B0E21
+wm 32 0x21b0008 0x09444040
+wm 32 0x21b0004 0x00025576
+wm 32 0x21b0040 0x00000027
+wm 32 0x21b0000 0x831A0000
+
+wm 32 0x21b001c 0x04088032
+wm 32 0x21b001c 0x0408803A
+wm 32 0x21b001c 0x00008033
+wm 32 0x21b001c 0x0000803B
+wm 32 0x21b001c 0x00428031
+wm 32 0x21b001c 0x00428039
+wm 32 0x21b001c 0x09408030
+wm 32 0x21b001c 0x09408038
+
+wm 32 0x21b001c 0x04008040
+wm 32 0x21b001c 0x04008048
+wm 32 0x21b0800 0xA1380003
+wm 32 0x21b4800 0xA1380003
+wm 32 0x21b0020 0x00005800
+wm 32 0x21b0818 0x00022227
+wm 32 0x21b4818 0x00022227
+
+wm 32 0x21b083c 0x434B0350
+wm 32 0x21b0840 0x034C0359
+wm 32 0x21b483c 0x434B0350
+wm 32 0x21b4840 0x03650348
+wm 32 0x21b0848 0x4436383B
+wm 32 0x21b4848 0x39393341
+wm 32 0x21b0850 0x35373933
+wm 32 0x21b4850 0x48254A36
+
+wm 32 0x21b080c 0x001F001F
+wm 32 0x21b0810 0x001F001F
+
+wm 32 0x21b480c 0x00440044
+wm 32 0x21b4810 0x00440044
+
+wm 32 0x21b08b8 0x00000800
+wm 32 0x21b48b8 0x00000800
+
+wm 32 0x21b001c 0x00000000
+wm 32 0x21b0404 0x00011006
+
+wm 32 0x020c4068 0x00c03f3f
+wm 32 0x020c406c 0x0030fc03
+wm 32 0x020c4070 0x0fffc000
+wm 32 0x020c4074 0x3ff00000
+wm 32 0x020c4078 0x00fff300
+wm 32 0x020c407c 0x0f0000c3
+wm 32 0x020c4080 0x000003ff
+
+# enable AXI cache for VDOA/VPU/IPU
+wm 32 0x20e0010 0xf00000cf
+# set IPU AXI-id0 Qos=0xf(bypass) AXI-id1 Qos=0x7
+wm 32 0x20e0018 0x007f007f
+wm 32 0x20e001c 0x007f007f
diff --git a/arch/arm/boards/freescale-mx6-sabresd/flash-header.imxcfg b/arch/arm/boards/freescale-mx6-sabresd/flash-header.imxcfg
deleted file mode 100644
index 21f217cdf32b..000000000000
--- a/arch/arm/boards/freescale-mx6-sabresd/flash-header.imxcfg
+++ /dev/null
@@ -1,128 +0,0 @@
-loadaddr 0x10000000
-soc imx6
-dcdofs 0x400
-wm 32 0x20e05a8 0x00000030
-wm 32 0x20e05b0 0x00000030
-wm 32 0x20e0524 0x00000030
-wm 32 0x20e051c 0x00000030
-
-wm 32 0x20e0518 0x00000030
-wm 32 0x20e050c 0x00000030
-wm 32 0x20e05b8 0x00000030
-wm 32 0x20e05c0 0x00000030
-
-wm 32 0x20e05ac 0x00020030
-wm 32 0x20e05b4 0x00020030
-wm 32 0x20e0528 0x00020030
-wm 32 0x20e0520 0x00020030
-
-wm 32 0x20e0514 0x00020030
-wm 32 0x20e0510 0x00020030
-wm 32 0x20e05bc 0x00020030
-wm 32 0x20e05c4 0x00020030
-
-wm 32 0x20e056c 0x00020030
-wm 32 0x20e0578 0x00020030
-wm 32 0x20e0588 0x00020030
-wm 32 0x20e0594 0x00020030
-
-wm 32 0x20e057c 0x00020030
-wm 32 0x20e0590 0x00003000
-wm 32 0x20e0598 0x00003000
-wm 32 0x20e058c 0x00000000
-
-wm 32 0x20e059c 0x00003030
-wm 32 0x20e05a0 0x00003030
-wm 32 0x20e0784 0x00000030
-wm 32 0x20e0788 0x00000030
-
-wm 32 0x20e0794 0x00000030
-wm 32 0x20e079c 0x00000030
-wm 32 0x20e07a0 0x00000030
-wm 32 0x20e07a4 0x00000030
-
-wm 32 0x20e07a8 0x00000030
-wm 32 0x20e0748 0x00000030
-wm 32 0x20e074c 0x00000030
-wm 32 0x20e0750 0x00020000
-
-wm 32 0x20e0758 0x00000000
-wm 32 0x20e0774 0x00020000
-wm 32 0x20e078c 0x00000030
-wm 32 0x20e0798 0x000C0000
-
-wm 32 0x21b081c 0x33333333
-wm 32 0x21b0820 0x33333333
-wm 32 0x21b0824 0x33333333
-wm 32 0x21b0828 0x33333333
-
-wm 32 0x21b481c 0x33333333
-wm 32 0x21b4820 0x33333333
-wm 32 0x21b4824 0x33333333
-wm 32 0x21b4828 0x33333333
-
-wm 32 0x21b0018 0x00081740
-
-wm 32 0x21b001c 0x00008000
-wm 32 0x21b000c 0x555A7975
-wm 32 0x21b0010 0xFF538E64
-wm 32 0x21b0014 0x01FF00DB
-wm 32 0x21b002c 0x000026D2
-
-wm 32 0x21b0030 0x005B0E21
-wm 32 0x21b0008 0x09444040
-wm 32 0x21b0004 0x00025576
-wm 32 0x21b0040 0x00000027
-wm 32 0x21b0000 0x831A0000
-
-wm 32 0x21b001c 0x04088032
-wm 32 0x21b001c 0x0408803A
-wm 32 0x21b001c 0x00008033
-wm 32 0x21b001c 0x0000803B
-wm 32 0x21b001c 0x00428031
-wm 32 0x21b001c 0x00428039
-wm 32 0x21b001c 0x09408030
-wm 32 0x21b001c 0x09408038
-
-wm 32 0x21b001c 0x04008040
-wm 32 0x21b001c 0x04008048
-wm 32 0x21b0800 0xA1380003
-wm 32 0x21b4800 0xA1380003
-wm 32 0x21b0020 0x00005800
-wm 32 0x21b0818 0x00022227
-wm 32 0x21b4818 0x00022227
-
-wm 32 0x21b083c 0x434B0350
-wm 32 0x21b0840 0x034C0359
-wm 32 0x21b483c 0x434B0350
-wm 32 0x21b4840 0x03650348
-wm 32 0x21b0848 0x4436383B
-wm 32 0x21b4848 0x39393341
-wm 32 0x21b0850 0x35373933
-wm 32 0x21b4850 0x48254A36
-
-wm 32 0x21b080c 0x001F001F
-wm 32 0x21b0810 0x001F001F
-
-wm 32 0x21b480c 0x00440044
-wm 32 0x21b4810 0x00440044
-
-wm 32 0x21b08b8 0x00000800
-wm 32 0x21b48b8 0x00000800
-
-wm 32 0x21b001c 0x00000000
-wm 32 0x21b0404 0x00011006
-
-wm 32 0x020c4068 0x00c03f3f
-wm 32 0x020c406c 0x0030fc03
-wm 32 0x020c4070 0x0fffc000
-wm 32 0x020c4074 0x3ff00000
-wm 32 0x020c4078 0x00fff300
-wm 32 0x020c407c 0x0f0000c3
-wm 32 0x020c4080 0x000003ff
-
-# enable AXI cache for VDOA/VPU/IPU
-wm 32 0x20e0010 0xf00000cf
-# set IPU AXI-id0 Qos=0xf(bypass) AXI-id1 Qos=0x7
-wm 32 0x20e0018 0x007f007f
-wm 32 0x20e001c 0x007f007f
diff --git a/arch/arm/boards/freescale-mx6-sabresd/lowlevel.c b/arch/arm/boards/freescale-mx6-sabresd/lowlevel.c
index aec46fd8cc8b..c8b542aa254a 100644
--- a/arch/arm/boards/freescale-mx6-sabresd/lowlevel.c
+++ b/arch/arm/boards/freescale-mx6-sabresd/lowlevel.c
@@ -3,8 +3,15 @@
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 
-void __naked barebox_arm_reset_vector(void)
+extern char __dtb_imx6q_sabresd_start[];
+
+ENTRY_FUNCTION(start_imx6q_sabresd, r0, r1, r2)
 {
+	uint32_t fdt;
+
 	arm_cpu_lowlevel_init();
-	barebox_arm_entry(0x10000000, SZ_1G, 0);
+
+	fdt = (uint32_t)__dtb_imx6q_sabresd_start - get_runtime_offset();
+
+	barebox_arm_entry(0x10000000, SZ_1G, fdt);
 }
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 8ca3d7973228..773b8e2a21b4 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -54,6 +54,7 @@ pbl-$(CONFIG_MACH_SOCFPGA_EBV_SOCRATES) += socfpga_cyclone5_socrates.dtb.o
 pbl-$(CONFIG_MACH_SOCFPGA_TERASIC_SOCKIT) += socfpga_cyclone5_sockit.dtb.o
 pbl-$(CONFIG_MACH_SOLIDRUN_HUMMINGBOARD) += imx6dl-hummingboard.dtb.o
 pbl-$(CONFIG_MACH_SABRELITE) += imx6q-sabrelite.dtb.o imx6dl-sabrelite.dtb.o
+pbl-$(CONFIG_MACH_SABRESD) += imx6q-sabresd.dtb.o
 pbl-$(CONFIG_MACH_NITROGEN6X) += imx6q-nitrogen6x.dtb.o imx6dl-nitrogen6x.dtb.o
 
 .SECONDARY: $(obj)/$(BUILTIN_DTB).dtb.S
diff --git a/arch/arm/dts/imx6q-sabresd.dts b/arch/arm/dts/imx6q-sabresd.dts
index efe0e5976f98..867e825c0400 100644
--- a/arch/arm/dts/imx6q-sabresd.dts
+++ b/arch/arm/dts/imx6q-sabresd.dts
@@ -21,6 +21,11 @@
 
 	chosen {
 		linux,stdout-path = &uart1;
+
+		environment@0 {
+			compatible = "barebox,environment";
+			device-path = &usdhc3, "partname:barebox-environment";
+		};
 	};
 };
 
diff --git a/arch/arm/dts/imx6qdl-sabresd.dtsi b/arch/arm/dts/imx6qdl-sabresd.dtsi
index 78c9fd54ebd3..88a9a646eef2 100644
--- a/arch/arm/dts/imx6qdl-sabresd.dtsi
+++ b/arch/arm/dts/imx6qdl-sabresd.dtsi
@@ -311,4 +311,17 @@
 	cd-gpios = <&gpio2 0 0>;
 	wp-gpios = <&gpio2 1 0>;
 	status = "okay";
+
+	#address-cells = <1>;
+	#size-cells = <1>;
+
+	partition@0 {
+		label = "barebox";
+		reg = <0x0 0x80000>;
+	};
+
+	partition@1 {
+		label = "barebox-environment";
+		reg = <0x80000 0x80000>;
+	};
 };
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 5933f81e95b2..b6f2527114a6 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -225,6 +225,10 @@ config MACH_SABRELITE
 	select HAVE_DEFAULT_ENVIRONMENT_NEW
 	select HAVE_PBL_MULTI_IMAGES
 
+config MACH_SABRESD
+	bool "Freescale i.MX6 SabreSD"
+	select ARCH_IMX6
+
 config MACH_NITROGEN6X
 	bool "BoundaryDevices Nitrogen6x"
 	select ARCH_IMX6
@@ -452,10 +456,6 @@ config MACH_MX6Q_ARM2
 	bool "Freescale i.MX6q Armadillo2"
 	select ARCH_IMX6
 
-config MACH_SABRESD
-	bool "Freescale i.MX6 SabreSD"
-	select ARCH_IMX6
-
 endchoice
 
 # ----------------------------------------------------------
diff --git a/images/Makefile.imx b/images/Makefile.imx
index 9aca871fd6f7..37b9a997908b 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -109,6 +109,11 @@ CFG_start_imx6dl_sabrelite.pblx.imximg = $(board)/freescale-mx6-sabrelite/flash-
 FILE_barebox-freescale-imx6dl-sabrelite.img = start_imx6dl_sabrelite.pblx.imximg
 image-$(CONFIG_MACH_SABRELITE) += barebox-freescale-imx6dl-sabrelite.img
 
+pblx-$(CONFIG_MACH_SABRESD) += start_imx6q_sabresd
+CFG_start_imx6q_sabresd.pblx.imximg = $(board)/freescale-mx6-sabresd/flash-header-mx6-sabresd.imxcfg
+FILE_barebox-freescale-imx6q-sabresd.img = start_imx6q_sabresd.pblx.imximg
+image-$(CONFIG_MACH_SABRESD) += barebox-freescale-imx6q-sabresd.img
+
 pblx-$(CONFIG_MACH_SOLIDRUN_HUMMINGBOARD) += start_imx6dl_hummingboard
 CFG_start_imx6dl_hummingboard.pblx.imximg = $(board)/solidrun-hummingboard/flash-header-solidrun-hummingboard.imxcfg
 FILE_barebox-solidrun-imx6dl-hummingboard.img = start_imx6dl_hummingboard.pblx.imximg
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
