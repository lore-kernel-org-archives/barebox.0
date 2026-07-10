Delivery-date: Fri, 10 Jul 2026 12:28:03 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wi8Sh-002Dz6-2y
	for lore@lore.pengutronix.de;
	Fri, 10 Jul 2026 12:28:03 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 62AD8202014
	for <lore@pengutronix.de>; Fri, 10 Jul 2026 12:28:03 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=R+d2mVxJ;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=fCB/Fn/IPTPEh7/5UJWgRLJHsppT59IrF9uRAmFpNfY=; b=R+d2mVxJfdPdLY3UF9lXhC1A/j
	9Jx9S1m+eKyzwkEGjEXAOw1VH2Sp5RXywSWjshJDexbAe0V8ADD09/erXg5az6Cqs2mV2X746d/5n
	cWhuZXmR8T2pbM+ms3JvvCyiE2uI4jPW4fGRbFryIiPkqnS78VWMdph+KucgKJjQ7UAtNoM58lHLo
	GlxYPT/SILRj56zEr9pgHICkOZjoCE1zX+35aO6mlnuzPVDTpLiPCh3s2YyKcNt9xObYNP6IGAent
	esnCOUgOPQ34v7cfk6JoNIlFeIvY/BJqc8Ggy8rCvgoZu/qIO29aSGRchmx8cGTUjYjGGPQMh3krf
	tC4rr03g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wi8RS-00000004hbV-29bT;
	Fri, 10 Jul 2026 10:26:46 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wi8RP-00000004hZk-0Ktm
	for barebox@lists.infradead.org;
	Fri, 10 Jul 2026 10:26:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 69240201FCB;
	Fri, 10 Jul 2026 12:26:39 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wi8RL-00143V-17;
	Fri, 10 Jul 2026 12:26:39 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wi8RL-00000006slc-0ujd;
	Fri, 10 Jul 2026 12:26:39 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Subject: [PATCH] net: phy: defer PHY reset settle time off the boot path
