Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x233.google.com ([2a00:1450:4010:c03::233])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZGusS-0007lo-16
 for barebox@lists.infradead.org; Sun, 19 Jul 2015 20:08:00 +0000
Received: by lahe2 with SMTP id e2so24134138lah.1
 for <barebox@lists.infradead.org>; Sun, 19 Jul 2015 13:07:38 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sun, 19 Jul 2015 23:07:13 +0300
Message-Id: <1437336443-8076-7-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC v2 06/16] net: change net_udp_send() API
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 fs/nfs.c         | 2 +-
 fs/tftp.c        | 9 +++++----
 include/net.h    | 2 +-
 net/dhcp.c       | 4 ++--
 net/dns.c        | 2 +-
 net/net.c        | 2 +-
 net/netconsole.c | 2 +-
 net/nfs.c        | 3 ++-
 8 files changed, 14 insertions(+), 12 deletions(-)

diff --git a/fs/nfs.c b/fs/nfs.c
index 6c649c6..6c55b42 100644
--- a/fs/nfs.c
+++ b/fs/nfs.c
@@ -414,7 +414,7 @@ static int rpc_req(struct nfs_priv *npriv, int rpc_prog, int rpc_proc,
 	npriv->con->udp->uh_dport = hton16(dport);
 
 again:
-	ret = net_udp_send(npriv->con,
+	ret = net_udp_send(npriv->con, payload,
 			sizeof(pkt) + datalen * sizeof(uint32_t));
 
 	nfs_timer_start = get_time_ns();
diff --git a/fs/tftp.c b/fs/tftp.c
index c854da5..11a10de 100644
--- a/fs/tftp.c
+++ b/fs/tftp.c
@@ -119,7 +119,8 @@ static int tftp_send(struct file_priv *priv)
 	unsigned char *xp;
 	int len = 0;
 	uint16_t *s;
-	unsigned char *pkt = net_udp_get_payload(priv->tftp_con);
+	uint8_t *payload = net_udp_get_payload(priv->tftp_con);
+	uint8_t *pkt = payload;
 	int ret;
 
 	debug("%s: state %d\n", __func__, priv->state);
@@ -168,7 +169,7 @@ static int tftp_send(struct file_priv *priv)
 		break;
 	}
 
-	ret = net_udp_send(priv->tftp_con, len);
+	ret = net_udp_send(priv->tftp_con, payload, len);
 
 	return ret;
 }
@@ -187,7 +188,7 @@ static int tftp_send_write(struct file_priv *priv, void *buf, int len)
 		priv->state = STATE_LAST;
 	len += 4;
 
-	ret = net_udp_send(priv->tftp_con, len);
+	ret = net_udp_send(priv->tftp_con, pkt, len);
 	priv->last_block = priv->block;
 	priv->state = STATE_WAITACK;
 
@@ -501,7 +502,7 @@ static int tftp_do_close(struct file_priv *priv)
 		*pkt++ = htons(TFTP_ERROR);
 		*pkt++ = 0;
 		*pkt++ = 0;
-		net_udp_send(priv->tftp_con, 6);
+		net_udp_send(priv->tftp_con, (char *)pkt, 6);
 	}
 
 	net_unregister(priv->tftp_con);
diff --git a/include/net.h b/include/net.h
index fa2777e..90cbb09 100644
--- a/include/net.h
+++ b/include/net.h
@@ -460,7 +460,7 @@ static inline void *net_udp_get_payload(struct net_connection *con)
 		sizeof(struct udphdr);
 }
 
-int net_udp_send(struct net_connection *con, int len);
+int net_udp_send(struct net_connection *con, char *payload, int len);
 int net_icmp_send(struct net_connection *con, int len);
 
 void led_trigger_network(enum led_trigger trigger);
diff --git a/net/dhcp.c b/net/dhcp.c
index d8b6bf7..e26acdc 100644
--- a/net/dhcp.c
+++ b/net/dhcp.c
@@ -487,7 +487,7 @@ static int bootp_request(void)
 
 	dhcp_state = SELECTING;
 
-	ret = net_udp_send(dhcp_con, sizeof(*bp) + ext_len);
+	ret = net_udp_send(dhcp_con, payload, sizeof(*bp) + ext_len);
 
 	return ret;
 }
@@ -582,7 +582,7 @@ static void dhcp_send_request_packet(struct bootp *bp_offer)
 				OfferedIP);
 
 	debug("Transmitting DHCPREQUEST packet\n");
-	net_udp_send(dhcp_con, sizeof(*bp) + extlen);
+	net_udp_send(dhcp_con, payload, sizeof(*bp) + extlen);
 }
 
 /*
diff --git a/net/dns.c b/net/dns.c
index 05106c6..7bb664c 100644
--- a/net/dns.c
+++ b/net/dns.c
@@ -109,7 +109,7 @@ static int dns_send(char *name)
 	*p++ = 0;
 	*p++ = 1;				/* Class: inet, 0x0001 */
 
-	ret = net_udp_send(dns_con, p - packet);
+	ret = net_udp_send(dns_con, packet, p - packet);
 
 	free(fullname);
 
diff --git a/net/net.c b/net/net.c
index 8461caf..23a9173 100644
--- a/net/net.c
+++ b/net/net.c
@@ -363,7 +363,7 @@ static int net_ip_send(struct net_connection *con, int len)
 	return eth_send(con->edev, con->packet, ETHER_HDR_SIZE + sizeof(struct iphdr) + len);
 }
 
-int net_udp_send(struct net_connection *con, int len)
+int net_udp_send(struct net_connection *con, char *payload, int len)
 {
 	con->udp->uh_ulen = htons(len + 8);
 	con->udp->uh_sum = 0;
diff --git a/net/netconsole.c b/net/netconsole.c
index e7c722f..11a6d30 100644
--- a/net/netconsole.c
+++ b/net/netconsole.c
@@ -100,7 +100,7 @@ static void nc_putc(struct console_device *cdev, char c)
 	*packet = c;
 
 	priv->busy = 1;
-	net_udp_send(priv->con, 1);
+	net_udp_send(priv->con, packet, 1);
 	priv->busy = 0;
 }
 
diff --git a/net/nfs.c b/net/nfs.c
index 5a907d5..41ad197 100644
--- a/net/nfs.c
+++ b/net/nfs.c
@@ -225,7 +225,8 @@ static int rpc_req(int rpc_prog, int rpc_proc, uint32_t *data, int datalen)
 		sport = nfs_server_nfs_port;
 
 	nfs_con->udp->uh_dport = htons(sport);
-	ret = net_udp_send(nfs_con, sizeof(pkt) + datalen * sizeof(uint32_t));
+	ret = net_udp_send(nfs_con, payload,
+				sizeof(pkt) + datalen * sizeof(uint32_t));
 
 	return ret;
 }
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
