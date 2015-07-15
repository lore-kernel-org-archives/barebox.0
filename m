Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x230.google.com ([2a00:1450:4010:c04::230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZFT4X-0006Nk-VJ
 for barebox@lists.infradead.org; Wed, 15 Jul 2015 20:14:31 +0000
Received: by lbbyj8 with SMTP id yj8so31750520lbb.0
 for <barebox@lists.infradead.org>; Wed, 15 Jul 2015 13:14:08 -0700 (PDT)
Received: from localhost.localdomain (ppp79-139-249-41.pppoe.spdop.ru.
 [79.139.249.41])
 by smtp.gmail.com with ESMTPSA id ao8sm531319lac.38.2015.07.15.13.14.06
 for <barebox@lists.infradead.org>
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 15 Jul 2015 13:14:07 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed, 15 Jul 2015 23:13:43 +0300
Message-Id: <1436991230-14251-6-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1436991230-14251-1-git-send-email-antonynpavlov@gmail.com>
References: <1436991230-14251-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC 05/12] WIP: fs/tftp.c: convert to picotcp
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 fs/tftp.c | 199 ++++++++++++++++++++++++++++++++++++++++++++++++++++++--------
 1 file changed, 175 insertions(+), 24 deletions(-)

diff --git a/fs/tftp.c b/fs/tftp.c
index 0de215e..9d003b4 100644
--- a/fs/tftp.c
+++ b/fs/tftp.c
@@ -33,6 +33,10 @@
 #include <kfifo.h>
 #include <linux/sizes.h>
 
+#include <pico_socket.h>
+#include <pico_ipv4.h>
+#include <poller.h>
+
 #define TFTP_PORT	69	/* Well known TFTP port number */
 
 /* Seconds to wait before remote server is allowed to resend a lost packet */
@@ -84,10 +88,17 @@ struct file_priv {
 	void *buf;
 	int blocksize;
 	int block_requested;
+
+	struct pico_socket *sock;
+	union pico_address remote_address;
+	uint16_t remote_port;
+	uint8_t *pkt;
 };
 
 struct tftp_priv {
 	IPaddr_t server;
+
+	union pico_address pserver;
 };
 
 static int tftp_create(struct device_d *dev, const char *pathname, mode_t mode)
@@ -120,9 +131,15 @@ static int tftp_send(struct file_priv *priv)
 	unsigned char *xp;
 	int len = 0;
 	uint16_t *s;
-	unsigned char *pkt = net_udp_get_payload(priv->tftp_con);
+	uint8_t *pkt;
 	int ret;
 
+	if (IS_ENABLED(CONFIG_NET_LEGACY)) {
+		pkt = net_udp_get_payload(priv->tftp_con);
+	} else if (IS_ENABLED(CONFIG_NET_PICOTCP)) {
+		pkt = priv->pkt;
+	}
+
 	debug("%s: state %d\n", __func__, priv->state);
 
 	switch (priv->state) {
@@ -169,7 +186,13 @@ static int tftp_send(struct file_priv *priv)
 		break;
 	}
 
-	ret = net_udp_send(priv->tftp_con, len);
+	if (IS_ENABLED(CONFIG_NET_LEGACY)) {
+		ret = net_udp_send(priv->tftp_con, len);
+	} else if (IS_ENABLED(CONFIG_NET_PICOTCP)) {
+		/* FIXME: convert PICOTCP error code to barebox error code */
+		ret = pico_socket_sendto(priv->sock, priv->pkt, len,
+			&priv->remote_address, priv->remote_port);
+	}
 
 	return ret;
 }
@@ -177,9 +200,15 @@ static int tftp_send(struct file_priv *priv)
 static int tftp_send_write(struct file_priv *priv, void *buf, int len)
 {
 	uint16_t *s;
-	unsigned char *pkt = net_udp_get_payload(priv->tftp_con);
+	uint8_t *pkt;
 	int ret;
 
+	if (IS_ENABLED(CONFIG_NET_LEGACY)) {
+		pkt = net_udp_get_payload(priv->tftp_con);
+	} else if (IS_ENABLED(CONFIG_NET_PICOTCP)) {
+		pkt = priv->pkt;
+	}
+
 	s = (uint16_t *)pkt;
 	*s++ = htons(TFTP_DATA);
 	*s++ = htons(priv->block);
@@ -188,7 +217,14 @@ static int tftp_send_write(struct file_priv *priv, void *buf, int len)
 		priv->state = STATE_LAST;
 	len += 4;
 
-	ret = net_udp_send(priv->tftp_con, len);
+	if (IS_ENABLED(CONFIG_NET_LEGACY)) {
+		ret = net_udp_send(priv->tftp_con, len);
+	} else if (IS_ENABLED(CONFIG_NET_PICOTCP)) {
+		/* FIXME: convert PICOTCP error code to barebox error code */
+		ret = pico_socket_sendto(priv->sock, priv->pkt, len,
+			&priv->remote_address, priv->remote_port);
+	}
+
 	priv->last_block = priv->block;
 	priv->state = STATE_WAITACK;
 
@@ -216,7 +252,12 @@ static int tftp_poll(struct file_priv *priv)
 		return -ETIMEDOUT;
 	}
 
