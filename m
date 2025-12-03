Delivery-date: Wed, 03 Dec 2025 18:14:30 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQqQw-007aal-1J
	for lore@lore.pengutronix.de;
	Wed, 03 Dec 2025 18:14:30 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQqQv-00014X-Gi
	for lore@pengutronix.de; Wed, 03 Dec 2025 18:14:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hOu6VWL4jZU/wYSMUPDie7QBRw+O7Spkhy+xmXLqxIY=; b=wPAnoof+KeGlM072xGx1S89MRD
	azlAQd3tk8i+s3ec+zUV4usebBzIZ6YNCs8v1vCUG5OWX9S9L89EUi5yLKHG6a3wPratyBorKweof
	8tt2MBn/u4zXDj2S9xxqHdTQ+J24fggAk0p2CboBSNhFXU3ke2j8Gl4tDeH4O1FQanhQ5zcNrAsd3
	AEbf1BwGM3baLIhrar0ETdwMev/qbWrkZ0cAbhenZmIvhuGOPfkXSTTMuku0IF+MZoKPcd1g/r+UI
	oqGy3v912qFYR5EeCom9a+EFJI+wlRTQT8Ea5Bl+nGquWr4bjpJtDgBc3waAtBFARHEg/t9R9GtDb
	otwAG7nw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQqQQ-00000006qcI-2dkB;
	Wed, 03 Dec 2025 17:13:58 +0000
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQqQN-00000006qZc-1yvy
	for barebox@lists.infradead.org;
	Wed, 03 Dec 2025 17:13:56 +0000
Received: by mail-wr1-x431.google.com with SMTP id ffacd0b85a97d-42e33956e76so12312f8f.3
        for <barebox@lists.infradead.org>; Wed, 03 Dec 2025 09:13:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764782034; x=1765386834; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hOu6VWL4jZU/wYSMUPDie7QBRw+O7Spkhy+xmXLqxIY=;
        b=RbaK0bLKSNoWkzNCmjJHIzlXnytw7Zq0j+hZsfN37poo8C5SLjx19WuZkLhuG6QbBk
         8fuv8PtI5d8fJCLiq7VpovvNPSdV14WYFzXebmsIbQTrWXWaW/Ut/ORwW7EJPvkFGcAV
         NpdHa5HwUvRinngR9CRrB1pRkJY18vvUGel4V9NbFcBFc6OXKskuPCDZ24ntFVDNmop1
         hOQhihM15Ts2+ITScxOyR6eJzC7u7QNfBy8qvEXcBBbHvcoBcqYNAlpXrlo7JmwWvgSo
         zYyBdWxFxD+FCb0Y+2W0LjXaUWaK/lqmNAfqkpz1KE05Vlxtl3/qz6z6TdAH7rcKYk2i
         B5tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764782034; x=1765386834;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=hOu6VWL4jZU/wYSMUPDie7QBRw+O7Spkhy+xmXLqxIY=;
        b=rxkeFQEQatT76LK6TB5h+v9+PZZLqsbCWbxB6d2liPMEHGHY95GcZFc1GMTJfsn908
         T4tcAu+ORWi5mWPJOcXwnOWltw8vVV/0LuMqe65CU7T9+qG2y5OKfBC9h8NEc7cPve6I
         Pw3FOHqQqH8M1h9vB39uHIEJIEHBwMGOPbSCaRdA76R+QHh7UelKFRfW2Ega1XP9Ou+u
         JRlSQ1v+wQ0cX+tYnqMY+W1Gqu8MSAXDWTQP/Xf/YcnkoWx+zODwKqAkbnc/houqNmBL
         LuBdv37f6jPFTx477BHrT1SubunAcEKx7YByom8vrMpcQOsbQsdbcdtsYpleKUHpBCKJ
         z5Tg==
X-Forwarded-Encrypted: i=1; AJvYcCWvGSc9L56manzw/JlN75EHcE8IyE2jg5VMcYdMLp39N4IrRYGf4v6006hI6AWzxOPWlH1GzPAt@lists.infradead.org
X-Gm-Message-State: AOJu0Yx3nZwX3yv05r4v7vFU7icqQanMzXur3hqqKAOPMTq2E7IVOD4X
	87L4nfgQx7EY1U9V/QoW2cjlOMlOgVg7bZorXVHp0ROISBcoJPhyVjlH
