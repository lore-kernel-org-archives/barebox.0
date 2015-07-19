Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x233.google.com ([2a00:1450:4010:c03::233])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZGv03-0003Oo-UU
 for barebox@lists.infradead.org; Sun, 19 Jul 2015 20:15:53 +0000
Received: by lahe2 with SMTP id e2so24186034lah.1
 for <barebox@lists.infradead.org>; Sun, 19 Jul 2015 13:15:30 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sun, 19 Jul 2015 23:07:18 +0300
Message-Id: <1437336443-8076-12-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC v2 11/16] net: add initial picotcp support
To: barebox@lists.infradead.org
Cc: Daniele Lacamera <daniele.lacamera@tass.be>

This commit adds initial picotcp support:

 * build stuff (Kbuild fixes and fake stdint.h);
 * "pico_adapter" code for connecting barebox ethernet interfaces
   to picotcp;
 * picotcp start initialization and necessary poller.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
Signed-off-by: Daniele Lacamera <daniele.lacamera@tass.be>
---
 Makefile               |  1 +
 commands/Kconfig       |  4 +++
 include/net.h          | 37 ++++++++++++++++++++++-
 include/pico_defines.h |  0
 include/stdint.h       |  1 +
 net/Kconfig            | 16 ++++++++++
 net/Makefile           |  3 ++
 net/eth.c              | 71 +++++++++++++++++++++++++++++++++++++++++++
 net/net.c              | 81 +++++++++++++++++++++++++++++++++++++++++++++++++-
 net/picotcp.c          | 20 +++++++++++++
 10 files changed, 232 insertions(+), 2 deletions(-)

diff --git a/Makefile b/Makefile
index 5a7fd5f..972b5db 100644
--- a/Makefile
+++ b/Makefile
@@ -292,6 +292,7 @@ export MODVERDIR := $(if $(KBUILD_EXTMOD),$(firstword $(KBUILD_EXTMOD))/).tmp_ve
 # Use LINUXINCLUDE when you must reference the include/ directory.
 # Needed to be compatible with the O= option
 LINUXINCLUDE    := -Iinclude -I$(srctree)/dts/include \
+                   -I$(srctree)/net/picotcp/include -I$(srctree)/net/picotcp/modules \
                    $(if $(KBUILD_SRC), -I$(srctree)/include) \
 		   -I$(srctree)/arch/$(ARCH)/include \
 		   -I$(objtree)/arch/$(ARCH)/include \
diff --git a/commands/Kconfig b/commands/Kconfig
index 5571902..77193cb 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -1184,6 +1184,7 @@ menu "Network"
 config CMD_DHCP
 	bool
 	select NET_DHCP
+	depends on NET_LEGACY
 	prompt "dhcp"
 	help
 	  DHCP client to obtain IP or boot params
@@ -1210,6 +1211,7 @@ config CMD_HOST
 config NET_CMD_IFUP
 	bool
 	prompt "ifup"
+	depends on NET_LEGACY
 	help
 	  Bring up network interfaces based on config files.
 
@@ -1237,6 +1239,7 @@ config CMD_MIITOOL
 
 config CMD_PING
 	tristate
+	depends on NET_LEGACY
 	prompt "ping"
 	help
 	  Send ICMP echo requests.
@@ -1245,6 +1248,7 @@ config CMD_PING
 
 config CMD_TFTP
 	depends on FS_TFTP
+	depends on NET_LEGACY
 	tristate
 	prompt "tftp"
 	help
diff --git a/include/net.h b/include/net.h
index ed63d3c..5f2d470 100644
--- a/include/net.h
+++ b/include/net.h
@@ -24,6 +24,10 @@
 #include <linux/string.h>	/* memcpy */
 #include <asm/byteorder.h>	/* for nton* / ntoh* stuff */
 
+#include <pico_stack.h>
+#include <pico_socket.h>
+#include <pico_ipv4.h>
+
 /* How often do we retry to send packages */
 #define PKT_NUM_RETRIES 4
 
