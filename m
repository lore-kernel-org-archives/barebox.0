Delivery-date: Fri, 16 Sep 2022 14:51:34 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oZAog-006g3U-5k
	for lore@lore.pengutronix.de; Fri, 16 Sep 2022 14:51:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oZAoe-0002wb-NI
	for lore@pengutronix.de; Fri, 16 Sep 2022 14:51:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=sPeyiFqHl0JrIOSl+7cKxh2Ll1QdlOkQbRwXLW+hZC8=; b=U7NV+uyeaPE2/EJjiZqu4d6+GI
	WCvlrYrDL7btvvZchm71wRwXbmOFLhTN61akuEC6JvohPvY9xswZ6TELUN0IkUqFSuUMvR9vgCYsG
	c8wA71xUn27qz/mDm2a7Fk3zdBtj5wg++FyphCES9GYQeo5qQjOBJkYBcXiZ4WyOjwt9l+pkWMepe
	g72jpRqIVvrP5/RX1N1+k/GkR7tWS9FhXgDtfzdo+K39UTdCNhsta2h78gyyIvPylMDnvCtm2odZY
	b6kWA54oy389m67Um99esHhkpJro3ncnLccIwjCkxTsqtfKjgbXcsZsjsK3WZsr+waSMVFMX+7Tl6
	eS6uYfPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZAn1-00DLTl-Au; Fri, 16 Sep 2022 12:49:51 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZAmw-00DLQz-2q
	for barebox@lists.infradead.org; Fri, 16 Sep 2022 12:49:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oZAmu-0002dq-0u; Fri, 16 Sep 2022 14:49:44 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oZAmu-0015SZ-Pl; Fri, 16 Sep 2022 14:49:43 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oZAms-00Fjv4-Nl; Fri, 16 Sep 2022 14:49:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 16 Sep 2022 14:49:42 +0200
Message-Id: <20220916124942.3751131-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220916_054946_151756_C470B6CA 
X-CRM114-Status: GOOD (  18.24  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] net: Bring up all interfaces before going interactive
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

So far we only bring up network interfaces when we actually need them.
This means we could be idling in the shell for long and once the user
decides to do networking he has to wait for the link to be established.
We can do better: Before going interactive bring up all known network
interfaces which makes the links established when the user needs them.

To implement this we have to rework carrier checking a bit, because
otherwise barebox would wait for the links to be established before
dropping to the shell.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/startup.c |  3 +++
 include/net.h    |  3 +++
 net/eth.c        | 34 +++++++++++++++++++++-------------
 3 files changed, 27 insertions(+), 13 deletions(-)

diff --git a/common/startup.c b/common/startup.c
index f53b73f81a..f63a0ae7d5 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -37,6 +37,7 @@
 #include <linux/ctype.h>
 #include <watchdog.h>
 #include <glob.h>
+#include <net.h>
 #include <bselftest.h>
 
 extern initcall_t __barebox_initcalls_start[], __barebox_early_initcalls_end[],
@@ -208,6 +209,8 @@ enum autoboot_state do_autoboot_countdown(void)
 				&outkey);
 	command_slice_acquire();
 
+	eth_open_all();
+
 	if (ret == 0)
 		autoboot_state = AUTOBOOT_BOOT;
 	else if (menu_exists && outkey == 'm')
diff --git a/include/net.h b/include/net.h
index 310bf5169d..338033d698 100644
--- a/include/net.h
+++ b/include/net.h
@@ -79,6 +79,8 @@ struct eth_device {
 #define ETH_MODE_STATIC 1
 #define ETH_MODE_DISABLED 2
 	unsigned int global_mode;
+
+	uint64_t last_link_check;
 };
 
 #define dev_to_edev(d) container_of(d, struct eth_device, dev)
@@ -109,6 +111,7 @@ int eth_open(struct eth_device *edev);
 void eth_close(struct eth_device *edev);
 int eth_send(struct eth_device *edev, void *packet, int length);	   /* Send a packet		*/
 int eth_rx(void);			/* Check for received packets	*/
+void eth_open_all(void);
 struct eth_device *of_find_eth_device_by_node(struct device_node *np);
 
 /* associate a MAC address to a ethernet device. Should be called by
diff --git a/net/eth.c b/net/eth.c
index bc641dc8e4..8f6ff7db3a 100644
--- a/net/eth.c
+++ b/net/eth.c
@@ -20,8 +20,6 @@
 #include <linux/ctype.h>
 #include <linux/stat.h>
 
-static uint64_t last_link_check;
-
 LIST_HEAD(netdev_list);
 
 struct eth_ethaddr {
@@ -173,7 +171,7 @@ int eth_complete(struct string_list *sl, char *instr)
 /*
  * Check for link if we haven't done so for longer.
  */
-static int eth_carrier_check(struct eth_device *edev, int force)
+static int eth_carrier_check(struct eth_device *edev, bool may_wait)
 {
 	int ret;
 
@@ -183,15 +181,17 @@ static int eth_carrier_check(struct eth_device *edev, int force)
 	if (!edev->phydev)
 		return 0;
 
-	if (force)
-		phy_wait_aneg_done(edev->phydev);
-
-	if (force || is_timeout(last_link_check, 5 * SECOND) ||
-			!edev->phydev->link) {
+	if (!edev->last_link_check ||
+	    is_timeout(edev->last_link_check, 5 * SECOND)) {
 		ret = phy_update_status(edev->phydev);
 		if (ret)
 			return ret;
-		last_link_check = get_time_ns();
+		edev->last_link_check = get_time_ns();
+	}
+
+	if (may_wait && !edev->phydev->link) {
+		phy_wait_aneg_done(edev->phydev);
+		edev->last_link_check = get_time_ns();
 	}
 
 	return edev->phydev->link ? 0 : -ENETDOWN;
@@ -237,7 +237,7 @@ int eth_send(struct eth_device *edev, void *packet, int length)
 	if (slice_acquired(eth_device_slice(edev)))
 		return eth_queue(edev, packet, length);
 
-	ret = eth_carrier_check(edev, 0);
+	ret = eth_carrier_check(edev, true);
 	if (ret)
 		return ret;
 
@@ -258,7 +258,7 @@ static void eth_do_work(struct eth_device *edev)
 	int ret;
 
 	if (!phy_acquired(edev->phydev)) {
-		ret = eth_carrier_check(edev, 0);
+		ret = eth_carrier_check(edev, false);
 		if (ret)
 			return;
 	}
@@ -455,12 +455,12 @@ int eth_open(struct eth_device *edev)
 	if (edev->active)
 		return 0;
 
+	edev->last_link_check = 0;
+
 	ret = edev->open(edev);
 	if (!ret)
 		edev->active = 1;
 
-	eth_carrier_check(edev, 1);
-
 	return ret;
 }
 
@@ -522,6 +522,14 @@ struct eth_device *of_find_eth_device_by_node(struct device_node *np)
 }
 EXPORT_SYMBOL(of_find_eth_device_by_node);
 
+void eth_open_all(void)
+{
+	struct eth_device *edev;
+
+	list_for_each_entry(edev, &netdev_list, list)
+		eth_open(edev);
+}
+
 static int of_populate_ethaddr(void)
 {
 	char str[sizeof("xx:xx:xx:xx:xx:xx")];
-- 
2.30.2



