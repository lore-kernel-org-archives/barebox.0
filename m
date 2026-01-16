Delivery-date: Fri, 16 Jan 2026 20:43:52 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgpjc-0024U1-3C
	for lore@lore.pengutronix.de;
	Fri, 16 Jan 2026 20:43:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgpjY-0001hR-K8
	for lore@pengutronix.de; Fri, 16 Jan 2026 20:43:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3mBgAkFqEvBAP/exQIFb+WG6ZkZL2vCHu9NLqPwrz+A=; b=P+lFUWIY+pEaq6CSYUxfdx2Z+3
	j9bXugqponKVEmAwBQCfIBejljnW68vqu1M8OzoLMNOCXJQG3OP81M9QLwQTqRXDSaQJ+yXz+pqK4
	Nsiwu9KostFQqsG8Y8+/jlrDrQhonKBXx5HUN/MY+9nay9XVty8AgXqGX4CYbnGOm/0zQJ3fja4MM
	J3idFL7iu9+0yEIxM9oOnOHwX0xamh2U9yMP8gRVsiANmqLz3dMIuA+01QX5JDdgGDtUKi/LLZxli
	eLWnjfcOjNuDzczdhjWTX1f1nnT6fQOwUspliuksPoyrOhgs2FV4BQ8JudXvdt8PgXOlge6DmcxmR
	yNqOimAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgpii-0000000EhpA-17x4;
	Fri, 16 Jan 2026 19:42:56 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgpid-0000000EhjN-45Lj
	for barebox@lists.infradead.org;
	Fri, 16 Jan 2026 19:42:53 +0000
Received: by mail-ed1-x52e.google.com with SMTP id 4fb4d7f45d1cf-6505d3b84bcso3672985a12.3
        for <barebox@lists.infradead.org>; Fri, 16 Jan 2026 11:42:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768592570; x=1769197370; darn=lists.infradead.org;
        h=to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3mBgAkFqEvBAP/exQIFb+WG6ZkZL2vCHu9NLqPwrz+A=;
        b=U4hSE/EG8yhbcYjx6YV/UTMojqLRzYbgrEgoDZMLe1i6zOdRyZwzXvyNR0oPxQI+vH
         jxRiCvoCnFJPG19fe1+3tYuyD8W40g/YzpLK+3+SKoxfzXYn3nKaV0xJOGEVnqFccdy+
         ubxwadUjbrDY2OD6+sStOkP6xROP5OmqiJTq+biKIfzIIJgLM4PergMpI13tqDvRBdpo
         In1N74Wt1p4QFDyEv5cGrRx8H5g7BKAdeipklDldJSpwFeP/t7+mnTQ2A7wY/nlNjgAi
         Wf6eGGnmVUNKBC+bxAAR6L+drgLi/DNidNKEyecNjaMOkMvUS7hOMxj+fBNqfK1Di9/A
         dzqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768592570; x=1769197370;
        h=to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=3mBgAkFqEvBAP/exQIFb+WG6ZkZL2vCHu9NLqPwrz+A=;
        b=QnMe9ApUSur74/CjWlzN9Kmb06mwrQynIiV6uOy4LaErSZbl3tIDk6Bc9ceFYDtTEp
         FT05hqQdDCXv4kxoOMBkWuyft/D6saCmhWUqBiyQ9z6IaHCnujU9Umf/M1fZvmAtT0lf
         KqpQ1Cu5kGeDzfxciSq9mCZuzZYA5edGH4Q+ibzRozQqBG9Hcwj9TSDefaYlOoc1kdO0
         ulQAsvSjGGuSVILCdUMJxdzHaQI+zPYiuWr1FOGxtaGUAKObnXa0w5At45KYcJMzFaow
         RKCFmiE2+rwizq34pqAsroArvUIfoEkdshKjY9vRGeuc3eJtxqJy+oqPthSa0rEeUSWs
         XdkA==
X-Forwarded-Encrypted: i=1; AJvYcCV6MrfRGZ7xRvAYAImXPim0s/syjS9GTEEw8sitsc9mtSt+Zp+ouIUJnU2sQJ3905zJZ+wiz+oc@lists.infradead.org
X-Gm-Message-State: AOJu0YwTYCxHI2ZlsDHp1HTM7uNVhyNv8qotv6XzShhl4jW3iplUE16g
	VGwN3niRaqXxgdGrd5W4jb81SHxsIizDh63cJRJ0eLI5SEYxbnWanoLV