Date: Fri, 10 Jul 2026 12:26:38 +0200
Message-ID: <20260710102638.1640479-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260710_032643_276826_06D41D55 
X-CRM114-Status: GOOD (  27.25  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  of_mdiobus_register() reset each PHY by asserting its reset
    GPIO, waiting the full reset-assert and reset-deassert delays inline, and
    only then registering the PHY (which reads its ID over MDIO). Wait [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
X-Spamd-Result: default: False [-5.11 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:1101:1d::28:received,2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[pengutronix.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[2a0a:edc0:0:c01:1d::a2:received];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_ALL(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	RCVD_COUNT_FIVE(0.00)[5]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 62AD8202014
X-Stat-Signature: 7yfx6wx4snbj1g4jypndgqocc35igz6t

of_mdiobus_register() reset each PHY by asserting its reset GPIO, waiting
the full reset-assert and reset-deassert delays inline, and only then
registering the PHY (which reads its ID over MDIO). Waiting for the
reset deassert adds to the startup time, so do it asynchronously

Split the reset so the (usually short) assert pulse is still done inline,
but the potentially long deassert settle time is not waited for at reset
time. of_mdiobus_reset_phy() now returns the point in time at which the
PHY becomes usable and the PHY is queued on a per-bus deferred list
instead of being registered immediately. The actual registration, and
with it the wait for the remaining settle time, happens on first access
to the bus via mdiobus_flush_deferred(), hooked into mdiobus_scan() and
eth_open_all(). This lets the settle time elapse in the background while
the rest of boot proceeds; by the time the PHY is first accessed the wait
is usually already over.

PHYs without a reset GPIO have nothing to wait for and are registered
immediately as before. The PHY ID is still read for real at registration
time, so vendor driver binding and absence detection are unchanged.

Assisted-by: Claude Opus 4.8
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/phy/mdio_bus.c | 85 ++++++++++++++++++++++++++++++++++----
 include/linux/phy.h        |  4 ++
 net/eth.c                  |  9 ++++
 3 files changed, 91 insertions(+), 7 deletions(-)

diff --git a/drivers/net/phy/mdio_bus.c b/drivers/net/phy/mdio_bus.c
index 1381f70f1c..228f59844f 100644
--- a/drivers/net/phy/mdio_bus.c
+++ b/drivers/net/phy/mdio_bus.c
@@ -18,6 +18,7 @@
 #include <gpio.h>
 #include <clock.h>
 #include <net.h>
+#include <sched.h>
 #include <errno.h>
 #include <linux/mdio.h>
 #include <linux/phy.h>
@@ -30,6 +31,18 @@
 
 DEFINE_DEV_CLASS(mii_class, "mii");
 
+/*
+ * A PHY whose reset GPIO has been deasserted but which has not been probed
+ * yet. The reset settle time elapses in the background; the PHY is only
+ * registered (and its ID read over MDIO) once the bus is first accessed.
+ */
+struct mdio_deferred_phy {
+	struct list_head list;
+	struct device_node *child;
+	u32 addr;
+	u64 settle_deadline;	/* get_time_ns() value, 0 if no reset GPIO */
+};
+
 static struct phy_device *mdio_device_create(struct mii_bus *bus, int addr)
 {
 	struct phy_device *phydev;
@@ -195,9 +208,14 @@ static bool of_mdiobus_child_is_phy(struct device_node *np)
  * Reset the PHY, based on DT info
  *
  * If np is a phy node, and the phy node contains a reset-gpios property
- * then reset the phy.
+ * then reset the phy. The (usually short) assert pulse is done inline,
+ * but the potentially long deassert settle time is not waited for here:
+ * instead the time at which the PHY becomes usable is returned so the
+ * caller can let it elapse in the background and only wait for the
+ * remainder right before the first access. Returns 0 if there is no
+ * reset GPIO.
  */
-static void of_mdiobus_reset_phy(struct mii_bus *bus, struct device_node *np)
+static u64 of_mdiobus_reset_phy(struct mii_bus *bus, struct device_node *np)
 {
 	enum of_gpio_flags of_flags;
 	u32 reset_deassert_delay;
@@ -208,7 +226,7 @@ static void of_mdiobus_reset_phy(struct mii_bus *bus, struct device_node *np)
 
 	gpio = of_get_named_gpio_flags(np, "reset-gpios", 0, &of_flags);
 	if (!gpio_is_valid(gpio))
-		return;
+		return 0;
 
 	flags = GPIOF_OUT_INIT_INACTIVE;
 	if (of_flags & OF_GPIO_ACTIVE_LOW)
@@ -218,7 +236,7 @@ static void of_mdiobus_reset_phy(struct mii_bus *bus, struct device_node *np)
 	if (ret) {
 		dev_err(&bus->dev, "failed to request reset gpio for: %s\n",
 			np->name);
-		return;
+		return 0;
 	}
 
 	reset_assert_delay = DEFAULT_GPIO_RESET_ASSERT;
@@ -232,7 +250,8 @@ static void of_mdiobus_reset_phy(struct mii_bus *bus, struct device_node *np)
 	gpio_set_active(gpio, 1);
 	udelay(reset_assert_delay);
 	gpio_set_active(gpio, 0);
-	udelay(reset_deassert_delay);
+
+	return get_time_ns() + (u64)reset_deassert_delay * 1000;
 }
 
 /**
@@ -267,8 +286,28 @@ static int of_mdiobus_register(struct mii_bus *mdio, struct device_node *np)
 		of_pinctrl_select_state_default(child);
 
 		if (of_mdiobus_child_is_phy(child)) {
-			of_mdiobus_reset_phy(mdio, child);
-			of_mdiobus_register_phy(mdio, child, addr);
+			struct mdio_deferred_phy *dp;
+			u64 settle_deadline;
+
+			/* Assert/deassert the reset now. */
+			settle_deadline = of_mdiobus_reset_phy(mdio, child);
+			if (!settle_deadline) {
+				/* No reset GPIO, nothing to wait for. */
+				of_mdiobus_register_phy(mdio, child, addr);
+				continue;
+			}
+
+			/*
+			 * Defer the settle wait and the actual registration
+			 * (which reads the PHY ID over MDIO) until the bus is
+			 * first accessed. This keeps the reset settle time off
+			 * the boot path.
+			 */
+			dp = xzalloc(sizeof(*dp));
+			dp->child = child;
+			dp->addr = addr;
+			dp->settle_deadline = settle_deadline;
+			list_add_tail(&dp->list, &mdio->deferred_phys);
 		} else {
 			of_mdiobus_register_device(mdio, child, addr);
 		}
@@ -277,6 +316,33 @@ static int of_mdiobus_register(struct mii_bus *mdio, struct device_node *np)
 	return 0;
 }
 
+/**
+ * mdiobus_flush_deferred - register PHYs whose reset was deferred
+ * @bus: target mii_bus
+ *
+ * PHYs described in the device tree have their reset asserted during
+ * of_mdiobus_register(), but their registration (and the MDIO ID read that
+ * comes with it) is deferred until the bus is actually used. Wait for any
+ * outstanding reset settle time to elapse and register them now.
+ */
+void mdiobus_flush_deferred(struct mii_bus *bus)
+{
+	struct mdio_deferred_phy *dp, *tmp;
+
+	list_for_each_entry_safe(dp, tmp, &bus->deferred_phys, list) {
+		/* remove before registering so a reentrant flush is a no-op */
+		list_del(&dp->list);
+
+		/* usually already elapsed, so this does not wait at all */
+		while (!is_timeout_non_interruptible(dp->settle_deadline, 0))
+			resched();
+
+		of_mdiobus_register_phy(bus, dp->child, dp->addr);
+		free(dp);
+	}
+}
+EXPORT_SYMBOL(mdiobus_flush_deferred);
+
 /**
  * mdiobus_register - bring up all the PHYs on a given bus and attach them to bus
  * @bus: target mii_bus
@@ -295,6 +361,8 @@ int mdiobus_register(struct mii_bus *bus)
 			NULL == bus->write)
 		return -EINVAL;
 
+	INIT_LIST_HEAD(&bus->deferred_phys);
+
 	bus->dev.priv = bus;
 	bus->dev.id = DEVICE_ID_DYNAMIC;
 	dev_set_name(&bus->dev, "miibus");
@@ -350,6 +418,9 @@ struct phy_device *mdiobus_scan(struct mii_bus *bus, int addr)
 {
 	struct phy_device *phydev;
 
+	/* deferred PHYs must be registered before we can find them */
+	mdiobus_flush_deferred(bus);
+
 	if (bus->phy_map[addr])
 		return bus->phy_map[addr];
 
diff --git a/include/linux/phy.h b/include/linux/phy.h
index 26b1136b8a..5685ec5eb1 100644
--- a/include/linux/phy.h
+++ b/include/linux/phy.h
@@ -244,6 +244,9 @@ struct mii_bus {
 	bool is_multiplexed;
 
 	struct slice slice;
+
+	/* PHYs whose reset was asserted but which are not registered yet */
+	struct list_head deferred_phys;
 };
 #define to_mii_bus(d) container_of(d, struct mii_bus, dev)
 
@@ -269,6 +272,7 @@ struct mii_bus *of_mdio_find_bus(struct device_node *mdio_bus_np);
 
 int mdiobus_read(struct mii_bus *bus, int addr, u32 regnum);
 int mdiobus_write(struct mii_bus *bus, int addr, u32 regnum, u16 val);
+void mdiobus_flush_deferred(struct mii_bus *bus);
 
 /* phy_device: An instance of a PHY
  *
diff --git a/net/eth.c b/net/eth.c
index 37f55e0b36..ee90ad5df6 100644
--- a/net/eth.c
+++ b/net/eth.c
@@ -575,6 +575,15 @@ EXPORT_SYMBOL(of_find_eth_device_by_node);
 void eth_open_all(void)
 {
 	struct eth_device *edev;
+	struct mii_bus *mii;
+
+	/*
+	 * PHY registration is deferred until an MDIO bus is first used. Flush
+	 * any pending registrations now so the PHY devices are present when
+	 * entering interactive mode, even for buses no netdev connects to.
+	 */
+	for_each_mii_bus(mii)
+		mdiobus_flush_deferred(mii);
 
 	for_each_netdev(edev) {
 		if (edev->global_mode == ETH_MODE_DISABLED)
-- 
2.47.3



