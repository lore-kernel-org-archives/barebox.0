Delivery-date: Thu, 15 Apr 2021 16:04:29 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lX2bd-0007V1-Cy
	for lore@lore.pengutronix.de; Thu, 15 Apr 2021 16:04:29 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lX2bc-0005pD-A9
	for lore@pengutronix.de; Thu, 15 Apr 2021 16:04:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=QRaqeFtq7oTJPq4Ri3fo36HDKDPvVXnEwuqo035CVXY=; b=ZQohFCR1hThdYuDCMYHB6WgfQ
	/h24POyTLlb60WOdqunKh8foqlYIXAoGO/mNn4/tWmEz7tRY9XAr/uRod1TwUAapy3mYtVGhRXx9m
	Kgcu3WPJ9HwwBwO50zxVEFjSzJTirBBUuYAk0k2N4hFhNnV2fepXv1oFjASNRllmVZ78h2ebS5hsf
	KBHQKeddj920FNyyOvt4LKOcICrX5T2Y7ZzUy9Vz45+ozcAE+o4Pt1niH0sxPds6F5/hKNwjM/zJZ
	IINV7VYC560JzTbfK0HdDLWo5ILiw8vAoiwhHvt69Exbz1pEEazQxIaIJSacGtmqSRCcfutAxa0QX
	IIe79CMcA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lX2aa-00GMuK-38; Thu, 15 Apr 2021 14:03:24 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lX2aV-00GMsj-DF
 for barebox@desiato.infradead.org; Thu, 15 Apr 2021 14:03:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=AhxX8Pl+VTLvcBylW4ZTciTxOwhJjZhRIfb0OAcU2UA=; b=4LFw2j4//Hv3ofuXmmZLFYjIxC
 sYkFZGS75iWG0WzB+8dJXsRQlCnxAYP4Cs71sb/84JrWblw8Ao3vVJptAxb9xPbYPwMaSYrz9otnD
 2FC2KckA8oP2SUj4ua1XjVXw8vySXyF6Rvroo/JH0cyxV1DOg4zSQ1S6YvknFKnYi+7C9aP1DQgyF
 VQrmq0FxMpo4M67jbLvVXW62SMgGlIO3/ukNECb28CesuhxjaKRuuJB6FKsizoioQzaRuzdvQs/i7
 YhHDK2+7CMJ1Z1X41TGeMiKrm8hrBbYjYLvcrUqZlLEGRH0ii7rHOBlpeY0CVb1rF8qj7XuqzmmiS
 lDkFRQtA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lX2aS-008dJD-57
 for barebox@lists.infradead.org; Thu, 15 Apr 2021 14:03:18 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lX2aQ-0005fe-Cq; Thu, 15 Apr 2021 16:03:14 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lX2aQ-00081G-4C; Thu, 15 Apr 2021 16:03:14 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 15 Apr 2021 16:03:13 +0200
Message-Id: <20210415140313.29161-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210415131617.3582-2-s.hauer@pengutronix.de>
References: <20210415131617.3582-2-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210415_070316_382656_0A530E2B 
X-CRM114-Status: GOOD (  18.22  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2] ARM: i.MX: sabresd: Add support for i.MX6QP board variant
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The SabreSD comes with different SoC variants. This patch adds support
for the i.MX6QP based board. the DCD data has been taken from U-Boot
2021.04

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---

v2: Add missing arch/arm/dts/imx6qp-sabresd.dts

 ...mxcfg => flash-header-mx6q-sabresd.imxcfg} |  0
 .../flash-header-mx6qp-sabresd.imxcfg         | 96 +++++++++++++++++++
 .../boards/freescale-mx6-sabresd/lowlevel.c   | 16 ++++
 arch/arm/dts/Makefile                         |  2 +-
 arch/arm/dts/imx6qp-sabresd.dts               | 42 ++++++++
 images/Makefile.imx                           |  4 +-
 6 files changed, 158 insertions(+), 2 deletions(-)
 rename arch/arm/boards/freescale-mx6-sabresd/{flash-header-mx6-sabresd.imxcfg => flash-header-mx6q-sabresd.imxcfg} (100%)
 create mode 100644 arch/arm/boards/freescale-mx6-sabresd/flash-header-mx6qp-sabresd.imxcfg
 create mode 100644 arch/arm/dts/imx6qp-sabresd.dts

