Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22f.google.com ([2a00:1450:4010:c04::22f])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZFT4V-0006Nh-S0
 for barebox@lists.infradead.org; Wed, 15 Jul 2015 20:14:29 +0000
Received: by lbbpo10 with SMTP id po10so31615141lbb.3
 for <barebox@lists.infradead.org>; Wed, 15 Jul 2015 13:14:06 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed, 15 Jul 2015 23:13:41 +0300
Message-Id: <1436991230-14251-4-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC 03/12] net: add initial picotcp support
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
 include/net.h          |  3 +++
 include/pico_defines.h |  0
 include/stdint.h       |  1 +
 net/Kconfig            | 17 ++++++++++++
 net/Makefile           |  3 +++
 net/eth.c              | 71 ++++++++++++++++++++++++++++++++++++++++++++++++++
 net/net.c              | 10 +++++++
 net/picotcp.c          | 20 ++++++++++++++
 10 files changed, 130 insertions(+)

diff --git a/Makefile b/Makefile
index 0fe9274..8724d08 100644
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
index b93e264..c48eceb 100644
--- a/include/net.h
+++ b/include/net.h
@@ -32,6 +32,8 @@
 
 struct device_d;
 
+#include <pico_stack.h>
+
 struct eth_device {
 	int active;
 
@@ -44,6 +46,7 @@ struct eth_device {
 	int  (*get_ethaddr) (struct eth_device*, u8 adr[6]);
 	int  (*set_ethaddr) (struct eth_device*, const unsigned char *adr);
 
+	struct pico_device *picodev;
 	struct eth_device *next;
 	void *priv;
 
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
index a890492..0099e6f 100644
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
@@ -10,6 +22,7 @@ config NET_NFS
 config NET_NETCONSOLE
 	bool
 	depends on !CONSOLE_NONE
+	depends on NET_LEGACY
 	prompt "network console support"
 	help
 	  This option adds support for a simple udp based network console.
@@ -20,10 +33,14 @@ config NET_RESOLV
 
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
index e5bd9bb..dfa916c 100644
--- a/net/net.c
+++ b/net/net.c
@@ -540,12 +540,22 @@ bad:
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
