Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22b.google.com ([2a00:1450:4010:c03::22b])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZFT4W-0006Ni-O2
 for barebox@lists.infradead.org; Wed, 15 Jul 2015 20:14:29 +0000
Received: by lagx9 with SMTP id x9so31438533lag.1
 for <barebox@lists.infradead.org>; Wed, 15 Jul 2015 13:14:06 -0700 (PDT)
Received: from localhost.localdomain (ppp79-139-249-41.pppoe.spdop.ru.
 [79.139.249.41])
 by smtp.gmail.com with ESMTPSA id ao8sm531319lac.38.2015.07.15.13.14.05
 for <barebox@lists.infradead.org>
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 15 Jul 2015 13:14:06 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed, 15 Jul 2015 23:13:42 +0300
Message-Id: <1436991230-14251-5-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC 04/12] WIP: fs/nfs.c: convert to picotcp
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 fs/nfs.c | 150 +++++++++++++++++++++++++++++++++++++++++++++++++++++++--------
 1 file changed, 133 insertions(+), 17 deletions(-)

diff --git a/fs/nfs.c b/fs/nfs.c
index 5bff54a..f4be54a 100644
--- a/fs/nfs.c
+++ b/fs/nfs.c
@@ -37,6 +37,10 @@
 #include <byteorder.h>
 #include <globalvar.h>
 
+#include <pico_socket.h>
+#include <pico_ipv4.h>
+#include <poller.h>
+
 #include "parseopt.h"
 
 #define SUNRPC_PORT     111
