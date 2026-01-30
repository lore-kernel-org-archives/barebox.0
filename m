Delivery-date: Fri, 30 Jan 2026 06:18:12 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vlgtZ-006s5Y-0m
	for lore@lore.pengutronix.de;
	Fri, 30 Jan 2026 06:18:12 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vlgtW-0002Wn-J9
	for lore@pengutronix.de; Fri, 30 Jan 2026 06:18:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dM2yL4qXcDulXNCgcDXgF8V+ikcnh3AiHXj6ABbDP8c=; b=x+vglfsqVma+bQRXyyAl7upvJU
	oPy0qzQu1EfjY6PNFMpachwGsGLwJ14mCtNCTtbY9/Dwo35zuA8/bR+nq+L5XpyGaPhdZ/NaMvdJT
	WVkzbk/M6ftPiTT47+4otRYqin1UN1QehlyVg/CKtQk/qlrxS2o3NVLl5Ed2XN/DZolh5xLleKxHd
	Bp0S7lMRTf/ZHOizp5drNA73ycUKsUk3qljBUOJoj/46jm2WAfLRg9AP0GkMBKBaHSjS0LVBZcaXO
	9g22aCwNqwGlVXE6Qtk1tq4rBAo0Va/mj/nbE+YTLLMxWNPCpAPpfbp5IAytahlDzKQ5Iqv72Hsxn
	t+0pjBRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vlgsl-0000000129q-1KpO;
	Fri, 30 Jan 2026 05:17:23 +0000
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vlgse-0000000122x-14Bl
	for barebox@lists.infradead.org;
	Fri, 30 Jan 2026 05:17:18 +0000
Received: by mail-wr1-x42d.google.com with SMTP id ffacd0b85a97d-430f2ee2f00so1070975f8f.3
        for <barebox@lists.infradead.org>; Thu, 29 Jan 2026 21:17:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769750235; x=1770355035; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dM2yL4qXcDulXNCgcDXgF8V+ikcnh3AiHXj6ABbDP8c=;
        b=QX6/TKiJ8QkX0RwuF/gC2K52NVeyq+QPdBOKi6VRIp/bKcBN1FoqPrigpvxN3jF1Lo
         ep9He9E27iiAxzf6cK595sjV1ZU9FVX/HKF+GcD0ZSExqm2ewnbJbdpiNf/D9YJj6bDk
         icloXWj4EDxc1ADjsP68ukKHMfntvGfyTolBeyqQpwkEChXTUQVIutfxN+Jj+tQPq5sL
         08JYz/RolaPrkLEn8jey8pCUftgNxRfLOMZmexQabbUsXcSXNziJf0VI13I+VIcauoyD
         /NW3nWNx7QZGCOOnFi9cji8ng8wj6LQOOT5TQWhjYkauxTofVOlvhNfD+TNFdXPKj0A9
         EdyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769750235; x=1770355035;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=dM2yL4qXcDulXNCgcDXgF8V+ikcnh3AiHXj6ABbDP8c=;
        b=HLk8ekVS/6IUVlMDT3hOqd8LA8tql1Vw1s17LWXp5tMQ4cr9bqGC7VvQFsiFcRu1w6
         oG64S8syzMVCoBw3do6VibP3YixhxAbeES1jD9pVPM6lU+2a3hqHB6IOEPQAmDlo9reH
         ogRvD1gYlOqC5lHJ79DULPyJFl0pbfuu5x3YTHF3jMfIVKOmRi+pTugCOy//CwNjvW8p
         pBAsnNcM0iMZBhpYoXKaex4hkue8PNYcHIIzoXuvzdTBZ3RTJbYL0bw+lN0IjRTpd0sC
         HpmjOMTqLcivUpxyX6gvBSr/9UDYb10tmM06bcn6KbpWbG8odjXus4JHLlm1MtHoMbWE
         QZjA==
X-Forwarded-Encrypted: i=1; AJvYcCUxZPg5XrDp4QbRHKjBwjZZmYaSIwKAZaQZmAAoyYgqyrdp2T0ECzcuZgFPKjd+AWwtKSiwQtmi@lists.infradead.org
X-Gm-Message-State: AOJu0YxJFxIQzeutLBBr/d+vkZ4gKmIifQrliq1SMKMVy/Jt+2fyYpTb
	QTL6tUI4FFtK3wQZ42FhLt52fQPfEtJbhmSOpvVl207OITwRXJPbVx+F1IUJHg==
