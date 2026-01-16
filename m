Delivery-date: Fri, 16 Jan 2026 20:43:51 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgpjc-0024Tg-0R
	for lore@lore.pengutronix.de;
	Fri, 16 Jan 2026 20:43:51 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgpjX-0001gv-Tf
	for lore@pengutronix.de; Fri, 16 Jan 2026 20:43:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qqyhyfz1VUeQ4TOf1A3ppHzrekHTUSgtvSPdKBVs9M4=; b=c5jCPdDdTfvucEbfKH03wZLJjR
	RIGeH19mz2E7z3Q7pqXThaeqrfHHv4MHkWOH2hP0pY6MbtfrSAOsTg+3XcSjqbBUhp41LpjoS547E
	HPZSxnl5QdY854RArqe4PB3D3PetHbvwewN4MrMNEPVJWp+taSyEpxHd6b1eWsNJ08+8IkPdV0x0m
	ridiJdygA2VJvfTBBP3YW0ysTyHXQaxLqKKXZKn3CF++mEWhGA7wrmFm9wi23R6+zySP6YRy5ZrQl
	HqBH50ZlxClh4U+bhWMKuxqKFJHRrbxuT8zZAl46rXlMkf973ecwezFGvlDJFZWxp8yGAhOERto1+
	PAOj4//Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgpih-0000000Eho8-2CaY;
	Fri, 16 Jan 2026 19:42:55 +0000
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgpic-0000000Ehil-3NQz
	for barebox@lists.infradead.org;
	Fri, 16 Jan 2026 19:42:53 +0000
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-b874c00a3fcso391127966b.1
        for <barebox@lists.infradead.org>; Fri, 16 Jan 2026 11:42:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768592569; x=1769197369; darn=lists.infradead.org;
        h=to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qqyhyfz1VUeQ4TOf1A3ppHzrekHTUSgtvSPdKBVs9M4=;
        b=knRE3nboBJQ1xJXx26VqzLnGSPvavwEvEDpfhlHPaIO0CVyPkrE0pCeTZ1gYXMBSd+
         cjcXmTxmeYch0txg5o2svCogBAcQfk56XeGA+aoH5GUyWa36cqw/0Lfo+Yi6s2fI4PFm
         4dbJxoRmXRU+EiX4JQv3ztvStlv5pM5KZvo60C4vYXajibpnQI+bgExalkiMFoyu2D1W
         SYCKMhoMBHSf/GX7uVEjDLUs4BQwMYk9ZZruAkL8zQIyvowjKFUvW60NKddsbhvizJFC
         pl7hwPfdCxJv/xKV78tJ/oPLn3CeL/N32Cff0cv2+tYdAMNsXwNdYpbPCl5eZlj/nib5
         MGbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768592569; x=1769197369;
        h=to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=qqyhyfz1VUeQ4TOf1A3ppHzrekHTUSgtvSPdKBVs9M4=;
        b=EEAl6KDfrKzfSKaqziFu1gdhyyb1Pk16E3VZi43aCfi77mA336JBpVivVP0jwUdBys
         g89bvEn9BenPIFYvQrA/gPRxBpklOA+MpMpOhHFGXd03qmyKocO4/cLLokUBLh7fzPXX
         HoA/e4ybK/m8yG05SHh2J/kAS4AO1lU+w1pyXFRMxxqPLoj0TRAdPGywTJ0zabGKinsy
         P8Z7dtQt4l2rcPlFWydq2krK1oTcUgke1HuHbk9Bt2tZ1hw963Vl1yKjjFHVLEMyYPSU
         f56wXWgFoYecg3dP3aSHlMLpKF7XomXneTblr8NAeYu1p6a3hEbmXCvo7wXRfb8BnzUH
         alvQ==
X-Forwarded-Encrypted: i=1; AJvYcCXvIMpcrlqFJWjDNLoFQnprWSBsK274sVrcbnKLjK3qyt6aDcCTdWVHBLSDvebqRPOr7Tgja3Kx@lists.infradead.org
X-Gm-Message-State: AOJu0YzO8SM+FWw5SxsPGUAWKZ9givif3Hdu+nhbOT9yocp/pFFSGIkZ
	Qs9pR2g0dZtOoKi/hOPq31z1LhfN3XMcb6O58KBXDf/zMtA9DSgo/lvd5+4gQw==
