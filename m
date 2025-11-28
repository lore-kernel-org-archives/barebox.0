Delivery-date: Fri, 28 Nov 2025 01:52:25 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOmin-005bmU-1m
	for lore@lore.pengutronix.de;
	Fri, 28 Nov 2025 01:52:25 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOmim-0007mq-LK
	for lore@pengutronix.de; Fri, 28 Nov 2025 01:52:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hOu6VWL4jZU/wYSMUPDie7QBRw+O7Spkhy+xmXLqxIY=; b=ECQqBZP7hkVTnXB6fb8ntfLnzv
	Wj2vndmHMQ9cfAD7DKTunBv1e3g0xt37GWGxsk7wiJPs1hTR0rnvM7e9yGBmDw1EWorxhCL6fHvef
	/b7YdF4JSf2ARbslLdbEwKUg85YVW7Ww+rop6grgByjhW99FJxyud+Q1rtZUAu+gn+ppUiuMbDQdg
	LMZ4bmqsaGRwRpwMNgLeLmhKPnsyXI9MXkimiXERVYc6Jm0CkTcFUlSxovsXTjpF5aL/uTkHUpCtQ
	0RtX/3osH3ClE4hjYix+afd5WdIgfdHIrU5iWbucY7KQV7D6MptVoNp0BfvR5pGgVqN4GW24EogTf
	56rngDnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOmiD-0000000HMWj-3H9p;
	Fri, 28 Nov 2025 00:51:49 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOmi9-0000000HMVA-3Rzf
	for barebox@lists.infradead.org;
	Fri, 28 Nov 2025 00:51:46 +0000
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-477ba2c1ca2so14935265e9.2
        for <barebox@lists.infradead.org>; Thu, 27 Nov 2025 16:51:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764291104; x=1764895904; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hOu6VWL4jZU/wYSMUPDie7QBRw+O7Spkhy+xmXLqxIY=;
        b=gBLHkPdra4TKWj0WmmLiRNVFkrQUH162uRb6EEyaO72QUTECbtCTes4ukyVk1wX1vB
         yQSWFERrOaAGypTmkYOxgAqwhQ7kCQNXoc1q/mqDjw8QzURJgb+Qvi6h9/QMwMvVi7ws
         rFvSBDRi4C5x5d23iX72TZAQWpXgl/d6wSVx92RI11ivtHirzwF1/JRR13bykR9frEHp
         TYYA7U74HmoMVD3PFiLZisBmpCsgrgqYVrnBXnQmywOgF7hRE/hWln0kbk3JE086iJY7
         WVmsHip/UrF8GPzxfaj0HnkvDdJy33fVmziNWsy46LN8i8eGaDhCIEmkAwPDgxO1CNAN
         8Qbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764291104; x=1764895904;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=hOu6VWL4jZU/wYSMUPDie7QBRw+O7Spkhy+xmXLqxIY=;
        b=iSxczZ+TcEcwVmbleUa81ZTXUa81xcQEy6ZE4idO61rCX2r9iveg5Qj7XH7L77Pufg
         AFTcXXe8OhUaie8hGq62rInKmC4ycdA3pfWquIHdkXgVPQNvS6QgVsXrsg+M/ARxCooG
         i04gdLDHuuZx9OfdJzSnWMDe8EScy0zyCM+ABCS6oHZcw3fZCw/0YFY0IkJ9mxHBDjcy
         MHzpT43broo4plDSeUhBEHjkbvLWtyc74lpuXIxtxXSbDnxid6HZwwqNTgffBk0kVj5S
         h+oyg+nkScnZPlI7VjtwSl+apdaqf27vGc6FjGQHvNdooDw0DD7kMGDxPsf0S8ESQGE/
         4b2Q==
X-Forwarded-Encrypted: i=1; AJvYcCXujl5NETeY0ht9iOWMKsZsHjQT/WNOoa+p83QJrWH+O+UxHh95Gg+WY3A4u8AtC7jAWt/hxdb9@lists.infradead.org
X-Gm-Message-State: AOJu0YyjgGoPha0U8Q0QkEbbFfEFlf/6zd4XFvLsZi0oX6ul89KzFneL
	80Hs2eiLT9G0RFx9cDDthFb2vo3frFW/7DaVenQLx2BtVfPQoXWLqvrx