-	net_poll();
+	if (IS_ENABLED(CONFIG_NET_LEGACY)) {
+		net_poll();
+	} else if (IS_ENABLED(CONFIG_NET_PICOTCP)) {
+		/* despite of is_timeout() can call poller_call() by itself ... */
+		poller_call();
+	}
 
 	return 0;
 }
@@ -293,14 +334,24 @@ static void tftp_recv(struct file_priv *priv,
 			priv->state = STATE_DONE;
 			break;
 		}
-		priv->tftp_con->udp->uh_dport = uh_sport;
+
+		if (IS_ENABLED(CONFIG_NET_LEGACY)) {
+			priv->tftp_con->udp->uh_dport = uh_sport;
+		} else if (IS_ENABLED(CONFIG_NET_PICOTCP)) {
+			priv->remote_port = uh_sport;
+		}
+
 		priv->state = STATE_WDATA;
 		break;
 
 	case TFTP_OACK:
 		tftp_parse_oack(priv, pkt, len);
-		priv->server_port = ntohs(uh_sport);
-		priv->tftp_con->udp->uh_dport = uh_sport;
+		if (IS_ENABLED(CONFIG_NET_LEGACY)) {
+			priv->server_port = ntohs(uh_sport);
+			priv->tftp_con->udp->uh_dport = uh_sport;
+		} else if (IS_ENABLED(CONFIG_NET_PICOTCP)) {
+			priv->remote_port = uh_sport;
+		}
 
 		if (priv->push) {
 			/* send first block */
@@ -321,8 +372,12 @@ static void tftp_recv(struct file_priv *priv,
 		if (priv->state == STATE_RRQ || priv->state == STATE_OACK) {
 			/* first block received */
 			priv->state = STATE_RDATA;
-			priv->tftp_con->udp->uh_dport = uh_sport;
-			priv->server_port = ntohs(uh_sport);
+			if (IS_ENABLED(CONFIG_NET_LEGACY)) {
+				priv->tftp_con->udp->uh_dport = uh_sport;
+				priv->server_port = ntohs(uh_sport);
+			} else if (IS_ENABLED(CONFIG_NET_PICOTCP)) {
+				priv->remote_port = uh_sport;
+			}
 			priv->last_block = 0;
 
 			if (priv->block != 1) {	/* Assertion */
@@ -381,6 +436,53 @@ static void tftp_handler(void *ctx, char *packet, unsigned len)
 	tftp_recv(priv, pkt, net_eth_to_udplen(packet), udp->uh_sport);
 }
 
+static void tftp_cb(uint16_t ev, struct pico_socket *sock)
+{
+	struct file_priv *priv = sock->priv;
+
+	union pico_address ep;
+	uint16_t remote_port;
+	uint8_t *pkt = priv->pkt;
+	int len;
+
+	if (ev == PICO_SOCK_EV_ERR) {
+		printf("              >>>>>> PICO_SOCK_EV_ERR <<<<<<< \n");
+		return;
+	}
+
+	/*
+	 * we have to receive:
+	 *     opcode (2 bytes)
+	 *     block# (2 bytes)
+	 *     data (blocksize bytes)
+	 */
+	len = pico_socket_recvfrom(sock, pkt, priv->blocksize + 4,
+					&ep, &remote_port);
+
+	tftp_recv(priv, pkt, len, remote_port);
+}
+
+static struct pico_socket *tftp_socket_open(uint16_t localport)
+{
+	struct pico_socket *sock;
+	union pico_address local_address;
+
+	sock = pico_socket_open(PICO_PROTO_IPV4, PICO_PROTO_UDP, tftp_cb);
+	if (!sock)
+		return NULL;
+
+	localport = short_be(localport);
+
+	/* FIXME: use local_address == PICO_IPV4_INADDR_ANY */
+	memset(&local_address, 0, sizeof(union pico_address));
+	if (pico_socket_bind(sock, &local_address, &localport) < 0) {
+		pico_socket_close(sock);
+		return NULL;
+	}
+
+	return sock;
+}
+
 static struct file_priv *tftp_do_open(struct device_d *dev,
 		int accmode, const char *filename)
 {
@@ -426,17 +528,39 @@ static struct file_priv *tftp_do_open(struct device_d *dev,
 		goto out;
 	}
 
-	priv->tftp_con = net_udp_new(tpriv->server, TFTP_PORT, tftp_handler,
-			priv);
-	if (IS_ERR(priv->tftp_con)) {
-		ret = PTR_ERR(priv->tftp_con);
-		goto out1;
+	if (IS_ENABLED(CONFIG_NET_LEGACY)) {
+		priv->tftp_con = net_udp_new(tpriv->server, TFTP_PORT, tftp_handler,
+				priv);
+		if (IS_ERR(priv->tftp_con)) {
+			ret = PTR_ERR(priv->tftp_con);
+			goto out1;
+		}
+
+		ret = tftp_send(priv);
+		if (ret)
+			goto out2;
+	} else if (IS_ENABLED(CONFIG_NET_PICOTCP)) {
+		priv->sock = tftp_socket_open(0);
+		if (!priv->sock) {
+			ret = -1;
+			goto out1;
+		}
+
+		priv->sock->priv = priv;
+
+		/* FIXME: add free */
+		priv->pkt = xzalloc(2048);
+		priv->remote_address = tpriv->pserver;
+		priv->remote_port = short_be(TFTP_PORT);
+
+		/* FIXME: convert PICOTCP error code to barebox error code */
+		ret = tftp_send(priv);
+		if (ret == -1)
+			goto out2;
+
+		poller_call();
 	}
 
-	ret = tftp_send(priv);
-	if (ret)
-		goto out2;
-
 	tftp_timer_reset(priv);
 	while (priv->state != STATE_RDATA &&
 			priv->state != STATE_DONE &&
@@ -457,7 +581,11 @@ static struct file_priv *tftp_do_open(struct device_d *dev,
 
 	return priv;
 out2:
-	net_unregister(priv->tftp_con);
+	if (IS_ENABLED(CONFIG_NET_LEGACY)) {
+		net_unregister(priv->tftp_con);
+	} else if (IS_ENABLED(CONFIG_NET_PICOTCP)) {
+		pico_socket_close(priv->sock);
+	}
 out1:
 	kfifo_free(priv->fifo);
 out:
@@ -503,14 +631,32 @@ static int tftp_do_close(struct file_priv *priv)
 	}
 
 	if (!priv->push && priv->state != STATE_DONE) {
-		uint16_t *pkt = net_udp_get_payload(priv->tftp_con);
+		uint16_t *pkt;
+
+		if (IS_ENABLED(CONFIG_NET_LEGACY)) {
+			pkt = net_udp_get_payload(priv->tftp_con);
+		} else if (IS_ENABLED(CONFIG_NET_PICOTCP)) {
+			pkt = (uint16_t *)priv->pkt;
+		}
+
 		*pkt++ = htons(TFTP_ERROR);
 		*pkt++ = 0;
 		*pkt++ = 0;
-		net_udp_send(priv->tftp_con, 6);
+
+		if (IS_ENABLED(CONFIG_NET_LEGACY)) {
+			net_udp_send(priv->tftp_con, 6);
+		} else if (IS_ENABLED(CONFIG_NET_PICOTCP)) {
+			pico_socket_sendto(priv->sock, priv->pkt, 6,
+				&priv->remote_address, priv->remote_port);
+		}
+	}
+
+	if (IS_ENABLED(CONFIG_NET_LEGACY)) {
+		net_unregister(priv->tftp_con);
+	} else if (IS_ENABLED(CONFIG_NET_PICOTCP)) {
+		pico_socket_close(priv->sock);
 	}
 
-	net_unregister(priv->tftp_con);
 	kfifo_free(priv->fifo);
 	free(priv->buf);
 	free(priv);
@@ -630,7 +776,12 @@ static int tftp_probe(struct device_d *dev)
 
 	dev->priv = priv;
 
-	priv->server = resolv(fsdev->backingstore);
+	if (IS_ENABLED(CONFIG_NET_LEGACY)) {
+		priv->server = resolv(fsdev->backingstore);
+	} else if (IS_ENABLED(CONFIG_NET_PICOTCP)) {
+		/* FIXME: check corectness */
+		priv->pserver.ip4.addr = resolv(fsdev->backingstore);
+	}
 
 	return 0;
 }
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
