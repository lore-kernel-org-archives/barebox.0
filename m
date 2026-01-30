Delivery-date: Fri, 30 Jan 2026 06:18:10 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vlgtX-006s4h-0v
	for lore@lore.pengutronix.de;
	Fri, 30 Jan 2026 06:18:10 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vlgtS-0002TX-G0
	for lore@pengutronix.de; Fri, 30 Jan 2026 06:18:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qqyhyfz1VUeQ4TOf1A3ppHzrekHTUSgtvSPdKBVs9M4=; b=MegYzdVWicqyw7VnXz0RzX/XZQ
	matlwSg0Fuga1TBJxWtLOjThTf+A31UFRi11LjNOkfv79MKXUEar1fapyxbRJCE5uaIQGznYkdcf/
	aJqljiFnle7QYLEGGsUnDXKMu3NmMULIu/LfDvzFJINQB6VjuAnUHExik2CnV4//sg/MYaSVGtZHM
	rES6Cs4j7klUOuSh1CW+70XRDL2TwXLE+QT1wcYFqZNfWWeHa5IEpkjeVYV7suRjNY5x5xpJmik1y
	Sk3Pzl4f+iUAPuBfr5TMwlz8rrPEvACfOdXe0MW680mt6rAqZSN8wIEoQdiMADexazXQauaSjTAa4
	w76whsjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vlgsk-0000000128b-2LQf;
	Fri, 30 Jan 2026 05:17:22 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vlgsc-0000000121v-3dl9
	for barebox@lists.infradead.org;
	Fri, 30 Jan 2026 05:17:18 +0000
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-4805ef35864so13779815e9.0
        for <barebox@lists.infradead.org>; Thu, 29 Jan 2026 21:17:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769750233; x=1770355033; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qqyhyfz1VUeQ4TOf1A3ppHzrekHTUSgtvSPdKBVs9M4=;
        b=cbiZxml48m2PWemUp2ldqX3b3D3O4sk11mFo6y1FqyDRcVGq7Jl245m85hLod+2ckL
         huH8TiI3giPekmqaFQD9wWCpaYhxdh0LfJGJN1oG/BPgSLWN7cU1wwlLuJ4AwvkiO91L
         U+vK5L3rsM0eTyDb4juPdt8r0K9b8oxgoTLR/qY82yb1wIEmsHgwkCnqyqadpxdtar2f
         zh8ELrWAS0ccchly9al9s7uChfitr7bEhY+L/81A9EXZjIdQQIe2aRTdA57FmtTrh8ou
         ehEJgeRgiPC69H2t9RYj7HaDufBIQnYQO5TUW56YhGIRmN/8oJ3sao0HwI0Sa/hbujaW
         EWDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769750233; x=1770355033;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=qqyhyfz1VUeQ4TOf1A3ppHzrekHTUSgtvSPdKBVs9M4=;
        b=u2xHvf9oEuYMkzdvNULLfzusOHagEpn8P1GonBi3KIWAT5aBBstJtnPOiwxibvGmKX
         effLucZDKdFqg7xAnxxPPzmfN2i+PH5qSzAygcZH9fqbMEmqWiql7uD/xuUr0Wq2KJYP
         RN4zMye4m1PP1trLXB+yTnIm1IGmMpuAzjjr9b584yDy9jB39SFIpdx6ynnynybzWGbF
         aqKZs1fVB6QNGvabhcssMhkve/3BWjz00qoyOJbdWYdQQWdyjXXYkLU81nsbIUfRG2k/
         yHSGkW2rHqNpfCnXSb/AXi9APGpt0q3lTa+97j3ym2B6wA/5GvR+hI2xQilCXcDvBlDA
         08zQ==
X-Forwarded-Encrypted: i=1; AJvYcCUDdRuHlwxL6lTYR9IYMpbARxjgs584apS8qGVl+Zb/OX/QMYQAMugnp3YQrWVVbYG18CFgZ2A+@lists.infradead.org
X-Gm-Message-State: AOJu0YwUKkBQ+1wrzTVSajZZaCIq9dytnQxi7pP4Tm1s4S+7lOC9tKAB
	V4TQAzfJeHkL9zCsdQnhleW5ZwBiIOn6aAeI/IGV0WpTFf+eBjqdmITw
