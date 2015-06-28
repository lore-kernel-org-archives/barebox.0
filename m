Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22d.google.com ([2a00:1450:4010:c03::22d])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Z9FJY-0001t1-IX
 for barebox@lists.infradead.org; Sun, 28 Jun 2015 16:20:17 +0000
Received: by lacny3 with SMTP id ny3so100882604lac.3
 for <barebox@lists.infradead.org>; Sun, 28 Jun 2015 09:19:54 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sun, 28 Jun 2015 19:19:38 +0300
Message-Id: <1435508380-21284-2-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1435508380-21284-1-git-send-email-antonynpavlov@gmail.com>
References: <1435508380-21284-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 1/3] fs/tftp: handle incoming packets in the separate
 tftp_recv() function
To: barebox@lists.infradead.org

The separation of incoming packets handling makes it much easier
to run barebox tftp client on top of picotcp network stack in the future.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 fs/tftp.c | 27 +++++++++++++++++----------
 1 file changed, 17 insertions(+), 10 deletions(-)

diff --git a/fs/tftp.c b/fs/tftp.c
index 72e4983..d970c60 100644
--- a/fs/tftp.c
+++ b/fs/tftp.c
@@ -253,15 +253,12 @@ static void tftp_timer_reset(struct file_priv *priv)
 	priv->progress_timeout = priv->resend_timeout = get_time_ns();
 }
 
-static void tftp_handler(void *ctx, char *packet, unsigned len)
+static void tftp_recv(struct file_priv *priv,
+			uint8_t *pkt, unsigned len, uint16_t uh_sport)
 {
-	struct file_priv *priv = ctx;
 	uint16_t proto;
 	uint16_t *s;
-	char *pkt = net_eth_to_udp_payload(packet);
-	struct udphdr *udp = net_eth_to_udphdr(packet);
 
-	len = net_eth_to_udplen(packet);
 	if (len < 2)
 		return;
 
@@ -296,14 +293,14 @@ static void tftp_handler(void *ctx, char *packet, unsigned len)
 			priv->state = STATE_DONE;
 			break;
 		}
-		priv->tftp_con->udp->uh_dport = udp->uh_sport;
+		priv->tftp_con->udp->uh_dport = uh_sport;
 		priv->state = STATE_WDATA;
 		break;
 
 	case TFTP_OACK:
 		tftp_parse_oack(priv, pkt, len);
-		priv->server_port = ntohs(udp->uh_sport);
-		priv->tftp_con->udp->uh_dport = udp->uh_sport;
+		priv->server_port = ntohs(uh_sport);
+		priv->tftp_con->udp->uh_dport = uh_sport;
 
 		if (priv->push) {
 			/* send first block */
@@ -326,8 +323,8 @@ static void tftp_handler(void *ctx, char *packet, unsigned len)
 		if (priv->state == STATE_RRQ || priv->state == STATE_OACK) {
 			/* first block received */
 			priv->state = STATE_RDATA;
-			priv->tftp_con->udp->uh_dport = udp->uh_sport;
-			priv->server_port = ntohs(udp->uh_sport);
+			priv->tftp_con->udp->uh_dport = uh_sport;
+			priv->server_port = ntohs(uh_sport);
 			priv->last_block = 0;
 
 			if (priv->block != 1) {	/* Assertion */
@@ -376,6 +373,16 @@ static void tftp_handler(void *ctx, char *packet, unsigned len)
 	}
 }
 
+static void tftp_handler(void *ctx, char *packet, unsigned len)
+{
+	struct file_priv *priv = ctx;
+	char *pkt = net_eth_to_udp_payload(packet);
+	struct udphdr *udp = net_eth_to_udphdr(packet);
+
+	(void)len;
+	tftp_recv(priv, pkt, net_eth_to_udplen(packet), udp->uh_sport);
+}
+
 static struct file_priv *tftp_do_open(struct device_d *dev,
 		int accmode, const char *filename)
 {
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
