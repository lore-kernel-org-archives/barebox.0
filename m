Delivery-date: Tue, 16 Sep 2025 09:59:32 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyQb6-003cCs-2E
	for lore@lore.pengutronix.de;
	Tue, 16 Sep 2025 09:59:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyQb5-0002Ly-U8
	for lore@pengutronix.de; Tue, 16 Sep 2025 09:59:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=aTnt8BEWbWr5AX+Pp3uI/kdZxDLxXoy8nja0UAbXH/Y=; b=Cv+qUXlkDhsY7cHJ666NqeDNAm
	P5dNDPoPlrmIPIj84NmrISRWyLJXI5arnC3uaFOkT1e2f6PFXzNcxsDg1zBOUAp6R4y9PIXkEsbHR
	9xsMCId6Wqxm2Y3fIZuCHDSU+hV2+EY1b6LFYIZsn4+211/22jAMG2/CkhJFQq/xnKBAGHKt6qb09
	D7StN0eBRmZef3Od9foydwjfJD0s6otVM4Pp0LlevjMMujl6TYgwUmwCXvpSpv/UxQbp/a4dltnwW
	zOMFyy1Cu3EC+wdRwqqIXoaq6qm+GTccm6+8j+tdAqQGbALab/9tji5wLHm+qs/rQQBE5LTsUN6AN
	3odUgiLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyQaZ-000000076Ej-0B3h;
	Tue, 16 Sep 2025 07:58:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyQaW-000000076Db-3Cxp
	for barebox@lists.infradead.org;
	Tue, 16 Sep 2025 07:58:58 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1uyQaT-0002F2-OT; Tue, 16 Sep 2025 09:58:53 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Tue, 16 Sep 2025 09:58:47 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250916-rk3588-rock5t-v1-1-95ac38397a16@pengutronix.de>
X-B4-Tracking: v=1; b=H4sIALYYyWgC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1MDS0Mz3aJsY1MLC92i/ORs0xLd5FTLNLOUJKNUU4tEJaCegqLUtMwKsHn
 RsbW1ANqB68dfAAAA
X-Change-ID: 20250916-rk3588-rock5t-ce9f6db2e58a
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 Lucas Sinn <lucas.sinn@wolfvision.net>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250916_005856_848515_F67E7486 
X-CRM114-Status: GOOD (  16.86  )
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
Subject: [PATCH] ARM: rockchip: add support for Radxa ROCK 5T
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Lucas Sinn <lucas.sinn@wolfvision.net>

Add basic support for the Radxa ROCK 5T.

Signed-off-by: Lucas Sinn <lucas.sinn@wolfvision.net>
Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 arch/arm/boards/radxa-rock5/board.c    |  9 ++++
 arch/arm/boards/radxa-rock5/lowlevel.c | 15 +++++++
 arch/arm/dts/Makefile                  |  4 +-
 arch/arm/dts/rk3588-rock-5t.dts        | 81 ++++++++++++++++++++++++++++++++++
 images/Makefile.rockchip               |  1 +
 5 files changed, 109 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boards/radxa-rock5/board.c b/arch/arm/boards/radxa-rock5/board.c
index eab0c010400036f281beaa1c199cec8b8b841de2..4dfa7d500bed2ffdf8d487be606ce5b965783a6d 100644
--- a/arch/arm/boards/radxa-rock5/board.c
+++ b/arch/arm/boards/radxa-rock5/board.c
@@ -34,11 +34,20 @@ static const struct rock5_model rock5b = {
 	.shortname = "rock5b",
 };
 
+static const struct rock5_model rock5t = {
+	.name = "Radxa ROCK5 Model T",
+	.shortname = "rock5t",
+};
+
 static const struct of_device_id rock5_of_match[] = {
 	{
 		.compatible = "radxa,rock-5b",
 		.data = &rock5b,
 	},
+	{
+		.compatible = "radxa,rock-5t",
+		.data = &rock5t,
+	},
 	{ /* sentinel */ },
 };
 
diff --git a/arch/arm/boards/radxa-rock5/lowlevel.c b/arch/arm/boards/radxa-rock5/lowlevel.c
index 6f0ac732cc4573b6677a8001c71e89d7dce6270c..373cc1ba4e0bce84e70fff97581c95d4936d34af 100644
--- a/arch/arm/boards/radxa-rock5/lowlevel.c
+++ b/arch/arm/boards/radxa-rock5/lowlevel.c
@@ -9,6 +9,7 @@
 #include <mach/rockchip/rockchip.h>
 
 extern char __dtb_rk3588_rock_5b_start[];
+extern char __dtb_rk3588_rock_5t_start[];
 
 ENTRY_FUNCTION(start_rock5b, r0, r1, r2)
 {
@@ -23,3 +24,17 @@ ENTRY_FUNCTION(start_rock5b, r0, r1, r2)
 
 	rk3588_barebox_entry(__dtb_rk3588_rock_5b_start);
 }
+
+ENTRY_FUNCTION(start_rock5t, r0, r1, r2)
+{
+	putc_ll('>');
+
+	if (current_el() == 3)
+		relocate_to_adr_full(RK3588_BAREBOX_LOAD_ADDRESS);
+	else
+		relocate_to_current_adr();
+
+	setup_c();
+
+	rk3588_barebox_entry(__dtb_rk3588_rock_5t_start);
+}
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 021573a266ca30d46ce0a2dc9083a61461949540..c26b6d9e66c5281d9955e33cdb223b7c9c0c453d 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -125,7 +125,9 @@ lwl-$(CONFIG_MACH_PROTONIC_STM32MP13) += \
 	stm32mp133c-prihmb.dtb.o
 lwl-$(CONFIG_MACH_RADXA_ROCK) += rk3188-radxarock.dtb.o
 lwl-$(CONFIG_MACH_RADXA_ROCK3) += rk3568-rock-3a.dtb.o