X-Gm-Gg: AY/fxX7eFx0e0mwY1ore8zg1755G/yBUkNNmo8T39/IuPuA5SH2S/D3mLTiKDpvv0C/
	4Urf0O7dUxpI0BefT61oWiEiDKMLkflL2g09d11srEpyQUSnbvALdUk4tcz12tOsmq4/cFjblzm
	p4WG2gc3ig9j4pggFBF5TsszZ69h73sqrH//Abiw5yZVFzRbl1qRVeSueNvZDq7pN/3+jHkRz/r
	JfWkpU9y9wViAeGFykVHuuwszIYDoCys5vusMaBJfb4dw1ze/JvFYqBaMf5fY2U2vR6kATRnq5l
	5WZjFeNjYhmf/88z6FUUm1L2gwx/nq51YNLP/A0yC8Ni8ka9nTApEkyhBsvTcwCtJVxV0jSaNw7
	Fp8IVIUY+dOIoeHw1g4F+d8QbfhZVCWy09cKi0F/ynkq9UEW+a2VuCjIrRB9WW9Amf5VLn3oF5D
	+QzWIrhaQ836g9K0EEyfvAAX/xs2I4RGdunR3RU2z+eAJFchTQrV36Nj75QYAy93dMoetymugEV
	G1hhkbX04ZvmMzdSw6hoUTqMDEMPAxm45i5qmQvnw1tA2WEFl6+OSyj0sYtCgzNlj/NJMV+cqgJ
	dPLLU+2QfPtTdPjF2PnBgCtTvOHDd6Y1PHk4dG76kg==
X-Received: by 2002:a17:907:7201:b0:b73:4d06:bc8 with SMTP id a640c23a62f3a-b8793038b15mr380323766b.53.1768592569892;
        Fri, 16 Jan 2026 11:42:49 -0800 (PST)
Received: from [127.0.1.1] (2a02-8388-08be-f800-f96f-90ee-b1eb-797e.cable.dynamic.v6.surfer.at. [2a02:8388:8be:f800:f96f:90ee:b1eb:797e])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b87959c9fb0sm328166266b.43.2026.01.16.11.42.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Jan 2026 11:42:49 -0800 (PST)
From: Sohaib Mohamed <sohaib.amhmd@gmail.com>
Date: Fri, 16 Jan 2026 20:40:40 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260116-barebox-kickpi-v1-6-d11fbccd527a@gmail.com>
References: <20260116-barebox-kickpi-v1-0-d11fbccd527a@gmail.com>
In-Reply-To: <20260116-barebox-kickpi-v1-0-d11fbccd527a@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 Ahmad Fatoum <a.fatoum@pengutronix.de>, 
 Sohaib Mohamed <sohaib.amhmd@gmail.com>, 
 BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768592564; l=8461;
 i=sohaib.amhmd@gmail.com; s=20251127; h=from:subject:message-id;
 bh=wJtCc1gXOy33r2Z8ebp4Fc15z2pVAO16X53eunoXas4=;
 b=bLilgK7lHRsFlUOVXdNC98S9oGwok9JTMw4Y0p4Yb1kupudmxqe7bVV4/oAtjyTJrRmny7TZL
 cJGBCPyDRS8BN/GunMyTW+sdBRqOGKEfO2rpaF7Rnm5YBGBeIt/H7OM
X-Developer-Key: i=sohaib.amhmd@gmail.com; a=ed25519;
 pk=Q1nrPhN99EawVQo4UT9CZVAG4nQ2Zq/e3sfCABjccgk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260116_114252_111632_2741C3A6 
X-CRM114-Status: GOOD (  19.73  )
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
Subject: [PATCH 06/14] ARM: rockchip: Add RK3562 KickPi K3 board support
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
 arch/arm/boards/rockchip-rk3562-kickpi-k3/board.c  | 46 ++++++++++++++++++++++
 .../boards/rockchip-rk3562-kickpi-k3/lowlevel.c    | 23 +++++++++++
 arch/arm/configs/multi_v8_defconfig                |  1 +
 arch/arm/configs/rockchip_v8_defconfig             |  1 +
 arch/arm/dts/Makefile                              |  1 +
 arch/arm/dts/rk3562-kickpi-k3.dts                  | 10 +++++
 arch/arm/dts/rk3562-kickpi-k3.dtsi                 |  2 +-
 arch/arm/mach-rockchip/Kconfig                     |  6 +++
 images/Makefile.rockchip                           |  1 +
 12 files changed, 96 insertions(+), 1 deletion(-)

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
index 0000000000..9e96bafb88
--- /dev/null
+++ b/arch/arm/boards/rockchip-rk3562-kickpi-k3/board.c
@@ -0,0 +1,46 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#define pr_fmt(fmt) "rk3562-kickpi-k3: " fmt
+
+#include <bootsource.h>
+#include <common.h>
+#include <init.h>
+#include <mach/rockchip/bbu.h>
+#include <globalvar.h>
+#include <deep-probe.h>
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
diff --git a/arch/arm/dts/rk3562-kickpi-k3.dtsi b/arch/arm/dts/rk3562-kickpi-k3.dtsi
index 77bd61cf30..ad5349d7c4 100644
--- a/arch/arm/dts/rk3562-kickpi-k3.dtsi
+++ b/arch/arm/dts/rk3562-kickpi-k3.dtsi
@@ -22,7 +22,7 @@ aliases {
 	};
 
 	chosen {
-		stdout-path = "console=serial0,1500000n8";
+		stdout-path = "serial0:1500000n8";
 	};
 
 	vcc3v3_pcie20: regulator-vcc3v3-pcie20 {
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