@@ -44,6 +48,7 @@ struct eth_device {
 	int  (*get_ethaddr) (struct eth_device*, u8 adr[6]);
 	int  (*set_ethaddr) (struct eth_device*, const unsigned char *adr);
 
+	struct pico_device *picodev;
 	struct eth_device *next;
 	void *priv;
 
@@ -433,6 +438,8 @@ struct net_connection {
 	void *handler;
 	int proto;
 	void *priv;
+	struct pico_socket *sock;
+	uint16_t remote_port;
 };
 
 static inline char *net_alloc_packet(void)
@@ -450,10 +457,28 @@ void net_unregister(struct net_connection *con);
 
 static inline int net_udp_bind(struct net_connection *con, uint16_t sport)
 {
+	if (IS_ENABLED(CONFIG_NET_PICOTCP)) {
+		union pico_address local_address;
+		uint16_t localport;
+
+		/* FIXME: use local_address == PICO_IPV4_INADDR_ANY */
+		memset(&local_address, 0, sizeof(union pico_address));
+
+		localport = ntohs(sport);
+
+		/* FIXME: check pico_socket_bind() return value */
+		pico_socket_bind(con->sock, &local_address, &localport);
+
+		return 0;
+	}
+
 	con->udp->uh_sport = ntohs(sport);
 	return 0;
 }
 
+#define UDP_PAYLOAD_SIZE (PKTSIZE - sizeof(struct ethernet) - sizeof(struct iphdr) - \
+		sizeof(struct udphdr))
+
 static inline void *net_udp_get_payload(struct net_connection *con)
 {
 	return con->packet + sizeof(struct ethernet) + sizeof(struct iphdr) +
@@ -475,6 +500,10 @@ static inline uint16_t getudppeerport(struct net_connection *con)
 {
 	struct udphdr *udp = net_eth_to_udphdr(con->rpacket);
 
+	if (IS_ENABLED(CONFIG_NET_PICOTCP)) {
+		return con->remote_port;
+	}
+
 	return udp->uh_sport;
 }
 
@@ -482,7 +511,13 @@ static inline uint16_t getudppeerport(struct net_connection *con)
 
 static inline void setudppeerport(struct net_connection *con, uint16_t dport)
 {
-	con->udp->uh_dport = dport;
+	if (IS_ENABLED(CONFIG_NET_LEGACY)) {
+		con->udp->uh_dport = dport;
+	} else if (IS_ENABLED(CONFIG_NET_PICOTCP)) {
+		/* FIXME */
+//		pico_socket_connect(npriv->con->sock, &remote_address, dport);
+		con->sock->remote_port = dport;
+	}
 }
 
 #endif /* __NET_H__ */
diff --git a/include/pico_defines.h b/include/pico_defines.h
new file mode 100644
index 0000000..e69de29
diff --git a/include/stdint.h b/include/stdint.h
new file mode 100644
index 0000000..029276e
--- /dev/null
+++ b/include/stdint.h
@@ -0,0 +1 @@
+/* fake stdint.h for picotcp */
diff --git a/net/Kconfig b/net/Kconfig
index a890492..f8f660c 100644
--- a/net/Kconfig
+++ b/net/Kconfig
@@ -3,6 +3,18 @@ menuconfig NET
 
 if NET
 
+choice
+	prompt "network stack implementation"
+
+config NET_LEGACY
+	bool "legacy U-Boot network stack"
+
+config NET_PICOTCP
+	bool "picotcp network stack"
+	select POLLER
+
+endchoice
+
 config NET_NFS
 	bool
 	prompt "nfs support"
@@ -20,10 +32,14 @@ config NET_RESOLV
 
 config NET_IFUP
 	default y
+	depends on NET_LEGACY
 	bool
 
 config NET_DHCP
 	bool
+	depends on NET_LEGACY
 	prompt "dhcp support"
 
+source "net/picotcp/Kconfig"
+
 endif
diff --git a/net/Makefile b/net/Makefile
index 8d564e7..7a4597d 100644
--- a/net/Makefile
+++ b/net/Makefile
@@ -7,3 +7,6 @@ obj-$(CONFIG_CMD_PING)	+= ping.o
 obj-$(CONFIG_NET_RESOLV)+= dns.o
 obj-$(CONFIG_NET_NETCONSOLE) += netconsole.o
 obj-$(CONFIG_NET_IFUP)	+= ifup.o
+
+obj-$(CONFIG_NET_PICOTCP) += picotcp/
+obj-$(CONFIG_NET_PICOTCP) += picotcp.o
diff --git a/net/eth.c b/net/eth.c
index a090961..34358f6 100644
--- a/net/eth.c
+++ b/net/eth.c
@@ -328,6 +328,73 @@ static int eth_register_of_fixup(void)
 late_initcall(eth_register_of_fixup);
 #endif
 
+#ifdef CONFIG_NET_PICO_SUPPORT_ETH
+
+#include <pico_stack.h>
+#include <pico_ipv4.h>
+
+struct pico_device_barebox_eth {
+	struct pico_device dev;
+	struct eth_device *edev;
+};
+
+static int pico_adapter_send(struct pico_device *dev, void *buf, int len)
+{
+	struct pico_device_barebox_eth *t = (struct pico_device_barebox_eth *)dev;
+	struct eth_device *edev = t->edev;
+
+	pr_debug("pico_adapter_send barebox eth (len=%d)\n", len);
+	edev->send(edev, buf, len);
+
+	return len;
+}
+
+static int pico_adapter_poll(struct pico_device *dev, int loop_score)
+{
+	struct pico_device_barebox_eth *t = (struct pico_device_barebox_eth *)dev;
+	struct eth_device *edev = t->edev;
+
+	/* pico_stack_recv(dev, buf, len) will be called from net_receive */
+
+	edev->recv(edev);
+
+	return loop_score;
+}
+
+static void pico_adapter_destroy(struct pico_device *dev)
+{
+	printf("pico_adapter_destroy barebox eth\n");
+}
+
+static void pico_adapter_init(struct eth_device *edev)
+{
+	/* FIXME: get macaddr for edev */
+	static unsigned char macaddr0[6] = { 0, 0, 0, 0xa, 0xb, 0xc };
+
+	struct pico_device_barebox_eth *pif = PICO_ZALLOC(sizeof(struct pico_device_barebox_eth));
+
+	struct pico_device *picodev;
+
+	char *name = strdup(edev->dev.name);
+
+	picodev = &pif->dev;
+	if (0 != pico_device_init(picodev, name, macaddr0)) {
+		pr_info("pico_adapter_init failed.\n");
+		pico_adapter_destroy(picodev);
+		return;
+	}
+
+	picodev->send = pico_adapter_send;
+	picodev->poll = pico_adapter_poll;
+	picodev->destroy = pico_adapter_destroy;
+
+	pif->edev = edev;
+	edev->picodev = picodev;
+
+	pr_info("Device %s created.\n", picodev->name);
+}
+#endif /* CONFIG_NET_PICO_SUPPORT_ETH */
+
 int eth_register(struct eth_device *edev)
 {
 	struct device_d *dev = &edev->dev;
@@ -388,6 +455,10 @@ int eth_register(struct eth_device *edev)
 	if (!eth_current)
 		eth_current = edev;
 
+#ifdef CONFIG_NET_PICO_SUPPORT_ETH
+	pico_adapter_init(edev);
+#endif
+
 	return 0;
 }
 
diff --git a/net/net.c b/net/net.c
index 23a9173..f4481f8 100644
--- a/net/net.c
+++ b/net/net.c
@@ -194,9 +194,15 @@ static int arp_request(IPaddr_t dest, unsigned char *ether)
 	return 0;
 }
 