-lwl-$(CONFIG_MACH_RADXA_ROCK5) += rk3588-rock-5b.dtb.o
+lwl-$(CONFIG_MACH_RADXA_ROCK5) += \
+	rk3588-rock-5b.dtb.o \
+	rk3588-rock-5t.dtb.o
 lwl-$(CONFIG_MACH_RADXA_CM3) += rk3566-cm3-io.dtb.o
 lwl-$(CONFIG_MACH_PHYTEC_SOM_RK3288) += rk3288-phycore-som.dtb.o
 lwl-$(CONFIG_MACH_REALQ7) += imx6q-dmo-edmqmx6.dtb.o
diff --git a/arch/arm/dts/rk3588-rock-5t.dts b/arch/arm/dts/rk3588-rock-5t.dts
new file mode 100644
index 0000000000000000000000000000000000000000..35bdeb949d01391a26c9c88d637c09ec2e8f2a4d
--- /dev/null
+++ b/arch/arm/dts/rk3588-rock-5t.dts
@@ -0,0 +1,81 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+/dts-v1/;
+
+#include <arm64/rockchip/rk3588-rock-5t.dts>
+#include "rk3588.dtsi"
+#include <dt-bindings/pinctrl/rockchip.h>
+#include <dt-bindings/gpio/gpio.h>
+
+/ {
+	barebox,deep-probe;
+
+	aliases {
+		mmc0 = &sdhci;
+		mmc1 = &sdmmc;
+	};
+
+	chosen: chosen {
+		environment-emmc {
+			compatible = "barebox,environment";
+			device-path = &environment_emmc;
+			status = "disabled";
+		};
+
+		environment-sd {
+			compatible = "barebox,environment";
+			device-path = &environment_sd;
+			status = "disabled";
+		};
+	};
+};
+
+&sdhci {
+	partitions {
+		compatible = "barebox,fixed-partitions";
+		#address-cells = <2>;
+		#size-cells = <2>;
+
+		environment_emmc: partition@408000 {
+			label = "barebox-environment";
+			reg = <0x0 0x408000 0x0 0x8000>;
+		};
+	};
+};
+
+&sdmmc {
+	partitions {
+		compatible = "barebox,fixed-partitions";
+		#address-cells = <2>;
+		#size-cells = <2>;
+
+		environment_sd: partition@408000 {
+			label = "barebox-environment";
+			reg = <0x0 0x408000 0x0 0x8000>;
+		};
+	};
+};
+
+&pcie3x4 {
+	/* Does not work in barebox (missing phy driver) */
+	status = "disabled";
+};
+
+&pcie30phy {
+	status = "disabled";
+};
+
+&pcie2x1l0 {
+	/* Does not work in barebox */
+	status = "disabled";
+};
+
+&usb_host0_ehci {
+	/* Does not work in barebox (missing phy driver) */
+	status = "disabled";
+};
+
+&usb_host1_ehci {
+	/* Does not work in barebox (missing phy driver) */
+	status = "disabled";
+};
diff --git a/images/Makefile.rockchip b/images/Makefile.rockchip
index 72a224959d4b08e7661dd05524bf49f9698ccf25..da24cb15b186380d03ea3bd3a9b07bfff8abb837 100644
--- a/images/Makefile.rockchip
+++ b/images/Makefile.rockchip
@@ -46,6 +46,7 @@ $(call build_rockchip_image, CONFIG_MACH_PROTONIC_MECSBC, start_mecsbc, protonic
 $(call build_rockchip_image, CONFIG_MACH_PROTONIC_PRTPUK, start_prtpuk, protonic-prtpuk/sdram-init.bin, prtpuk)
 $(call build_rockchip_image, CONFIG_MACH_RADXA_ROCK3, start_rock3a, radxa-rock3/sdram-init.bin, rock3a)
 $(call build_rockchip_image, CONFIG_MACH_RADXA_ROCK5, start_rock5b, radxa-rock5/sdram-init.bin, rock5b)
+$(call build_rockchip_image, CONFIG_MACH_RADXA_ROCK5, start_rock5t, radxa-rock5/sdram-init.bin, rock5t)
 $(call build_rockchip_image, CONFIG_MACH_RADXA_CM3, start_radxa_cm3_io, radxa-cm3/sdram-init.bin, radxa-cm3-io)
 $(call build_rockchip_image, CONFIG_MACH_WOLFVISION_PF5, start_rk3568_wolfvision_pf5, wolfvision-pf5/sdram-init.bin, rk3568-wolfvision-pf5)
 $(call build_rockchip_image, CONFIG_MACH_XUNLONG_ORANGEPI_5_PLUS, start_orangepi_5_plus, xunlong-orangepi-5-plus/sdram-init.bin, orangepi_5_plus)

---
base-commit: f3be3a8e9ae884bdfb116238e9049b1eb2759810
change-id: 20250916-rk3588-rock5t-ce9f6db2e58a

Best regards,
-- 
Michael Tretter <m.tretter@pengutronix.de>



