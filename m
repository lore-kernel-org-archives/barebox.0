Delivery-date: Wed, 25 Jan 2023 10:58:22 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKcXw-001Lyz-Ar
	for lore@lore.pengutronix.de; Wed, 25 Jan 2023 10:58:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKcXt-00048p-5G
	for lore@pengutronix.de; Wed, 25 Jan 2023 10:58:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=XR1cWXnWUSkb67LTTGkH8rq6k7sGD1hM26SM4s+vHog=; b=kPpwXALl6cVKv40ec2X7O4zGF5
	FLGSW2zpi1XfdzGHpmiidoEElbBtom8sLycHYwAYBAoKoKhe5tdDQsaeVt2E/hgV+BxaQ/glclkIJ
	zZ/6eT3mtFAK/l55L2lfW1zE+VCqlX4YhFW+an4b3j5/rBL7baXkfXW0Hhv8RSFI/ph9X2hRitdW1
	HbYQM1VEXeN0Ljm+ICQ3Qk9Mjmn4TnO6ZSJIvHj+PQn9eksPG0YXz7Yqjiprol8wdQpTt8ZVS8mNW
	3ESijBjWonqDLqxcSYNnO4DvJMM28w97a2/fn3gwdV9qcFdvi/99jBLsdZnlNUPT9BEScHnoq5VqO
	vQGhCqtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKcWI-006l3b-Vd; Wed, 25 Jan 2023 09:56:44 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKcSU-006jcj-5c
	for barebox@lists.infradead.org; Wed, 25 Jan 2023 09:52:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pKcSS-0002xr-Lt; Wed, 25 Jan 2023 10:52:44 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pKcSS-000Ix4-Uc; Wed, 25 Jan 2023 10:52:44 +0100
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pKcSR-00B5Cf-9z; Wed, 25 Jan 2023 10:52:43 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 25 Jan 2023 10:52:35 +0100
Message-Id: <20230125095236.2626065-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230125_015246_241138_01380E42 
X-CRM114-Status: GOOD (  15.55  )
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
Subject: [RFC PATCH 1/2] net: ifup: prefer interfaces where the link is already up
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

ifup -a on a platform with a DSA switch can take quite a while, because
barebox will attempt sending a DHCP DISCOVER on every port in sequence
and waiting until timeout. This could use some refactoring to make it
possible to make dhcp() non-blocking, but let's do an easier workaround
for that: Let's prefer ports that already have a link-up, which is the
case if the user has been sitting idly on the shell for a few seconds,
because we enable all interfaces that weren't explicitly disabled then.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/net.h | 1 +
 net/eth.c     | 2 +-
 net/ifup.c    | 8 ++++++++
 3 files changed, 10 insertions(+), 1 deletion(-)

diff --git a/include/net.h b/include/net.h
index 0555b0bd6bed..fdd21481dbf5 100644
--- a/include/net.h
+++ b/include/net.h
@@ -110,6 +110,7 @@ int eth_register(struct eth_device* dev);    /* Register network device		*/
 void eth_unregister(struct eth_device* dev); /* Unregister network device	*/
 int eth_set_ethaddr(struct eth_device *edev, const char *ethaddr);
 int eth_open(struct eth_device *edev);
+int eth_carrier_check(struct eth_device *edev, bool may_wait);
 void eth_close(struct eth_device *edev);
 int eth_send(struct eth_device *edev, void *packet, int length);	   /* Send a packet		*/
 int eth_rx(void);			/* Check for received packets	*/
diff --git a/net/eth.c b/net/eth.c
index 6fb64afea024..6c201d7dfc30 100644
--- a/net/eth.c
+++ b/net/eth.c
@@ -179,7 +179,7 @@ int eth_complete(struct string_list *sl, char *instr)
 /*
  * Check for link if we haven't done so for longer.
  */
-static int eth_carrier_check(struct eth_device *edev, bool may_wait)
+int eth_carrier_check(struct eth_device *edev, bool may_wait)
 {
 	int ret;
 
diff --git a/net/ifup.c b/net/ifup.c
index e4d5374db3ae..a0167eeb8a82 100644
--- a/net/ifup.c
+++ b/net/ifup.c
@@ -285,6 +285,14 @@ int ifup_all(unsigned flags)
 	    list_empty(&netdev_list))
 		device_detect_all();
 
+	/* Prefer interfaces where the link is already up */
+	for_each_netdev(edev) {
+		if (eth_carrier_check(edev, false))
+			continue;
+
+		ifup_edev(edev, flags);
+	}
+
 	for_each_netdev(edev)
 		ifup_edev(edev, flags);
 
-- 
2.30.2



