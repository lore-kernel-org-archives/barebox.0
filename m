Delivery-date: Mon, 27 Nov 2023 07:41:50 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r7VJV-00AeC4-1q
	for lore@lore.pengutronix.de;
	Mon, 27 Nov 2023 07:41:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r7VJV-0008Gz-Jp
	for lore@pengutronix.de; Mon, 27 Nov 2023 07:41:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HOo8esXbO4q2dAw4U7JhlNWyYjOl0UCMs20idDu0+Ks=; b=oyC9aeu8nZQ80yYat/5HbNa9pE
	kaQx5REH3H+spkKpAWIWbxUENwNYWV2HKkg9AG5FGDEHXvcyZZn8eVBmXcW3SGUh2AJRaJiONrqYf
	x9MntLt1k0T5G1w5Zcu1bOXrzrZFvqcTcpPQHQKr/oN/BjubYwxE16bLBPLbPQmDVIp28rh4yPQvU
	gurhfpdMKXlqKsXfdGvvw6rxGbepZtYiMSH5WZ52ib6MEtMWTr3jwCuMiTkoTmN2+JgylN84XOUSS
	EzJHRZK9iRinNz+iNnoAFV+T0WXD7YLfzK4tYNnZiEjTmjKxD46ZbWmz1KCzihhkapLJWQ7wQfwDC
	Butw2kKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7VIO-001a9m-2W;
	Mon, 27 Nov 2023 06:40:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7VIL-001a7i-0h
	for barebox@lists.infradead.org;
	Mon, 27 Nov 2023 06:40:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r7VIK-0007xo-3X; Mon, 27 Nov 2023 07:40:36 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r7VIJ-00Bshf-N1; Mon, 27 Nov 2023 07:40:35 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r7VIJ-009G6Z-22;
	Mon, 27 Nov 2023 07:40:35 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 27 Nov 2023 07:40:32 +0100
Message-Id: <20231127064034.2206788-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231127064034.2206788-1-a.fatoum@pengutronix.de>
References: <20231127064034.2206788-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231126_224037_249578_B868A5D8 
X-CRM114-Status: GOOD (  13.35  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 4/6] ARM: dts: stm32mp: ev1: build extra device tree with SCMI
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Devices with SCMI are booted by the ARM Trusted Firmware-A out of a FIP
bundle. The FIP bundle contains barebox-stm32mp-generic-bl33.img along
with a device tree. Let's build SCMI enabled device trees as well for
the EV1, which we already support in non-SCMI mode.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/dts/Makefile                 |  2 +-
 arch/arm/dts/stm32mp157c-ev1-scmi.dts | 20 ++++++++++++++++++++
 2 files changed, 21 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/dts/stm32mp157c-ev1-scmi.dts

diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 37134a32ab0a..61f8704e5e26 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -146,7 +146,7 @@ lwl-$(CONFIG_MACH_STM32MP15XX_DKX) += stm32mp157c-dk2.dtb.o stm32mp157a-dk1.dtb.
 					stm32mp157c-dk2-scmi.dtb.o stm32mp157a-dk1-scmi.dtb.o
 lwl-$(CONFIG_MACH_STM32MP13XX_DK) += stm32mp135f-dk.dtb.o
 lwl-$(CONFIG_MACH_LXA_MC1) += stm32mp157c-lxa-mc1.dtb.o
-lwl-$(CONFIG_MACH_STM32MP15X_EV1) += stm32mp157c-ev1.dtb.o
+lwl-$(CONFIG_MACH_STM32MP15X_EV1) += stm32mp157c-ev1.dtb.o stm32mp157c-ev1-scmi.dtb.o
 lwl-$(CONFIG_MACH_SCB9328) += imx1-scb9328.dtb.o
 lwl-$(CONFIG_MACH_TECHNEXION_WANDBOARD) += imx6q-wandboard.dtb.o imx6dl-wandboard.dtb.o
 lwl-$(CONFIG_MACH_TECHNEXION_PICO_HOBBIT) += imx6ul-pico-hobbit.dtb.o
diff --git a/arch/arm/dts/stm32mp157c-ev1-scmi.dts b/arch/arm/dts/stm32mp157c-ev1-scmi.dts
new file mode 100644
index 000000000000..7cd279da4c2e
--- /dev/null
+++ b/arch/arm/dts/stm32mp157c-ev1-scmi.dts
@@ -0,0 +1,20 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR X11)
+
+#include <arm/st/stm32mp157c-ev1-scmi.dts>
+#include "stm32mp151.dtsi"
+
+/ {
+	chosen {
+		environment-sd {
+			compatible = "barebox,environment";
+			device-path = &sdmmc1, "partname:barebox-environment";
+			status = "disabled";
+		};
+
+		environment-emmc {
+			compatible = "barebox,environment";
+			device-path = &sdmmc2, "partname:barebox-environment";
+			status = "disabled";
+		};
+	};
+};
-- 
2.39.2



