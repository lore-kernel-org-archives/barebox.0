Delivery-date: Sat, 01 Mar 2025 17:37:30 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1toPqF-008Ylw-1P
	for lore@lore.pengutronix.de;
	Sat, 01 Mar 2025 17:37:30 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1toPqD-0005Fr-QW
	for lore@pengutronix.de; Sat, 01 Mar 2025 17:37:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=R7LPyikB2OzDRAKgUhlySbRl1HaMLByBZoG6hezmWJk=; b=jnla6io5aXiY4K7ExB21DOckAf
	kxNERP2y7IQmRNUyzaUmqKyCosqpp6FW0PEAGAu6EbHK5s8LuDxmj4SQK3F7sS6cqMg0z0WZB1q2E
	uuISSCCznd/PLCd/v2ztD/jhsv1B3AIBsrUp33hb8suZ5rEzvR95wnWYgzQlNgJkLDKr+oDnk6+O4
	QVuzhl9MVZMfvfYtHrcVjylTW+cAQXJEJcWy9nY16u9LjkvI3d2fMiIegH3/j7pZC3TFNUxDEBDR5
	YUCVAPPJyMS+4Lw1Sc8pBtYObGmSDk1Vh3ooHglyYS3ddXOGEge1Yus2C1G2KD1XNAEjhW/OneEUS
	VLqiVaqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1toPpV-0000000EdE9-1qvg;
	Sat, 01 Mar 2025 16:36:45 +0000
Received: from algol.kleine-koenig.org ([162.55.41.232])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1toPpR-0000000EdCI-47sN
	for barebox@lists.infradead.org;
	Sat, 01 Mar 2025 16:36:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kleine-koenig.org;
	s=2022; t=1740846997;
	bh=VLR1nzLnkg+cXI+BElUZqN7SOm5Wr/pnM1XUeec2Kro=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=nYdzOIivqklD+fuD46HimQfKzWXhKfiAHHV99I0rrcoNCygfNYmJhn/WFE68vO1W4
	 +0jQeqqUBNDWtzY8lD5Gnrh6KWEzYdAOCfMCSZLTRgRR2WTeSUpHlUq0fRGl1zPgFt
	 IycEEmjVu/W5U+P21L44EtveBYTHuZUS7v5NQoGxjh/NEPXpRLRrLGnt3aXQmDi5VI
	 f5Idm9w25R6pzzHqSZT5ZA7tUNzA3sRosGKTyQCepLT+eYDa56LmBFTgy6DxQkDF9b
	 RGUp6A/rZ6qXEQJJUs7FZQMFmaeETCuIMjjwLTPU2YYOs4Wd3muyin1EA3Ytc51el2
	 Mn+1VXl4XOW+w==
Received: by algol.kleine-koenig.org (Postfix, from userid 1000)
	id EE492FAD484; Sat,  1 Mar 2025 17:36:37 +0100 (CET)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
To: barebox@lists.infradead.org
Date: Sat,  1 Mar 2025 17:36:21 +0100
Message-ID: <1ec0faa7cbbbe074c328bb8be3dbb571fa4587b2.1740846737.git.uwe@kleine-koenig.org>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <cover.1740846737.git.uwe@kleine-koenig.org>
References: <cover.1740846737.git.uwe@kleine-koenig.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=6987; i=uwe@kleine-koenig.org; h=from:subject:message-id; bh=VLR1nzLnkg+cXI+BElUZqN7SOm5Wr/pnM1XUeec2Kro=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBnwzeJzf24Ah3SjyASp0BIXqkConbU1viktKsrK 9r76owl7aKJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZ8M3iQAKCRCPgPtYfRL+ TmE5CACN2PhPzYnBWKszXh38jyVqIuCp9nAmRyKVIlbXAIL+ITTONcpiPS1rk+e4UMNaHGmoy0i WrafybBK0tggtrzLulkrYwt5r+2Vkrn6CorxZFHCGUQdFg0g/hW+YtqqQ/cGL3r6Kx9ylMQONE9 w0WoyhzlGJo8D0UrdQc3NI6CPrspNQKz2QruOf5z8t1eDW5Qgz8Nu7Qn1lGqxjlHwbNYn+vTDmN QDw/5IqX5wViZotyReLZfcImMsGXi4XVoiqEiZyohPziPjn0VmFe8k8qDMxScXRTXRsKKGKwywR 5tQUdQDVSGBvXOXFlAFh71WO1DniESucOCBW88gP7xelZ6rl
X-Developer-Key: i=uwe@kleine-koenig.org; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250301_083642_169837_3A80798B 
X-CRM114-Status: GOOD (  16.29  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 4/4] WIP: arm64: rockchip: Add support for QNAP's ts-433 4bay NAS
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The resulting image boots to a prompt using usb booting. But neither
network nor eMMC work :-\

