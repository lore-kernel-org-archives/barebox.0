Delivery-date: Wed, 13 Apr 2022 10:24:15 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1neYIS-000W2o-Gb
	for lore@lore.pengutronix.de; Wed, 13 Apr 2022 10:24:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1neYIO-0002JO-2A
	for lore@pengutronix.de; Wed, 13 Apr 2022 10:24:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LFo+164L55nmvYBbqqrce20wwZ7vu/fqs8P1x7ySEf0=; b=hi8klWSD6kZmVX
	+v9hDssQvzUGPUhQvh/S8eu0L5BPr8n01vpj4fK3cwsUK7g2g0O4hsu9Bc6PK8MikMz+YiLteaYHt
	mNg0Sn9+igZakbhFmN2H37w2s13pQy35HJz+QybQFEY2/RnBZggVq0KcZTVLQRWhR3btwuPI3WMap
	Iy8uxr5TpNoZs97Im/Rb6oiiMbxYL9PzAOpVXWF8uJn/1XABVPR1ECtfJEurJ3lHndL9iXiIweOnj
	EVpeMvIUxADd1P6L1gcGqfeeKgLVMOBvAQx2A9tSOca1Ko9XQ5Uo55UFo9pQUIKdcXUutwGhBtS3G
	qrjLTaa+KKdjIWcVnIkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1neYH2-0000ma-06; Wed, 13 Apr 2022 08:22:48 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1neYGS-0000Tk-Rx
 for barebox@lists.infradead.org; Wed, 13 Apr 2022 08:22:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1neYGP-0001ao-M4; Wed, 13 Apr 2022 10:22:09 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1neYGQ-002kDD-BT; Wed, 13 Apr 2022 10:22:08 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1neYGM-001nlJ-Kl; Wed, 13 Apr 2022 10:22:06 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Wed, 13 Apr 2022 10:22:05 +0200
Message-Id: <20220413082205.429509-15-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220413082205.429509-1-o.rempel@pengutronix.de>
References: <20220413082205.429509-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220413_012212_947877_87D0BCA4 
X-CRM114-Status: GOOD (  20.47  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v5 14/14] add ethlog command
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

It is kind of tcpdump or tshark for barebox. Instead of starting
application it will let barebox dump everything to the console by still
allowing to use other application.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 commands/Kconfig  |  8 +++++
 commands/Makefile |  1 +
 commands/ethlog.c | 80 +++++++++++++++++++++++++++++++++++++++++++++++
 include/net.h     | 11 +++++++
 net/eth.c         |  4 +--
 net/net.c         |  3 ++
 6 files changed, 105 insertions(+), 2 deletions(-)
 create mode 100644 commands/ethlog.c

diff --git a/commands/Kconfig b/commands/Kconfig
index caef1e8fb5..c5505321cf 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -1272,6 +1272,14 @@ config CMD_IP_ROUTE_GET
 	  be shown on the command line or alternatively a variable is set to
 	  the result.
 
+config CMD_ETHLOG
+	tristate
+	prompt "ethlog"
+	help
+	  log ethernet traffic.
+
+	  Usage: ethlog [-r] [DEVICENAME]
+
 # end Network commands
 endmenu
 
diff --git a/commands/Makefile b/commands/Makefile
index fffb6d979e..b3b7bafe6b 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -16,6 +16,7 @@ obj-$(CONFIG_CMD_MEMCMP)	+= memcmp.o
 obj-$(CONFIG_CMD_MEMCPY)	+= memcpy.o
 obj-$(CONFIG_CMD_MEMSET)	+= memset.o
 obj-$(CONFIG_CMD_EDIT)		+= edit.o
+obj-$(CONFIG_CMD_ETHLOG)	+= ethlog.o
 obj-$(CONFIG_CMD_EXEC)		+= exec.o
 obj-$(CONFIG_CMD_SLEEP)		+= sleep.o
 obj-$(CONFIG_CMD_SMC)		+= smc.o