X-Gm-Gg: AZuq6aLaKaN7OgGml0/hAuSc6e6p2/hFRqBIg0pxVIIAsEyuuiJMQ7U9Ba0RtDyUbKE
	qPRLjFyIcXwq6yacvd0Q4jln6cfdUc19bFgFsAB3l8szMHO2sy2wfwu0GKB07Zp2jNEEGtjaHz4
	Mn2iUDx0Y232zVGnBCqpCZarJKh2qeJWLhyZ+6aadHGqQ+Wp09QKUQEaHU8ekV9TldpG1E2oJP4
	9U0FgcTTORC+cSHHUuxJx7v9xV+G2hSFRe5t35GcKzBZIGE52GDIz4OEeP2m3FWKo6G/vI1iDOZ
	RzW3fo7kJI3+EBfyrWDC8xb2jxs3LYgWDjcOe+M0CtRtahIY6wVYmxwq4UV0R4qK4gwUNTd7sp4
	34g4+zjwkrmwZFFRcO4OydHsT2xLVPup2k6PaJc9VBQkPhLQilzVTny/dL1c5SRHGKqXguEh7LK
	Dp5KeSuIuZJAtlkKwZGIRoidz76KynGxaERcY4NP1TLfC4AdlXFNl0A+P6bSNV53pq6e+JsQ3Hj
	jgltQVdsdmCHMK9g116JlKeebxzc9PQR6fu904NeTeKXO2haGxoUOPK8naafm5+avpxXSIAq4lC
	rCfGTlBcIAd8ZUh6T7Dd/R6ziheveyfDwlig2lLdGA==
X-Received: by 2002:a05:600c:8115:b0:47e:e2b0:15b8 with SMTP id 5b1f17b1804b1-482db447c40mr16601555e9.4.1769750232757;
        Thu, 29 Jan 2026 21:17:12 -0800 (PST)
Received: from [127.0.1.1] (2a02-8388-08be-f800-ad12-b37c-7013-7685.cable.dynamic.v6.surfer.at. [2a02:8388:8be:f800:ad12:b37c:7013:7685])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435e10e4762sm18943088f8f.6.2026.01.29.21.17.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Jan 2026 21:17:12 -0800 (PST)
From: Sohaib Mohamed <sohaib.amhmd@gmail.com>
Date: Fri, 30 Jan 2026 06:16:56 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260130-barebox-kickpi-v2-4-d27cf94a39b6@gmail.com>
References: <20260130-barebox-kickpi-v2-0-d27cf94a39b6@gmail.com>
In-Reply-To: <20260130-barebox-kickpi-v2-0-d27cf94a39b6@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Sohaib Mohamed <sohaib.amhmd@gmail.com>, 
 Ahmad Fatoum <a.fatoum@pengutronix.de>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1769750228; l=8726;
 i=sohaib.amhmd@gmail.com; s=20251127; h=from:subject:message-id;
 bh=QW3W/n6eVQYODCvSu2foMLt1m/qSCVeYcN7wAk0g9f8=;
 b=ST/nBjTNfb1DEIjVT8r8iDn2P20ePTEfd+7J4/ROFxGJzWvcvJs/xlsIfTXWCMZkiZeuwHsqK
 M2Fq0L+TO7jA2Aoa9Guwu66FRJOemPwO9pmr6YhZgfqGi4fg7yJbig1
X-Developer-Key: i=sohaib.amhmd@gmail.com; a=ed25519;
 pk=Q1nrPhN99EawVQo4UT9CZVAG4nQ2Zq/e3sfCABjccgk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260129_211714_982500_0B3E42EE 
X-CRM114-Status: GOOD (  17.94  )
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
X-Spam-Status: No, score=-2.1 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FORGED_GMAIL_RCVD,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 04/14] ARM: boards: Rockchip: add RK3562-EVB2 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@pengutronix.de>

Add board support for RK3562-EVB2 with boot source detection and BBU
handlers for eMMC and SD card.

