Delivery-date: Sun, 25 Oct 2026 10:41:40 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xKujU-0033Kx-1b
	for lore@lore.pengutronix.de;
	Sun, 25 Oct 2026 10:41:40 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 7A934201709
	for <lore@pengutronix.de>; Sun, 25 Oct 2026 10:41:40 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=CffLi+5I;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792921300; a=rsa-sha256;
	cv=none;
	b=KCizMf37kBC4en07hcm3bak2sE65nMF128m1+0aKnOOz8T+6BHOdIIcq8rxyIJ7wPhqQ2i
	gnAz1DFvLbQh/pC27XYb/onSUm4eUkqDKzX9BfMADE0Pr5j/skJTEzxzvWqP25j7HK1sUZ
	dxEAS80cHqQ8AwOJyzCtAUBaMmCvisPea2DTdCzKCFe+jm4RGkK9vrU+T/5kzPNphDXQTH
	H++aH3XNlgZ5tcAYDY1SlDvgOI9ZDpoUboTQ9DRpgkHPZsGSAT03B3hXo6EvXk/XW6Anlz
	HVOBhqernxCiWfyresE9vsk15xTR+qMlwZVk3CuEe9E9GQGgD4BPZtqHRyRsRQ==
ARC-Authentication-Results: i=1;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=CffLi+5I;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792921300;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=Ql8L/o4QX3d2XMOc/qFvC3oxko3yGSHj5X5eB+S2Hug=;
	b=ODhyi2NC9tjm6rWyx5xPVmzmOmz5aMFcTDi9LJHuLR7HVZH6hSh2nsS1CYeeKXTXFmsg4G
	sABnm2qboBjhdbwyqP4gvNMJN9SmeQwwJIBAC658Jwqh+tE3XDriAeZimObl+d8lwQCKhb
	WFXgNlhDf5cfREydmY3ywpAgKnOctqFikAdVPP+0CvkYFPHM3Kpxz8Ojpc2YcTXlFYEmhX
	2YxPxqkT0bJWAk8lh4H8cNzfKIiuSqdgoqn6i1EPBXlwm+dHLz/VAhd+m9Nd+EpQifLozD
	ZO+Likw1vZG15jw5q0Ocj7ee68gMAoEwWYIWPl/TeLje1iCzKHsveA2aLw+FPA==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=Ql8L/o4QX3d2XMOc/qFvC3oxko3yGSHj5X5eB+S2Hug=; b=CffLi+5IVNimoB
	zOu/EsipgSpMGTaE2/YQpC8Ou+8l9BSs+k0CkMmr9pmVflSL01Z8o+vsfTWsH/oeJwB/A4FOUIiVK
	f0MS47LA6s89Lq27IsqCffCxoczjLH0ss4+06hmWJrf66yuQMPULhwMMV6h0k+iu2jur0Wp2eeqBW
	Pei7xix9lwV9zOEA3W0Kb/dn+bys+sgXYnX1lVYbeUSwn1pCM49kx/SnQR8l9aP5oZPPvxnVIRV7b
	2kPJl6uAJ6AdNfqsRE3lSgBY08nqwDZgZyktfE0Ohb5Yj8WjOVwmnl68MHpOuCNl5zlF9ljuRA6gd
	qTuuNaQxVripdyxeIofQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKudm-00000000vY6-0lqb;
	Sun, 25 Oct 2026 09:35:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKudh-00000000vWU-2bdX
	for barebox@lists.infradead.org;
	Sun, 25 Oct 2026 09:35:43 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1xKudf-0007Ue-Uk; Sun, 25 Oct 2026 10:35:40 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH 2/2] net: phy: mdio_bus: honour open-drain PHY reset GPIOs
