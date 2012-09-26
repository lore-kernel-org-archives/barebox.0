Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 14.mo5.mail-out.ovh.net ([188.165.51.82]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TGpyZ-0005zH-02
 for barebox@lists.infradead.org; Wed, 26 Sep 2012 11:40:23 +0000
Received: from mail404.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id BF620FFB666
 for <barebox@lists.infradead.org>; Wed, 26 Sep 2012 13:46:23 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 26 Sep 2012 13:37:52 +0200
Message-Id: <1348659472-7038-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1348659472-7038-1-git-send-email-plagnioj@jcrosoft.com>
References: <20120926110244.GH24458@pengutronix.de>
 <1348659472-7038-1-git-send-email-plagnioj@jcrosoft.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/2] net/eth: fix missing check on eth active
To: barebox@lists.infradead.org

I drop this check in the phylib v7 by mistake. This check is needed to report
when the phy is down

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 net/eth.c |    3 +++
 1 file changed, 3 insertions(+)

diff --git a/net/eth.c b/net/eth.c
index beedd22..d3bda81 100644
--- a/net/eth.c
+++ b/net/eth.c
@@ -142,6 +142,9 @@ int eth_send(void *packet, int length)
 			eth_current->active = 1;
 	}
 
+	if (!eth_current->active)
+		return -ENETDOWN;
+
 	led_trigger_network(LED_TRIGGER_NET_TX);
 
 	return eth_current->send(eth_current, packet, length);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