+#include <pico_stack.h>
+
 void net_poll(void)
 {
-	eth_rx();
+	if (IS_ENABLED(CONFIG_NET_LEGACY)) {
+		eth_rx();
+	} else if (IS_ENABLED(CONFIG_NET_PICOTCP)) {
+		pico_stack_tick();
+	}
 }
 
 static uint16_t net_udp_new_localport(void)
@@ -262,6 +268,17 @@ static struct net_connection *net_new(IPaddr_t dest, void *handler,
 	struct net_connection *con;
 	int ret;
 
+	if (IS_ENABLED(CONFIG_NET_PICOTCP)) {
+		con = xzalloc(sizeof(*con));
+		con->handler = handler;
+		con->packet = net_alloc_packet();
+		memset(con->packet, 0, PKTSIZE);
+
+		list_add_tail(&con->list, &connection_list);
+
+		return con;
+	}
+
 	if (!edev)
 		return ERR_PTR(-ENETDOWN);
 
@@ -316,6 +333,27 @@ out:
 	return ERR_PTR(ret);
 }
 
+#include <pico_socket.h>
+#include <pico_ipv4.h>
+
+static void picotcp_udp_cb(uint16_t ev, struct pico_socket *sock)
+{
+	struct net_connection *con = sock->priv;
+	udp_rx_handler_f *handler = con->handler;
+	int len;
+	union pico_address ep;
+	char *pkt = con->packet;
+
+	if (ev == PICO_SOCK_EV_ERR) {
+		printf(">>>>>> PICO_SOCK_EV_ERR (%d)\n", pico_err);
+		return;
+	}
+
+	len = pico_socket_recvfrom(sock, pkt, UDP_PAYLOAD_SIZE, &ep, &con->remote_port);
+
+	handler(con, pkt, len);
+}
+
 struct net_connection *net_udp_new(IPaddr_t dest, uint16_t dport,
 		udp_rx_handler_f *handler, void *ctx)
 {
@@ -324,6 +362,26 @@ struct net_connection *net_udp_new(IPaddr_t dest, uint16_t dport,
 	if (IS_ERR(con))
 		return con;
 
+	if (IS_ENABLED(CONFIG_NET_PICOTCP)) {
+		union pico_address remote_address;
+
+		remote_address.ip4.addr = dest;
+
+		con->sock = pico_socket_open(PICO_PROTO_IPV4,
+						PICO_PROTO_UDP, picotcp_udp_cb);
+
+		if (!con->sock)
+			return ERR_PTR(-ENOBUFS);
+
+		/* FIXME: check return value */
+		pico_socket_connect(con->sock, &remote_address, htons(dport));
+
+		con->sock->priv = con;
+		con->priv = ctx;
+
+		return con;
+	}
+
 	con->proto = IPPROTO_UDP;
 	con->udp->uh_dport = htons(dport);
 	con->udp->uh_sport = htons(net_udp_new_localport());
@@ -348,6 +406,10 @@ struct net_connection *net_icmp_new(IPaddr_t dest, rx_handler_f *handler,
 
 void net_unregister(struct net_connection *con)
 {
+	if (IS_ENABLED(CONFIG_NET_PICOTCP)) {
+		pico_socket_close(con->sock);
+	}
+
 	list_del(&con->list);
 	free(con->packet);
 	free(con);
@@ -365,6 +427,13 @@ static int net_ip_send(struct net_connection *con, int len)
 
 int net_udp_send(struct net_connection *con, char *payload, int len)
 {
+	if (IS_ENABLED(CONFIG_NET_PICOTCP)) {
+		/* FIXME: pico_socket_send() ret code is ignored */
+		pico_socket_send(con->sock, payload, len);
+
+		return 0;
+	}
+
 	con->udp->uh_ulen = htons(len + 8);
 	con->udp->uh_sum = 0;
 
@@ -544,12 +613,22 @@ bad:
 	return 0;
 }
 
+#include <pico_stack.h>
+
 int net_receive(struct eth_device *edev, unsigned char *pkt, int len)
 {
 	struct ethernet *et = (struct ethernet *)pkt;
 	int et_protlen = ntohs(et->et_protlen);
 	int ret;
 
+	if (IS_ENABLED(CONFIG_NET_PICOTCP)) {
+		pico_stack_recv(edev->picodev, pkt, len);
+
+		led_trigger_network(LED_TRIGGER_NET_RX);
+
+		return 0;
+	}
+
 	led_trigger_network(LED_TRIGGER_NET_RX);
 
 	if (len < ETHER_HDR_SIZE) {
diff --git a/net/picotcp.c b/net/picotcp.c
new file mode 100644
index 0000000..ee16a68
--- /dev/null
+++ b/net/picotcp.c
@@ -0,0 +1,20 @@
+#include <init.h>
+#include <poller.h>
+#include <pico_stack.h>
+
+static struct poller_struct picotcp_poller;
+
+static void picotcp_poller_cb(struct poller_struct *poller)
+{
+	pico_stack_tick();
+}
+
+static int picotcp_net_init(void)
+{
+	pico_stack_init();
+
+	picotcp_poller.func = picotcp_poller_cb;
+
+	return poller_register(&picotcp_poller);
+}
+postcore_initcall(picotcp_net_init);
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