Date: Sun, 25 Oct 2026 10:35:35 +0100
Message-ID: <20261025093538.2890451-2-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261025093538.2890451-1-a.fatoum@barebox.org>
References: <20261025093538.2890451-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: a.fatoum@barebox.org
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261025_023541_660340_3437E1E8 
X-CRM114-Status: GOOD (  13.26  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  The PHY reset is requested through the legacy GPIO API, which
    knows nothing about the GPIO_OPEN_DRAIN flag in the reset-gpios property.
    On the Libre Computer Alta the RTL8211F's reset line is declared [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2a0a:edc0:2:b01:1d:0:0:104 listed in]
                             [list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 7A934201709
X-Spamd-Result: default: False [-6.11 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:900:1d::77:received,2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DMARC_NA(0.00)[barebox.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=1];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@barebox.org,barebox-bounces@lists.infradead.org];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_IN_DNSWL_NONE(0.00)[2a0a:edc0:2:b01:1d::104:received];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: 3iydh78duryuiaemfn79i3tz8ndstbiy

The PHY reset is requested through the legacy GPIO API, which knows
nothing about the GPIO_OPEN_DRAIN flag in the reset-gpios property. On
the Libre Computer Alta the RTL8211F's reset line is declared open drain,
and driving it high after the pulse leaves it low: the PHY stays in reset
and is never found. Released to input, the external pull-up takes over
and the PHY answers.

Let's request the GPIO as a descriptor so gpiolib applies the flags from
the device tree, as it does for every other consumer.

Fixes: 8fd3bb0f2284 ("phylib: add support for reset-gpios")
Assisted-by: Claude:fable-5.1
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/net/phy/mdio_bus.c | 31 ++++++++++---------------------
 1 file changed, 10 insertions(+), 21 deletions(-)

diff --git a/drivers/net/phy/mdio_bus.c b/drivers/net/phy/mdio_bus.c
index 401206256127..7795fcf388d7 100644
--- a/drivers/net/phy/mdio_bus.c
+++ b/drivers/net/phy/mdio_bus.c
@@ -12,10 +12,9 @@
 #define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
 
 #include <common.h>
-#include <of_gpio.h>
 #include <driver.h>
 #include <init.h>
-#include <gpio.h>
+#include <linux/gpio/consumer.h>
 #include <clock.h>
 #include <net.h>
 #include <sched.h>
@@ -217,25 +216,16 @@ static bool of_mdiobus_child_is_phy(struct device_node *np)
  */
 static u64 of_mdiobus_reset_phy(struct mii_bus *bus, struct device_node *np)
 {
-	enum of_gpio_flags of_flags;
 	u32 reset_deassert_delay;
 	u32 reset_assert_delay;
-	unsigned long flags;
-	int gpio;
-	int ret;
+	struct gpio_desc *gpiod;
 
-	gpio = of_get_named_gpio_flags(np, "reset-gpios", 0, &of_flags);
-	if (!gpio_is_valid(gpio))
-		return 0;
-
-	flags = GPIOF_OUT_INIT_INACTIVE;
-	if (of_flags & OF_GPIO_ACTIVE_LOW)
-		flags |= GPIOF_ACTIVE_LOW;
-
-	ret = gpio_request_one(gpio, flags, np->name);
-	if (ret) {
-		dev_err(&bus->dev, "failed to request reset gpio for: %s\n",
-			np->name);
+	/* requested asserted, released below once the pulse is over */
+	gpiod = dev_gpiod_get(&bus->dev, np, "reset", GPIOD_OUT_HIGH, np->name);
+	if (IS_ERR(gpiod)) {
+		if (PTR_ERR(gpiod) != -ENOENT)
+			dev_err(&bus->dev, "failed to request reset gpio for: %s\n",
+				np->name);
 		return 0;
 	}
 
@@ -246,10 +236,9 @@ static u64 of_mdiobus_reset_phy(struct mii_bus *bus, struct device_node *np)
 	of_property_read_u32(np, "reset-deassert-us", &reset_deassert_delay);
 
 	/* reset the PHY */
-	dev_dbg(&bus->dev, "reset PHY with GPIO: %d\n", gpio);
-	gpio_set_active(gpio, 1);
+	dev_dbg(&bus->dev, "reset PHY %s\n", np->name);
 	udelay(reset_assert_delay);
-	gpio_set_active(gpio, 0);
+	gpiod_set_value(gpiod, 0);
 
 	return get_time_ns() + (u64)reset_deassert_delay * 1000;
 }
-- 
2.47.3



