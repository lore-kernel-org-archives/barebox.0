Delivery-date: Fri, 21 Jul 2023 13:09:12 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qMo0X-005PLE-O8
	for lore@lore.pengutronix.de; Fri, 21 Jul 2023 13:09:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qMo0V-0001Gm-8F
	for lore@pengutronix.de; Fri, 21 Jul 2023 13:09:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=NjqDpNq4dB79brL9CB1iA02VMCIIHairV+zYq0lWALY=; b=O0YDryB8rm69P1jNDF6Ztn5qI8
	gVNXGBElrKm/GxjTkIOjNRdpyjg6p5nRiCgopiIpWP4tdC/Q0OuEuCpK9id9wuK4T7xPMkyGVJyHq
	PFkr+qsgj+fDvgzP5bxqHQbK2YAOH7W4wBjRImOKF8g/ou3FeZr7JA3Tkdd21H7Q2A9/A1O0U0ZWH
	YY3pgTW4XhT9/BJZQlrpUz9r31YPUSZTmLplbCzuObE2RaY8E7gCg/fWwuwqCp8GYGZRw/1I50iiD
	yVZ2pJX9D5RPW6q2CjmbB3LHCsP7mi1oF9XpqXCT9I1AdrfMDrTDYt2FpL4TJJIK91SA9jFB+U5c0
	lnCzCukg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qMnzD-00DsVj-2M;
	Fri, 21 Jul 2023 11:07:51 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qMnzA-00DsUc-2z
	for barebox@lists.infradead.org;
	Fri, 21 Jul 2023 11:07:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qMnz8-00012m-63; Fri, 21 Jul 2023 13:07:46 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qMnz7-0012qo-HO; Fri, 21 Jul 2023 13:07:45 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qMnz7-00FWIU-0r;
	Fri, 21 Jul 2023 13:07:45 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 21 Jul 2023 13:07:43 +0200
Message-Id: <20230721110744.3699054-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230721_040748_986409_F701DC13 
X-CRM114-Status: GOOD (  13.15  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/2] net: ifup: check for ctrl+c during ifup
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

When global.net.server is set, barebox will attempt to bring up all
interfaces on ifup -a1 to see which interface can resolve it.

That can take a while and there's no way to abort that, so stick in a
ctrlc(), so user can change their mind (and e.g. remove
global.net.server, so ifup -a1 takes first interface that has link up).

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 net/ifup.c | 24 ++++++++++++++++--------
 1 file changed, 16 insertions(+), 8 deletions(-)

diff --git a/net/ifup.c b/net/ifup.c
index 64298b44ebf3..993d2a115fda 100644
--- a/net/ifup.c
+++ b/net/ifup.c
@@ -276,7 +276,7 @@ static bool ifup_edev_need_conf(struct eth_device *edev)
 		edev->global_mode != ETH_MODE_DISABLED;
 }
 
-static void __ifup_all_parallel(unsigned flags)
+static int __ifup_all_parallel(unsigned flags)
 {
 	struct eth_device *edev;
 	unsigned netdev_count = 0;
@@ -292,6 +292,9 @@ static void __ifup_all_parallel(unsigned flags)
 	start = get_time_ns();
 	while (netdev_count && !is_timeout(start, PHY_AN_TIMEOUT * SECOND)) {
 		for_each_netdev(edev) {
+			if (ctrlc())
+				return -EINTR;
+
 			if (!ifup_edev_need_conf(edev))
 				continue;
 
@@ -306,21 +309,28 @@ static void __ifup_all_parallel(unsigned flags)
 			netdev_count--;
 
 			if ((flags & IFUP_FLAG_UNTIL_NET_SERVER) && net_get_server())
-				return;
+				return 0;
 		}
 	}
+
+	return 0;
 }
 
-static void __ifup_all_sequence(unsigned flags)
+static int __ifup_all_sequence(unsigned flags)
 {
 	struct eth_device *edev;
 
 	for_each_netdev(edev) {
+		if (ctrlc())
+			return -EINTR;
+
 		ifup_edev(edev, flags);
 
 		if ((flags & IFUP_FLAG_UNTIL_NET_SERVER) && net_get_server())
-			return;
+			return 0;
 	}
+
+	return 0;
 }
 
 int ifup_all(unsigned flags)
@@ -358,11 +368,9 @@ int ifup_all(unsigned flags)
 		flags &= ~IFUP_FLAG_UNTIL_NET_SERVER;
 
 	if (flags & IFUP_FLAG_PARALLEL)
-		__ifup_all_parallel(flags);
+		return __ifup_all_parallel(flags);
 	else
-		__ifup_all_sequence(flags);
-
-	return 0;
+		return __ifup_all_sequence(flags);
 }
 
 void ifdown_all(void)
-- 
2.39.2



