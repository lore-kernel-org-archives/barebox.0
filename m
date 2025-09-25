Delivery-date: Thu, 25 Sep 2025 14:00:22 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v1ke6-000vtE-2U
	for lore@lore.pengutronix.de;
	Thu, 25 Sep 2025 14:00:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v1ke4-0005FE-JY
	for lore@pengutronix.de; Thu, 25 Sep 2025 14:00:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=A4OC9NN5+/j29wL2DYMu6nR7pA0ZDLee3Ft/TOTI6q0=; b=O2C+UcRgUujWXlTSAlXKIqxlxB
	C0+z0F1QC47Ts5IdmZlt5p9H3u0g1ubff9D/ED1KpHbcN3kmyMB4XPePJmJxoIiC3ioSzrPgresod
	yGb/ynzwozLdlI6SaBAhiWw24TFIeu9ZDvW6lAEl6KlvCWGMpDz4la2ImQBdNnaodf5wImAGHmlxS
	ia+dmmcou/R8UoPPJK3Q3i3MZSOSsL+Q448pn3oaIuk1EDYj7HQLE55izJoYnRbSX83yTQscT26w0
	/SQdROd2DGG2RW0ayMIDB3ploVIbpAdvB99f2cEshe4ZkUu8zG75ZwL35M/av1l0DZX9Ol57wOOTt
	Q0IEg3JQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1kdM-00000008k00-37pu;
	Thu, 25 Sep 2025 11:59:36 +0000
Received: from cczrelay02.in2p3.fr ([134.158.66.142])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1kdG-00000008jrH-1HJI
	for barebox@lists.infradead.org;
	Thu, 25 Sep 2025 11:59:34 +0000
Received: from [127.0.1.1] (clrelecpo09w.in2p3.fr [134.158.124.135])
	(authenticated bits=0)
	by cczrelay02.in2p3.fr (8.14.4/8.14.4) with ESMTP id 58PBxEks016594
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES128-GCM-SHA256 bits=128 verify=NO);
	Thu, 25 Sep 2025 13:59:25 +0200
From: David Picard <david.picard@clermont.in2p3.fr>
Date: Thu, 25 Sep 2025 13:59:10 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250925-boards-enclustra-sa2-add-support-v2-3-6820ad6c6256@clermont.in2p3.fr>
References: <20250925-boards-enclustra-sa2-add-support-v2-0-6820ad6c6256@clermont.in2p3.fr>
In-Reply-To: <20250925-boards-enclustra-sa2-add-support-v2-0-6820ad6c6256@clermont.in2p3.fr>
To: Sascha Hauer <s.hauer@pengutronix.de>,
        BAREBOX <barebox@lists.infradead.org>
Cc: David Picard <david.picard@clermont.in2p3.fr>, Ahmad Fatoum <ahmad@a3f.at>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758801565; l=5534;
 i=david.picard@clermont.in2p3.fr; s=20250917; h=from:subject:message-id;
 bh=r25z880OXfiKF3BXVMgGafLrCgQkJ8+7/Hn8mwCfzJA=;
 b=3JI8+g9D+cl+RYy7I/OTWOus4Ltn4Fc94dSPKoPG3Yq5v+pFIhXnFzIgYZtQ80gGeS3Q6huNU
 ASn3OVOkkODDLrLHQ8tD762LdNaqDG4NT3sybdzXY5INiVLURGqmgt4
X-Developer-Key: i=david.picard@clermont.in2p3.fr; a=ed25519;
 pk=Ew2hyxWdBXm7qaK2tHrk3KcOlOjoh3+irqJPSHtq/PU=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250925_045930_628715_4AF4883C 
X-CRM114-Status: GOOD (  20.38  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 03/10] ARM: dts: socfpga: use upstream SA2 device tree
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The devicetree files from the Enclustra BSP are outdated and not
compatible with what barebox expects. Use the upstream SoC devicetree
imported from Linux instead. For the board itself, we import the
devicetree in the most recent posting[1] to the kernel mailing lists.

[1]: https://lore.kernel.org/all/20241116131025.114542-1-l.rubusch@gmail.com/

Co-developed-by: Ahmad Fatoum <ahmad@a3f.at>
Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
Signed-off-by: David Picard <david.picard@clermont.in2p3.fr>
---
 arch/arm/dts/socfpga_cyclone5_mercury_sa2.dts  |  18 +--
 arch/arm/dts/socfpga_cyclone5_mercury_sa2.dtsi | 150 +++++++++++++++++++++++++
 2 files changed, 152 insertions(+), 16 deletions(-)

diff --git a/arch/arm/dts/socfpga_cyclone5_mercury_sa2.dts b/arch/arm/dts/socfpga_cyclone5_mercury_sa2.dts
index 9e2f2c1af19e68c0c662f62bc154856f75df2510..2e69f33b030a144d08d55eacb01fd69b009f38e8 100644
--- a/arch/arm/dts/socfpga_cyclone5_mercury_sa2.dts
+++ b/arch/arm/dts/socfpga_cyclone5_mercury_sa2.dts
@@ -1,27 +1,13 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
 /*
  *  Copyright (C) 2025 David Picard <david.picard@clermont.in2p3.fr>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; either version 2 of the License, or
- * (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program.  If not, see <http://www.gnu.org/licenses/>.
  */
 