diff --git a/arch/arm/boards/freescale-mx6-sabresd/flash-header-mx6-sabresd.imxcfg b/arch/arm/boards/freescale-mx6-sabresd/flash-header-mx6q-sabresd.imxcfg
similarity index 100%
rename from arch/arm/boards/freescale-mx6-sabresd/flash-header-mx6-sabresd.imxcfg
rename to arch/arm/boards/freescale-mx6-sabresd/flash-header-mx6q-sabresd.imxcfg
diff --git a/arch/arm/boards/freescale-mx6-sabresd/flash-header-mx6qp-sabresd.imxcfg b/arch/arm/boards/freescale-mx6-sabresd/flash-header-mx6qp-sabresd.imxcfg
new file mode 100644
index 0000000000..aa52776afb
--- /dev/null
+++ b/arch/arm/boards/freescale-mx6-sabresd/flash-header-mx6qp-sabresd.imxcfg
@@ -0,0 +1,96 @@
+loadaddr 0x10000000
+soc imx6
+ivtofs 0x400
+wm 32 0x20e0798 0x000c0000
+wm 32 0x20e0758 0x00000000
+wm 32 0x20e0588 0x00000030
+wm 32 0x20e0594 0x00000030
+wm 32 0x20e056c 0x00000030
+wm 32 0x20e0578 0x00000030
+wm 32 0x20e074c 0x00000030
+wm 32 0x20e057c 0x00000030
+wm 32 0x20e058c 0x00000000
+wm 32 0x20e059c 0x00000030
+wm 32 0x20e05a0 0x00000030
+wm 32 0x20e078c 0x00000030
+wm 32 0x20e0750 0x00020000
+wm 32 0x20e05a8 0x00000030
+wm 32 0x20e05b0 0x00000030
+wm 32 0x20e0524 0x00000030
+wm 32 0x20e051c 0x00000030
+wm 32 0x20e0518 0x00000030
+wm 32 0x20e050c 0x00000030
+wm 32 0x20e05b8 0x00000030
+wm 32 0x20e05c0 0x00000030
+wm 32 0x20e0774 0x00020000
+wm 32 0x20e0784 0x00000030
+wm 32 0x20e0788 0x00000030
+wm 32 0x20e0794 0x00000030
+wm 32 0x20e079c 0x00000030
+wm 32 0x20e07a0 0x00000030
+wm 32 0x20e07a4 0x00000030
+wm 32 0x20e07a8 0x00000030
+wm 32 0x20e0748 0x00000030
+wm 32 0x20e05ac 0x00000030
+wm 32 0x20e05b4 0x00000030
+wm 32 0x20e0528 0x00000030
+wm 32 0x20e0520 0x00000030
+wm 32 0x20e0514 0x00000030
+wm 32 0x20e0510 0x00000030
+wm 32 0x20e05bc 0x00000030
+wm 32 0x20e05c4 0x00000030
+wm 32 0x21b0800 0xa1390003
+wm 32 0x21b080c 0x001b001e
+wm 32 0x21b0810 0x002e0029
+wm 32 0x21b480c 0x001b002a
+wm 32 0x21b4810 0x0019002c
+wm 32 0x21b083c 0x43240334
+wm 32 0x21b0840 0x0324031a
+wm 32 0x21b483c 0x43340344
+wm 32 0x21b4840 0x03280276
+wm 32 0x21b0848 0x44383A3E
+wm 32 0x21b4848 0x3C3C3846
+wm 32 0x21b0850 0x2e303230
+wm 32 0x21b4850 0x38283E34
+wm 32 0x21b081c 0x33333333
+wm 32 0x21b0820 0x33333333
+wm 32 0x21b0824 0x33333333
+wm 32 0x21b0828 0x33333333
+wm 32 0x21b481c 0x33333333
+wm 32 0x21b4820 0x33333333
+wm 32 0x21b4824 0x33333333
+wm 32 0x21b4828 0x33333333
+wm 32 0x21b08c0 0x24912249
+wm 32 0x21b48c0 0x24914289
+wm 32 0x21b08b8 0x00000800
+wm 32 0x21b48b8 0x00000800
+wm 32 0x21b0004 0x00020036
+wm 32 0x21b0008 0x24444040
+wm 32 0x21b000c 0x555A7955
+wm 32 0x21b0010 0xFF320F64
+wm 32 0x21b0014 0x01ff00db
+wm 32 0x21b0018 0x00001740
+wm 32 0x21b001c 0x00008000
+wm 32 0x21b002c 0x000026d2
+wm 32 0x21b0030 0x005A1023
+wm 32 0x21b0040 0x00000027
+wm 32 0x21b0400 0x14420000
+wm 32 0x21b0000 0x831A0000
+wm 32 0x21b0890 0x00400C58
+wm 32 0x0bb0008 0x00000000
+wm 32 0x0bb000c 0x2891E41A
+wm 32 0x0bb0038 0x00000564
+wm 32 0x0bb0014 0x00000040
+wm 32 0x0bb0028 0x00000020
+wm 32 0x0bb002c 0x00000020
+wm 32 0x21b001c 0x04088032
+wm 32 0x21b001c 0x00008033
+wm 32 0x21b001c 0x00048031
+wm 32 0x21b001c 0x09408030
+wm 32 0x21b001c 0x04008040
+wm 32 0x21b0020 0x00005800
+wm 32 0x21b0818 0x00011117
+wm 32 0x21b4818 0x00011117
+wm 32 0x21b0004 0x00025576
+wm 32 0x21b0404 0x00011006
+wm 32 0x21b001c 0x00000000
diff --git a/arch/arm/boards/freescale-mx6-sabresd/lowlevel.c b/arch/arm/boards/freescale-mx6-sabresd/lowlevel.c
index ae847feaa6..7f83366e7a 100644
--- a/arch/arm/boards/freescale-mx6-sabresd/lowlevel.c
+++ b/arch/arm/boards/freescale-mx6-sabresd/lowlevel.c
@@ -35,3 +35,19 @@ ENTRY_FUNCTION(start_imx6q_sabresd, r0, r1, r2)
 
 	barebox_arm_entry(0x10000000, SZ_1G, fdt);
 }