X-Gm-Gg: AZuq6aKqIijWIxoO33O76XiodAKt9Fg/TGaSbjogy/T3/RDB3FHI9bUXdTv9C1+MUiY
	VIJIHcW7I8eCwuX8oJlsInRx/n62inv0RJkI81PrnFrt9jheFGdVEIERNzVyneDUbuq331G1nkY
	hd085xegRI4dg4B1rAcv1ALpdF3MGpFvsqvYtLEMYsvXDpUY3Ah+uoxYNlH/gQ1dgLzrQpPwvlP
	o4x2LBNWvab4euQRKpjbpqcT8efCaPRSg2PU5y0ZWT+aOe2M/NnXNZxQfhxsd+F3o0yRwgn4FWx
	AGYqcS3QUU1GeSJB+cthqT44FdtIz+ruOOc5OD+ptkwZnXB0ZerJv5sJJJdnNeCHTN8ruQ/9Qov
	N9XBH+3kFUCRh2wEtZGotXSbbZb243XVDuR2uUTUYVP0NvIXsHGTaxdOCvWpL7ZLOhyJPvFwH66
	4sv2e3SCfAPR9WzYyZTF1H67nYGyDqU4WF+H5B5Tj9I9MjH2GRrIo6Px3J+ELtdhdKNxDhRZ/Su
	/PLlx06tYAMxgPE8gkfOqrdAKNRcV1zbEekPJIN6xTSoBU7GrmLphUt3WTEytpGKpDyZURhjSAh
	EqYHTcSOrpuFs917NA2BgbXmCce1DbkEYvAVihOGbA==
X-Received: by 2002:a5d:5f54:0:b0:431:3a5:d9ae with SMTP id ffacd0b85a97d-435f3a6cc94mr2507651f8f.4.1769750234590;
        Thu, 29 Jan 2026 21:17:14 -0800 (PST)
Received: from [127.0.1.1] (2a02-8388-08be-f800-ad12-b37c-7013-7685.cable.dynamic.v6.surfer.at. [2a02:8388:8be:f800:ad12:b37c:7013:7685])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435e10e4762sm18943088f8f.6.2026.01.29.21.17.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Jan 2026 21:17:14 -0800 (PST)
From: Sohaib Mohamed <sohaib.amhmd@gmail.com>
Date: Fri, 30 Jan 2026 06:16:58 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260130-barebox-kickpi-v2-6-d27cf94a39b6@gmail.com>
References: <20260130-barebox-kickpi-v2-0-d27cf94a39b6@gmail.com>
In-Reply-To: <20260130-barebox-kickpi-v2-0-d27cf94a39b6@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Sohaib Mohamed <sohaib.amhmd@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1769750228; l=7938;
 i=sohaib.amhmd@gmail.com; s=20251127; h=from:subject:message-id;
 bh=4lPwBtj7wsTkqYxBKDQyqsvcFzV9LBV6+I6uS0ellhU=;
 b=0peDqobtKoSQ78LEijvdTfS59/tHAO/X1Y81KZuDqHyTqkyRaWjBNxlm4tKxf/IXiXxSzdQdn
 9lI2WRJNuLADxw2R1SZ8M6XOk4n5Et27dlKMgLpmRVREhdCKnML51j1
X-Developer-Key: i=sohaib.amhmd@gmail.com; a=ed25519;
 pk=Q1nrPhN99EawVQo4UT9CZVAG4nQ2Zq/e3sfCABjccgk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260129_211717_727069_E946406E 
X-CRM114-Status: GOOD (  18.15  )
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
Subject: [PATCH v2 06/14] ARM: rockchip: Add RK3562 KickPi K3 board support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

KICKPI-K3 is a development board based on Rockchip RK3562, the main
control chip. It has a quad-core 64-bit Cortex-A53 processor, a main
frequency of up to 2.0GHz, low power consumption, and high performance.

Signed-off-by: Sohaib Mohamed <sohaib.amhmd@gmail.com>
---
 arch/arm/boards/Makefile                           |  1 +
 .../boards/rockchip-rk3562-kickpi-k3/.gitignore    |  1 +
 arch/arm/boards/rockchip-rk3562-kickpi-k3/Makefile |  4 ++
 arch/arm/boards/rockchip-rk3562-kickpi-k3/board.c  | 44 ++++++++++++++++++++++
 .../boards/rockchip-rk3562-kickpi-k3/lowlevel.c    | 23 +++++++++++
 arch/arm/configs/multi_v8_defconfig                |  1 +
 arch/arm/configs/rockchip_v8_defconfig             |  1 +
 arch/arm/dts/Makefile                              |  1 +
 arch/arm/dts/rk3562-kickpi-k3.dts                  | 10 +++++
 arch/arm/mach-rockchip/Kconfig                     |  6 +++
 images/Makefile.rockchip                           |  1 +
 11 files changed, 93 insertions(+)

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index 946af95560..2a8e85e0b3 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -186,6 +186,7 @@ obj-$(CONFIG_MACH_LS1021AIOT)			+= ls1021aiot/
 obj-$(CONFIG_MACH_MNT_REFORM)			+= mnt-reform/
 obj-$(CONFIG_MACH_SKOV_ARM9CPU)			+= skov-arm9cpu/
 obj-$(CONFIG_MACH_RK3562_EVB2)			+= rockchip-rk3562-evb2/