Co-developed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Sohaib Mohamed <sohaib.amhmd@gmail.com>
---
 arch/arm/boards/Makefile                        |  1 +
 arch/arm/boards/rockchip-rk3562-evb2/.gitignore |  1 +
 arch/arm/boards/rockchip-rk3562-evb2/Makefile   |  4 +++
 arch/arm/boards/rockchip-rk3562-evb2/board.c    | 47 +++++++++++++++++++++++++
 arch/arm/boards/rockchip-rk3562-evb2/lowlevel.c | 23 ++++++++++++
 arch/arm/configs/multi_v8_defconfig             |  1 +
 arch/arm/configs/rockchip_v8_defconfig          |  1 +
 arch/arm/dts/Makefile                           |  1 +
 arch/arm/dts/rk3562-evb2-v10.dts                |  9 +++++
 arch/arm/dts/rk3562.dtsi                        | 40 +++++++++++++++++++++
 arch/arm/mach-rockchip/Kconfig                  |  6 ++++
 images/Makefile.rockchip                        |  1 +
 12 files changed, 135 insertions(+)

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index 4c586de2a9..946af95560 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -185,6 +185,7 @@ obj-$(CONFIG_MACH_TQMLS1046A)			+= tqmls1046a/
 obj-$(CONFIG_MACH_LS1021AIOT)			+= ls1021aiot/
 obj-$(CONFIG_MACH_MNT_REFORM)			+= mnt-reform/
 obj-$(CONFIG_MACH_SKOV_ARM9CPU)			+= skov-arm9cpu/
+obj-$(CONFIG_MACH_RK3562_EVB2)			+= rockchip-rk3562-evb2/
 obj-$(CONFIG_MACH_RK3568_EVB)			+= rockchip-rk3568-evb/
 obj-$(CONFIG_MACH_RK3568_BPI_R2PRO)			+= rockchip-rk3568-bpi-r2pro/
 obj-$(CONFIG_MACH_PINE64_PINETAB2)		+= pine64-pinetab2/
diff --git a/arch/arm/boards/rockchip-rk3562-evb2/.gitignore b/arch/arm/boards/rockchip-rk3562-evb2/.gitignore
new file mode 100644
index 0000000000..f458f794b5
--- /dev/null
+++ b/arch/arm/boards/rockchip-rk3562-evb2/.gitignore
@@ -0,0 +1 @@
+sdram-init.bin
diff --git a/arch/arm/boards/rockchip-rk3562-evb2/Makefile b/arch/arm/boards/rockchip-rk3562-evb2/Makefile
new file mode 100644
index 0000000000..da63d2625f
--- /dev/null
+++ b/arch/arm/boards/rockchip-rk3562-evb2/Makefile
@@ -0,0 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
+obj-y += board.o
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/rockchip-rk3562-evb2/board.c b/arch/arm/boards/rockchip-rk3562-evb2/board.c
new file mode 100644
index 0000000000..d00815822e
--- /dev/null
+++ b/arch/arm/boards/rockchip-rk3562-evb2/board.c
@@ -0,0 +1,47 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#define pr_fmt(fmt) "rk3562-evb: " fmt
+
+#include <common.h>
+#include <init.h>
+#include <mach/rockchip/bbu.h>
+#include <aiodev.h>
+#include <bootsource.h>
+#include <environment.h>
+#include <globalvar.h>
+#include <magicvar.h>
+#include <deep-probe.h>
+
+static int rk3562_evb2_probe(struct device *dev)
+{
+	int emmc_bbu_flag = 0;
+	int sd_bbu_flag = 0;
+
+	if (bootsource_get() == BOOTSOURCE_MMC) {
+		if (bootsource_get_instance() == 2)
+			emmc_bbu_flag = BBU_HANDLER_FLAG_DEFAULT;
+		else
+			sd_bbu_flag = BBU_HANDLER_FLAG_DEFAULT;
+	} else {
+		emmc_bbu_flag = BBU_HANDLER_FLAG_DEFAULT;
+	}
+
+	rockchip_bbu_mmc_register("sd", sd_bbu_flag, "/dev/mmc1");
+	rockchip_bbu_mmc_register("emmc", emmc_bbu_flag, "/dev/mmc0");
+
+	return 0;
+}
+
+static const struct of_device_id rk3562_evb2_of_match[] = {
+	{ .compatible = "rockchip,rk3562-evb2-v10" },
+	{ /* Sentinel */},
+};
+
+static struct driver rk3562_evb2_board_driver = {
+	.name = "board-rk3562-evb",
+	.probe = rk3562_evb2_probe,
+	.of_compatible = rk3562_evb2_of_match,
+};
+coredevice_platform_driver(rk3562_evb2_board_driver);
+
+BAREBOX_DEEP_PROBE_ENABLE(rk3562_evb2_of_match);
diff --git a/arch/arm/boards/rockchip-rk3562-evb2/lowlevel.c b/arch/arm/boards/rockchip-rk3562-evb2/lowlevel.c
new file mode 100644
index 0000000000..474f1a1332
--- /dev/null
+++ b/arch/arm/boards/rockchip-rk3562-evb2/lowlevel.c
@@ -0,0 +1,23 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#include <common.h>
+#include <asm/barebox-arm.h>
+#include <mach/rockchip/hardware.h>
+#include <mach/rockchip/atf.h>
+#include <debug_ll.h>
+
+extern char __dtb_rk3562_evb2_v10_start[];
+
+ENTRY_FUNCTION(start_rk3562_evb2, r0, r1, r2)
+{
+	putc_ll('>');
+
+	if (current_el() == 3)
+		relocate_to_adr_full(RK3562_BAREBOX_LOAD_ADDRESS);
+	else
+		relocate_to_current_adr();
+
+	setup_c();
+
+	rk3562_barebox_entry(__dtb_rk3562_evb2_v10_start);
+}
diff --git a/arch/arm/configs/multi_v8_defconfig b/arch/arm/configs/multi_v8_defconfig
index e63bb46189..e576cecd89 100644
--- a/arch/arm/configs/multi_v8_defconfig
+++ b/arch/arm/configs/multi_v8_defconfig
@@ -29,6 +29,7 @@ CONFIG_MACH_TQMA93XX=y
 CONFIG_MACH_NXP_IMX93_FRDM=y
 CONFIG_IMX_IIM=y
 CONFIG_MACH_BEAGLEPLAY=y