Signed-off-by: Uwe Kleine-König <uwe@kleine-koenig.org>
---
 Documentation/boards/rockchip.rst      |  1 +
 arch/arm/boards/Makefile               |  1 +
 arch/arm/boards/qnap-tsx33/.gitignore  |  1 +
 arch/arm/boards/qnap-tsx33/Makefile    |  2 ++
 arch/arm/boards/qnap-tsx33/lowlevel.c  | 27 ++++++++++++++++++++++++++
 arch/arm/configs/rockchip_v8_defconfig |  1 +
 arch/arm/dts/Makefile                  |  1 +
 arch/arm/dts/rk3568-qnap-ts433.dts     | 27 ++++++++++++++++++++++++++
 arch/arm/mach-rockchip/Kconfig         |  7 +++++++
 images/Makefile.rockchip               |  1 +
 10 files changed, 69 insertions(+)
 create mode 100644 arch/arm/boards/qnap-tsx33/.gitignore
 create mode 100644 arch/arm/boards/qnap-tsx33/Makefile
 create mode 100644 arch/arm/boards/qnap-tsx33/lowlevel.c
 create mode 100644 arch/arm/dts/rk3568-qnap-ts433.dts

diff --git a/Documentation/boards/rockchip.rst b/Documentation/boards/rockchip.rst
index b2b04abb03cd..a9499e3560dd 100644
--- a/Documentation/boards/rockchip.rst
+++ b/Documentation/boards/rockchip.rst
@@ -61,6 +61,7 @@ Supported Boards
 - Pine64 Quartz64 Model A
 - Radxa ROCK3 Model A
 - Radxa CM3 (RK3566) IO Board
+- QNAP TS-433 NAS
 - Protonic MECSBC
 
 The steps described in the following target the RK3568 and the RK3568 EVB but
diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index c6104d043297..747676056a45 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -94,6 +94,7 @@ obj-$(CONFIG_MACH_PROTONIC_STM32MP1)		+= protonic-stm32mp1/
 obj-$(CONFIG_MACH_PROTONIC_STM32MP13)		+= protonic-stm32mp13/
 obj-$(CONFIG_MACH_QIL_A9260)			+= qil-a926x/
 obj-$(CONFIG_MACH_QIL_A9G20)			+= qil-a926x/
+obj-$(CONFIG_MACH_QNAP_TSX33)			+= qnap-tsx33/
 obj-$(CONFIG_MACH_RADXA_ROCK)			+= radxa-rock/
 obj-$(CONFIG_MACH_PHYTEC_SOM_RK3288)		+= phytec-som-rk3288/
 obj-$(CONFIG_MACH_REALQ7)			+= datamodul-edm-qmx6/
diff --git a/arch/arm/boards/qnap-tsx33/.gitignore b/arch/arm/boards/qnap-tsx33/.gitignore
new file mode 100644
index 000000000000..f458f794b54c
--- /dev/null
+++ b/arch/arm/boards/qnap-tsx33/.gitignore
@@ -0,0 +1 @@
+sdram-init.bin
diff --git a/arch/arm/boards/qnap-tsx33/Makefile b/arch/arm/boards/qnap-tsx33/Makefile
new file mode 100644
index 000000000000..9961af02a3ea
--- /dev/null
+++ b/arch/arm/boards/qnap-tsx33/Makefile
@@ -0,0 +1,2 @@
+# SPDX-License-Identifier: GPL-2.0-only
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/qnap-tsx33/lowlevel.c b/arch/arm/boards/qnap-tsx33/lowlevel.c
new file mode 100644
index 000000000000..f852e8d00a2b
--- /dev/null
+++ b/arch/arm/boards/qnap-tsx33/lowlevel.c
@@ -0,0 +1,27 @@
+// SPDX-License-Identifier: GPL-2.0-only
+#include <common.h>
+#include <linux/sizes.h>
+#include <asm/barebox-arm-head.h>
+#include <asm/barebox-arm.h>
+#include <mach/rockchip/hardware.h>
+#include <mach/rockchip/atf.h>
+#include <debug_ll.h>
+#include <mach/rockchip/rockchip.h>
+
+extern char __dtb_rk3568_qnap_ts433_start[];
+
+ENTRY_FUNCTION(start_rk3568_qnap_ts433, r0, r1, r2)
+{
+	/*
+	 * Image execution starts at 0x0, but this is used for ATF and
+	 * OP-TEE later, so move away from here.
+	 */
+	if (current_el() == 3)
+		relocate_to_adr_full(RK3568_BAREBOX_LOAD_ADDRESS);
+	else
+		relocate_to_current_adr();
+
+	setup_c();
+
+	rk3568_barebox_entry(__dtb_rk3568_qnap_ts433_start);
+}
diff --git a/arch/arm/configs/rockchip_v8_defconfig b/arch/arm/configs/rockchip_v8_defconfig
index f1f418872385..86f31affa901 100644
--- a/arch/arm/configs/rockchip_v8_defconfig
+++ b/arch/arm/configs/rockchip_v8_defconfig
@@ -4,6 +4,7 @@ CONFIG_MACH_RK3568_BPI_R2PRO=y
 CONFIG_MACH_PINE64_PINETAB2=y
 CONFIG_MACH_PINE64_QUARTZ64=y
 CONFIG_MACH_PROTONIC_MECSBC=y