X-Gm-Gg: AY/fxX76SQvey3vk2uPSBQxeV7ur4rN5nj/CdEu4cIQ7Y5MZuVywZEBXwMxch70ahhD
	n4xgJx2S4DbhfDHU8KHnIWDPT3czdsGOaS6WfXWaZTCnekqf0E7FkMtREJvP0SCDLQSiH1pLKj5
	hE0e4Y41hwBNn1Oczgx2fsf0UMA5uxH+7zspvjIlAz9tQ9kdr4wQTRKvRPmN2CVFkD6q8wkUrMu
	xlhh+nkmSky8l9AFtGA+OF9RYenlrnbAuTKPHkCcUOg3Ab2Ci3leVE72REDsQfdQkBJ9PL/Pn3C
	+celuZtiNZXXx7266+ao7NivVGklBQ5lNGeg8FFIMI4raJkNxx4LE2pR2Yx8HoVNU3JauLmsbrq
	RxO92jsp7wnVVxItDI7BdObYS8PQaUqfxZdAf3xzJw6fvUNRIFHoG3tuiJaTd2EfwRjjf1JNaDJ
	HcSCb/gr3P1cJcbyWNFXpjcWieN4KeyZ9F1wJV8Jj+sB9GB1cDfMBNbJl9e5QqYD1WplasnfCow
	Ihzak3TRXSxGdtiJ5XGdBQgl0FJyw4dtg+lFoGxShlC6SwCyebxwfcvxevttdoGpH1C+ttAST4M
	dE2kjD0HGrVNxYSlb6aIar/xR3cd6JBNDeWkH4H/3g==
X-Received: by 2002:a17:907:1ca6:b0:b76:ece0:368e with SMTP id a640c23a62f3a-b879303e13cmr358652966b.47.1768592568691;
        Fri, 16 Jan 2026 11:42:48 -0800 (PST)
Received: from [127.0.1.1] (2a02-8388-08be-f800-f96f-90ee-b1eb-797e.cable.dynamic.v6.surfer.at. [2a02:8388:8be:f800:f96f:90ee:b1eb:797e])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b87959c9fb0sm328166266b.43.2026.01.16.11.42.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Jan 2026 11:42:48 -0800 (PST)
From: Sohaib Mohamed <sohaib.amhmd@gmail.com>
Date: Fri, 16 Jan 2026 20:40:38 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260116-barebox-kickpi-v1-4-d11fbccd527a@gmail.com>
References: <20260116-barebox-kickpi-v1-0-d11fbccd527a@gmail.com>
In-Reply-To: <20260116-barebox-kickpi-v1-0-d11fbccd527a@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 Ahmad Fatoum <a.fatoum@pengutronix.de>, 
 Sohaib Mohamed <sohaib.amhmd@gmail.com>, 
 BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768592564; l=8726;
 i=sohaib.amhmd@gmail.com; s=20251127; h=from:subject:message-id;
 bh=QW3W/n6eVQYODCvSu2foMLt1m/qSCVeYcN7wAk0g9f8=;
 b=wjHLFzoqSZKCKF5NmRuVaJiKnX6oQNmaEMusFC/P2JmhemOJbrpHkW+KRzwGbQmWhf5XKkPyW
 ppxUMZZY4V+ABdh/Y3QSvfICNLfNt8PXuzEWr6vnRn/B1NBaFykUEdJ
X-Developer-Key: i=sohaib.amhmd@gmail.com; a=ed25519;
 pk=Q1nrPhN99EawVQo4UT9CZVAG4nQ2Zq/e3sfCABjccgk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260116_114250_896314_EC592B42 
X-CRM114-Status: GOOD (  17.74  )
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
X-Spam-Status: No, score=-2.2 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FORGED_GMAIL_RCVD,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 04/14] ARM: boards: Rockchip: add RK3562-EVB2 support
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



