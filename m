Delivery-date: Mon, 17 Oct 2022 09:11:41 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1okKHm-00BNj8-Jc
	for lore@lore.pengutronix.de; Mon, 17 Oct 2022 09:11:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1okKHk-0005u0-EK
	for lore@pengutronix.de; Mon, 17 Oct 2022 09:11:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Qjx9E8QiptdGp+DdfgQZ7L9rk59oBKu6zymeGcU37uQ=; b=QygECYwPVr80c7AERWzZ1aFk+U
	L/FCixVVqC3/ept6O3pw8urjG087/EcdDt1cTbaAn33k1S0vtbl3t1yrnEVjkT+5xjM1aRCfUx6Dm
	66BjUwMOzcf+1I5Gh9wY7I9mIT7liw3g3RilREdtiW2UxQj9acvO2iXdwVU3zb4AOKkIaKVba73lC
	0aP4QDHiilrQ18eEh2o44uhKHKh9BYvBTRFRG1PpYrEvN/pX3EW9GhQydfpI6g1JvloJH3BIZ1x19
	Q6aGY1enwW+xFtfGR8seZmIiGXw2CbDooF5brr9BTvB23vrNc2LsmvCvkJkiUmAv1+mM44Qpzh3lT
	luROpy2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okKGU-008Mid-Ds; Mon, 17 Oct 2022 07:10:22 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okKGD-008MZl-1o
	for barebox@lists.infradead.org; Mon, 17 Oct 2022 07:10:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1okKGB-0004xs-AY; Mon, 17 Oct 2022 09:10:03 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1okKGA-0021UV-L2; Mon, 17 Oct 2022 09:10:02 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1okKG8-0067Ov-Qf; Mon, 17 Oct 2022 09:10:00 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 17 Oct 2022 09:10:00 +0200
Message-Id: <20221017071000.1458292-9-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221017071000.1458292-1-a.fatoum@pengutronix.de>
References: <20221017071000.1458292-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221017_001005_151720_3259914F 
X-CRM114-Status: GOOD (  12.21  )
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
Subject: [PATCH 8/8] ARM: stm32mp: mark iwdg2 with barebox,restart-warm-bootrom
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

All STM32MP1 DTs already include their respective barebox SoC header, so
set barebox,restart-warm-bootrom there, so users can portably run:

  tamp.reboot_mode.next=serial reset -w

To get into DFU mode.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/boards/stm32mp.rst   | 6 +++++-
 arch/arm/dts/stm32mp131.dtsi       | 4 ++++
 arch/arm/dts/stm32mp151.dtsi       | 4 ++++
 drivers/clk/clk-stm32mp1.c         | 2 +-
 drivers/power/reset/stm32-reboot.c | 6 ++++--
 include/soc/stm32/reboot.h         | 6 ++++--
 6 files changed, 22 insertions(+), 6 deletions(-)

diff --git a/Documentation/boards/stm32mp.rst b/Documentation/boards/stm32mp.rst
index 4cdd281a9e14..813117a04f22 100644
--- a/Documentation/boards/stm32mp.rst
+++ b/Documentation/boards/stm32mp.rst
@@ -164,9 +164,13 @@ normal barebox functionality like creating a DFU-gadget in barebox,
 Fastboot/USB mass storage ... etc.
 
 The FIP image containing barebox can be generated as described in
-137::ref:`stm32mp_fip`. Upstream TF-A doesn't support DFU for
+:ref:`stm32mp_fip`. Upstream TF-A doesn't support DFU for
 SSBLs using the legacy stm32image format.
 
+DFU mode can be forced via :ref:`reboot_mode` from a booted system with::
+
+  tamp.reboot_mode.next=serial reset -w
+
 Boot source selection
 ---------------------
 
diff --git a/arch/arm/dts/stm32mp131.dtsi b/arch/arm/dts/stm32mp131.dtsi
index 2ecad85f086e..89a7ffcb814f 100644
--- a/arch/arm/dts/stm32mp131.dtsi
+++ b/arch/arm/dts/stm32mp131.dtsi
@@ -12,3 +12,7 @@
 		reg = <0x5a003000 0x1000>;
 	};
 };
+
+&iwdg2 {
+	barebox,restart-warm-bootrom;
+};
diff --git a/arch/arm/dts/stm32mp151.dtsi b/arch/arm/dts/stm32mp151.dtsi
index ac6536a556a9..d3e924dc0072 100644
--- a/arch/arm/dts/stm32mp151.dtsi
+++ b/arch/arm/dts/stm32mp151.dtsi
@@ -37,6 +37,10 @@
 	barebox,provide-mac-address = <&ethernet0 0x39>;
 };
 
+&iwdg2 {
+	barebox,restart-warm-bootrom;
+};
+
 &tamp {
 	reboot_mode_tamp: reboot-mode {
 		compatible = "syscon-reboot-mode";
diff --git a/drivers/clk/clk-stm32mp1.c b/drivers/clk/clk-stm32mp1.c
index c4b03e9f6d74..6753a3689085 100644
--- a/drivers/clk/clk-stm32mp1.c
+++ b/drivers/clk/clk-stm32mp1.c
@@ -2280,7 +2280,7 @@ static int stm32mp1_rcc_init(struct device_d *dev)
 	if (ret)
 		return ret;
 
-	stm32mp_system_restart_init(base);
+	stm32mp_system_restart_init(dev);
 	return 0;
 }
 
diff --git a/drivers/power/reset/stm32-reboot.c b/drivers/power/reset/stm32-reboot.c
index 809531e71396..147b4d9d8164 100644
--- a/drivers/power/reset/stm32-reboot.c
+++ b/drivers/power/reset/stm32-reboot.c
@@ -108,17 +108,19 @@ static void stm32_set_reset_reason(struct stm32_reset *priv,
 		reset_source_to_string(type), reg);
 }
 
-void stm32mp_system_restart_init(void __iomem *base)
+void stm32mp_system_restart_init(struct device_d *dev)
 {
 	struct stm32_reset *priv;
+	struct device_node *np = dev_of_node(dev);
 
 	priv = xzalloc(sizeof(*priv));
 
-	priv->base = base;
+	priv->base = of_iomap(np, 0);
 
 	priv->restart.name = "stm32-rcc";
 	priv->restart.restart = stm32mp_rcc_restart_handler;
 	priv->restart.priority = 200;
+	priv->restart.of_node = np;
 
 	restart_handler_register(&priv->restart);
 
diff --git a/include/soc/stm32/reboot.h b/include/soc/stm32/reboot.h
index d6c731f59f74..cf0d0286e753 100644
--- a/include/soc/stm32/reboot.h
+++ b/include/soc/stm32/reboot.h
@@ -5,10 +5,12 @@
 
 #include <linux/compiler.h>
 
+struct device_d;
+
 #ifdef CONFIG_RESET_STM32
-void stm32mp_system_restart_init(void __iomem *rcc);
+void stm32mp_system_restart_init(struct device_d *rcc);
 #else
-static inline void stm32mp_system_restart_init(void __iomem *rcc)
+static inline void stm32mp_system_restart_init(struct device_d *rcc)
 {
 }
 #endif
-- 
2.30.2