+CONFIG_MACH_QNAP_TSX33=y
 CONFIG_MACH_RADXA_ROCK3=y
 CONFIG_MACH_RADXA_ROCK5=y
 CONFIG_MACH_RADXA_CM3=y
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index d2de01927824..b4875cc00c91 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -117,6 +117,7 @@ lwl-$(CONFIG_MACH_PROTONIC_STM32MP1) += \
 	stm32mp151-mecio1.dtb.o \
 	stm32mp151-mect1s.dtb.o
 lwl-$(CONFIG_MACH_PROTONIC_STM32MP13) += stm32mp133c-prihmb.dtb.o
+lwl-$(CONFIG_MACH_QNAP_TSX33) += rk3568-qnap-ts433.dtb.o
 lwl-$(CONFIG_MACH_RADXA_ROCK) += rk3188-radxarock.dtb.o
 lwl-$(CONFIG_MACH_RADXA_ROCK3) += rk3568-rock-3a.dtb.o
 lwl-$(CONFIG_MACH_RADXA_ROCK5) += rk3588-rock-5b.dtb.o
diff --git a/arch/arm/dts/rk3568-qnap-ts433.dts b/arch/arm/dts/rk3568-qnap-ts433.dts
new file mode 100644
index 000000000000..05876656b4e2
--- /dev/null
+++ b/arch/arm/dts/rk3568-qnap-ts433.dts
@@ -0,0 +1,27 @@
+// SPDX-License-Identifier: (GPL-2.0-or-later OR MIT)
+
+/dts-v1/;
+#include <arm64/rockchip/rk3568-qnap-ts433.dts>
+#include "rk356x.dtsi"
+
+/ {
+	chosen: chosen {
+		environment-emmc {
+			compatible = "barebox,environment";
+			device-path = &environment_emmc;
+		};
+	};
+};
+
+&sdmmc0 {
+	partitions {
+		compatible = "fixed-partitions";
+		#address-cells = <2>;
+		#size-cells = <2>;
+
+		environment_emmc: partition@408000 {
+			label = "barebox-environment";
+			reg = <0x0 0x408000 0x0 0x8000>;
+		};
+	};
+};
diff --git a/arch/arm/mach-rockchip/Kconfig b/arch/arm/mach-rockchip/Kconfig
index bfbfa7367a3e..f8b0d5e4ec54 100644
--- a/arch/arm/mach-rockchip/Kconfig
+++ b/arch/arm/mach-rockchip/Kconfig
@@ -106,6 +106,13 @@ config MACH_PROTONIC_MECSBC
 	help
 	  Say Y here if you are using a Protonic MECSBC
 
+config MACH_QNAP_TSX33
+	select ARCH_RK3568
+	bool "QNAP TS-433 NAS"
+	help
+	  Select this if you are using a QNAP TS-433 NAS.
+	  <https://www.qnap.com/en-us/product/ts-433>
+
 config MACH_RADXA_ROCK3
 	select ARCH_RK3568
 	bool "Radxa ROCK3"
diff --git a/images/Makefile.rockchip b/images/Makefile.rockchip
index 761c6b814989..2e63e554edce 100644
--- a/images/Makefile.rockchip
+++ b/images/Makefile.rockchip
@@ -35,6 +35,7 @@ $(call build_rockchip_image, CONFIG_MACH_PINE64_PINETAB2, start_pinetab2_v0, pin
 $(call build_rockchip_image, CONFIG_MACH_PINE64_PINETAB2, start_pinetab2_v2, pine64-pinetab2/sdram-init.bin, pinetab2-v2)
 $(call build_rockchip_image, CONFIG_MACH_PINE64_QUARTZ64, start_quartz64a, pine64-quartz64/sdram-init.bin, quartz64a)
 $(call build_rockchip_image, CONFIG_MACH_PROTONIC_MECSBC, start_mecsbc, protonic-mecsbc/sdram-init.bin, mecsbc)
+$(call build_rockchip_image, CONFIG_MACH_QNAP_TSX33, start_rk3568_qnap_ts433, qnap-tsx33/sdram-init.bin, qnap-ts433)
 $(call build_rockchip_image, CONFIG_MACH_RADXA_ROCK3, start_rock3a, radxa-rock3/sdram-init.bin, rock3a)
 $(call build_rockchip_image, CONFIG_MACH_RADXA_ROCK5, start_rock5b, radxa-rock5/sdram-init.bin, rock5b)
 $(call build_rockchip_image, CONFIG_MACH_RADXA_CM3, start_radxa_cm3_io, radxa-cm3/sdram-init.bin, radxa-cm3-io)
-- 
2.47.1



