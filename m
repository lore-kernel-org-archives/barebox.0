Delivery-date: Mon, 27 Nov 2023 07:42:10 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r7VJq-00AeEZ-0y
	for lore@lore.pengutronix.de;
	Mon, 27 Nov 2023 07:42:10 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r7VJq-0008Mo-8H
	for lore@pengutronix.de; Mon, 27 Nov 2023 07:42:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RfuKF8sv602NbljuqiK4skTJJjyIw37KiEWPiZytoZM=; b=T+rnU4fMH1xiPRxoXU2IGhpXk8
	0N32TeXEswq1AfJ14h4RteDji9QOxBSjgG2YGJbWFJ8U6hXfBZ7wsBj2wZzPMjkKLAKPhPv84PObA
	+YJehVxvcketZp57TLURFsoLzgfaqNrRnrufr2dZpAQatymrU6hYqV4TKPqljPW0JXWWA29H/6fa9
	VV840v/kZryOS5NMS25gremgvfOy0AHIqD95dRkPHZ2KE+sAJvTwqHH9UGjifA+AwZnPZxYU9tmrq
	KY/xWzVkGDqb6X3cbuGoLLZeONjTReNe8Qs5PwVNYRrfY9L52ck0FgdBo6GK10rL4gn7pDmY1mZO5
	jrteCxtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7VIZ-001aF2-0w;
	Mon, 27 Nov 2023 06:40:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7VIT-001aBQ-0i
	for barebox@lists.infradead.org;
	Mon, 27 Nov 2023 06:40:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r7VIK-0007xn-3X; Mon, 27 Nov 2023 07:40:36 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r7VIJ-00Bshb-KA; Mon, 27 Nov 2023 07:40:35 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r7VIJ-009G6Z-1j;
	Mon, 27 Nov 2023 07:40:35 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 27 Nov 2023 07:40:30 +0100
Message-Id: <20231127064034.2206788-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231127064034.2206788-1-a.fatoum@pengutronix.de>
References: <20231127064034.2206788-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231126_224045_434959_84E7DABD 
X-CRM114-Status: GOOD (  13.31  )
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
Subject: [PATCH 2/6] ARM: dts: stm32mp: dk1/2: build SCMI-enabled device tree
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Devices with SCMI are booted by the ARM Trusted Firmware-A out of a FIP
bundle. The FIP bundle contains barebox-stm32mp-generic-bl33.img along
with a device tree. Let's build SCMI enabled device trees as well for
the DK1 and DK2, which we already support in non-SCMI mode.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/dts/Makefile                 | 3 ++-
 arch/arm/dts/stm32mp157a-dk1-scmi.dts | 4 ++++
 arch/arm/dts/stm32mp157c-dk2-scmi.dts | 4 ++++
 3 files changed, 10 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/dts/stm32mp157a-dk1-scmi.dts
 create mode 100644 arch/arm/dts/stm32mp157c-dk2-scmi.dts

diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 339108445afa..37134a32ab0a 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -142,7 +142,8 @@ lwl-$(CONFIG_MACH_SKOV_IMX6) += imx6s-skov-imx6.dtb.o imx6dl-skov-imx6.dtb.o imx
 lwl-$(CONFIG_MACH_SKOV_IMX8MP) += imx8mp-skov.dtb.o
 lwl-$(CONFIG_MACH_SKOV_ARM9CPU) += at91-skov-arm9cpu.dtb.o
 lwl-$(CONFIG_MACH_SEEED_ODYSSEY) += stm32mp157c-odyssey.dtb.o
-lwl-$(CONFIG_MACH_STM32MP15XX_DKX) += stm32mp157c-dk2.dtb.o stm32mp157a-dk1.dtb.o
+lwl-$(CONFIG_MACH_STM32MP15XX_DKX) += stm32mp157c-dk2.dtb.o stm32mp157a-dk1.dtb.o \
+					stm32mp157c-dk2-scmi.dtb.o stm32mp157a-dk1-scmi.dtb.o
 lwl-$(CONFIG_MACH_STM32MP13XX_DK) += stm32mp135f-dk.dtb.o
 lwl-$(CONFIG_MACH_LXA_MC1) += stm32mp157c-lxa-mc1.dtb.o
 lwl-$(CONFIG_MACH_STM32MP15X_EV1) += stm32mp157c-ev1.dtb.o
diff --git a/arch/arm/dts/stm32mp157a-dk1-scmi.dts b/arch/arm/dts/stm32mp157a-dk1-scmi.dts
new file mode 100644
index 000000000000..7092b3af9fe5
--- /dev/null
+++ b/arch/arm/dts/stm32mp157a-dk1-scmi.dts
@@ -0,0 +1,4 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR BSD-3-Clause)
+
+#include <arm/st/stm32mp157a-dk1-scmi.dts>
+#include "stm32mp15xx-dkx.dtsi"
diff --git a/arch/arm/dts/stm32mp157c-dk2-scmi.dts b/arch/arm/dts/stm32mp157c-dk2-scmi.dts
new file mode 100644
index 000000000000..7f015319867a
--- /dev/null
+++ b/arch/arm/dts/stm32mp157c-dk2-scmi.dts
@@ -0,0 +1,4 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR BSD-3-Clause)
+
+#include <arm/st/stm32mp157c-dk2-scmi.dts>
+#include "stm32mp15xx-dkx.dtsi"
-- 
2.39.2



