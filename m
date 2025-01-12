Delivery-date: Sun, 12 Jan 2025 09:35:42 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tWtRe-0007hM-26
	for lore@lore.pengutronix.de;
	Sun, 12 Jan 2025 09:35:42 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tWtRd-0007Ly-3j
	for lore@pengutronix.de; Sun, 12 Jan 2025 09:35:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NDfYNhJjjlRHPg2LefBd59mxn6mb0dy9L8VM51KypvI=; b=PTTyHe4vUrtb67vP01mrrOq8pA
	ZNUZo9w2RNl71LDG051idRZenWCi/GgnD664EjxhhpAEyau3eOA0ISbJyIjjSb2mamNegLn2SEQyl
	i4PQwqH5t4mUebGPb2yptjLbpeUx0O4QPhmfBnHm06YyObZs+497LZl+LJ3hS+OFDlum5V56Xdmkc
	8gGRYu/CiUW5JwUAMsmCaUMOOpT1Y9Aww2lQ+Gp8BRYUdH9mtkm38lJi8ifSyal7LpfMzB9iXZo3m
	qS4ovjXHhjz/IsPcY/hE8qycErp7CQAo7n3YrobJ5pW+oortqf5jIqqxh94df2b3bEuxaGY2oYJGT
	N89fenwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tWtRA-00000002LHO-3Jmm;
	Sun, 12 Jan 2025 08:35:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tWtR6-00000002LET-47WD
	for barebox@lists.infradead.org;
	Sun, 12 Jan 2025 08:35:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tWtQZ-0006gI-Hs; Sun, 12 Jan 2025 09:34:35 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tWtQX-0003Nq-0X;
	Sun, 12 Jan 2025 09:34:33 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tWtQY-001LPJ-0z;
	Sun, 12 Jan 2025 09:34:33 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Felix Singer <felixsinger@posteo.net>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sun, 12 Jan 2025 09:34:20 +0100
Message-Id: <20250112083432.320215-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250112083432.320215-1-a.fatoum@pengutronix.de>
References: <20250112083432.320215-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250112_003509_326240_CD5BFAA6 
X-CRM114-Status: GOOD (  18.33  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 01/13] ARM: dts: add device trees for the QEMU Virt machine
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

QEMU assembles a device tree at runtime and passes it to the booted
kernel per Linux boot convention. The barebox-dt-2nd.img looks like a
Linux kernel and so we didn't need to ship our own device tree.

Things are different though if we want to run barebox second stage after
another bootloader, e.g. coreboot. Coreboot doesn't currently pass along
the QEMU device tree and because we have no barebox binary with the QEMU
device tree embedded, there is no image suitable for use as coreboot
payload.

A later commit will add an optional FIT image target that contains
barebox-dt-2nd.img along with all enabled device trees. To make that FIT
image bootable on QEMU Virt, let's dump the QEMU device trees with:

  alias MAKEALL='scripts/container.sh ./MAKEALL'
  MAKEALL -a arm test/arm/virt@multi_v7_defconfig.yaml --dump-dtb
  MAKEALL -a arm test/arm/virt@multi_v8_defconfig.yaml --dump-dtb

and pretty them up with labels and binding macros.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/dts/Makefile        |   3 +
 arch/arm/dts/qemu-virt32.dts | 402 ++++++++++++++++++++++++++++++++++
 arch/arm/dts/qemu-virt64.dts | 403 +++++++++++++++++++++++++++++++++++
 3 files changed, 808 insertions(+)
 create mode 100644 arch/arm/dts/qemu-virt32.dts
 create mode 100644 arch/arm/dts/qemu-virt64.dts

diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index b1c73b47aa40..13d8b0b04320 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -222,6 +222,9 @@ lwl-$(CONFIG_MACH_XILINX_ZCU102) += zynqmp-zcu102-revA.dtb.o zynqmp-zcu102-revB.
 lwl-$(CONFIG_MACH_XILINX_ZCU104) += zynqmp-zcu104-revA.dtb.o
 lwl-$(CONFIG_MACH_XILINX_ZCU106) += zynqmp-zcu106-revA.dtb.o
 
+lwl-$(CONFIG_MACH_VIRT) += qemu-virt32.dtb.o
+lwl-$(CONFIG_ARCH_ARM64_VIRT) += qemu-virt64.dtb.o
+
 lwl-$(CONFIG_MACH_ZII_IMX7D_DEV) += imx7d-zii-rpu2.dtb.o imx7d-zii-rmu2.dtb.o
 lwl-$(CONFIG_MACH_WAGO_PFC_AM35XX) += am35xx-pfc-750_820x.dtb.o
 lwl-$(CONFIG_MACH_LS1028ARDB) += fsl-ls1028a-rdb.dtb.o