+obj-$(CONFIG_MACH_RK3562_KICKPI_K3)		+= rockchip-rk3562-kickpi-k3/
 obj-$(CONFIG_MACH_RK3568_EVB)			+= rockchip-rk3568-evb/
 obj-$(CONFIG_MACH_RK3568_BPI_R2PRO)			+= rockchip-rk3568-bpi-r2pro/
 obj-$(CONFIG_MACH_PINE64_PINETAB2)		+= pine64-pinetab2/
diff --git a/arch/arm/boards/rockchip-rk3562-kickpi-k3/.gitignore b/arch/arm/boards/rockchip-rk3562-kickpi-k3/.gitignore
new file mode 100644
index 0000000000..f458f794b5
--- /dev/null
+++ b/arch/arm/boards/rockchip-rk3562-kickpi-k3/.gitignore
@@ -0,0 +1 @@
+sdram-init.bin
diff --git a/arch/arm/boards/rockchip-rk3562-kickpi-k3/Makefile b/arch/arm/boards/rockchip-rk3562-kickpi-k3/Makefile
new file mode 100644
index 0000000000..da63d2625f
--- /dev/null
+++ b/arch/arm/boards/rockchip-rk3562-kickpi-k3/Makefile
@@ -0,0 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
+obj-y += board.o
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/rockchip-rk3562-kickpi-k3/board.c b/arch/arm/boards/rockchip-rk3562-kickpi-k3/board.c
new file mode 100644
index 0000000000..6be79a8630
--- /dev/null
+++ b/arch/arm/boards/rockchip-rk3562-kickpi-k3/board.c
@@ -0,0 +1,44 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#define pr_fmt(fmt) "rk3562-kickpi-k3: " fmt
+
+#include <bootsource.h>
+#include <common.h>
+#include <init.h>
+#include <mach/rockchip/bbu.h>
+
+static int rk3562_kickpi_k3_probe(struct device *dev)
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
+static const struct of_device_id rk3562_kickpi_k3_of_match[] = {
+	{
+		.compatible = "kickpi,rk3562-kickpi-k3",
+	},
+	{ /* Sentinel */},
+};
+
+static struct driver rk3562_kickpi_k3_board_driver = {
+	.name = "board-rk3562-kickpi-k3",
+	.probe = rk3562_kickpi_k3_probe,
+	.of_compatible = rk3562_kickpi_k3_of_match,
+};
+coredevice_platform_driver(rk3562_kickpi_k3_board_driver);
+
+BAREBOX_DEEP_PROBE_ENABLE(rk3562_kickpi_k3_of_match);
diff --git a/arch/arm/boards/rockchip-rk3562-kickpi-k3/lowlevel.c b/arch/arm/boards/rockchip-rk3562-kickpi-k3/lowlevel.c
new file mode 100644
index 0000000000..4afe83189d
--- /dev/null
+++ b/arch/arm/boards/rockchip-rk3562-kickpi-k3/lowlevel.c
@@ -0,0 +1,23 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#include <common.h>
+#include <asm/barebox-arm.h>
+#include <mach/rockchip/hardware.h>
+#include <mach/rockchip/atf.h>
+#include <debug_ll.h>
+
+extern char __dtb_rk3562_kickpi_k3_start[];
+
+ENTRY_FUNCTION(start_rk3562_kickpi_k3, r0, r1, r2)
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
+	rk3562_barebox_entry(__dtb_rk3562_kickpi_k3_start);
+}
diff --git a/arch/arm/configs/multi_v8_defconfig b/arch/arm/configs/multi_v8_defconfig
index e576cecd89..64ac712d4a 100644
--- a/arch/arm/configs/multi_v8_defconfig
+++ b/arch/arm/configs/multi_v8_defconfig
@@ -30,6 +30,7 @@ CONFIG_MACH_NXP_IMX93_FRDM=y
 CONFIG_IMX_IIM=y
 CONFIG_MACH_BEAGLEPLAY=y
 CONFIG_MACH_RK3562_EVB2=y
+CONFIG_MACH_RK3562_KICKPI_K3=y
 CONFIG_MACH_RK3568_EVB=y
 CONFIG_MACH_RK3568_BPI_R2PRO=y
 CONFIG_MACH_PINE64_PINETAB2=y
