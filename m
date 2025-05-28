Delivery-date: Wed, 28 May 2025 18:29:09 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKJeP-001FQe-2Z
	for lore@lore.pengutronix.de;
	Wed, 28 May 2025 18:29:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKJeN-0002Eq-K8
	for lore@pengutronix.de; Wed, 28 May 2025 18:29:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=BAhXOsGHgYNTM62/00/YMi9ea2qzkp38ufB9G4BYk9c=; b=hadyiHwyz6CU//qOOf20NNOTKK
	P+7r7sM/N57lPsodhCScccyNEjcewyqhisMgKDatAkQKtyVGQnZNdTMycieFFFitsLRSOoXLXqg7J
	YDArKgcA9obJ2SDblvn/A0I0SelAE3fPDoqP59FdLGucYSWMnz059MCZxJrSnRe9f9HBp5TyQbdTT
	cDap9M4RWptHrG2erhuEutArgegS0UwZ9S8IumJuPUbsupdYaOq8tO4sKddjmG3xfu0/x5dPHRkrp
	mP/KNwkV8c5E7DreausnOta63MUKXFWasonTf1NXurBCjt0toUTilKhKPUV+9yAy4kgIiGc2V2Vvu
	CdlNhnlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKJdj-0000000DfNB-1km3;
	Wed, 28 May 2025 16:28:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKIxt-0000000DaNF-13XU
	for barebox@lists.infradead.org;
	Wed, 28 May 2025 15:45:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uKIxr-0002oJ-Qo; Wed, 28 May 2025 17:45:11 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uKIxr-000c3z-24;
	Wed, 28 May 2025 17:45:11 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uKIxr-002gSY-1n;
	Wed, 28 May 2025 17:45:11 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 28 May 2025 17:45:08 +0200
Message-Id: <20250528154508.639789-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250528_084513_301941_747EF902 
X-CRM114-Status: GOOD (  15.46  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2] net: phy: seed PRNG when PHY comes up and when generating MAC address
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The new Xorshift* RNG is seeded only from the cycle counter at startup,
which is much less entropy for the MAC address generation use case,
which used the nanosecond timestamp at generation time before the switch
to Xorshift*.

The nice thing about our new PRNG implementation is that we can call
srand_xor multiple times to keep adding entropy, so let's do that after
each PHY link up and prior to generating the MAC address.

That way we should be again at least as good as we were before the
switch to Xorshift*.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - call clocksource_srand in random_ether_addr() as well
---
 common/clock.c        | 7 +++++++
 drivers/net/phy/phy.c | 7 +++++--
 include/clock.h       | 8 ++++++++
 include/net.h         | 1 +
 4 files changed, 21 insertions(+), 2 deletions(-)

diff --git a/common/clock.c b/common/clock.c
index 517116e3b9a3..931a96865140 100644
--- a/common/clock.c
+++ b/common/clock.c
@@ -207,6 +207,13 @@ void mdelay_non_interruptible(unsigned long msecs)
 }
 EXPORT_SYMBOL(mdelay_non_interruptible);
 
+#if IN_PROPER
+void clocksource_srand(void)
+{
+	srand_xor(current_clock->read() & current_clock->mask);
+}
+#endif
+
 int init_clock(struct clocksource *cs)
 {
 	if (current_clock && cs->priority <= current_clock->priority)
diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
index 2795d09918d5..d9f50f45f441 100644
--- a/drivers/net/phy/phy.c
+++ b/drivers/net/phy/phy.c
@@ -68,11 +68,14 @@ int phy_update_status(struct phy_device *phydev)
 	if (phydev->adjust_link)
 		phydev->adjust_link(edev);
 
-	if (phydev->link)
+	if (phydev->link) {
 		dev_info(&edev->dev, "%dMbps %s duplex link detected\n",
 				phydev->speed, phydev->duplex ? "full" : "half");
-	else if (oldlink)
+		/* Add time to establish link up to RNG state */
+		clocksource_srand();
+	} else if (oldlink) {
 		dev_info(&edev->dev, "link down\n");
+	}
 
 	return 0;
 }
diff --git a/include/clock.h b/include/clock.h
index 03a38911a7a7..e28870b1e84b 100644
--- a/include/clock.h
+++ b/include/clock.h
@@ -43,6 +43,14 @@ void udelay(unsigned long usecs);
 void mdelay(unsigned long msecs);
 void mdelay_non_interruptible(unsigned long msecs);
 
+#if IN_PROPER
+void clocksource_srand(void);
+#else
+static inline void clocksource_srand(void)
+{
+}
+#endif
+
 #define SECOND ((uint64_t)(1000 * 1000 * 1000))
 #define MSECOND ((uint64_t)(1000 * 1000))
 #define USECOND ((uint64_t)(1000))
diff --git a/include/net.h b/include/net.h
index 439e0a4c9b61..870497ed0944 100644
--- a/include/net.h
+++ b/include/net.h
@@ -423,6 +423,7 @@ int generate_ether_addr(u8 *addr, int ethid);
  */
 static inline void random_ether_addr(u8 *addr)
 {
+	clocksource_srand();
 	get_noncrypto_bytes(addr, ETH_ALEN);
 	addr[0] &= 0xfe;	/* clear multicast bit */
 	addr[0] |= 0x02;	/* set local assignment bit (IEEE802) */
-- 
2.39.5



