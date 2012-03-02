Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo2.mail-out.ovh.net ([178.32.228.2])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1S3XEq-0005Pg-I1
 for barebox@lists.infradead.org; Fri, 02 Mar 2012 18:29:58 +0000
Received: from mail621.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id C214EDC3FD0
 for <barebox@lists.infradead.org>; Fri,  2 Mar 2012 19:32:49 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri,  2 Mar 2012 19:20:08 +0100
Message-Id: <1330712410-26479-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1330712410-26479-1-git-send-email-plagnioj@jcrosoft.com>
References: <1330712410-26479-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 3/5] net: allow the drivers to specify the tx buffer allocator
To: barebox@lists.infradead.org

This will allow as example to have a non cached buffer.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 include/net.h |   16 +++++++---------
 net/eth.c     |   41 +++++++++++++++++++++++++++++++++++++++++
 net/net.c     |   24 +++++++++++++++++-------
 3 files changed, 65 insertions(+), 16 deletions(-)

diff --git a/include/net.h b/include/net.h
index c7da380..97515a5 100644
--- a/include/net.h
+++ b/include/net.h
@@ -39,6 +39,9 @@ struct eth_device {
 	int  (*get_ethaddr) (struct eth_device*, unsigned char *adr);
 	int  (*set_ethaddr) (struct eth_device*, unsigned char *adr);
 
+	void *(*alloc_packet)(struct eth_device*);
+	void (*free_packet)(struct eth_device*, void *packet);
+
 	struct eth_device *next;
 	void *priv;
 
@@ -373,6 +376,8 @@ typedef void rx_handler_f(void *ctx, char *packet, unsigned int len);
 void eth_set_current(struct eth_device *eth);
 struct eth_device *eth_get_current(void);
 struct eth_device *eth_get_byname(char *name);
+void *eth_alloc_packet(void);
+void eth_free_packet(void *packet);
 void net_update_env(void);
 
 /**
@@ -396,15 +401,8 @@ struct net_connection {
 	void *priv;
 };
 
-static inline char *net_alloc_packet(void)
-{
-	return xmemalign(32, PKTSIZE);
-}
-
-static inline void net_free_packet(void *packet)
-{
-	free(packet);
-}
+void *net_alloc_packet(void);
+void net_free_packet(void *packet);
 
 struct net_connection *net_udp_new(IPaddr_t dest, uint16_t dport,
 		rx_handler_f *handler, void *ctx);
diff --git a/net/eth.c b/net/eth.c
index 20fdbf4..ba7a0eb 100644
--- a/net/eth.c
+++ b/net/eth.c
@@ -109,6 +109,31 @@ struct eth_device *eth_get_byname(char *ethname)
 	return NULL;
 }
 
+void *eth_alloc_packet(void)
+{
+	int ret;
+
+	if (!eth_current)
+		return NULL;
+
+	if (!eth_current->active) {
+		ret = eth_current->open(eth_current);
+		if (ret)
+			return NULL;
+		eth_current->active = 1;
+	}
+
+	return eth_current->alloc_packet(eth_current);
+}
+
+void eth_free_packet(void *packet)
+{
+	if (!eth_current)
+		return;
+
+	eth_current->free_packet(eth_current, packet);
+}
+
 int eth_send(void *packet, int length)
 {
 	int ret;
@@ -185,6 +210,16 @@ static int eth_set_ipaddr(struct device_d *dev, struct param_d *param, const cha
 	return 0;
 }
 
+static void *eth_default_alloc_packet(struct eth_device *edev)
+{
+	return net_alloc_packet();
+}
+
+static void eth_default_free_packet(struct eth_device *edev, void* packet)
+{
+	net_free_packet(packet);
+}
+
 int eth_register(struct eth_device *edev)
 {
         struct device_d *dev = &edev->dev;
@@ -197,6 +232,12 @@ int eth_register(struct eth_device *edev)
 		return -1;
 	}
 
+	if (!edev->alloc_packet)
+		edev->alloc_packet = eth_default_alloc_packet;
+
+	if (!edev->free_packet)
+		edev->free_packet = eth_default_free_packet;
+
 	strcpy(edev->dev.name, "eth");
 	edev->dev.id = -1;
 
diff --git a/net/net.c b/net/net.c
index 07fc23a..cf1bfa8 100644
--- a/net/net.c
+++ b/net/net.c
@@ -1,4 +1,4 @@
-/*
+ /*
  * net.c - barebox networking support
  *
  * Copyright (c) 2010 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
@@ -222,7 +222,7 @@ static int arp_request(IPaddr_t dest, unsigned char *ether)
 	struct ethernet *et;
 
 	if (!arp_packet) {
-		arp_packet = net_alloc_packet();
+		arp_packet = eth_alloc_packet();
 		if (!arp_packet)
 			return -ENOMEM;
 	}
@@ -370,7 +370,7 @@ static struct net_connection *net_new(IPaddr_t dest, rx_handler_f *handler,
 		return ERR_PTR(-ENETDOWN);
 
 	con = xzalloc(sizeof(*con));
-	con->packet = net_alloc_packet();
+	con->packet = eth_alloc_packet();
 	con->priv = ctx;
 	memset(con->packet, 0, PKTSIZE);
 
@@ -402,7 +402,7 @@ static struct net_connection *net_new(IPaddr_t dest, rx_handler_f *handler,
 
 	return con;
 out:
-	net_free_packet(con->packet);
+	eth_free_packet(con->packet);
 	free(con);
 	return ERR_PTR(ret);
 }
@@ -440,7 +440,7 @@ struct net_connection *net_icmp_new(IPaddr_t dest, rx_handler_f *handler,
 void net_unregister(struct net_connection *con)
 {
 	list_del(&con->list);
-	net_free_packet(con->packet);
+	eth_free_packet(con->packet);
 	free(con);
 }
 
@@ -490,12 +490,12 @@ static int net_answer_arp(unsigned char *pkt, int len)
 	memcpy(&arp->ar_data[0], net_ether, 6);
 	net_copy_ip(&arp->ar_data[6], &net_ip);
 
-	packet = net_alloc_packet();
+	packet = eth_alloc_packet();
 	if (!packet)
 		return 0;
 	memcpy(packet, pkt, ETHER_HDR_SIZE + ARP_HDR_SIZE);
 	eth_send(packet, ETHER_HDR_SIZE + ARP_HDR_SIZE);
-	net_free_packet(packet);
+	eth_free_packet(packet);
 
 	return 0;
 }
@@ -660,6 +660,16 @@ out:
 	return ret;
 }
 
+void *net_alloc_packet(void)
+{
+	return xmemalign(32, PKTSIZE);
+}
+
+void net_free_packet(void *packet)
+{
+	free(packet);
+}
+
 static int net_init(void)
 {
 	int i;
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