-#include <arm/intel/socfpga/socfpga_cyclone5_mercury_sa2.dts>
+#include "socfpga_cyclone5_mercury_sa2.dtsi"
 #include "socfpga.dtsi"
 
 / {
 	chosen {
-		stdout-path = &uart0;
-
 		environment {
 			compatible = "barebox,environment";
 			device-path = &mmc, "partname:1";
diff --git a/arch/arm/dts/socfpga_cyclone5_mercury_sa2.dtsi b/arch/arm/dts/socfpga_cyclone5_mercury_sa2.dtsi
new file mode 100644
index 0000000000000000000000000000000000000000..73bd75fcf224fbf31fce27dda6566d4bfe37d624
--- /dev/null
+++ b/arch/arm/dts/socfpga_cyclone5_mercury_sa2.dtsi
@@ -0,0 +1,150 @@
+// SPDX-License-Identifier: GPL-2.0+ OR MIT
+/*
+ * Copyright (C) 2024 Enclustra GmbH - https://www.enclustra.com
+ *
+ * TODO: This whole file should be dropped, once the patches[1] are upstream
+ * and synced into barebox dts/src/arm.
+ * [1]: https://lore.kernel.org/all/20241116131025.114542-1-l.rubusch@gmail.com/
+ */
+
+#include <arm/intel/socfpga/socfpga_cyclone5.dtsi>
+
+/ {
+	model = "Enclustra Mercury+ SA2";
+	compatible = "altr,socfpga-cyclone5", "altr,socfpga";
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+	};
+
+	aliases {
+		ethernet0 = &gmac1;
+	};
+
+	/* Adjusted the i2c labels to use generic base-board dtsi files for
+	 * Enclustra Arria10 and Cyclone5 SoMs.
+	 *
+	 * The set of i2c0 and i2c1 labels defined in socfpga_cyclone5.dtsi and in
+	 * socfpga_arria10.dtsi do not allow for using the same base-board .dtsi
+	 * fragments. Thus define generic labels here to match the correct i2c
+	 * bus in a generic base-board .dtsi file.
+	 */
+	soc {
+		i2c_encl: i2c@ffc04000 {
+		};
+		i2c_encl_fpga: i2c@ffc05000 {
+		};
+	};
+
+	memory {
+		name = "memory";
+		device_type = "memory";
+		reg = <0x0 0x80000000>; /* 2GB */
+	};
+};
+
+&osc1 {
+	clock-frequency = <50000000>;
+};
+
+&i2c_encl {
+	i2c-sda-hold-time-ns = <300>;
+	clock-frequency = <100000>;
+	status = "okay";
+
+	isl12020: rtc@6f {
+		compatible = "isil,isl12022";
+		reg = <0x6f>;
+	};
+
+	atsha204a: crypto@64 {
+		compatible = "atmel,atsha204a";
+		reg = <0x64>;
+	};
+};
+
+&i2c_encl_fpga {
+	i2c-sda-hold-time-ns = <300>;
+	status = "disabled";
+};
+
+&uart0 {
+	clock-frequency = <100000000>;
+};
+
+&mmc0 {
+	status = "okay";
+};
+
+&qspi {
+	status = "okay";
+
+	flash0: flash@0 {
+		u-boot,dm-pre-reloc;
+		#address-cells = <1>;
+		#size-cells = <1>;
+		compatible = "spansion,s25fl512s", "jedec,spi-nor";
+		reg = <0>;
+
+		spi-rx-bus-width = <4>;
+		spi-tx-bus-width = <4>;
+		spi-max-frequency = <10000000>;
+
+		cdns,read-delay = <4>;
+		cdns,tshsl-ns = <50>;
+		cdns,tsd2d-ns = <50>;
+		cdns,tchsh-ns = <4>;
+		cdns,tslch-ns = <4>;
+
+		partition@raw {
+			label = "Flash Raw";
+			reg = <0x0 0x4000000>;
+		};
+	};
+};
+
+&gpio0 {
+	status = "okay";
+};
+
+&gpio1 {
+	status = "okay";
+};
+
+&gmac1 {
+	status = "okay";
+	/delete-property/ mac-address;
+	phy-mode = "rgmii";
+	phy-handle = <&phy3>;
+
+	mdio0 {
+		#address-cells = <1>;
+		#size-cells = <0>;
+		compatible = "snps,dwmac-mdio";
+
+		phy3: ethernet-phy@3 {
+			reg = <3>;
+
+			/* Add 2ns RX clock delay (1.2ns + 0.78ns)*/
+			rxc-skew-ps = <1680>;
+			rxd0-skew-ps = <420>;
+			rxd1-skew-ps = <420>;
+			rxd2-skew-ps = <420>;
+			rxd3-skew-ps = <420>;
+			rxdv-skew-ps = <420>;
+
+			/* Add 1.38ns TX clock delay (0.96ns + 0.42ns)*/
+			txc-skew-ps = <1860>;
+			txd0-skew-ps = <0>;
+			txd1-skew-ps = <0>;
+			txd2-skew-ps = <0>;
+			txd3-skew-ps = <0>;
+			txen-skew-ps = <0>;
+		};
+	};
+};
+
+&usb1 {
+	status = "okay";
+	dr_mode = "host";
+};

-- 
2.43.0



