Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 10.mo5.mail-out.ovh.net ([46.105.52.148]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TGqDj-0006Nm-P5
 for barebox@lists.infradead.org; Wed, 26 Sep 2012 11:56:04 +0000
Received: from mail404.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 13ED8FFBCAE
 for <barebox@lists.infradead.org>; Wed, 26 Sep 2012 14:02:03 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 26 Sep 2012 13:53:31 +0200
Message-Id: <1348660411-9210-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1348659472-7038-1-git-send-email-plagnioj@jcrosoft.com>
References: <1348659472-7038-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 3/3] net/eth: fix link handling
To: barebox@lists.infradead.org

The current code handle just the send where we are supposed to the same on rx

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 net/eth.c |   25 +++++++++++++++----------
 1 file changed, 15 insertions(+), 10 deletions(-)

diff --git a/net/eth.c b/net/eth.c
index d3bda81..402e479 100644
--- a/net/eth.c
+++ b/net/eth.c
@@ -124,7 +124,7 @@ int eth_complete(struct string_list *sl, char *instr)
 }
 #endif
 
-int eth_send(void *packet, int length)
+int eth_open(void)
 {
 	int ret;
 
@@ -145,6 +145,17 @@ int eth_send(void *packet, int length)
 	if (!eth_current->active)
 		return -ENETDOWN;
 
+	return 0;
+}
+
+int eth_send(void *packet, int length)
+{
+	int ret;
+
+	ret = eth_open();
+	if (ret)
+		return ret;
+
 	led_trigger_network(LED_TRIGGER_NET_TX);
 
 	return eth_current->send(eth_current, packet, length);
@@ -154,15 +165,9 @@ int eth_rx(void)
 {
 	int ret;
 
-	if (!eth_current)
-		return -ENODEV;
-
-	if (!eth_current->active) {
-		ret = eth_current->open(eth_current);
-		if (ret)
-			return ret;
-		eth_current->active = 1;
-	}
+	ret = eth_open();
+	if (ret)
+		return ret;
 
 	return eth_current->recv(eth_current);
 }
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