+
+extern char __dtb_imx6qp_sabresd_start[];
+
+ENTRY_FUNCTION(start_imx6qp_sabresd, r0, r1, r2)
+{
+	void *fdt;
+
+	imx6_cpu_lowlevel_init();
+
+	if (IS_ENABLED(CONFIG_DEBUG_LL))
+		setup_uart();
+
+	fdt = __dtb_imx6qp_sabresd_start + get_runtime_offset();
+
+	barebox_arm_entry(0x10000000, SZ_1G, fdt);
+}
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index a637869fb6..795087f41b 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -100,7 +100,7 @@ lwl-$(CONFIG_MACH_RPI2) += bcm2836-rpi-2.dtb.o
 lwl-$(CONFIG_MACH_RPI3) += bcm2837-rpi-3.dtb.o
 lwl-$(CONFIG_MACH_RPI_CM3) += bcm2837-rpi-cm3.dtb.o
 lwl-$(CONFIG_MACH_SABRELITE) += imx6q-sabrelite.dtb.o imx6dl-sabrelite.dtb.o
-lwl-$(CONFIG_MACH_SABRESD) += imx6q-sabresd.dtb.o
+lwl-$(CONFIG_MACH_SABRESD) += imx6q-sabresd.dtb.o imx6qp-sabresd.dtb.o
 lwl-$(CONFIG_MACH_FREESCALE_IMX6SX_SABRESDB) += imx6sx-sdb.dtb.o
 lwl-$(CONFIG_MACH_SOCFPGA_ALTERA_SOCDK) += socfpga_cyclone5_socdk.dtb.o
 lwl-$(CONFIG_MACH_SOCFPGA_EBV_SOCRATES) += socfpga_cyclone5_socrates.dtb.o
diff --git a/arch/arm/dts/imx6qp-sabresd.dts b/arch/arm/dts/imx6qp-sabresd.dts
new file mode 100644
index 0000000000..52cc8aa73b
--- /dev/null
+++ b/arch/arm/dts/imx6qp-sabresd.dts
@@ -0,0 +1,42 @@
+/*
+ * Copyright 2012 Freescale Semiconductor, Inc.
+ * Copyright 2011 Linaro Ltd.
+ *
+ * The code contained herein is licensed under the GNU General Public
+ * License. You may obtain a copy of the GNU General Public License
+ * Version 2 or later at the following locations:
+ *
+ * http://www.opensource.org/licenses/gpl-license.html
+ * http://www.gnu.org/copyleft/gpl.html
+ */
+
+#include <arm/imx6qp-sabresd.dts>
+
+/ {
+	model = "Freescale i.MX6 Quad SABRE Smart Device Board";
+	compatible = "fsl,imx6q-sabresd", "fsl,imx6q";
+
+	chosen {
+		stdout-path = &uart1;
+
+		environment {
+			compatible = "barebox,environment";
+			device-path = &environment_usdhc3;
+		};
+	};
+};
+
+&usdhc3 {
+	#address-cells = <1>;
+	#size-cells = <1>;
+
+	partition@0 {
+		label = "barebox";
+		reg = <0x0 0xe0000>;
+	};
+
+	environment_usdhc3: partition@e0000 {
+		label = "barebox-environment";
+		reg = <0xe0000 0x20000>;
+	};
+};
diff --git a/images/Makefile.imx b/images/Makefile.imx
index 382493488b..3f3cb40d93 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -215,7 +215,9 @@ $(call build_imx_habv4img, CONFIG_MACH_SABRELITE, start_imx6q_sabrelite, freesca
 
 $(call build_imx_habv4img, CONFIG_MACH_SABRELITE, start_imx6dl_sabrelite, freescale-mx6-sabrelite/flash-header-mx6-sabrelite, freescale-imx6dl-sabrelite)
 
-$(call build_imx_habv4img, CONFIG_MACH_SABRESD, start_imx6q_sabresd, freescale-mx6-sabresd/flash-header-mx6-sabresd, freescale-imx6q-sabresd)
+$(call build_imx_habv4img, CONFIG_MACH_SABRESD, start_imx6q_sabresd, freescale-mx6-sabresd/flash-header-mx6q-sabresd, freescale-imx6q-sabresd)
+
+$(call build_imx_habv4img, CONFIG_MACH_SABRESD, start_imx6qp_sabresd, freescale-mx6-sabresd/flash-header-mx6qp-sabresd, freescale-imx6qp-sabresd)
 
 $(call build_imx_habv4img, CONFIG_MACH_UDOO_NEO, start_imx6sx_udoo_neo, udoo-neo/flash-header-mx6sx-udoo-neo_full, udoo-neo)
 
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