@@ -131,9 +135,14 @@ struct rpc_reply {
 struct nfs_priv {
 	struct net_connection *con;
 	IPaddr_t server;
+
+	struct pico_socket *sock;
+	union pico_address remote_address;
+	uint8_t *pkt;
+
 	char *path;
-	unsigned short mount_port;
-	unsigned short nfs_port;
+	uint16_t mount_port;
+	uint16_t nfs_port;
 	uint32_t rpc_id;
 	uint32_t rootfh_len;
 	char rootfh[NFS3_FHSIZE];
@@ -383,10 +392,16 @@ static int rpc_req(struct nfs_priv *npriv, int rpc_prog, int rpc_proc,
 	struct rpc_call pkt;
 	unsigned short dport;
 	int ret;
-	unsigned char *payload = net_udp_get_payload(npriv->con);
+	unsigned char *payload;
 	int nfserr;
 	int tries = 0;
 
+	if (IS_ENABLED(CONFIG_NET_LEGACY)) {
+		payload = net_udp_get_payload(npriv->con);
+	} else if (IS_ENABLED(CONFIG_NET_PICOTCP)) {
+		payload = npriv->pkt;
+	}
+
 	npriv->rpc_id++;
 
 	pkt.id = hton32(npriv->rpc_id);
@@ -398,7 +413,11 @@ static int rpc_req(struct nfs_priv *npriv, int rpc_prog, int rpc_proc,
 	debug("%s: prog: %d, proc: %d\n", __func__, rpc_prog, rpc_proc);
 
 	if (rpc_prog == PROG_PORTMAP) {
-		dport = SUNRPC_PORT;
+		if (IS_ENABLED(CONFIG_NET_LEGACY)) {
+			dport = SUNRPC_PORT;
+		} else if (IS_ENABLED(CONFIG_NET_PICOTCP)) {
+			dport = hton16(SUNRPC_PORT);
+		}
 		pkt.vers = hton32(2);
 	} else if (rpc_prog == PROG_MOUNT) {
 		dport = npriv->mount_port;
@@ -408,14 +427,25 @@ static int rpc_req(struct nfs_priv *npriv, int rpc_prog, int rpc_proc,
 		pkt.vers = hton32(3);
 	}
 
+	/* FIXME: picotcp can skip extra copy here */
 	memcpy(payload, &pkt, sizeof(pkt));
 	memcpy(payload + sizeof(pkt), data, datalen * sizeof(uint32_t));
 
-	npriv->con->udp->uh_dport = hton16(dport);
+	if (IS_ENABLED(CONFIG_NET_LEGACY)) {
+		npriv->con->udp->uh_dport = hton16(dport);
+	}
 
 again:
-	ret = net_udp_send(npriv->con,
+
+	if (IS_ENABLED(CONFIG_NET_LEGACY)) {
+		ret = net_udp_send(npriv->con,
 			sizeof(pkt) + datalen * sizeof(uint32_t));
+	} else if (IS_ENABLED(CONFIG_NET_PICOTCP)) {
+		/* FIXME: picotcp ret code meaning is different */
+		ret = pico_socket_sendto(npriv->sock, npriv->pkt,
+			sizeof(pkt) + datalen * sizeof(uint32_t),
+			&npriv->remote_address, dport);
+	}
 
 	nfs_timer_start = get_time_ns();
 
@@ -427,7 +457,13 @@ again:
 			ret = -EINTR;
 			break;
 		}
-		net_poll();
+
+		if (IS_ENABLED(CONFIG_NET_LEGACY)) {
+			net_poll();
+		} else if (IS_ENABLED(CONFIG_NET_PICOTCP)) {
+			/* do we really need it? is_timeout() can do this work for us. */
+			poller_call();
+		}
 
 		if (is_timeout(nfs_timer_start, NFS_TIMEOUT)) {
 			tries++;
@@ -1324,6 +1360,48 @@ static void nfs_set_rootarg(struct nfs_priv *npriv, struct fs_device_d *fsdev)
 	free(str);
 }
 
+static void nfs_cb(uint16_t ev, struct pico_socket *sock)
+{
+	struct nfs_priv *npriv = sock->priv;
+	char *pkt = npriv->pkt;
+	int len;
+	union pico_address ep;
+	uint16_t remote_port;
+
+	if (ev == PICO_SOCK_EV_ERR) {
+		printf("              >>>>>> PICO_SOCK_EV_ERR <<<<<<< \n");
+		return;
+	}
+
+	/* FIXME: 2000 */
+	len = pico_socket_recvfrom(sock, pkt, 2000, &ep, &remote_port);
+
+	nfs_state = STATE_DONE;
+	nfs_packet = pkt;
+	nfs_len = len;
+}
+
+static struct pico_socket *nfs_socket_open(uint16_t localport)
+{
+	struct pico_socket *sock;
+	union pico_address local_address;
+
+	sock = pico_socket_open(PICO_PROTO_IPV4, PICO_PROTO_UDP, nfs_cb);
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
 static int nfs_probe(struct device_d *dev)
 {
 	struct fs_device_d *fsdev = dev_to_fs_device(dev);
@@ -1346,19 +1424,38 @@ static int nfs_probe(struct device_d *dev)
 
 	npriv->path = xstrdup(path + 1);
 
-	npriv->server = resolv(tmp);
+	if (IS_ENABLED(CONFIG_NET_LEGACY)) {
+		npriv->server = resolv(tmp);
+	} else if (IS_ENABLED(CONFIG_NET_PICOTCP)) {
+		/* FIXME: check corectness */
+		npriv->remote_address.ip4.addr = resolv(tmp);
+	}
 
 	debug("nfs: server: %s path: %s\n", tmp, npriv->path);
 
-	npriv->con = net_udp_new(npriv->server, 0, nfs_handler, npriv);
-	if (IS_ERR(npriv->con)) {
-		ret = PTR_ERR(npriv->con);
-		goto err1;
+	if (IS_ENABLED(CONFIG_NET_LEGACY)) {
+		npriv->con = net_udp_new(npriv->server, 0, nfs_handler, npriv);
+		if (IS_ERR(npriv->con)) {
+			ret = PTR_ERR(npriv->con);
+			goto err1;
+		}
+
+		/* Need a priviliged source port */
+		net_udp_bind(npriv->con, 1000);
+	} else if (IS_ENABLED(CONFIG_NET_PICOTCP)) {
+		/* FIXME: 2048 */
+		npriv->pkt = xzalloc(2048);
+
+		/* Need a priviliged source port */
+		npriv->sock = nfs_socket_open(1000);
+		if (!npriv->sock) {
+			ret = -1;
+			goto err1;
+		}
+
+		npriv->sock->priv = npriv;
 	}
 
-	/* Need a priviliged source port */
-	net_udp_bind(npriv->con, 1000);
-
 	parseopt_hu(fsdev->options, "mountport", &npriv->mount_port);
 	if (!npriv->mount_port) {
 		ret = rpc_lookup_req(npriv, PROG_MOUNT, 3);
@@ -1381,6 +1478,11 @@ static int nfs_probe(struct device_d *dev)
 	}
 	debug("nfs port: %d\n", npriv->nfs_port);
 
+	if (IS_ENABLED(CONFIG_NET_PICOTCP)) {
+		npriv->mount_port = hton16(npriv->mount_port);
+		npriv->nfs_port = hton16(npriv->nfs_port);
+	}
+
 	ret = nfs_mount_req(npriv);
 	if (ret) {
 		printf("mounting failed with %d\n", ret);
@@ -1394,8 +1496,16 @@ static int nfs_probe(struct device_d *dev)
 	return 0;
 
 err2:
-	net_unregister(npriv->con);
+	if (IS_ENABLED(CONFIG_NET_LEGACY)) {
+		net_unregister(npriv->con);
+	} else if (IS_ENABLED(CONFIG_NET_PICOTCP)) {
+		pico_socket_close(npriv->sock);
+	}
+
 err1:
+	if (IS_ENABLED(CONFIG_NET_PICOTCP)) {
+		free(npriv->pkt);
+	}
 	free(npriv->path);
 err:
 	free(tmp);
@@ -1410,7 +1520,13 @@ static void nfs_remove(struct device_d *dev)
 
 	nfs_umount_req(npriv);
 
-	net_unregister(npriv->con);
+	if (IS_ENABLED(CONFIG_NET_LEGACY)) {
+		net_unregister(npriv->con);
+	} else if (IS_ENABLED(CONFIG_NET_PICOTCP)) {
+		pico_socket_close(npriv->sock);
+		free(npriv->pkt);
+	}
+
 	free(npriv->path);
 	free(npriv);
 }
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