X-Gm-Gg: ASbGncv+2sF9FeNlSyMoD/JfvlrgF0YTlRY6l431+vBpcoyNOM1K2azGBMjw0mRPkIq
	mlGreKmT5cv+EktUdE0fjZA3mAPHR02yuQDkiBBLs7Ouk2Hi0i+LJ9hjlvqCn5NStr8CUlKS4zF
	G/M5AkyDFQvW3v69SF5HENXYqqjD1od6TgAPbCuhUqsstukXPdw3HtqOpBmdWuzsVl8EyXsXePG
	9hickd2jmGv/tDH8x5rBcbX6ocNbjZUyfd27xipWO9mTtRg0KvGiDFWOsDU3TsVOpRON03PMc9x
	McZTGxcHf30k475F1ZZ63NnhozfewRbcL6eUqthSMlizXmEoWVFN4ScJkwGoN3BgY0WpcFN7Rcv
	WksY1E5S6f/7csI9YVUHf1W2eI0GUzwaLRxWGsXNQQVb3q2GcORd2i4t3FuH7SmO7pZqvJlnYbp
	4ZaKR2EW6nwO67EOlJM7pdQ1fdt6DfgWfjP3ASWH4yqUSsekpRSZf1ADYRwepZYhIs8c/QD9Jwu
	WztFUB7T588y4ZJa4A+O77VoICik8lt8pxA4rM/0zIw2kkLIAhO/5b5CbMIfeFfyViEGu9XBCHQ
	2H5JeTbKdsj1FzgDu513TqNhnB8fUKuU7N0z4WTVjQ==
X-Google-Smtp-Source: AGHT+IESCYMdA1yP2yv3TrEXVlof81e2JQa7Ds+qMEPYpEaCXm6dtY9boxJ6BWD4YXvb00z+XhT/gQ==
X-Received: by 2002:a05:600c:4e91:b0:477:7a95:b971 with SMTP id 5b1f17b1804b1-47904b2c3dfmr137193755e9.31.1764291103717;
        Thu, 27 Nov 2025 16:51:43 -0800 (PST)
Received: from [127.0.1.1] (2a02-8388-08be-f800-7d9f-531a-c313-37e5.cable.dynamic.v6.surfer.at. [2a02:8388:8be:f800:7d9f:531a:c313:37e5])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4790b0e21e8sm123791475e9.15.2025.11.27.16.51.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Nov 2025 16:51:43 -0800 (PST)
From: Sohaib Mohamed <sohaib.amhmd@gmail.com>
Date: Fri, 28 Nov 2025 01:51:19 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251128-avenger96-v1-3-009b13bd8df7@gmail.com>
References: <20251128-avenger96-v1-0-009b13bd8df7@gmail.com>
In-Reply-To: <20251128-avenger96-v1-0-009b13bd8df7@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Sohaib Mohamed <sohaib.amhmd@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1764291100; l=6495;
 i=sohaib.amhmd@gmail.com; s=20251127; h=from:subject:message-id;
 bh=FS6+BFHN2Yhs+cPKKhC+G3kO7i2qnIKMpsyNwejPp+o=;
 b=2A2D4wtRj/N5vPoPqdXQoQyUpEF6XOil5mtH28aguyeBEW9umrmnePiepIUtuug4JMKLDZC/m
 mA+e8iX0+gSCoY1SuxsfSzo5wqyQ31eohe/G9mpTul1gOJv30HHI92i
X-Developer-Key: i=sohaib.amhmd@gmail.com; a=ed25519;
 pk=Q1nrPhN99EawVQo4UT9CZVAG4nQ2Zq/e3sfCABjccgk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251127_165145_907303_734A2DEE 
X-CRM114-Status: GOOD (  17.00  )
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
X-Spam-Status: No, score=-2.9 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/3] ARM: stm32mp: add support for STM32MP157A Avenger96
 board
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add board support for the Arrow Electronics STM32MP157A Avenger96 board.

This commit adds:
- Board initialization code with boot source detection
- barebox_update handlers for SD card, eMMC

Tested with STM32MP157A DHCOR SoM on Avenger96 carrier board.

Signed-off-by: Sohaib Mohamed <sohaib.amhmd@gmail.com>
---
 arch/arm/boards/Makefile                    |  1 +
 arch/arm/boards/dhcor-stm32mp1/Makefile     |  2 ++
 arch/arm/boards/dhcor-stm32mp1/board.c      | 47 +++++++++++++++++++++++++++++
 arch/arm/configs/multi_v7_defconfig         |  2 ++
 arch/arm/configs/stm32mp_defconfig          |  2 ++
 arch/arm/dts/Makefile                       |  1 +
 arch/arm/dts/stm32mp157a-dhcor-stm32mp1.dts |  4 +++
 arch/arm/mach-stm32mp/Kconfig               |  4 +++
 8 files changed, 63 insertions(+)

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index f73285ede9..f75277bc17 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -135,6 +135,7 @@ obj-$(CONFIG_MACH_LXA_MC1)			+= lxa-mc1/
 obj-$(CONFIG_MACH_LXA_TAC)			+= lxa-tac/
 obj-$(CONFIG_MACH_LXA_FAIRYTUX2)		+= lxa-fairytux2/
 obj-$(CONFIG_MACH_STM32MP15X_EV1)		+= stm32mp15x-ev1/
