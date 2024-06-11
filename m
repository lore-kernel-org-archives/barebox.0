Delivery-date: Tue, 11 Jun 2024 15:44:51 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sH1nv-004GoK-0M
	for lore@lore.pengutronix.de;
	Tue, 11 Jun 2024 15:44:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sH1nu-0002q4-GD
	for lore@pengutronix.de; Tue, 11 Jun 2024 15:44:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=VHUxv+YfXcyClVN35MXohbo7frg/EjBonm/gdlDLbp4=; b=tOi8mAe92ONND1rxIzp7XfMk2p
	rNySn6K6An5+nhZESW+SnzKynJc9wpK6Ub7YIRLydBTRKlfFuVs+bN+PI4RDWmJpSOEYkL8saGNW9
	akkiwq8eioHXXqWXGWMNp8UU2BKuR7a/ACC6Q8oZJrPspJS5sR2u5CKJZ++tZIXqdy+8wvcBrSI0c
	PBBSyuUNdtW1sSEaPWlys1RLQaSKU24nfHVIiPe9w5Hfgdus+Qya1ZkCs8cqArCtU2yvk1i9V7zY0
	7rva6xDq+1TrFGIgYVjvPA+vwA9rZ9lg+knSYJPfuAcvFLEsHAwcKw3NGl6Y0F2DDPl0IFnCzXrX+
	vgmJxMEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sH1nC-000000092T3-0MXD;
	Tue, 11 Jun 2024 13:44:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sH1n7-000000092PE-07hL
	for barebox@lists.infradead.org;
	Tue, 11 Jun 2024 13:44:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1sH1n0-0002hs-05; Tue, 11 Jun 2024 15:43:54 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1sH1mx-001YoB-SL; Tue, 11 Jun 2024 15:43:51 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1sH1mx-00G1By-2e;
	Tue, 11 Jun 2024 15:43:51 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Tue, 11 Jun 2024 15:43:50 +0200
Message-Id: <20240611134350.3817821-1-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240611_064401_115756_AAE2493C 
X-CRM114-Status: GOOD (  13.58  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v1] add ip command
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The output of this command will as follow:
eth0: 5800a000.ethernet@5800a000.of
    link/ether 00:00:00:00:00:00
    inet 0.0.0.0
    link status: UP
eth1: spi-gpio-0:switch@0:ports:port@0.of
    link/ether 00:00:00:00:00:00
    inet 0.0.0.0
    link status: DOWN
eth2: spi-gpio-0:switch@0:ports:port@1.of
    link/ether 00:00:00:00:00:00
    inet 0.0.0.0
    link status: DOWN
eth3: spi-gpio-0:switch@0:ports:port@2.of
    link/ether 00:00:00:00:00:00
    inet 0.0.0.0
    link status: DOWN
eth4: spi-gpio-0:switch@0:ports:port@3.of
    link/ether 00:00:00:00:00:00
    inet 0.0.0.0
    link status: UP
eth5: usb1-0
    link/ether 00:50:b6:e5:b0:11
    inet 0.0.0.0
    link status: UNKNOWN

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 commands/Kconfig  |  7 +++++++
 commands/Makefile |  1 +
 commands/ip.c     | 35 +++++++++++++++++++++++++++++++++++
 3 files changed, 43 insertions(+)
 create mode 100644 commands/ip.c

diff --git a/commands/Kconfig b/commands/Kconfig
index 899673bfee..cc8f5b9628 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -1367,6 +1367,13 @@ config CMD_TFTP
 	  Options:
 		  -p	push to TFTP server
 
+config CMD_IP
+	tristate
+	prompt "ip"
+	default y
+	help
+	  The ip command is used to show current network configuration.
+
 config CMD_IP_ROUTE_GET
 	tristate
 	prompt "ip-route-get"
diff --git a/commands/Makefile b/commands/Makefile
index 30e1f8403e..5d7e5b9eaf 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -60,6 +60,7 @@ obj-$(CONFIG_CMD_FALSE)		+= false.o
 obj-$(CONFIG_CMD_VERSION)	+= version.o
 obj-$(CONFIG_CMD_HELP)		+= help.o
 obj-$(CONFIG_CMD_LSMOD)		+= lsmod.o
+obj-$(CONFIG_CMD_IP)		+= ip.o
 obj-$(CONFIG_CMD_INSMOD)	+= insmod.o
 obj-$(CONFIG_CMD_SPLASH)	+= splash.o
 obj-$(CONFIG_CMD_FBTEST)	+= fbtest.o
diff --git a/commands/ip.c b/commands/ip.c
new file mode 100644
index 0000000000..8a26baa231
--- /dev/null
+++ b/commands/ip.c
@@ -0,0 +1,35 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#include <command.h>
+#include <net.h>
+
+static int do_ip(int argc, char *argv[])
+{
+	struct eth_device *edev;
+
+	list_for_each_entry(edev, &netdev_list, list) {
+		printf("%s: %s\n", edev->devname, edev->parent->name);
+		printf("    link/ether %pM\n", edev->ethaddr);
+		printf("    inet %pI4\n", &edev->ipaddr);
+
+		if (edev->phydev) {
+			printf("    link status: %s\n",
+				edev->phydev->link ? "UP" : "DOWN");
+		} else {
+			printf("    link status: UNKNOWN\n");
+		}
+	}
+
+	return 0;
+}
+
+BAREBOX_CMD_HELP_START(ip)
+BAREBOX_CMD_HELP_TEXT("List network interfaces and their configuration or status")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(ip)
+	.cmd = do_ip,
+	BAREBOX_CMD_DESC("List network interfaces and their configuration or status")
+	BAREBOX_CMD_GROUP(CMD_GRP_NET)
+	BAREBOX_CMD_HELP(cmd_ip_help)
+BAREBOX_CMD_END
-- 
2.39.2