diff --git a/arch/arm/configs/rockchip_v8_defconfig b/arch/arm/configs/rockchip_v8_defconfig
index 3e5f76077d..117117b047 100644
--- a/arch/arm/configs/rockchip_v8_defconfig
+++ b/arch/arm/configs/rockchip_v8_defconfig
@@ -1,5 +1,6 @@
 CONFIG_ARCH_ROCKCHIP=y
 CONFIG_MACH_RK3562_EVB2=y
+CONFIG_MACH_RK3562_KICKPI_K3=y
 CONFIG_MACH_RK3568_EVB=y
 CONFIG_MACH_RK3568_BPI_R2PRO=y
 CONFIG_MACH_PINE64_PINETAB2=y
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index d5e37d3e4e..ac42a6a6ae 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -141,6 +141,7 @@ lwl-$(CONFIG_MACH_PHYTEC_SOM_RK3288) += rk3288-phycore-som.dtb.o
 lwl-$(CONFIG_MACH_REALQ7) += imx6q-dmo-edmqmx6.dtb.o
 lwl-$(CONFIG_MACH_RK3562_EVB2) += rk3562-evb2-v10.dtb.o
 lwl-$(CONFIG_MACH_RK3568_EVB) += rk3568-evb1-v10.dtb.o
+lwl-$(CONFIG_MACH_RK3562_KICKPI_K3) += rk3562-kickpi-k3.dtb.o
 lwl-$(CONFIG_MACH_RK3568_BPI_R2PRO) += rk3568-bpi-r2-pro.dtb.o
 lwl-$(CONFIG_MACH_RPI) += bcm2835-rpi.dtb.o
 lwl-$(CONFIG_MACH_RPI2) += bcm2836-rpi-2.dtb.o
diff --git a/arch/arm/dts/rk3562-kickpi-k3.dts b/arch/arm/dts/rk3562-kickpi-k3.dts
new file mode 100644
index 0000000000..78e0578d9d
--- /dev/null
+++ b/arch/arm/dts/rk3562-kickpi-k3.dts
@@ -0,0 +1,10 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2021 Rockchip Electronics Co., Ltd.
+ *
+ */
+
+/dts-v1/;
+
+#include "rk3562-kickpi-k3.dtsi"
+#include "rk3562.dtsi"
diff --git a/arch/arm/mach-rockchip/Kconfig b/arch/arm/mach-rockchip/Kconfig
index d359307eb7..c1c96c545e 100644
--- a/arch/arm/mach-rockchip/Kconfig
+++ b/arch/arm/mach-rockchip/Kconfig
@@ -70,6 +70,12 @@ config MACH_RK3562_EVB2
 	help
 	  Say Y here if you are using a RK3562 EVB2
 
+config MACH_RK3562_KICKPI_K3
+	select ARCH_RK3562
+	bool "RK3562 KICKPI K3"
+	help
+	  Say Y here if you are using a RK3562 KICKPI K3
+
 config MACH_RK3568_EVB
 	select ARCH_RK3568
 	bool "RK3568 EVB"
diff --git a/images/Makefile.rockchip b/images/Makefile.rockchip
index 1122db4629..7651f88d62 100644
--- a/images/Makefile.rockchip
+++ b/images/Makefile.rockchip
@@ -38,6 +38,7 @@ FILE_barebox-rk3288-phycore-som.img = start_rk3288_phycore_som.pblb
 image-$(CONFIG_MACH_PHYTEC_SOM_RK3288) += barebox-rk3288-phycore-som.img
 
 $(call build_rockchip_image, CONFIG_MACH_RK3562_EVB2, start_rk3562_evb2, rockchip-rk3562-evb2/sdram-init.bin, rk3562-evb2)
+$(call build_rockchip_image, CONFIG_MACH_RK3562_KICKPI_K3, start_rk3562_kickpi_k3, rockchip-rk3562-kickpi-k3/sdram-init.bin, rk3562-kickpi-k3)
 $(call build_rockchip_image, CONFIG_MACH_RK3568_EVB, start_rk3568_evb, rockchip-rk3568-evb/sdram-init.bin, rk3568-evb)
 $(call build_rockchip_image, CONFIG_MACH_RK3568_BPI_R2PRO, start_rk3568_bpi_r2pro, rockchip-rk3568-bpi-r2pro/sdram-init.bin, rk3568-bpi-r2pro)
 $(call build_rockchip_image, CONFIG_MACH_PINE64_PINETAB2, start_pinetab2_v0, pine64-pinetab2/sdram-init.bin, pinetab2-v0)

-- 
2.43.0