+obj-$(CONFIG_MACH_DHCOR_STM32MP1)		+= dhcor-stm32mp1/
 obj-$(CONFIG_MACH_TECHNEXION_PICO_HOBBIT)	+= technexion-pico-hobbit/
 obj-$(CONFIG_MACH_TECHNEXION_WANDBOARD)		+= technexion-wandboard/
 obj-$(CONFIG_MACH_TNY_A9260)			+= tny-a926x/
diff --git a/arch/arm/boards/dhcor-stm32mp1/Makefile b/arch/arm/boards/dhcor-stm32mp1/Makefile
new file mode 100644
index 0000000000..bcca1a9f84
--- /dev/null
+++ b/arch/arm/boards/dhcor-stm32mp1/Makefile
@@ -0,0 +1,2 @@
+# SPDX-License-Identifier: GPL-2.0+
+obj-y += board.o
diff --git a/arch/arm/boards/dhcor-stm32mp1/board.c b/arch/arm/boards/dhcor-stm32mp1/board.c
new file mode 100644
index 0000000000..2a02942d6c
--- /dev/null
+++ b/arch/arm/boards/dhcor-stm32mp1/board.c
@@ -0,0 +1,47 @@
+// SPDX-License-Identifier: GPL-2.0
+// SPDX-FileCopyrightText: Copyright (c) 2025, Sohaib Mohamed <sohaib.amhmd@gmail.com>
+#include <filetype.h>
+#include <common.h>
+#include <init.h>
+#include <asm/memory.h>
+#include <mach/stm32mp/bbu.h>
+#include <bootsource.h>
+#include <of.h>
+
+static int dhcor_stm32mp1_probe(struct device *dev)
+{
+	int emmc_bbu_flag = 0;
+	int sd_bbu_flag = 0;
+	int nor_bbu_flag = 0;
+
+	if (bootsource_get() == BOOTSOURCE_MMC) {
+		if (bootsource_get_instance() == 2)
+			emmc_bbu_flag = BBU_HANDLER_FLAG_DEFAULT;
+		else
+			sd_bbu_flag = BBU_HANDLER_FLAG_DEFAULT;
+	} else if (bootsource_get() == BOOTSOURCE_NOR) {
+		nor_bbu_flag = BBU_HANDLER_FLAG_DEFAULT;
+	} else {
+		emmc_bbu_flag = BBU_HANDLER_FLAG_DEFAULT;
+	}
+
+	stm32mp_bbu_mmc_fip_register("sd", "/dev/mmc0", sd_bbu_flag);
+	stm32mp_bbu_mmc_fip_register("emmc", "/dev/mmc1", emmc_bbu_flag);
+	stm32mp_bbu_nor_fip_register("nor", "/dev/m25p0", nor_bbu_flag);
+
+	return 0;
+}
+
+static const struct of_device_id dhcor_stm32mp1_of_match[] = {
+	{ .compatible = "dh,stm32mp157a-dhcor-som" },
+	{ /* sentinel */ },
+};
+MODULE_DEVICE_TABLE(of, dhcor_stm32mp1_of_match);
+BAREBOX_DEEP_PROBE_ENABLE(dhcor_stm32mp1_of_match);
+
+static struct driver dhcor_stm32mp1_driver = {
+	.name = "dhcor_stm32mp1",
+	.probe = dhcor_stm32mp1_probe,
+	.of_compatible = dhcor_stm32mp1_of_match,
+};
+device_platform_driver(dhcor_stm32mp1_driver);
diff --git a/arch/arm/configs/multi_v7_defconfig b/arch/arm/configs/multi_v7_defconfig
index 93f79c79d2..ef4e106148 100644
--- a/arch/arm/configs/multi_v7_defconfig
+++ b/arch/arm/configs/multi_v7_defconfig
@@ -82,6 +82,7 @@ CONFIG_MACH_STM32MP15XX_DKX=y
 CONFIG_MACH_LXA_MC1=y
 CONFIG_MACH_LXA_TAC=y
 CONFIG_MACH_LXA_FAIRYTUX2=y