+CONFIG_MACH_RK3562_EVB2=y
 CONFIG_MACH_RK3568_EVB=y
 CONFIG_MACH_RK3568_BPI_R2PRO=y
 CONFIG_MACH_PINE64_PINETAB2=y
diff --git a/arch/arm/configs/rockchip_v8_defconfig b/arch/arm/configs/rockchip_v8_defconfig
index f8f8ceb805..3e5f76077d 100644
--- a/arch/arm/configs/rockchip_v8_defconfig
+++ b/arch/arm/configs/rockchip_v8_defconfig
@@ -1,4 +1,5 @@
 CONFIG_ARCH_ROCKCHIP=y
+CONFIG_MACH_RK3562_EVB2=y
 CONFIG_MACH_RK3568_EVB=y
 CONFIG_MACH_RK3568_BPI_R2PRO=y
 CONFIG_MACH_PINE64_PINETAB2=y
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index a84e09e388..d5e37d3e4e 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -139,6 +139,7 @@ lwl-$(CONFIG_MACH_RADXA_ROCK5) += \
 lwl-$(CONFIG_MACH_RADXA_CM3) += rk3566-cm3-io.dtb.o
 lwl-$(CONFIG_MACH_PHYTEC_SOM_RK3288) += rk3288-phycore-som.dtb.o
 lwl-$(CONFIG_MACH_REALQ7) += imx6q-dmo-edmqmx6.dtb.o
+lwl-$(CONFIG_MACH_RK3562_EVB2) += rk3562-evb2-v10.dtb.o
 lwl-$(CONFIG_MACH_RK3568_EVB) += rk3568-evb1-v10.dtb.o
 lwl-$(CONFIG_MACH_RK3568_BPI_R2PRO) += rk3568-bpi-r2-pro.dtb.o
 lwl-$(CONFIG_MACH_RPI) += bcm2835-rpi.dtb.o
