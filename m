Delivery-date: Thu, 15 Feb 2024 17:45:24 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1raerU-007dni-0s
	for lore@lore.pengutronix.de;
	Thu, 15 Feb 2024 17:45:24 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1raerT-0006wa-Go
	for lore@pengutronix.de; Thu, 15 Feb 2024 17:45:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CfwdmeY0ZVq4YknhOlLUC1CBy8NT2SPPkhfNhM6hQuo=; b=VLIQN/HKY3GWOapIm4q04Nwn8D
	i8e3SErT54xgDEuPhC3WFAhOg7lsTjl/L87mJRq5WiPHraWT82bBCRk54hAiiZxyGX6pE86RvxLfy
	YhgDkh2xV1SH3CffTr/Hm8U1kU8kTFmMvt7AnmY+4nx5r65pr7G8+2codPaJoe61lQKuwchze7aso
	0W5akrpzH171Sdl5eyHKbYxkfzbvN3ce85ioFVYUbQmKv9IHPrb4yaxsuj3FOh70HFSgpD04aR38s
	nAZADT5n0N/6SLU9UgyQk7cEctmIYP1sUTKeA5YlgcQWu/uul06o2mM8v6y1Kf2TmbIMkE5n32jD3
	jdKnhh2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raer3-0000000H1mL-0cWE;
	Thu, 15 Feb 2024 16:44:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raeqx-0000000H1iQ-2j8L
	for barebox@lists.infradead.org;
	Thu, 15 Feb 2024 16:44:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1raeqo-0006dB-CH; Thu, 15 Feb 2024 17:44:42 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1raeqn-000v3w-SO; Thu, 15 Feb 2024 17:44:41 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1raecn-009YG0-1v;
	Thu, 15 Feb 2024 17:30:13 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Sam Ravnborg <sam@ravnborg.org>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 15 Feb 2024 17:30:09 +0100
Message-Id: <20240215163009.2172795-16-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240215163009.2172795-1-a.fatoum@pengutronix.de>
References: <20240215163009.2172795-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240215_084451_802928_FF9264D0 
X-CRM114-Status: GOOD (  17.73  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v3 15/15] usb: ohci-at91: fix possible hang chainloading barebox
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

barebox, like Linux, will consider disabling parents when disabling a
child clock. In the AT91 OHCI driver ported to barebox from Linux, this
leads to the USB clock shutdown during device shutdown to propagate up
to PLLB, which is also disabled.

On probe of the kernel driver, the USB clock rate is set to 48MHz, which
propagates up to the PLL, which is powered on again. In barebox, this clock
rate propagation does not happen and the PLL is only initially
configured in the first stage bootloader.

This has the effect that chainloading barebox from within barebox will
hang as the first barebox disables PLLB on shutdown and the second
barebox never power it on.

The proper solution would be to support propagation of clock rate change
requests, but till we have that, patch the driver, so only the immediate
clock is disabled and not its parents.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v3:
  - new patch
---
 drivers/clk/clk.c            | 12 +++++++++---
 drivers/usb/host/ohci-at91.c | 13 +++++++++++--
 include/linux/clk.h          | 20 ++++++++++++++++++--
 3 files changed, 38 insertions(+), 7 deletions(-)

diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
index d3f5d5e83880..03533b61df0a 100644
--- a/drivers/clk/clk.c
+++ b/drivers/clk/clk.c
@@ -66,7 +66,7 @@ int clk_enable(struct clk *clk)
 	return 0;
 }
 
-void clk_disable(struct clk *clk)
+void clk_disable_one(struct clk *clk)
 {
 	struct clk_hw *hw;
 
@@ -91,11 +91,17 @@ void clk_disable(struct clk *clk)
 	if (!clk->enable_count) {
 		if (clk->ops->disable)
 			clk->ops->disable(hw);
-
-		clk_parent_disable(clk);
 	}
 }
 
+void clk_disable(struct clk *clk)
+{
+	clk_disable_one(clk);
+
+	if (!IS_ERR_OR_NULL(clk) && !clk->enable_count)
+		clk_parent_disable(clk);
+}
+
 unsigned long clk_get_rate(struct clk *clk)
 {
 	struct clk_hw *hw;
diff --git a/drivers/usb/host/ohci-at91.c b/drivers/usb/host/ohci-at91.c
index 867c0977be78..447d928ad4ce 100644
--- a/drivers/usb/host/ohci-at91.c
+++ b/drivers/usb/host/ohci-at91.c
@@ -50,8 +50,17 @@ static int at91_start_clock(struct ohci_at91_priv *ohci_at91)
 
 static void at91_stop_clock(struct ohci_at91_priv *ohci_at91)
 {
-	clk_disable(ohci_at91->fclk);
-	clk_disable(ohci_at91->iclk);
+	/*
+	 * We don't want to use clk_disable() here as that would
+	 * propagate up until PLLB is disabled breaking chainloadig
+	 * barebox from barebox. The proper solution would be to
+	 * set rate to 48MHz in at91_start_clock() and teach the CCF
+	 * to propagate up rate requests like Linux does, but till we
+	 * have that, we take the easy way out and ensure PLLB remains
+	 * enabled with the parameters that the first stage configured.
+	 */
+	clk_disable_one(ohci_at91->fclk);
+	clk_disable_one(ohci_at91->iclk);
 }
 
 static int at91_ohci_probe_dt(struct device *dev)
diff --git a/include/linux/clk.h b/include/linux/clk.h
index fe0b1ce3e36c..6be6e91e9eee 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -83,11 +83,27 @@ int clk_enable(struct clk *clk);
  *
  * Implementation detail: if the clock source is shared between
  * multiple drivers, clk_enable() calls must be balanced by the
- * same number of clk_disable() calls for the clock source to be
- * disabled.
+ * same number of clk_disable() or clk_disable_one() calls for
+ * the clock source to be disabled.
  */
 void clk_disable(struct clk *clk);
 
+/**
+ * clk_disable_one - inform the system when a specific clock is no longer required.
+ * @clk: clock source
+ *
+ * Inform the system that a clock source is no longer required by
+ * a driver and may be shut down. Unlike clk_disable(), this only
+ * affects the specified @clk and can't result in disabling any
+ * parents.
+ *
+ * Implementation detail: if the clock source is shared between
+ * multiple drivers, clk_enable() calls must be balanced by the
+ * same number of clk_disable() or clk_disable_one() calls for
+ * the clock source to be disabled.
+ */
+void clk_disable_one(struct clk *clk);
+
 /**
  * clk_get_rate - obtain the current clock rate (in Hz) for a clock source.
  *		  This is only valid once the clock source has been enabled.
-- 
2.39.2



