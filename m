Delivery-date: Fri, 01 Mar 2024 17:19:16 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rg5bQ-002TV2-0b
	for lore@lore.pengutronix.de;
	Fri, 01 Mar 2024 17:19:16 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rg5bP-0000bF-5F
	for lore@pengutronix.de; Fri, 01 Mar 2024 17:19:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Content-Type:Date:To:From:Subject:Message-ID:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=bGENu/aOahdXQ0RBL/gRXxp7M22657BPw1Kh9n+pYtk=; b=NMoaRD0zqOLLokSRQA8xXz+xDw
	DS48qrcz9OnADGkk9lhe3wVMCHt2O/0MIL1PZuo123fAXmWeQ8AkpBZZ4d3sGhOwoJEferKfyEvh7
	/jYZsbrg6181NY8595Hnl/nxe4fuGHVPXaIjWr+J06VIabTytN8RIH6QId6mJ1cpxmnnZW4k9rFK7
	bn1NEFa977xOMXjsmkQb9MJJdccg9evxzDcq4AzBfXFDgBZppqk/5jhSAahUSKA43BYZQMpc8IsVF
	QXQXNbfnQoFvtKwq55wj9sHX+oYWU14loJTDFlknN6v/4Na0rGFYxe9I94o3sk2UhGQxa2F9N7giO
	Q2HW2sSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rg5aj-000000013gY-3uoz;
	Fri, 01 Mar 2024 16:18:33 +0000
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rg5ag-000000013fr-0OZZ
	for barebox@lists.infradead.org;
	Fri, 01 Mar 2024 16:18:31 +0000
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-a26ed1e05c7so420228166b.2
        for <barebox@lists.infradead.org>; Fri, 01 Mar 2024 08:18:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1709309907; x=1709914707; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:user-agent:date:to:from
         :subject:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=bGENu/aOahdXQ0RBL/gRXxp7M22657BPw1Kh9n+pYtk=;
        b=d9D0Qvh0VdUaPpnvimB8iYnTUVTOWZvBiNwkMw7fFdRYJTyPaGJujcdzTjsJ6UGekw
         3VqQfMVmx2V9Qn+yD/17/Ld/d/FOYeNseYUT2KPmpkPf2ZnvubDWxDFrzYEb7dg0OLGN
         ow6DWZYDR/CIZVqYFJb6INyMCFcbDaQAuyNNNl05ilYGgCsVSqNK4M0kt6lCcVuhJyIG
         i/Hr2hypJPBD0QktxFeytsJ8AfgWPY0VI2vMOjmfaYxSPVS0oDC6vP1Wa9qJ0xPvBq9o
         xXZD5+mFBCYsguRGbKBzGnWuPkrhnKVIhyA5iwoWapL5CZfLE5QPZpQolG+hlF/unrhZ
         Rq2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709309907; x=1709914707;
        h=content-transfer-encoding:mime-version:user-agent:date:to:from
         :subject:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bGENu/aOahdXQ0RBL/gRXxp7M22657BPw1Kh9n+pYtk=;
        b=YQiO5tUFEGy48ACuVFG5Z+vzcZg1cDDi0mpzdibFM90HbjWT9e2ra6mRJjM5j8j+vV
         Sp0ls4dt8up0k6ELCphp/L6dWyqWLjXothmyj/KMbzE8iTz7KC5eXJ8um7GCZXqNCGi8
         OQnt7xlyV+o9MgmwwMWsz/2PqVNiBM2PREVrRB/9ga6CUMhEQhDfimFiDIpug+EmK/pc
         cOq864TiwXatQtIFIReU4ajEPJIEvW1HPkDcccH80Chi/wYIwRUWI9BuAGDMta9Ta+b8
         Dt3XQrI2nfF0P5GyW3h7dxOKHodZbRtctImPjSBTdr8NNm3/HQ7k80mqwvp4fgbuKAal
         IesQ==
X-Gm-Message-State: AOJu0YxeE6XyfgQNrF8Ac64NA/XKGZnuTzpCUTVr+TqEMo3QENega6yU
	IMuwa8ioIw8SZ8tUjSjqfB+owUlKVq5/v0qkfsNeu1l7dD3ZJT5b5HYYQMD5
