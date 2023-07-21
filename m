Delivery-date: Fri, 21 Jul 2023 13:09:13 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qMo0Y-005PLf-Va
	for lore@lore.pengutronix.de; Fri, 21 Jul 2023 13:09:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qMo0W-0001Gz-0Q
	for lore@pengutronix.de; Fri, 21 Jul 2023 13:09:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QUVRytHWStGaQlmWs2ZM0BvaId/5EloqIvPVhBMhhUY=; b=MKeeHiKk5NFO6C850NueLfaqSQ
	ldqLhOKgjxK4bTcDZPLaZju8HsAdsipiqOEPRepWaZFwQ9cDnO2GpwBkSHlj+aLhGLxh6wLszIvJV
	zIlH9RJIrgA/cIUCpJ+Zd/aL638urMRQEJK7M14jRS0Hw8CxkModpRocGB6Jpt0kko6FLyiGhgh3f
	FpcR+98cWxrI/5TF0dKFLKp98Y484sZRcrlN9xhPD+r7LQo/pn2uvF4dC8DGy+w5uu2u28JUdeCd5
	NUnSKZmYY1tPhNIeC5G65aJgqKtMsVFNVlXq3MfGFPjMAttEURsZvReG92MH2c3E8yGL8Kn7pRfOp
	qhDuCakQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qMnzE-00DsVt-11;
	Fri, 21 Jul 2023 11:07:52 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qMnzB-00DsUe-0e
	for barebox@lists.infradead.org;
	Fri, 21 Jul 2023 11:07:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qMnz8-00012n-I6; Fri, 21 Jul 2023 13:07:46 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qMnz7-0012qr-Td; Fri, 21 Jul 2023 13:07:45 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qMnz7-00FWIX-0t;
	Fri, 21 Jul 2023 13:07:45 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 21 Jul 2023 13:07:44 +0200
Message-Id: <20230721110744.3699054-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230721110744.3699054-1-a.fatoum@pengutronix.de>
References: <20230721110744.3699054-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230721_040749_235754_DD37417E 
X-CRM114-Status: GOOD (  15.79  )
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
Subject: [PATCH 2/2] net: ifup: don't redo ifup -a1 if we have a gateway
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

ifup -a -1 is an optimization for switches that have only one port
connected: ifup will poll link on all ports in parallel and early
exit once any port got an IP address. This doesn't work when
global.net.server is set, as the first port to get link up is not
necessary one that is in a network that can resolve global.net.server.

This is needlessly restrictive: Even if global.net.server is set,
it's only a problem if no gateway was set. If there's a gateway, barebox
already knows how to resolve global.net.server, so there's no need to
try to bring up all interfaces when -1 is supplied.

This fixes the delay when using ifup -a1 multiple times in a row.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 net/ifup.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/net/ifup.c b/net/ifup.c
index 993d2a115fda..6866150d93bc 100644
--- a/net/ifup.c
+++ b/net/ifup.c
@@ -292,6 +292,9 @@ static int __ifup_all_parallel(unsigned flags)
 	start = get_time_ns();
 	while (netdev_count && !is_timeout(start, PHY_AN_TIMEOUT * SECOND)) {
 		for_each_netdev(edev) {
+			if ((flags & IFUP_FLAG_UNTIL_NET_SERVER) && net_get_server())
+				return 0;
+
 			if (ctrlc())
 				return -EINTR;
 
@@ -307,9 +310,6 @@ static int __ifup_all_parallel(unsigned flags)
 				continue;
 
 			netdev_count--;
-
-			if ((flags & IFUP_FLAG_UNTIL_NET_SERVER) && net_get_server())
-				return 0;
 		}
 	}
 
@@ -321,13 +321,13 @@ static int __ifup_all_sequence(unsigned flags)
 	struct eth_device *edev;
 
 	for_each_netdev(edev) {
+		if ((flags & IFUP_FLAG_UNTIL_NET_SERVER) && net_get_server())
+			return 0;
+
 		if (ctrlc())
 			return -EINTR;
 
 		ifup_edev(edev, flags);
-
-		if ((flags & IFUP_FLAG_UNTIL_NET_SERVER) && net_get_server())
-			return 0;
 	}
 
 	return 0;
@@ -364,7 +364,7 @@ int ifup_all(unsigned flags)
 	 * empty, i.e. the first DHCP lease setting $global.net.server
 	 * will be what we're going with.
 	 */
-	if (net_get_server())
+	if (net_get_server() && !net_get_gateway())
 		flags &= ~IFUP_FLAG_UNTIL_NET_SERVER;
 
 	if (flags & IFUP_FLAG_PARALLEL)
-- 
2.39.2