diff --git a/commands/ethlog.c b/commands/ethlog.c
new file mode 100644
index 0000000000..0cc93ba808
--- /dev/null
+++ b/commands/ethlog.c
@@ -0,0 +1,80 @@
+// SPDX-License-Identifier: GPL-2.0-only
+// SPDX-FileCopyrightText: (c) 2022 Pengutronix,
+//                             Oleksij Rempel <o.rempel@pengutronix.de>
+
+#include <common.h>
+#include <command.h>
+#include <complete.h>
+#include <environment.h>
+#include <getopt.h>
+#include <net.h>
+
+static void ethlog_rx_monitor(struct eth_device *edev, void *packet,
+			       int length)
+{
+	dev_print_hex_dump(&edev->dev, KERN_DEBUG, "rx data <: ",
+			   DUMP_PREFIX_OFFSET, 16, 1, packet, length, true);
+	printk("\n");
+}
+
+static void ethlog_tx_monitor(struct eth_device *edev, void *packet,
+			       int length)
+{
+	dev_print_hex_dump(&edev->dev, KERN_DEBUG, "tx data >: ",
+			   DUMP_PREFIX_OFFSET, 16, 1, packet, length, true);
+	printk("\n");
+}
+
+static int do_ethlog(int argc, char *argv[])
+{
+	struct eth_device *edev;
+	const char *edevname;
+	bool remove = false;
+	int opt;
+
+	while ((opt = getopt(argc, argv, "r")) > 0) {
+		switch (opt) {
+		case 'r':
+			remove = true;
+			break;
+		default:
+			return COMMAND_ERROR_USAGE;
+		}
+	}
+
+	if (optind == argc)
+		edevname = "eth0";
+	else
+		edevname = argv[optind];
+
+	edev = eth_get_byname(edevname);
+	if (!edev) {
+		printf("No such network device: %s\n", edevname);
+		return 1;
+	}
+
+	if (remove) {
+		edev->tx_monitor = NULL;
+		edev->rx_monitor = NULL;
+
+		return 0;
+	}
+
+	edev->tx_monitor = ethlog_tx_monitor;
+	edev->rx_monitor = ethlog_rx_monitor;
+
+	return 0;
+}
+
+BAREBOX_CMD_HELP_START(ethlog)
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT("-r", "remove log handler from Ethernet interface")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(ethlog)
+	.cmd		= do_ethlog,
+	BAREBOX_CMD_DESC("ETHLOG - tool to get dump of Ethernet packets")
+	BAREBOX_CMD_OPTS("[-r] [device]")
+	BAREBOX_CMD_GROUP(CMD_GRP_NET)
+	BAREBOX_CMD_COMPLETE(eth_complete)
+BAREBOX_CMD_END
diff --git a/include/net.h b/include/net.h
index 8013f79c2e..b50b6e76c8 100644
--- a/include/net.h
+++ b/include/net.h
@@ -46,6 +46,8 @@ struct eth_device {
 	int  (*set_ethaddr) (struct eth_device*, const unsigned char *adr);
 	int  (*rx_preprocessor) (struct eth_device*, unsigned char **packet,
 				 int *length);
+	void (*rx_monitor) (struct eth_device*, void *packet, int length);
+	void (*tx_monitor) (struct eth_device*, void *packet, int length);
 
 	struct eth_device *next;
 	void *priv;
@@ -90,6 +92,15 @@ static inline const char *eth_name(struct eth_device *edev)
 	return edev->devname;
 }
 
+static inline int eth_send_raw(struct eth_device *edev, void *packet,
+			       int length)
+{
+	if (edev->tx_monitor)
+		edev->tx_monitor(edev, packet, length);
+
+	return edev->send(edev, packet, length);
+}
+
 int eth_register(struct eth_device* dev);    /* Register network device		*/
 void eth_unregister(struct eth_device* dev); /* Unregister network device	*/
 int eth_set_ethaddr(struct eth_device *edev, const char *ethaddr);
diff --git a/net/eth.c b/net/eth.c
index e9e53341f3..bc641dc8e4 100644
--- a/net/eth.c
+++ b/net/eth.c
@@ -245,7 +245,7 @@ int eth_send(struct eth_device *edev, void *packet, int length)
 
 	led_trigger_network(LED_TRIGGER_NET_TX);
 
-	ret = edev->send(edev, packet, length);
+	ret = eth_send_raw(edev, packet, length);
 
 	slice_release(eth_device_slice(edev));
 
@@ -272,7 +272,7 @@ static void eth_do_work(struct eth_device *edev)
 
 	list_for_each_entry_safe(q, tmp, &edev->send_queue, list) {
 		led_trigger_network(LED_TRIGGER_NET_TX);
-		edev->send(edev, q->data, q->length);
+		eth_send_raw(edev, q->data, q->length);
 		list_del(&q->list);
 		free(q->data);
 		free(q);
diff --git a/net/net.c b/net/net.c
index 0b8e4caa0e..eae45e1843 100644
--- a/net/net.c
+++ b/net/net.c
@@ -708,6 +708,9 @@ int net_receive(struct eth_device *edev, unsigned char *pkt, int len)
 		goto out;
 	}
 
+	if (edev->rx_monitor)
+		edev->rx_monitor(edev, pkt, len);
+
 	if (edev->rx_preprocessor) {
 		ret = edev->rx_preprocessor(edev, &pkt, &len);
 		if (ret == -ENOMSG)
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