X-Google-Smtp-Source: AGHT+IEGV4maI0H63BOQUjFSld5qOWBgVdtX9SAUB4nw4gOhR2MGgfQL2d4SvURotqgCjwcE5j276A==
X-Received: by 2002:a17:906:c06:b0:a3e:73c8:cd27 with SMTP id s6-20020a1709060c0600b00a3e73c8cd27mr1579755ejf.73.1709309907043;
        Fri, 01 Mar 2024 08:18:27 -0800 (PST)
Received: from vaio ([91.142.65.210])
        by smtp.gmail.com with ESMTPSA id u22-20020a1709067d1600b00a3d2d81daafsm1850122ejo.172.2024.03.01.08.18.26
        for <barebox@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Mar 2024 08:18:26 -0800 (PST)
Message-ID: <4b448318f71f2677bc28c2241c5bf0c081073564.camel@gmail.com>
From: Stefano Manni <stefano.manni@gmail.com>
To: barebox@lists.infradead.org
Date: Fri, 01 Mar 2024 17:18:25 +0100
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240301_081830_177407_5EE17989 
X-CRM114-Status: GOOD (  18.23  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: i.MX: sabresd: Add support for i.MX6DL board variant
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The SabreSD comes with different SoC variants. This patch adds support
for the i.MX6DL based board. the DCD data has been taken from U-Boot
2023.04

Signed-off-by: Stefano Manni <stefano.manni@gmail.com>
---
 arch/arm/boards/freescale-mx6-sabresd/board.c |   6 +-
 .../flash-header-mx6dl-sabresd.imxcfg         | 104 ++++++++++++++++++
 .../boards/freescale-mx6-sabresd/lowlevel.c   |  16 +++
 arch/arm/dts/Makefile                         |   2 +-
 arch/arm/dts/imx6dl-sabresd.dts               |  42 +++++++
 images/Makefile.imx                           |   2 +
 6 files changed, 169 insertions(+), 3 deletions(-)
 create mode 100644 arch/arm/boards/freescale-mx6-sabresd/flash-header-mx6dl-sabresd.imxcfg
 create mode 100644 arch/arm/dts/imx6dl-sabresd.dts

diff --git a/arch/arm/boards/freescale-mx6-sabresd/board.c b/arch/arm/boards/freescale-mx6-sabresd/board.c
index 06e356a40e..2b1d005cf2 100644
--- a/arch/arm/boards/freescale-mx6-sabresd/board.c
+++ b/arch/arm/boards/freescale-mx6-sabresd/board.c
@@ -55,7 +55,8 @@ static int ar8031_phy_fixup(struct phy_device *dev)
 static int sabresd_devices_init(void)
 {
 	if (!of_machine_is_compatible("fsl,imx6q-sabresd") &&
-	    !of_machine_is_compatible("fsl,imx6qp-sabresd"))
+	    !of_machine_is_compatible("fsl,imx6qp-sabresd") &&
+	    !of_machine_is_compatible("fsl,imx6dl-sabresd"))
 		return 0;
 
 	armlinux_set_architecture(3980);
@@ -68,7 +69,8 @@ device_initcall(sabresd_devices_init);
 static int sabresd_coredevices_init(void)
 {
 	if (!of_machine_is_compatible("fsl,imx6q-sabresd") &&
-	    !of_machine_is_compatible("fsl,imx6qp-sabresd"))
+	    !of_machine_is_compatible("fsl,imx6qp-sabresd") &&
+	    !of_machine_is_compatible("fsl,imx6dl-sabresd"))
 		return 0;
 
 	phy_register_fixup_for_uid(PHY_ID_AR8031, AR_PHY_ID_MASK,
diff --git a/arch/arm/boards/freescale-mx6-sabresd/flash-header-mx6dl-sabresd.imxcfg b/arch/arm/boards/freescale-mx6-sabresd/flash-header-mx6dl-sabresd.imxcfg
new file mode 100644
index 0000000000..303b62ce4f
--- /dev/null
+++ b/arch/arm/boards/freescale-mx6-sabresd/flash-header-mx6dl-sabresd.imxcfg
@@ -0,0 +1,104 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
+loadaddr 0x10000000
+soc imx6
+ivtofs 0x400
+wm 32 0x020e0774 0x000C0000
+wm 32 0x020e0754 0x00000000
+wm 32 0x020e04ac 0x00000030
+wm 32 0x020e04b0 0x00000030
+wm 32 0x020e0464 0x00000030
+wm 32 0x020e0490 0x00000030
+wm 32 0x020e074c 0x00000030
+wm 32 0x020e0494 0x00000030
+wm 32 0x020e04a0 0x00000000
+wm 32 0x020e04b4 0x00000030
+wm 32 0x020e04b8 0x00000030
+wm 32 0x020e076c 0x00000030
+wm 32 0x020e0750 0x00020000
+wm 32 0x020e04bc 0x00000030
+wm 32 0x020e04c0 0x00000030
+wm 32 0x020e04c4 0x00000030
+wm 32 0x020e04c8 0x00000030
+wm 32 0x020e04cc 0x00000030
+wm 32 0x020e04d0 0x00000030
+wm 32 0x020e04d4 0x00000030
+wm 32 0x020e04d8 0x00000030
+wm 32 0x020e0760 0x00020000
+wm 32 0x020e0764 0x00000030
+wm 32 0x020e0770 0x00000030
+wm 32 0x020e0778 0x00000030
+wm 32 0x020e077c 0x00000030
+wm 32 0x020e0780 0x00000030
+wm 32 0x020e0784 0x00000030
+wm 32 0x020e078c 0x00000030
+wm 32 0x020e0748 0x00000030
+wm 32 0x020e0470 0x00000030
+wm 32 0x020e0474 0x00000030
+wm 32 0x020e0478 0x00000030
+wm 32 0x020e047c 0x00000030
+wm 32 0x020e0480 0x00000030
+wm 32 0x020e0484 0x00000030
+wm 32 0x020e0488 0x00000030
+wm 32 0x020e048c 0x00000030
+wm 32 0x021b0800 0xa1390003
+wm 32 0x021b080c 0x001F001F
+wm 32 0x021b0810 0x001F001F
+wm 32 0x021b480c 0x001F001F
+wm 32 0x021b4810 0x001F001F
+wm 32 0x021b083c 0x4220021F
+wm 32 0x021b0840 0x0207017E
+wm 32 0x021b483c 0x4201020C
+wm 32 0x021b4840 0x01660172
+wm 32 0x021b0848 0x4A4D4E4D
+wm 32 0x021b4848 0x4A4F5049
+wm 32 0x021b0850 0x3F3C3D31
+wm 32 0x021b4850 0x3238372B
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
+wm 32 0x021b0004 0x0002002D
+wm 32 0x021b0008 0x00333030
+wm 32 0x021b000c 0x3F435313
+wm 32 0x021b0010 0xB66E8B63
+wm 32 0x021b0014 0x01FF00DB
+wm 32 0x021b0018 0x00001740
+wm 32 0x021b001c 0x00008000
+wm 32 0x021b002c 0x000026d2
+wm 32 0x021b0030 0x00431023
+wm 32 0x021b0040 0x00000027
+wm 32 0x021b0000 0x831A0000
+wm 32 0x021b001c 0x04008032
+wm 32 0x021b001c 0x00008033
+wm 32 0x021b001c 0x00048031
+wm 32 0x021b001c 0x05208030
+wm 32 0x021b001c 0x04008040
+wm 32 0x021b0020 0x00005800
+wm 32 0x021b0818 0x00011117
+wm 32 0x021b4818 0x00011117
+wm 32 0x021b0004 0x0002556D
+wm 32 0x021b0404 0x00011006
+wm 32 0x021b001c 0x00000000
+
+/* set the default clock gate to save power */
+wm 32 0x020c4068 0x00C03F3F
+wm 32 0x020c406c 0x0030FC03
+wm 32 0x020c4070 0x0FFFF000
+wm 32 0x020c4074 0x3FF00000
+wm 32 0x020c4078 0x00FFF300
+wm 32 0x020c407c 0x0F0000C3
+wm 32 0x020c4080 0x000003FF
+
+/* enable AXI cache for VDOA/VPU/IPU */
+wm 32 0x020e0010 0xF00000CF
+
+/* set IPU AXI-id0 Qos=0xf(bypass) AXI-id1 Qos=0x7 */
+wm 32 0x020e0018 0x007F007F
+wm 32 0x020e001c 0x007F007F
diff --git a/arch/arm/boards/freescale-mx6-sabresd/lowlevel.c b/arch/arm/boards/freescale-mx6-sabresd/lowlevel.c
index 5490dc2d44..7cc08b47d5 100644
--- a/arch/arm/boards/freescale-mx6-sabresd/lowlevel.c
+++ b/arch/arm/boards/freescale-mx6-sabresd/lowlevel.c
@@ -54,3 +54,19 @@ ENTRY_FUNCTION(start_imx6qp_sabresd, r0, r1, r2)
 
 	barebox_arm_entry(0x10000000, SZ_1G, fdt);
 }
+
+extern char __dtb_imx6dl_sabresd_start[];
+
+ENTRY_FUNCTION(start_imx6dl_sabresd, r0, r1, r2)
+{
+	void *fdt;
+
+	imx6_cpu_lowlevel_init();
+
+	if (IS_ENABLED(CONFIG_DEBUG_LL))
+		setup_uart();
+
+	fdt = __dtb_imx6dl_sabresd_start + get_runtime_offset();
+
+	barebox_arm_entry(0x10000000, SZ_1G, fdt);
+}
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 301014eaff..d6a3c0f3a3 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -125,7 +125,7 @@ lwl-$(CONFIG_MACH_RPI3) += bcm2837-rpi-3.dtb.o
 lwl-$(CONFIG_MACH_RPI_CM3) += bcm2837-rpi-cm3.dtb.o
 lwl-$(CONFIG_MACH_RPI4) += bcm2711-rpi-4.dtb.o bcm2711-rpi-400.dtb.o bcm2711-rpi-cm4-io.dtb.o
 lwl-$(CONFIG_MACH_SABRELITE) += imx6q-sabrelite.dtb.o imx6dl-sabrelite.dtb.o
-lwl-$(CONFIG_MACH_SABRESD) += imx6q-sabresd.dtb.o imx6qp-sabresd.dtb.o
+lwl-$(CONFIG_MACH_SABRESD) += imx6q-sabresd.dtb.o imx6qp-sabresd.dtb.o imx6dl-sabresd.dtb.o
 lwl-$(CONFIG_MACH_FREESCALE_IMX6SX_SABRESDB) += imx6sx-sdb.dtb.o
 lwl-$(CONFIG_MACH_SOCFPGA_ALTERA_SOCDK) += socfpga_cyclone5_socdk.dtb.o
 lwl-$(CONFIG_MACH_SOCFPGA_EBV_SOCRATES) += socfpga_cyclone5_socrates.dtb.o
diff --git a/arch/arm/dts/imx6dl-sabresd.dts b/arch/arm/dts/imx6dl-sabresd.dts
new file mode 100644
index 0000000000..6de132a64e
--- /dev/null
+++ b/arch/arm/dts/imx6dl-sabresd.dts
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
+#include <arm/nxp/imx/imx6dl-sabresd.dts>
+
+/ {
+	model = "Freescale i.MX6 DualLite SABRE Smart Device Board";
+	compatible = "fsl,imx6dl-sabresd", "fsl,imx6dl";
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
index 7f2f58b0f5..73b518261d 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -238,6 +238,8 @@ $(call build_imx_habv4img, CONFIG_MACH_SABRESD, start_imx6q_sabresd, freescale-m
 
 $(call build_imx_habv4img, CONFIG_MACH_SABRESD, start_imx6qp_sabresd, freescale-mx6-sabresd/flash-header-mx6qp-sabresd, freescale-imx6qp-sabresd)
 
+$(call build_imx_habv4img, CONFIG_MACH_SABRESD, start_imx6dl_sabresd, freescale-mx6-sabresd/flash-header-mx6dl-sabresd, freescale-imx6dl-sabresd)
+
 $(call build_imx_habv4img, CONFIG_MACH_UDOO_NEO, start_imx6sx_udoo_neo, udoo-neo/flash-header-mx6sx-udoo-neo_full, udoo-neo)
 
 $(call build_imx_habv4img, CONFIG_MACH_FREESCALE_IMX6SX_SABRESDB, start_imx6sx_sabresdb, freescale-mx6sx-sabresdb/flash-header-mx6sx-sabresdb, freescale-imx6sx-sabresdb)
-- 
2.25.1