X-Gm-Gg: ASbGnctrsKP4aWkLuqCUuIISID6bcJN9xa0IrSQ51iGD6CGOmnU+QJyuOF/3nlgm0Zy
	9+O7EYS2xwVOAJnsVBVA3ECvFihuivpcpspJL4aXmuHLVtjU86yp6ED2Nqm2uiPir2UhKJ4uYbI
	EoCTf2Gz66isyQCU3zpvPNiA6ul7FwJEKHQ9G5pClGHt/LEoN+9f6oY5IRg6R+eIR0KHay4K982
	w1coq7tFJXExKp8aLeAXTSQ02d9RzxfOmqKeNs2vBHMl1hRAwRLVA//CyHlHlIlQ+6CqkOKqUWd
	kJ9McnSaFxTi/h6oYOETwSBp5zyyyh34RQ/4TZVjEFm8Bq6nwMA88EPS3AQXd6JMxJKB4QPymit
	VazKygqObB5m3QH6xZWHisezVAB0S7i3yy29Kl4DvlGNZOjNNMz8c1nmZvHHHiKXEyRLY2maDtp
	1li0/L3Iv2iK2/+GFwfKZ5zOGMWq0w3xNDdhvhOajuVnigSp+M6Xu3LTlg0DXwlibFQPB71/pb/
	K8ICDs4vMS+FLW6WPitUoUVixFdJnwuhFzbOBeECBFg/BfQYd/JLH/c3p0yNYERX4nyyth30wfk
	MeSSLuqbRY9O2CHTzPjhm+cdNLSh5ZrF3YgnmjrtLw==
X-Google-Smtp-Source: AGHT+IELvVZKBWy802H9wci5/n5jMm8Phei3xU1qjpfgde+KzxdNRmJbWbl+MVFBfoVwFq8Dc+BVcA==
X-Received: by 2002:a05:6000:2004:b0:42b:3e60:18c7 with SMTP id ffacd0b85a97d-42f731a52f0mr3363950f8f.36.1764782033352;
        Wed, 03 Dec 2025 09:13:53 -0800 (PST)
Received: from [127.0.1.1] (2a02-8388-08be-f800-b582-e1f7-764e-a16b.cable.dynamic.v6.surfer.at. [2a02:8388:8be:f800:b582:e1f7:764e:a16b])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42e1c5c3c8csm49112578f8f.2.2025.12.03.09.13.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Dec 2025 09:13:53 -0800 (PST)
From: Sohaib Mohamed <sohaib.amhmd@gmail.com>
Date: Wed, 03 Dec 2025 18:13:18 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251203-avenger96-v2-3-95f0cfa50aaa@gmail.com>
References: <20251203-avenger96-v2-0-95f0cfa50aaa@gmail.com>
In-Reply-To: <20251203-avenger96-v2-0-95f0cfa50aaa@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 Ahmad Fatoum <a.fatoum@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Sohaib Mohamed <sohaib.amhmd@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1764782030; l=6495;
 i=sohaib.amhmd@gmail.com; s=20251127; h=from:subject:message-id;
 bh=FS6+BFHN2Yhs+cPKKhC+G3kO7i2qnIKMpsyNwejPp+o=;
 b=6f5dqtNmfnLlsnp3CXI5U35nkZGZWDQDSZiBhP6JRrisQL8OA5Fqxr1jxkJ5qyWioV2Os/HBb
 omlnn9hMArzCG2JtRJL80Ya5nruBesLlA6LJCH6tQzb/gZbI/wVILB+
X-Developer-Key: i=sohaib.amhmd@gmail.com; a=ed25519;
 pk=Q1nrPhN99EawVQo4UT9CZVAG4nQ2Zq/e3sfCABjccgk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251203_091355_553883_1AA7C204 
X-CRM114-Status: GOOD (  17.43  )
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
X-Spam-Status: No, score=-2.8 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 3/3] ARM: stm32mp: add support for STM32MP157A Avenger96
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



