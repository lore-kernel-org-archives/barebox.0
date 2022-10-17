Delivery-date: Mon, 17 Oct 2022 09:11:50 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1okKHv-00BNk4-8h
	for lore@lore.pengutronix.de; Mon, 17 Oct 2022 09:11:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1okKHs-0005yz-CX
	for lore@pengutronix.de; Mon, 17 Oct 2022 09:11:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=O9bN9cFVEhQ3gWxkjaF+/5S/uZ6bEyQxE4+g8vZ0tPA=; b=oUXDmKlaf6F2u7QaFF/G5rBwz2
	AXePb3/8G8MLaSlR0xiD/57uMfYUIBkbGATbS/Y5dvkKC8rNQEuMEhBHnpMYG3PUpDudJqdo0TlAl
	UM2TLqmBXYV/LEDNC2OimL2vI4ubygGMQb2OMW+XEtAhPF0aIDMgm9Is6cYEHF6tf/uE7WLYLSt9k
	/WtHaZCWM+L8jvJA3B/unvEweOB61N4r/ADxPGY13P11T2qlT17UBNziOyqB1X/ZRlTSViPaL1ZFx
	wfVqrgIE43D8fqAulFh5U5xHMeccX0qVTahjfdWFCgzhY1Z3RNoK7zsx3BjFBm9DykM6OPmgNvYcH
	ym6AKZWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okKGc-008MnQ-OZ; Mon, 17 Oct 2022 07:10:30 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okKGD-008MZj-1l
	for barebox@lists.infradead.org; Mon, 17 Oct 2022 07:10:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1okKGB-0004xq-99; Mon, 17 Oct 2022 09:10:03 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1okKGA-0021UN-IR; Mon, 17 Oct 2022 09:10:02 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1okKG8-0067Os-QO; Mon, 17 Oct 2022 09:10:00 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 17 Oct 2022 09:09:59 +0200
Message-Id: <20221017071000.1458292-8-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221017071000.1458292-1-a.fatoum@pengutronix.de>
References: <20221017071000.1458292-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221017_001005_295901_6F1F45EC 
X-CRM114-Status: GOOD (  14.43  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 7/8] ARM: i.MX7: describe USB serial download boot mode
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Due to i.MX7 erratum e10574: "Watchdog: A watchdog timeout or software
trigger will not reset the SOC", we can't do warm reset via imxwd-warm
for BootROM reboot mode as we do on other i.MX SoCs.

What we can do instead though, is use the SoC's reset controller to
toggle the Cortex-A7's reset. This will have us reenter BootROM with
GPR registers intact. Forcing serial download on the i.MX7 now possible
with:

  gpr.reboot_mode.next=serial reset -w

Note that the new restart handler is not fit for general purpose.
Depending on boot medium, it may hang, because the BootROM may not
reinitialize the peripheral properly.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/configs/imx_v7_defconfig   |  2 ++
 arch/arm/dts/imx7.dtsi              | 37 +++++++++++++++++++++++++++++
 drivers/power/reset/syscon-reboot.c |  1 +
 3 files changed, 40 insertions(+)
 create mode 100644 arch/arm/dts/imx7.dtsi

diff --git a/arch/arm/configs/imx_v7_defconfig b/arch/arm/configs/imx_v7_defconfig
index d07abe28aeac..3cbec267fc87 100644
--- a/arch/arm/configs/imx_v7_defconfig
+++ b/arch/arm/configs/imx_v7_defconfig
@@ -208,6 +208,8 @@ CONFIG_REGULATOR=y
 CONFIG_REGULATOR_FIXED=y
 CONFIG_GENERIC_PHY=y
 CONFIG_USB_NOP_XCEIV=y
+CONFIG_SYSCON_REBOOT_MODE=y
+CONFIG_POWER_RESET_SYSCON=y
 CONFIG_FS_EXT4=y
 CONFIG_FS_TFTP=y
 CONFIG_FS_TFTP_MAX_WINDOW_SIZE=8
diff --git a/arch/arm/dts/imx7.dtsi b/arch/arm/dts/imx7.dtsi
new file mode 100644
index 000000000000..1c67bdc54620
--- /dev/null
+++ b/arch/arm/dts/imx7.dtsi
@@ -0,0 +1,37 @@
+/* SPDX-License-Identifier: GPL-2.0-only OR MIT */
+
+#include "imx7d-ddrc.dtsi"
+
+/ {
+	aliases {
+		gpr.reboot_mode = &reboot_mode_gpr;
+	};
+};
+
+&src {
+	compatible = "fsl,imx7d-src", "syscon", "simple-mfd";
+
+	reboot_mode_gpr: reboot-mode {
+		compatible = "barebox,syscon-reboot-mode";
+		offset = <0x94>, <0x98>; /* SRC_GPR{9,10} */
+		mask = <0xffffffff>, <0x40000000>;
+		mode-normal = <0>, <0>;
+		mode-serial = <0x00000010>, <0x40000000>;
+	};
+
+	ca7_reset: cortex-a7-reboot {
+		compatible = "syscon-reboot";
+		regmap = <&src>;
+		offset = <0x4>;
+		mask = <1>;
+		value = <1>;
+		/* This is not fit for use as general purpose reset */
+		restart-priority = <5>;
+		/*
+		 * Can't use imxwd-warm due to errata e10574:
+		 * Watchdog: A watchdog timeout or software trigger will
+		 * not reset the SOC
+		 */
+		barebox,restart-warm-bootrom;
+	};
+};
diff --git a/drivers/power/reset/syscon-reboot.c b/drivers/power/reset/syscon-reboot.c
index 2dbb6c1ddcb8..b6b8db75caba 100644
--- a/drivers/power/reset/syscon-reboot.c
+++ b/drivers/power/reset/syscon-reboot.c
@@ -71,6 +71,7 @@ static int syscon_reboot_probe(struct device_d *dev)
 	ctx->restart_handler.name = "syscon-reboot";
 	ctx->restart_handler.restart = syscon_restart_handle;
 	ctx->restart_handler.priority = 192;
+	ctx->restart_handler.of_node = dev->device_node;
 
 	err = restart_handler_register(&ctx->restart_handler);
 	if (err)
-- 
2.30.2