diff --git a/arch/arm/dts/qemu-virt32.dts b/arch/arm/dts/qemu-virt32.dts
new file mode 100644
index 000000000000..053fcc242df7
--- /dev/null
+++ b/arch/arm/dts/qemu-virt32.dts
@@ -0,0 +1,402 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/interrupt-controller/arm-gic.h>
+#include <dt-bindings/input/linux-event-codes.h>
+
+/dts-v1/;
+
+/ {
+	compatible = "linux,dummy-virt";
+	model = "linux,dummy-virt";
+	interrupt-parent = <&gic>;
+	#address-cells = <2>;
+	#size-cells = <2>;
+
+	chosen {
+		stdout-path = &uart0;
+	};
+
+	psci {
+		compatible = "arm,psci-1.0", "arm,psci-0.2", "arm,psci";
+		method = "hvc";
+		migrate = <0x84000005>;
+		cpu_on = <0x84000003>;
+		cpu_off = <0x84000002>;
+		cpu_suspend = <0x84000001>;
+	};
+
+	memory@40000000 {
+		reg = <0x0 0x40000000 0x0 0x40000000>;
+		device_type = "memory";
+	};
+
+	flash@0 {
+		compatible = "cfi-flash";
+		reg = <0x0 0x0 0x0 0x4000000>, <0x0 0x4000000 0x0 0x4000000>;
+		bank-width = <4>;
+	};
+
+	clk_24mhz: apb-pclk {
+		compatible = "fixed-clock";
+		clock-frequency = <24000000>;
+		clock-output-names = "clk24mhz";
+		#clock-cells = <0>;
+	};
+
+	platform-bus@c000000 {
+		compatible = "qemu,platform", "simple-bus";
+		ranges = <0x0 0x0 0xc000000 0x2000000>;
+		interrupt-parent = <&gic>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+	};
+
+	fw-cfg@9020000 {
+		compatible = "qemu,fw-cfg-mmio";
+		reg = <0x0 0x9020000 0x0 0x18>;
+		dma-coherent;
+	};
+
+	gpio-keys {
+		compatible = "gpio-keys";
+
+		poweroff {
+			gpios = <&gpio 3 GPIO_ACTIVE_HIGH>;
+			linux,code = <KEY_POWER>;
+			label = "GPIO Key Poweroff";
+		};
+	};
+
+	gpio: pl061@9030000 {
+		compatible = "arm,pl061", "arm,primecell";
+		reg = <0x0 0x9030000 0x0 0x1000>;
+		clock-names = "apb_pclk";
+		clocks = <&clk_24mhz>;
+		interrupts = <GIC_SPI 0x07 IRQ_TYPE_LEVEL_HIGH>;
+		gpio-controller;
+		#gpio-cells = <2>;
+	};
+
+	pcie@10000000 {
+		compatible = "pci-host-ecam-generic";
+		device_type = "pci";
+		interrupt-map-mask = <0x1800 0x0 0x0 0x07>;
+		interrupt-map = <0x0000 0 0 1 &gic 0 0 GIC_SPI 3 IRQ_TYPE_LEVEL_HIGH>,
+		                <0x0000 0 0 2 &gic 0 0 GIC_SPI 4 IRQ_TYPE_LEVEL_HIGH>,
+				<0x0000 0 0 3 &gic 0 0 GIC_SPI 5 IRQ_TYPE_LEVEL_HIGH>,
+				<0x0000 0 0 4 &gic 0 0 GIC_SPI 6 IRQ_TYPE_LEVEL_HIGH>,
+				<0x0800 0 0 1 &gic 0 0 GIC_SPI 4 IRQ_TYPE_LEVEL_HIGH>,
+				<0x0800 0 0 2 &gic 0 0 GIC_SPI 5 IRQ_TYPE_LEVEL_HIGH>,
+				<0x0800 0 0 3 &gic 0 0 GIC_SPI 6 IRQ_TYPE_LEVEL_HIGH>,
+				<0x0800 0 0 4 &gic 0 0 GIC_SPI 3 IRQ_TYPE_LEVEL_HIGH>,
+				<0x1000 0 0 1 &gic 0 0 GIC_SPI 5 IRQ_TYPE_LEVEL_HIGH>,
+				<0x1000 0 0 2 &gic 0 0 GIC_SPI 6 IRQ_TYPE_LEVEL_HIGH>,
+				<0x1000 0 0 3 &gic 0 0 GIC_SPI 3 IRQ_TYPE_LEVEL_HIGH>,
+				<0x1000 0 0 4 &gic 0 0 GIC_SPI 4 IRQ_TYPE_LEVEL_HIGH>,
+				<0x1800 0 0 1 &gic 0 0 GIC_SPI 6 IRQ_TYPE_LEVEL_HIGH>,
+				<0x1800 0 0 2 &gic 0 0 GIC_SPI 3 IRQ_TYPE_LEVEL_HIGH>,
+				<0x1800 0 0 3 &gic 0 0 GIC_SPI 4 IRQ_TYPE_LEVEL_HIGH>,
+				<0x1800 0 0 4 &gic 0 0 GIC_SPI 5 IRQ_TYPE_LEVEL_HIGH>;
+		#interrupt-cells = <1>;
+		ranges = <0x1000000 0    0          0    0x3eff0000 0    0x10000>,
+		         <0x2000000 0    0x10000000 0    0x10000000 0    0x2eff0000>,
+			 <0x3000000 0x80 0x0        0x80 0x0        0x80 0x0>;
+		reg = <0x40 0x10000000 0x0 0x10000000>;
+		msi-map = <0x0 &gic_its 0x0 0x10000>;
+		dma-coherent;
+		bus-range = <0 0xff>;
+		linux,pci-domain = <0>;
+		#address-cells = <3>;
+		#size-cells = <2>;
+	};
+
+	pl031@9010000 {
+		compatible = "arm,pl031", "arm,primecell";
+		reg = <0x0 0x9010000 0x0 0x1000>;
+		clock-names = "apb_pclk";
+		clocks = <&clk_24mhz>;
+		interrupts = <GIC_SPI 0x02 IRQ_TYPE_LEVEL_HIGH>;
+	};
+
+	uart0: pl011@9000000 {
+		compatible = "arm,pl011", "arm,primecell";
+		reg = <0x0 0x9000000 0x0 0x1000>;
+		clock-names = "uartclk", "apb_pclk";
+		clocks = <&clk_24mhz>, <&clk_24mhz>;
+		interrupts = <GIC_SPI 0x01 IRQ_TYPE_LEVEL_HIGH>;
+	};
+
+	pmu {
+	};
+
+	gic: intc@8000000 {
+		compatible = "arm,cortex-a15-gic";
+		reg = <0x0 0x8000000 0x0 0x10000>, <0x0 0x8010000 0x0 0x10000>;
+		ranges;
+		interrupt-controller;
+		#interrupt-cells = <3>;
+		#address-cells = <2>;
+		#size-cells = <2>;
+
+		gic_its: v2m@8020000 {
+			compatible = "arm,gic-v2m-frame";
+			reg = <0x0 0x8020000 0x0 0x1000>;
+			msi-controller;
+		};
+	};
+
+	cpus {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		cpu0: cpu@0 {
+			compatible = "arm,cortex-a7";
+			device_type = "cpu";
+			reg = <0>;
+		};
+
+		cpu-map {
+			socket0 {
+				cluster0 {
+					core0 {
+						cpu = <&cpu0>;
+					};
+				};
+			};
+		};
+	};
+
+	timer {
+		compatible = "arm,armv7-timer";
+		interrupts = <GIC_PPI 0x0d (GIC_CPU_MASK_RAW(1) | IRQ_TYPE_LEVEL_HIGH)>,
+		             <GIC_PPI 0x0e (GIC_CPU_MASK_RAW(1) | IRQ_TYPE_LEVEL_HIGH)>,
+		             <GIC_PPI 0x0b (GIC_CPU_MASK_RAW(1) | IRQ_TYPE_LEVEL_HIGH)>,
+			     <GIC_PPI 0x0a (GIC_CPU_MASK_RAW(1) | IRQ_TYPE_LEVEL_HIGH)>;
+		always-on;
+	};
+
+	virtio_mmio@a000000 {
+		compatible = "virtio,mmio";
+		reg = <0x0 0xa000000 0x0 0x200>;
+		interrupts = <GIC_SPI 0x10 IRQ_TYPE_EDGE_RISING>;
+		dma-coherent;
+	};
+
+	virtio_mmio@a000200 {
+		compatible = "virtio,mmio";
+		reg = <0x0 0xa000200 0x0 0x200>;
+		interrupts = <GIC_SPI 0x11 IRQ_TYPE_EDGE_RISING>;
+		dma-coherent;
+	};
+
+	virtio_mmio@a000400 {
+		compatible = "virtio,mmio";
+		reg = <0x0 0xa000400 0x0 0x200>;
+		interrupts = <GIC_SPI 0x12 IRQ_TYPE_EDGE_RISING>;
+		dma-coherent;
+	};
+
+	virtio_mmio@a000600 {
+		compatible = "virtio,mmio";
+		reg = <0x0 0xa000600 0x0 0x200>;
+		interrupts = <GIC_SPI 0x13 IRQ_TYPE_EDGE_RISING>;
+		dma-coherent;
+	};
+
+	virtio_mmio@a000800 {
+		compatible = "virtio,mmio";
+		reg = <0x0 0xa000800 0x0 0x200>;
+		interrupts = <GIC_SPI 0x14 IRQ_TYPE_EDGE_RISING>;
+		dma-coherent;
+	};
+
+	virtio_mmio@a000a00 {
+		compatible = "virtio,mmio";
+		reg = <0x0 0xa000a00 0x0 0x200>;
+		interrupts = <GIC_SPI 0x15 IRQ_TYPE_EDGE_RISING>;
+		dma-coherent;
+	};
+
+	virtio_mmio@a000c00 {
+		compatible = "virtio,mmio";
+		reg = <0x0 0xa000c00 0x0 0x200>;
+		interrupts = <GIC_SPI 0x16 IRQ_TYPE_EDGE_RISING>;
+		dma-coherent;
+	};
+
+	virtio_mmio@a000e00 {
+		compatible = "virtio,mmio";
+		reg = <0x0 0xa000e00 0x0 0x200>;
+		interrupts = <GIC_SPI 0x17 IRQ_TYPE_EDGE_RISING>;
+		dma-coherent;
+	};
+
+	virtio_mmio@a001000 {
+		compatible = "virtio,mmio";
+		reg = <0x0 0xa001000 0x0 0x200>;
+		interrupts = <GIC_SPI 0x18 IRQ_TYPE_EDGE_RISING>;
+		dma-coherent;
+	};
+
+	virtio_mmio@a001200 {
+		compatible = "virtio,mmio";
+		reg = <0x0 0xa001200 0x0 0x200>;
+		interrupts = <GIC_SPI 0x19 IRQ_TYPE_EDGE_RISING>;
+		dma-coherent;
+	};
+
+	virtio_mmio@a001400 {
+		compatible = "virtio,mmio";
+		reg = <0x0 0xa001400 0x0 0x200>;
+		interrupts = <GIC_SPI 0x1a IRQ_TYPE_EDGE_RISING>;
+		dma-coherent;
+	};
+
+	virtio_mmio@a001600 {
+		compatible = "virtio,mmio";
+		reg = <0x0 0xa001600 0x0 0x200>;
+		interrupts = <GIC_SPI 0x1b IRQ_TYPE_EDGE_RISING>;
+		dma-coherent;
+	};
+
+	virtio_mmio@a001800 {
+		compatible = "virtio,mmio";
+		reg = <0x0 0xa001800 0x0 0x200>;
+		interrupts = <GIC_SPI 0x1c IRQ_TYPE_EDGE_RISING>;
+		dma-coherent;
+	};
+
+	virtio_mmio@a001a00 {
+		compatible = "virtio,mmio";
+		reg = <0x0 0xa001a00 0x0 0x200>;
+		interrupts = <GIC_SPI 0x1d IRQ_TYPE_EDGE_RISING>;
+		dma-coherent;
+	};
+
+	virtio_mmio@a001c00 {
+		compatible = "virtio,mmio";
+		reg = <0x0 0xa001c00 0x0 0x200>;
+		interrupts = <GIC_SPI 0x1e IRQ_TYPE_EDGE_RISING>;
+		dma-coherent;
+	};
+
+	virtio_mmio@a001e00 {
+		compatible = "virtio,mmio";
+		reg = <0x0 0xa001e00 0x0 0x200>;
+		interrupts = <GIC_SPI 0x1f IRQ_TYPE_EDGE_RISING>;
+		dma-coherent;
+	};
+
+	virtio_mmio@a002000 {
+		compatible = "virtio,mmio";
+		reg = <0x0 0xa002000 0x0 0x200>;
+		interrupts = <GIC_SPI 0x20 IRQ_TYPE_EDGE_RISING>;
+		dma-coherent;
+	};
+
+	virtio_mmio@a002200 {
+		compatible = "virtio,mmio";
+		reg = <0x0 0xa002200 0x0 0x200>;
+		interrupts = <GIC_SPI 0x21 IRQ_TYPE_EDGE_RISING>;
+		dma-coherent;
+	};
+
+	virtio_mmio@a002400 {
+		compatible = "virtio,mmio";
+		reg = <0x0 0xa002400 0x0 0x200>;
+		interrupts = <GIC_SPI 0x22 IRQ_TYPE_EDGE_RISING>;
+		dma-coherent;
+	};
+
+	virtio_mmio@a002600 {
+		compatible = "virtio,mmio";
+		reg = <0x0 0xa002600 0x0 0x200>;
+		interrupts = <GIC_SPI 0x23 IRQ_TYPE_EDGE_RISING>;
+		dma-coherent;
+	};
+
+	virtio_mmio@a002800 {
+		compatible = "virtio,mmio";
+		reg = <0x0 0xa002800 0x0 0x200>;
+		interrupts = <GIC_SPI 0x24 IRQ_TYPE_EDGE_RISING>;
+		dma-coherent;
+	};
+
+	virtio_mmio@a002a00 {
+		compatible = "virtio,mmio";
+		reg = <0x0 0xa002a00 0x0 0x200>;
+		interrupts = <GIC_SPI 0x25 IRQ_TYPE_EDGE_RISING>;
+		dma-coherent;
+	};
+
+	virtio_mmio@a002c00 {
+		compatible = "virtio,mmio";
+		reg = <0x0 0xa002c00 0x0 0x200>;
+		interrupts = <GIC_SPI 0x26 IRQ_TYPE_EDGE_RISING>;
+		dma-coherent;
+	};
+
+	virtio_mmio@a002e00 {
+		compatible = "virtio,mmio";
+		reg = <0x0 0xa002e00 0x0 0x200>;
+		interrupts = <GIC_SPI 0x27 IRQ_TYPE_EDGE_RISING>;
+		dma-coherent;
+	};
+
+	virtio_mmio@a003000 {
+		compatible = "virtio,mmio";
+		reg = <0x0 0xa003000 0x0 0x200>;
+		interrupts = <GIC_SPI 0x28 IRQ_TYPE_EDGE_RISING>;
+		dma-coherent;
+	};
+
+	virtio_mmio@a003200 {
+		compatible = "virtio,mmio";
+		reg = <0x0 0xa003200 0x0 0x200>;
+		interrupts = <GIC_SPI 0x29 IRQ_TYPE_EDGE_RISING>;
+		dma-coherent;
+	};
+
+	virtio_mmio@a003400 {
+		compatible = "virtio,mmio";
+		reg = <0x0 0xa003400 0x0 0x200>;
+		interrupts = <GIC_SPI 0x2a IRQ_TYPE_EDGE_RISING>;
+		dma-coherent;
+	};
+
+	virtio_mmio@a003600 {
+		compatible = "virtio,mmio";
+		reg = <0x0 0xa003600 0x0 0x200>;
+		interrupts = <GIC_SPI 0x2b IRQ_TYPE_EDGE_RISING>;
+		dma-coherent;
+	};
+
+	virtio_mmio@a003800 {
+		compatible = "virtio,mmio";
+		reg = <0x0 0xa003800 0x0 0x200>;
+		interrupts = <GIC_SPI 0x2c IRQ_TYPE_EDGE_RISING>;
+		dma-coherent;
+	};
+
+	virtio_mmio@a003a00 {
+		compatible = "virtio,mmio";
+		reg = <0x0 0xa003a00 0x0 0x200>;
+		interrupts = <GIC_SPI 0x2d IRQ_TYPE_EDGE_RISING>;
+		dma-coherent;
+	};
+
+	virtio_mmio@a003c00 {
+		compatible = "virtio,mmio";
+		reg = <0x0 0xa003c00 0x0 0x200>;
+		interrupts = <GIC_SPI 0x2e IRQ_TYPE_EDGE_RISING>;
+		dma-coherent;
+	};
+
+	virtio_mmio@a003e00 {
+		compatible = "virtio,mmio";
+		reg = <0x0 0xa003e00 0x0 0x200>;
+		interrupts = <GIC_SPI 0x2f IRQ_TYPE_EDGE_RISING>;
+		dma-coherent;
+	};
+};
diff --git a/arch/arm/dts/qemu-virt64.dts b/arch/arm/dts/qemu-virt64.dts
new file mode 100644
index 000000000000..0fc98c22cd5f
--- /dev/null
+++ b/arch/arm/dts/qemu-virt64.dts
@@ -0,0 +1,403 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/interrupt-controller/arm-gic.h>
+#include <dt-bindings/input/linux-event-codes.h>
+
+/dts-v1/;
+
+/ {
+	compatible = "linux,dummy-virt";
+	model = "linux,dummy-virt";
+	interrupt-parent = <&gic>;
+	#address-cells = <2>;
+	#size-cells = <2>;
+
+	chosen {
+		stdout-path = &uart0;
+	};
+
+	psci {
+		compatible = "arm,psci-1.0", "arm,psci-0.2", "arm,psci";
+		method = "hvc";
+		migrate = <0xc4000005>;
+		cpu_on = <0xc4000003>;
+		cpu_off = <0x84000002>;
+		cpu_suspend = <0xc4000001>;
+	};
+
+	memory@40000000 {
+		reg = <0x0 0x40000000 0x0 0x40000000>;
+		device_type = "memory";
+	};
+
+	flash@0 {
+		compatible = "cfi-flash";
+		reg = <0x0 0x0 0x0 0x4000000>, <0x0 0x4000000 0x0 0x4000000>;
+		bank-width = <4>;
+	};
+
+	clk_24mhz: apb-pclk {
+		compatible = "fixed-clock";
+		clock-frequency = <24000000>;
+		clock-output-names = "clk24mhz";
+		#clock-cells = <0>;
+	};
+
+	platform-bus@c000000 {
+		compatible = "qemu,platform", "simple-bus";
+		ranges = <0x0 0x0 0xc000000 0x2000000>;
+		interrupt-parent = <&gic>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+	};
+
+	fw-cfg@9020000 {
+		compatible = "qemu,fw-cfg-mmio";
+		reg = <0x0 0x9020000 0x0 0x18>;
+		dma-coherent;
+	};
+
+	gpio-keys {
+		compatible = "gpio-keys";
+
+		poweroff {
+			gpios = <&gpio 3 GPIO_ACTIVE_HIGH>;
+			linux,code = <KEY_POWER>;
+			label = "GPIO Key Poweroff";
+		};
+	};
+
+	gpio: pl061@9030000 {
+		compatible = "arm,pl061", "arm,primecell";
+		reg = <0x0 0x9030000 0x0 0x1000>;
+		clock-names = "apb_pclk";
+		clocks = <&clk_24mhz>;
+		interrupts = <GIC_SPI 0x07 IRQ_TYPE_LEVEL_HIGH>;
+		gpio-controller;
+		#gpio-cells = <2>;
+	};
+
+	pcie@10000000 {
+		compatible = "pci-host-ecam-generic";
+		device_type = "pci";
+		interrupt-map-mask = <0x1800 0x0 0x0 0x07>;
+		interrupt-map = <0x0000 0 0 1 &gic 0 0 GIC_SPI 3 IRQ_TYPE_LEVEL_HIGH>,
+		                <0x0000 0 0 2 &gic 0 0 GIC_SPI 4 IRQ_TYPE_LEVEL_HIGH>,
+				<0x0000 0 0 3 &gic 0 0 GIC_SPI 5 IRQ_TYPE_LEVEL_HIGH>,
+				<0x0000 0 0 4 &gic 0 0 GIC_SPI 6 IRQ_TYPE_LEVEL_HIGH>,
+				<0x0800 0 0 1 &gic 0 0 GIC_SPI 4 IRQ_TYPE_LEVEL_HIGH>,
+				<0x0800 0 0 2 &gic 0 0 GIC_SPI 5 IRQ_TYPE_LEVEL_HIGH>,
+				<0x0800 0 0 3 &gic 0 0 GIC_SPI 6 IRQ_TYPE_LEVEL_HIGH>,
+				<0x0800 0 0 4 &gic 0 0 GIC_SPI 3 IRQ_TYPE_LEVEL_HIGH>,
+				<0x1000 0 0 1 &gic 0 0 GIC_SPI 5 IRQ_TYPE_LEVEL_HIGH>,
+				<0x1000 0 0 2 &gic 0 0 GIC_SPI 6 IRQ_TYPE_LEVEL_HIGH>,
+				<0x1000 0 0 3 &gic 0 0 GIC_SPI 3 IRQ_TYPE_LEVEL_HIGH>,
+				<0x1000 0 0 4 &gic 0 0 GIC_SPI 4 IRQ_TYPE_LEVEL_HIGH>,
+				<0x1800 0 0 1 &gic 0 0 GIC_SPI 6 IRQ_TYPE_LEVEL_HIGH>,
+				<0x1800 0 0 2 &gic 0 0 GIC_SPI 3 IRQ_TYPE_LEVEL_HIGH>,
+				<0x1800 0 0 3 &gic 0 0 GIC_SPI 4 IRQ_TYPE_LEVEL_HIGH>,
+				<0x1800 0 0 4 &gic 0 0 GIC_SPI 5 IRQ_TYPE_LEVEL_HIGH>;
+		#interrupt-cells = <1>;
+		ranges = <0x1000000 0    0          0    0x3eff0000 0    0x10000>,
+		         <0x2000000 0    0x10000000 0    0x10000000 0    0x2eff0000>;
+		reg = <0x0 0x3f000000 0x0 0x1000000>;
+		msi-map = <0x0 &gic_its 0x0 0x10000>;
+		dma-coherent;
+		bus-range = <0 0xf>;
+		linux,pci-domain = <0>;
+		#address-cells = <3>;
+		#size-cells = <2>;
+	};
+
+	pl031@9010000 {
+		compatible = "arm,pl031", "arm,primecell";
+		reg = <0x0 0x9010000 0x0 0x1000>;
+		clock-names = "apb_pclk";
+		clocks = <&clk_24mhz>;
+		interrupts = <GIC_SPI 0x02 IRQ_TYPE_LEVEL_HIGH>;
+	};
+
+	uart0: pl011@9000000 {
+		compatible = "arm,pl011", "arm,primecell";
+		reg = <0x0 0x9000000 0x0 0x1000>;
+		clock-names = "uartclk", "apb_pclk";
+		clocks = <&clk_24mhz>, <&clk_24mhz>;
+		interrupts = <GIC_SPI 0x01 IRQ_TYPE_LEVEL_HIGH>;
+	};
+
+	pmu {
+		compatible = "arm,armv8-pmuv3";
+		interrupts = <GIC_PPI 0x07 (GIC_CPU_MASK_RAW(1) | IRQ_TYPE_LEVEL_HIGH)>;
+	};
+
+	gic: intc@8000000 {
+		compatible = "arm,cortex-a15-gic";
+		reg = <0x0 0x8000000 0x0 0x10000>, <0x0 0x8010000 0x0 0x10000>;
+		ranges;
+		interrupt-controller;
+		#interrupt-cells = <3>;
+		#address-cells = <2>;
+		#size-cells = <2>;
+
+		gic_its: v2m@8020000 {
+			compatible = "arm,gic-v2m-frame";
+			reg = <0x0 0x8020000 0x0 0x1000>;
+			msi-controller;
+		};
+	};
+
+	cpus {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		cpu0: cpu@0 {
+			compatible = "arm,cortex-a57";
+			device_type = "cpu";
+			reg = <0>;
+		};
+
+		cpu-map {
+			socket0 {
+				cluster0 {
+					core0 {
+						cpu = <&cpu0>;
+					};
+				};
+			};
+		};
+	};
+
+	timer {
+		compatible = "arm,armv8-timer", "arm,armv7-timer";
+		interrupts = <GIC_PPI 0x0d (GIC_CPU_MASK_RAW(1) | IRQ_TYPE_LEVEL_HIGH)>,
+		             <GIC_PPI 0x0e (GIC_CPU_MASK_RAW(1) | IRQ_TYPE_LEVEL_HIGH)>,
+		             <GIC_PPI 0x0b (GIC_CPU_MASK_RAW(1) | IRQ_TYPE_LEVEL_HIGH)>,
+			     <GIC_PPI 0x0a (GIC_CPU_MASK_RAW(1) | IRQ_TYPE_LEVEL_HIGH)>;
+		always-on;
+	};
+
+	virtio_mmio@a000000 {
+		compatible = "virtio,mmio";
+		reg = <0x0 0xa000000 0x0 0x200>;
+		interrupts = <GIC_SPI 0x10 IRQ_TYPE_EDGE_RISING>;
+		dma-coherent;
+	};
+
+	virtio_mmio@a000200 {
+		compatible = "virtio,mmio";
+		reg = <0x0 0xa000200 0x0 0x200>;
+		interrupts = <GIC_SPI 0x11 IRQ_TYPE_EDGE_RISING>;
+		dma-coherent;
+	};
+
+	virtio_mmio@a000400 {
+		compatible = "virtio,mmio";
+		reg = <0x0 0xa000400 0x0 0x200>;
+		interrupts = <GIC_SPI 0x12 IRQ_TYPE_EDGE_RISING>;
+		dma-coherent;
+	};
+
+	virtio_mmio@a000600 {
+		compatible = "virtio,mmio";
+		reg = <0x0 0xa000600 0x0 0x200>;
+		interrupts = <GIC_SPI 0x13 IRQ_TYPE_EDGE_RISING>;
+		dma-coherent;
+	};
+
+	virtio_mmio@a000800 {
+		compatible = "virtio,mmio";
+		reg = <0x0 0xa000800 0x0 0x200>;
+		interrupts = <GIC_SPI 0x14 IRQ_TYPE_EDGE_RISING>;
+		dma-coherent;
+	};
+
+	virtio_mmio@a000a00 {
+		compatible = "virtio,mmio";
+		reg = <0x0 0xa000a00 0x0 0x200>;
+		interrupts = <GIC_SPI 0x15 IRQ_TYPE_EDGE_RISING>;
+		dma-coherent;
+	};
+
+	virtio_mmio@a000c00 {
+		compatible = "virtio,mmio";
+		reg = <0x0 0xa000c00 0x0 0x200>;
+		interrupts = <GIC_SPI 0x16 IRQ_TYPE_EDGE_RISING>;
+		dma-coherent;
+	};
+
+	virtio_mmio@a000e00 {
+		compatible = "virtio,mmio";
+		reg = <0x0 0xa000e00 0x0 0x200>;
+		interrupts = <GIC_SPI 0x17 IRQ_TYPE_EDGE_RISING>;
+		dma-coherent;
+	};
+
+	virtio_mmio@a001000 {
+		compatible = "virtio,mmio";
+		reg = <0x0 0xa001000 0x0 0x200>;
+		interrupts = <GIC_SPI 0x18 IRQ_TYPE_EDGE_RISING>;
+		dma-coherent;
+	};
+
+	virtio_mmio@a001200 {
+		compatible = "virtio,mmio";
+		reg = <0x0 0xa001200 0x0 0x200>;
+		interrupts = <GIC_SPI 0x19 IRQ_TYPE_EDGE_RISING>;
+		dma-coherent;
+	};
+
+	virtio_mmio@a001400 {
+		compatible = "virtio,mmio";
+		reg = <0x0 0xa001400 0x0 0x200>;
+		interrupts = <GIC_SPI 0x1a IRQ_TYPE_EDGE_RISING>;
+		dma-coherent;
+	};
+
+	virtio_mmio@a001600 {
+		compatible = "virtio,mmio";
+		reg = <0x0 0xa001600 0x0 0x200>;
+		interrupts = <GIC_SPI 0x1b IRQ_TYPE_EDGE_RISING>;
+		dma-coherent;
+	};
+
+	virtio_mmio@a001800 {
+		compatible = "virtio,mmio";
+		reg = <0x0 0xa001800 0x0 0x200>;
+		interrupts = <GIC_SPI 0x1c IRQ_TYPE_EDGE_RISING>;
+		dma-coherent;
+	};
+
+	virtio_mmio@a001a00 {
+		compatible = "virtio,mmio";
+		reg = <0x0 0xa001a00 0x0 0x200>;
+		interrupts = <GIC_SPI 0x1d IRQ_TYPE_EDGE_RISING>;
+		dma-coherent;
+	};
+
+	virtio_mmio@a001c00 {
+		compatible = "virtio,mmio";
+		reg = <0x0 0xa001c00 0x0 0x200>;
+		interrupts = <GIC_SPI 0x1e IRQ_TYPE_EDGE_RISING>;
+		dma-coherent;
+	};
+
+	virtio_mmio@a001e00 {
+		compatible = "virtio,mmio";
+		reg = <0x0 0xa001e00 0x0 0x200>;
+		interrupts = <GIC_SPI 0x1f IRQ_TYPE_EDGE_RISING>;
+		dma-coherent;
+	};
+
+	virtio_mmio@a002000 {
+		compatible = "virtio,mmio";
+		reg = <0x0 0xa002000 0x0 0x200>;
+		interrupts = <GIC_SPI 0x20 IRQ_TYPE_EDGE_RISING>;
+		dma-coherent;
+	};
+
+	virtio_mmio@a002200 {
+		compatible = "virtio,mmio";
+		reg = <0x0 0xa002200 0x0 0x200>;
+		interrupts = <GIC_SPI 0x21 IRQ_TYPE_EDGE_RISING>;
+		dma-coherent;
+	};
+
+	virtio_mmio@a002400 {
+		compatible = "virtio,mmio";
+		reg = <0x0 0xa002400 0x0 0x200>;
+		interrupts = <GIC_SPI 0x22 IRQ_TYPE_EDGE_RISING>;
+		dma-coherent;
+	};
+
+	virtio_mmio@a002600 {
+		compatible = "virtio,mmio";
+		reg = <0x0 0xa002600 0x0 0x200>;
+		interrupts = <GIC_SPI 0x23 IRQ_TYPE_EDGE_RISING>;
+		dma-coherent;
+	};
+
+	virtio_mmio@a002800 {
+		compatible = "virtio,mmio";
+		reg = <0x0 0xa002800 0x0 0x200>;
+		interrupts = <GIC_SPI 0x24 IRQ_TYPE_EDGE_RISING>;
+		dma-coherent;
+	};
+
+	virtio_mmio@a002a00 {
+		compatible = "virtio,mmio";
+		reg = <0x0 0xa002a00 0x0 0x200>;
+		interrupts = <GIC_SPI 0x25 IRQ_TYPE_EDGE_RISING>;
+		dma-coherent;
+	};
+
+	virtio_mmio@a002c00 {
+		compatible = "virtio,mmio";
+		reg = <0x0 0xa002c00 0x0 0x200>;
+		interrupts = <GIC_SPI 0x26 IRQ_TYPE_EDGE_RISING>;
+		dma-coherent;
+	};
+
+	virtio_mmio@a002e00 {
+		compatible = "virtio,mmio";
+		reg = <0x0 0xa002e00 0x0 0x200>;
+		interrupts = <GIC_SPI 0x27 IRQ_TYPE_EDGE_RISING>;
+		dma-coherent;
+	};
+
+	virtio_mmio@a003000 {
+		compatible = "virtio,mmio";
+		reg = <0x0 0xa003000 0x0 0x200>;
+		interrupts = <GIC_SPI 0x28 IRQ_TYPE_EDGE_RISING>;
+		dma-coherent;
+	};
+
+	virtio_mmio@a003200 {
+		compatible = "virtio,mmio";
+		reg = <0x0 0xa003200 0x0 0x200>;
+		interrupts = <GIC_SPI 0x29 IRQ_TYPE_EDGE_RISING>;
+		dma-coherent;
+	};
+
+	virtio_mmio@a003400 {
+		compatible = "virtio,mmio";
+		reg = <0x0 0xa003400 0x0 0x200>;
+		interrupts = <GIC_SPI 0x2a IRQ_TYPE_EDGE_RISING>;
+		dma-coherent;
+	};
+
+	virtio_mmio@a003600 {
+		compatible = "virtio,mmio";
+		reg = <0x0 0xa003600 0x0 0x200>;
+		interrupts = <GIC_SPI 0x2b IRQ_TYPE_EDGE_RISING>;
+		dma-coherent;
+	};
+
+	virtio_mmio@a003800 {
+		compatible = "virtio,mmio";
+		reg = <0x0 0xa003800 0x0 0x200>;
+		interrupts = <GIC_SPI 0x2c IRQ_TYPE_EDGE_RISING>;
+		dma-coherent;
+	};
+
+	virtio_mmio@a003a00 {
+		compatible = "virtio,mmio";
+		reg = <0x0 0xa003a00 0x0 0x200>;
+		interrupts = <GIC_SPI 0x2d IRQ_TYPE_EDGE_RISING>;
+		dma-coherent;
+	};
+
+	virtio_mmio@a003c00 {
+		compatible = "virtio,mmio";
+		reg = <0x0 0xa003c00 0x0 0x200>;
+		interrupts = <GIC_SPI 0x2e IRQ_TYPE_EDGE_RISING>;
+		dma-coherent;
+	};
+
+	virtio_mmio@a003e00 {
+		compatible = "virtio,mmio";
+		reg = <0x0 0xa003e00 0x0 0x200>;
+		interrupts = <GIC_SPI 0x2f IRQ_TYPE_EDGE_RISING>;
+		dma-coherent;
+	};
+};
-- 
2.39.5



