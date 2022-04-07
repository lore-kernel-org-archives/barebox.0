Delivery-date: Thu, 07 Apr 2022 11:39:33 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ncOc3-00AIvh-3N
	for lore@lore.pengutronix.de; Thu, 07 Apr 2022 11:39:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ncObz-0005zZ-TD
	for lore@pengutronix.de; Thu, 07 Apr 2022 11:39:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d+v/4pS0kM9A9HxZBUB19BnZcyeMoAm2SAKHOldU5lk=; b=0KOZ7/v4t8IXkW
	yOnVwe0XQYz1Q9lOgdVV1q6UsfY7stjhwSJ1Xq4YqO0xbQ0FKBpVLWvHfg78M2sqLR/vjGN3exZ9y
	TL4QeAWsxDkW82eSF/Qn8uXwTTW+W55mPlMERR13MEHUFPP2Q4jtid3+tLTWYxYqmpQjdGuNBYs4w
	pOLdIlHhNqqH+ozRTPy0NOrcUf39Jx5fl3A4fUykdiQ2Fyab6agKaY5KoreogpfJjTIIGfsll/kgb
	SOcAxh5l11cQOMe360su7Wtmwnm8nNb2voo/QOPlaOBMo7Rs6wDbLf8mukfS0Jf7xdP6SwZRiI6ZV
	J9edeD5fwlxyuAglJaGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ncOaR-00AuuX-9K; Thu, 07 Apr 2022 09:37:56 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ncOFM-00AlNE-Bt
 for barebox@lists.infradead.org; Thu, 07 Apr 2022 09:16:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1ncOFL-0001Qs-45; Thu, 07 Apr 2022 11:16:07 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1ncOFL-001aKL-QE; Thu, 07 Apr 2022 11:16:06 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1ncOFI-0040sD-VX; Thu, 07 Apr 2022 11:16:04 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Thu,  7 Apr 2022 11:16:04 +0200
Message-Id: <20220407091604.956577-13-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220407091604.956577-1-o.rempel@pengutronix.de>
References: <20220407091604.956577-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220407_021608_447809_D613FE01 
X-CRM114-Status: GOOD (  20.22  )
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
Subject: [PATCH v3 12/12] add ethlog
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 commands/Kconfig  |  8 +++++
 commands/Makefile |  1 +
 commands/ethlog.c | 82 +++++++++++++++++++++++++++++++++++++++++++++++
 include/net.h     | 11 +++++++
 net/eth.c         |  4 +--
 net/net.c         |  3 ++
 6 files changed, 107 insertions(+), 2 deletions(-)
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
index 0000000000..138650bae0
--- /dev/null
+++ b/commands/ethlog.c
@@ -0,0 +1,82 @@
+// SPDX-License-Identifier: GPL-2.0-only
+// SPDX-FileCopyrightText: (c) 2022 Pengutronix, Oleksij Rempel <o.rempel@pengutronix.de>
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
+	print_hex_dump(KERN_DEBUG, "rx data <: ", DUMP_PREFIX_OFFSET,
+		       16, 1, packet, length, true);
+}
+
+static void ethlog_tx_monitor(struct eth_device *edev, void *packet,
+			       int length)
+{
+	print_hex_dump(KERN_DEBUG, "tx data >: ", DUMP_PREFIX_OFFSET,
+		       16, 1, packet, length, true);
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
+	if (edev->tx_monitor || edev->rx_monitor) {
+		printf("TX/RX monitor is already registered on %s\n", edevname);
+		return 1;
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
index 06bf5fbe65..ac4dd7ab42 100644
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
index dd2ceb396d..2b0dcb6574 100644
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