diff --git a/arch/arm/dts/rk3562-evb2-v10.dts b/arch/arm/dts/rk3562-evb2-v10.dts
new file mode 100644
index 0000000000..40a5084ee3
--- /dev/null
+++ b/arch/arm/dts/rk3562-evb2-v10.dts
@@ -0,0 +1,9 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2021 Rockchip Electronics Co., Ltd.
+ */
+
+/dts-v1/;
+
+#include <arm64/rockchip/rk3562-evb2-v10.dts>
+#include "rk3562.dtsi"
diff --git a/arch/arm/dts/rk3562.dtsi b/arch/arm/dts/rk3562.dtsi
new file mode 100644
index 0000000000..f1a291d456
--- /dev/null
+++ b/arch/arm/dts/rk3562.dtsi
@@ -0,0 +1,40 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+/ {
+	aliases {
+		pmugrf.reboot_mode = &reboot_mode;
+		pwm0 = &pwm0;
+		pwm1 = &pwm1;
+		pwm2 = &pwm2;
+		pwm3 = &pwm3;
+		pwm4 = &pwm4;
+		pwm5 = &pwm5;
+		pwm6 = &pwm6;
+		pwm7 = &pwm7;
+		pwm8 = &pwm8;
+		pwm9 = &pwm9;
+		pwm10 = &pwm10;
+		pwm11 = &pwm11;
+		pwm12 = &pwm12;
+		pwm13 = &pwm13;
+		pwm14 = &pwm14;
+		pwm15 = &pwm15;
+		i2c0  = &i2c0;
+		i2c5  = &i2c5;
+		spi0  = &spi0;
+		spi1  = &spi1;
+		spi2  = &spi2;
+		spi3  = &sfc;
+	};
+
+	chosen {
+		barebox,bootsource-mmc0 = &sdhci;
+		barebox,bootsource-mmc1 = &sdmmc0;
+		barebox,bootsource-mmc2 = &sdmmc1;
+	};
+
+	dmc: memory-controller {
+		compatible = "rockchip,rk3562-dmc";
+		rockchip,pmu = <&pmu_grf>;
+	};
+};
diff --git a/arch/arm/mach-rockchip/Kconfig b/arch/arm/mach-rockchip/Kconfig
index a91e7db72d..d359307eb7 100644
--- a/arch/arm/mach-rockchip/Kconfig
+++ b/arch/arm/mach-rockchip/Kconfig
@@ -64,6 +64,12 @@ endif
 
 if 64BIT
 
+config MACH_RK3562_EVB2
+	select ARCH_RK3562
+	bool "RK3562 EVB2"
+	help
+	  Say Y here if you are using a RK3562 EVB2
+
 config MACH_RK3568_EVB
 	select ARCH_RK3568
 	bool "RK3568 EVB"
diff --git a/images/Makefile.rockchip b/images/Makefile.rockchip
index 191ef15aab..1122db4629 100644
--- a/images/Makefile.rockchip
+++ b/images/Makefile.rockchip
@@ -37,6 +37,7 @@ pblb-$(CONFIG_MACH_PHYTEC_SOM_RK3288) += start_rk3288_phycore_som
 FILE_barebox-rk3288-phycore-som.img = start_rk3288_phycore_som.pblb
 image-$(CONFIG_MACH_PHYTEC_SOM_RK3288) += barebox-rk3288-phycore-som.img
 
+$(call build_rockchip_image, CONFIG_MACH_RK3562_EVB2, start_rk3562_evb2, rockchip-rk3562-evb2/sdram-init.bin, rk3562-evb2)
 $(call build_rockchip_image, CONFIG_MACH_RK3568_EVB, start_rk3568_evb, rockchip-rk3568-evb/sdram-init.bin, rk3568-evb)
 $(call build_rockchip_image, CONFIG_MACH_RK3568_BPI_R2PRO, start_rk3568_bpi_r2pro, rockchip-rk3568-bpi-r2pro/sdram-init.bin, rk3568-bpi-r2pro)
 $(call build_rockchip_image, CONFIG_MACH_PINE64_PINETAB2, start_pinetab2_v0, pine64-pinetab2/sdram-init.bin, pinetab2-v0)

-- 
2.43.0



