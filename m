Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22f.google.com ([2a00:1450:4010:c04::22f])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZGusT-0007lv-61
 for barebox@lists.infradead.org; Sun, 19 Jul 2015 20:08:01 +0000
Received: by lbbqi7 with SMTP id qi7so4572494lbb.3
 for <barebox@lists.infradead.org>; Sun, 19 Jul 2015 13:07:39 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sun, 19 Jul 2015 23:07:14 +0300
Message-Id: <1437336443-8076-8-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1437336443-8076-1-git-send-email-antonynpavlov@gmail.com>
References: <1437336443-8076-1-git-send-email-antonynpavlov@gmail.com>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [RFC v2 07/16] net: introduce setudppeerport()
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 fs/nfs.c      | 2 +-
 fs/tftp.c     | 9 +++++----
 include/net.h | 7 +++++++
 3 files changed, 13 insertions(+), 5 deletions(-)

diff --git a/fs/nfs.c b/fs/nfs.c
index 6c55b42..8910fd1 100644
--- a/fs/nfs.c
+++ b/fs/nfs.c
@@ -411,7 +411,7 @@ static int rpc_req(struct nfs_priv *npriv, int rpc_prog, int rpc_proc,
 	memcpy(payload, &pkt, sizeof(pkt));
 	memcpy(payload + sizeof(pkt), data, datalen * sizeof(uint32_t));
 
-	npriv->con->udp->uh_dport = hton16(dport);
+	setudppeerport(npriv->con, htons(dport));
 
 again:
 	ret = net_udp_send(npriv->con, payload,
diff --git a/fs/tftp.c b/fs/tftp.c
index 11a10de..575f064 100644
--- a/fs/tftp.c
+++ b/fs/tftp.c
@@ -177,7 +177,7 @@ static int tftp_send(struct file_priv *priv)
 static int tftp_send_write(struct file_priv *priv, void *buf, int len)
 {
 	uint16_t *s;
-	unsigned char *pkt = net_udp_get_payload(priv->tftp_con);
+	uint8_t *pkt = net_udp_get_payload(priv->tftp_con);
 	int ret;
 
 	s = (uint16_t *)pkt;
@@ -293,13 +293,14 @@ static void tftp_recv(struct file_priv *priv,
 			priv->state = STATE_DONE;
 			break;
 		}
-		priv->tftp_con->udp->uh_dport = uh_sport;
+		setudppeerport(priv->tftp_con, uh_sport);
+
 		priv->state = STATE_WDATA;
 		break;
 
 	case TFTP_OACK:
 		tftp_parse_oack(priv, pkt, len);
-		priv->tftp_con->udp->uh_dport = uh_sport;
+		setudppeerport(priv->tftp_con, uh_sport);
 
 		if (priv->push) {
 			/* send first block */
@@ -320,7 +321,7 @@ static void tftp_recv(struct file_priv *priv,
 		if (priv->state == STATE_RRQ || priv->state == STATE_OACK) {
 			/* first block received */
 			priv->state = STATE_RDATA;
-			priv->tftp_con->udp->uh_dport = uh_sport;
+			setudppeerport(priv->tftp_con, uh_sport);
 			priv->last_block = 0;
 
 			if (priv->block != 1) {	/* Assertion */
diff --git a/include/net.h b/include/net.h
index 90cbb09..ed63d3c 100644
--- a/include/net.h
+++ b/include/net.h
@@ -478,4 +478,11 @@ static inline uint16_t getudppeerport(struct net_connection *con)
 	return udp->uh_sport;
 }
 
+#include <byteorder.h>
+
+static inline void setudppeerport(struct net_connection *con, uint16_t dport)
+{
+	con->udp->uh_dport = dport;
+}
+
 #endif /* __NET_H__ */
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
