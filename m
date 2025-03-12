Delivery-date: Wed, 12 Mar 2025 14:56:49 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tsMZl-00D9BQ-30
	for lore@lore.pengutronix.de;
	Wed, 12 Mar 2025 14:56:49 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tsMZk-0008R2-J6
	for lore@pengutronix.de; Wed, 12 Mar 2025 14:56:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Rs9biKAVqqhAsqGdjX0L2xoap5hZVxRRVHvsluxIsnU=; b=KbNvZFtExVCuBwgN/UnMsEEfy6
	8X+nnbmgIBXJOanPutWe8FW2M1eQ9/3viexPw1Rs3M/oSXbVDDqGgoQfUR7VXXANRREQr31ccU0GS
	P7SoM0XtTTlUeSaPvc/aL0xaqGv3vGvmNreoGl3uu85zfYz/wIvg8ACLIWLJFqleZfd5PevEat143
	MQvV40OF6aQKjm31PwBTs+tfM0T0UdZHx9QLn104OvmFX9fg2iohnkLG8Lc+l2aQTbGeoi3Ghg1A9
	4Fx21SNX/CUMTNhgfz6h1IUBjrjTTYE5tDBG4w4m9snAxgCI623m36BcxSZHyrouQPEjykMWHo9/1
	h49Ztrcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tsMZB-00000008dHR-3OSu;
	Wed, 12 Mar 2025 13:56:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tsMOx-00000008c1Z-1qCc
	for barebox@lists.infradead.org;
	Wed, 12 Mar 2025 13:45:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1tsMOw-0007IY-6p; Wed, 12 Mar 2025 14:45:38 +0100
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1tsMOw-005Mrv-02;
	Wed, 12 Mar 2025 14:45:38 +0100
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1tsMOv-00DYsY-35;
	Wed, 12 Mar 2025 14:45:37 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Wed, 12 Mar 2025 14:45:36 +0100
Message-Id: <20250312134536.3232324-1-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250312_064539_481748_45EEF37D 
X-CRM114-Status: GOOD (  18.62  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v1] commands: Add `ip` command for listing interfaces, addresses, and routes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This patch introduces the `ip` command, providing functionality similar
to Linux’s `ip` tool, catering to users with strong Linux muscle memory.
It supports:

- `ip l` / `ip link`   - Show network interfaces (state, MAC address)
- `ip a` / `ip addr`   - Show assigned IP addresses and netmasks
- `ip r` / `ip route`  - Show routing table, including default gateway,
                         interface-specific routes, DNS, and server IP.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 commands/Kconfig  |   9 +++
 commands/Makefile |   1 +
 commands/ip.c     | 157 ++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 167 insertions(+)
 create mode 100644 commands/ip.c

diff --git a/commands/Kconfig b/commands/Kconfig
index e41625e294c9..528b30b8fc90 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -1397,6 +1397,15 @@ config CMD_TFTP
 	  Options:
 		  -p	push to TFTP server
 
+config CMD_IP
+	tristate
+	prompt "ip"
+	default y
+	help
+          This command provides information about network interfaces, similar
+	  to the Linux `ip addr show` command. It lists interface names, states
+	  (UP/DOWN), MAC addresses, and assigned IP addresses.
+
 config CMD_IP_ROUTE_GET
 	tristate
 	prompt "ip-route-get"
diff --git a/commands/Makefile b/commands/Makefile
index e152e4148b04..c202cdef5703 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -146,6 +146,7 @@ obj-$(CONFIG_CMD_MMC)		+= mmc.o
 obj-$(CONFIG_CMD_MMC_EXTCSD)	+= mmc_extcsd.o
 obj-$(CONFIG_CMD_NAND_BITFLIP)	+= nand-bitflip.o
 obj-$(CONFIG_CMD_SEED)		+= seed.o
+obj-$(CONFIG_CMD_IP)		+= ip.o
 obj-$(CONFIG_CMD_IP_ROUTE_GET)  += ip-route-get.o
 obj-$(CONFIG_CMD_BTHREAD)	+= bthread.o
 obj-$(CONFIG_CMD_UBSAN)		+= ubsan.o