+CONFIG_MACH_DHCOR_STM32MP1=y
 CONFIG_MACH_SEEED_ODYSSEY=y
 CONFIG_MACH_STM32MP15X_EV1=y
 CONFIG_MACH_PROTONIC_STM32MP1=y
@@ -214,6 +215,7 @@ CONFIG_DEEP_PROBE_DEFAULT=y
 CONFIG_OF_BAREBOX_DRIVERS=y
 CONFIG_AIODEV=y
 CONFIG_STM32_ADC=y
+CONFIG_STM32_QSPI=y
 CONFIG_SERIAL_AMBA_PL011=y
 CONFIG_DRIVER_SERIAL_STM32=y
 CONFIG_DRIVER_SERIAL_NS16550=y
diff --git a/arch/arm/configs/stm32mp_defconfig b/arch/arm/configs/stm32mp_defconfig
index 4df7b371f3..1d1b75fbb0 100644
--- a/arch/arm/configs/stm32mp_defconfig
+++ b/arch/arm/configs/stm32mp_defconfig
@@ -4,6 +4,7 @@ CONFIG_MACH_STM32MP15XX_DKX=y
 CONFIG_MACH_LXA_MC1=y
 CONFIG_MACH_LXA_TAC=y
 CONFIG_MACH_LXA_FAIRYTUX2=y
+CONFIG_MACH_DHCOR_STM32MP1=y
 CONFIG_MACH_SEEED_ODYSSEY=y
 CONFIG_MACH_STM32MP15X_EV1=y
 CONFIG_MACH_PROTONIC_STM32MP1=y
@@ -104,6 +105,7 @@ CONFIG_NET_FASTBOOT=y
 CONFIG_OF_BAREBOX_DRIVERS=y
 CONFIG_AIODEV=y
 CONFIG_STM32_ADC=y
+CONFIG_STM32_QSPI=y
 CONFIG_DRIVER_SERIAL_STM32=y
 CONFIG_DRIVER_NET_DESIGNWARE_STM32=y
 CONFIG_AT803X_PHY=y
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index e78722a9a7..3cd1d8fe59 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -169,6 +169,7 @@ lwl-$(CONFIG_MACH_LXA_MC1) += stm32mp157c-lxa-mc1.dtb.o stm32mp157c-lxa-mc1-scmi
 lwl-$(CONFIG_MACH_LXA_TAC) += stm32mp157c-lxa-tac-gen1.dtb.o stm32mp157c-lxa-tac-gen2.dtb.o \
 				stm32mp153c-lxa-tac-gen3.dtb.o
 lwl-$(CONFIG_MACH_LXA_FAIRYTUX2) += stm32mp153c-lxa-fairytux2-gen1.dtb.o stm32mp153c-lxa-fairytux2-gen2.dtb.o
+lwl-$(CONFIG_MACH_DHCOR_STM32MP1) += stm32mp157a-dhcor-stm32mp1.dtb.o
 lwl-$(CONFIG_MACH_STM32MP15X_EV1) += stm32mp157c-ev1.dtb.o stm32mp157c-ev1-scmi.dtb.o
 lwl-$(CONFIG_MACH_SCB9328) += imx1-scb9328.dtb.o
 lwl-$(CONFIG_MACH_TECHNEXION_WANDBOARD) += imx6q-wandboard.dtb.o imx6dl-wandboard.dtb.o
diff --git a/arch/arm/dts/stm32mp157a-dhcor-stm32mp1.dts b/arch/arm/dts/stm32mp157a-dhcor-stm32mp1.dts
new file mode 100644
index 0000000000..5187cc882f
--- /dev/null
+++ b/arch/arm/dts/stm32mp157a-dhcor-stm32mp1.dts
@@ -0,0 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0 OR BSD-3-Clause
+
+#include <arm/st/stm32mp157a-dhcor-avenger96.dts>
+#include "stm32mp151.dtsi"
diff --git a/arch/arm/mach-stm32mp/Kconfig b/arch/arm/mach-stm32mp/Kconfig
index 5ea0c4004f..54ce644d73 100644
--- a/arch/arm/mach-stm32mp/Kconfig
+++ b/arch/arm/mach-stm32mp/Kconfig
@@ -39,6 +39,10 @@ config MACH_LXA_FAIRYTUX2
 	bool "Linux Automation FairyTux 2"
 	select BOARD_LXA
 
+config MACH_DHCOR_STM32MP1
+	select ARCH_STM32MP157
+	bool "DHCOR STM32MP1 boards including Arrow Avenger96"
+
 config MACH_SEEED_ODYSSEY
 	select ARCH_STM32MP157
 	bool "Seeed Studio Odyssey"

-- 
2.43.0



