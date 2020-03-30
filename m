Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIqSs-00061x-Gs
 for barebox@lists.infradead.org; Mon, 30 Mar 2020 09:12:17 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 30 Mar 2020 11:12:08 +0200
Message-Id: <20200330091210.18716-7-s.hauer@pengutronix.de>
In-Reply-To: <20200330091210.18716-1-s.hauer@pengutronix.de>
References: <20200330091210.18716-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 6/8] nfs: queue received packets
To: Barebox List <barebox@lists.infradead.org>

It may happen that we receive more than one RPC packet before we come
along to check the result. Instead of handling just a single received
packet and possibly overwriting the last one queue the received RPC
packets.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/nfs.c | 52 +++++++++++++++++++++++++++++-----------------------
 1 file changed, 29 insertions(+), 23 deletions(-)

diff --git a/fs/nfs.c b/fs/nfs.c
index b070ca79d5..26ff354c37 100644
--- a/fs/nfs.c
+++ b/fs/nfs.c
@@ -131,6 +131,7 @@ struct nfs_fh {
 };
 
 struct packet {
+	struct list_head list;
 	int len;
 	char data[];
 };
@@ -145,7 +146,7 @@ struct nfs_priv {
 	unsigned manual_nfs_port:1;
 	uint32_t rpc_id;
 	struct nfs_fh rootfh;
-	struct packet *nfs_packet;
+	struct list_head packets;
 };
 
 struct file_priv {
@@ -175,10 +176,6 @@ static void nfs_set_fh(struct inode *inode, struct nfs_fh *fh)
 
 static uint64_t nfs_timer_start;
 
-static int nfs_state;
-#define STATE_DONE			1
-#define STATE_START			2
-
 /*
  * common types used in more than one request:
  *
@@ -384,13 +381,14 @@ static int rpc_check_reply(struct packet *pkt, int rpc_prog,
 	*nfserr = ntoh32(net_read_uint32(data));
 	*nfserr = -*nfserr;
 
-	debug("%s: state: %d, err %d\n", __func__, nfs_state, *nfserr);
+	debug("%s: err %d\n", __func__, *nfserr);
 
 	return 0;
 }
 
 static void nfs_free_packet(struct packet *packet)
 {
+	list_del(&packet->list);
 	free(packet);
 }
 
@@ -406,6 +404,7 @@ static struct packet *rpc_req(struct nfs_priv *npriv, int rpc_prog,
 	unsigned char *payload = net_udp_get_payload(npriv->con);
 	int nfserr;
 	int tries = 0;
+	struct packet *packet;
 
 	npriv->rpc_id++;
 
@@ -451,16 +450,11 @@ again:
 	nfs_timer_start = get_time_ns();
 
 	while (1) {
-		nfs_state = STATE_START;
-
 		if (ctrlc())
 			return ERR_PTR(-EINTR);
 
 		net_poll();
 
-		if (nfs_state != STATE_DONE)
-			continue;
-
 		if (is_timeout(nfs_timer_start, NFS_TIMEOUT)) {
 			tries++;
 			if (tries == NFS_MAX_RESEND)
@@ -468,19 +462,28 @@ again:
 			goto again;
 		}
 
-		ret = rpc_check_reply(npriv->nfs_packet, rpc_prog,
+		if (list_empty(&npriv->packets))
+			continue;
+
+		packet = list_first_entry(&npriv->packets, struct packet, list);
+
+		ret = rpc_check_reply(packet, rpc_prog,
 				      npriv->rpc_id, &nfserr);
-		if (!ret) {
+		if (ret == -EAGAIN) {
+			nfs_free_packet(packet);
+			continue;
+		} else if (ret) {
+			nfs_free_packet(packet);
+			return ERR_PTR(ret);
+		} else {
 			if (rpc_prog == PROG_NFS && nfserr) {
-				nfs_free_packet(npriv->nfs_packet);
+				nfs_free_packet(packet);
 				return ERR_PTR(nfserr);
 			} else {
-				return npriv->nfs_packet;
+				return packet;
 			}
 		}
 	}
-
-	return npriv->nfs_packet;
 }
 
 /*
@@ -954,16 +957,17 @@ static int nfs_read_req(struct file_priv *priv, uint64_t offset,
 	return 0;
 }
 
-static void nfs_handler(void *ctx, char *packet, unsigned len)
+static void nfs_handler(void *ctx, char *p, unsigned len)
 {
-	char *pkt = net_eth_to_udp_payload(packet);
+	char *pkt = net_eth_to_udp_payload(p);
 	struct nfs_priv *npriv = ctx;
+	struct packet *packet;
 
-	nfs_state = STATE_DONE;
+	packet = xmalloc(sizeof(*packet) + len);
+	memcpy(packet->data, pkt, len);
+	packet->len = len;
 
-	npriv->nfs_packet = xmalloc(sizeof(*npriv->nfs_packet) + len);
-	memcpy(npriv->nfs_packet->data, pkt, len);
-	npriv->nfs_packet->len = len;
+	list_add_tail(&packet->list, &npriv->packets);
 }
 
 static int nfs_truncate(struct device_d *dev, FILE *f, loff_t size)
@@ -1324,6 +1328,8 @@ static int nfs_probe(struct device_d *dev)
 
 	dev->priv = npriv;
 
+	INIT_LIST_HEAD(&npriv->packets);
+
 	debug("nfs: mount: %s\n", fsdev->backingstore);
 
 	path = strchr(tmp, ':');
-- 
2.26.0.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