diff --git a/commands/ip.c b/commands/ip.c
new file mode 100644
index 000000000000..35fc5f4d300f
--- /dev/null
+++ b/commands/ip.c
@@ -0,0 +1,157 @@
+#include <common.h>
+#include <command.h>
+#include <net.h>
+#include <linux/list.h>
+#include <complete.h>
+
+/* Function to calculate CIDR prefix from netmask */
+static int netmask_to_prefix(IPaddr_t netmask)
+{
+	int prefix = 0;
+
+	while (netmask) {
+		prefix += netmask & 1;
+		netmask >>= 1;
+	}
+
+	return prefix;
+}
+
+/* Function to display network links (`ip l`) */
+static int do_ip_link(int argc, char *argv[])
+{
+	struct eth_device *edev;
+
+	for_each_netdev(edev) {
+		const char *phy_status = edev->phydev ?
+			(edev->phydev->link ? ",LOWER_UP" : ",NO-CARRIER") : "";
+
+		printf("%s: <%s%s>\n",
+			   eth_name(edev),
+			   edev->active ? "UP" : "DOWN",
+			   phy_status);
+
+		printf("	link/ether %pM brd ff:ff:ff:ff:ff:ff\n",
+		       edev->ethaddr);
+	}
+
+	return 0;
+}
+
+/* Function to display network addresses (`ip a`) */
+static int do_ip_addr(int argc, char *argv[])
+{
+	struct eth_device *edev;
+
+	for_each_netdev(edev) {
+		IPaddr_t ipaddr = net_get_ip(edev);
+		int prefix_length = netmask_to_prefix(edev->netmask);
+		const char *phy_status = edev->phydev ?
+			(edev->phydev->link ? ",LOWER_UP" : ",NO-CARRIER") : "";
+
+		printf("%s: <%s%s>\n", eth_name(edev),
+		       edev->active ? "UP" : "DOWN", phy_status);
+
+		printf("	link/ether %pM brd ff:ff:ff:ff:ff:ff\n",
+		       edev->ethaddr);
+
+		if (ipaddr) {
+			printf("	inet %pI4/%d scope global src %pI4\n",
+				   &ipaddr, prefix_length, &ipaddr);
+		}
+	}
+
+	return 0;
+}
+
+/* Function to display network routes (`ip r`) */
+static int do_ip_route(int argc, char *argv[])
+{
+	const char *domainname = net_get_domainname();
+	IPaddr_t nameserver = net_get_nameserver();
+	const char *serverip = net_get_server();
+	IPaddr_t gateway = net_get_gateway();
+	struct eth_device *edev;
+
+	for_each_netdev(edev) {
+		int prefix_length = netmask_to_prefix(edev->netmask);
+		IPaddr_t ipaddr = net_get_ip(edev);
+		const char *proto;
+
+		/* Skip interfaces without an IP address */
+		if (!ipaddr)
+			continue;
+
+		/* Determine protocol: DHCP or Static */
+		if (edev->global_mode == ETH_MODE_DHCP)
+			proto = "dhcp";
+		else
+			proto = "static";
+
+		/* Show default gateway */
+		if (gateway) {
+			printf("default via %pI4 dev %s proto %s src %pI4\n",
+				   &gateway, eth_name(edev), proto, &ipaddr);
+		}
+
+		/* Show per-interface network route */
+		if (prefix_length > 0) {
+			printf("%pI4/%d dev %s proto kernel scope link src %pI4\n",
+				   &ipaddr, prefix_length, eth_name(edev),
+				   &ipaddr);
+		}
+	}
+
+	/* Show boot server */
+	if (serverip && *serverip) {
+		printf("serverip %s\n", serverip);
+	}
+
+	/* Show DNS server */
+	if (nameserver) {
+		printf("nameserver %pI4\n", &nameserver);
+	}
+
+	/* Show search domain */
+	if (domainname && *domainname) {
+		printf("search %s\n", domainname);
+	}
+
+	return 0;
+}
+
+/* Main IP command dispatcher */
+static int do_ip(int argc, char *argv[])
+{
+	if (argc < 2) {
+		return do_ip_addr(argc, argv); /* Default: `ip a` */
+	}
+
+	if (!strcmp(argv[1], "l") || !strcmp(argv[1], "link"))
+		return do_ip_link(argc, argv);
+	else if (!strcmp(argv[1], "a") || !strcmp(argv[1], "addr"))
+		return do_ip_addr(argc, argv);
+	else if (!strcmp(argv[1], "r") || !strcmp(argv[1], "route"))
+		return do_ip_route(argc, argv);
+
+	printf("Usage: ip [l|link] | [a|addr] | [r|route]\n");
+	return 1;
+}
+
+BAREBOX_CMD_HELP_START(ip)
+BAREBOX_CMD_HELP_TEXT("Show network interfaces, addresses, and routes")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT("l, link", "Show only network links (interface state and MAC)")
+BAREBOX_CMD_HELP_OPT("a, addr", "Show only network addresses (default behavior)")
+BAREBOX_CMD_HELP_OPT("r, route", "Show routing information (default gateway, network routes, server IP, DNS)")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(ip)
+	.cmd		= do_ip,
+	BAREBOX_CMD_DESC("Show network interfaces, addresses, and routes")
+	BAREBOX_CMD_OPTS("[l|link] | [a|addr] | [r|route]")
+	BAREBOX_CMD_GROUP(CMD_GRP_MISC)
+	BAREBOX_CMD_COMPLETE(empty_complete)
+	BAREBOX_CMD_HELP(cmd_ip_help)
+BAREBOX_CMD_END
-- 
2.39.5



