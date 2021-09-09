Delivery-date: Thu, 09 Sep 2021 11:15:54 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mOG9y-0004Bx-74
	for lore@lore.pengutronix.de; Thu, 09 Sep 2021 11:15:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mOG9w-00050T-RT
	for lore@pengutronix.de; Thu, 09 Sep 2021 11:15:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8mRY/g5D7XdLd1cV+EiV1CVxAAI0qwDBtEcTbk7veHM=; b=qjtx9+v6ds38V0
	2fnIvci9wqvPEIKd2dgAS/uoXY43Ccqxenyi96CG10MDWhrahKPAtLDVf0smBHgb6zoaRoUMPuZ5H
	SsB2NgnH+3xyDxJbEEemwFS+bv1BuCZEX9jzJzIvNEXjrlu/DAnOMncqEVtmrD3qQptE/HcDwrqzS
	T+HmUUSwvyv6BQjOznlYaXB114of0dPLSJX8Zq5QOJG2Pihw12JX45eRL0oAQNB0OLffVYi7gO/Yn
	cbd9M3lWgHepCaWV82CAfC31PCaRpacJ3TUjVGc9uVlvkaf1K3FkQWj2V3IfOn2Z9c3qmsxlxDRsL
	yl8wnxEd5DH/eikgLO4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mOG8J-008jvw-S2; Thu, 09 Sep 2021 09:14:12 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mOG8A-008jt0-HD
 for barebox@lists.infradead.org; Thu, 09 Sep 2021 09:14:04 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1mOG87-0004Lo-1o; Thu, 09 Sep 2021 11:13:59 +0200
Received: from ore by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1mOG86-0002Th-FT; Thu, 09 Sep 2021 11:13:58 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Thu,  9 Sep 2021 11:13:49 +0200
Message-Id: <20210909091349.9446-8-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210909091349.9446-1-o.rempel@pengutronix.de>
References: <20210909091349.9446-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210909_021402_617367_FCE6C32A 
X-CRM114-Status: GOOD (  16.81  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v1 8/8] ifup: optimize net boot time for USB ethernet adapters
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On some boards, forcing detection of all device will take noticeable more
time. To reduce this time, we need to scan only for USB devices.

So, provide option do ifup by forcing only USB scan.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 Documentation/user/networking.rst |  3 +++
 arch/arm/boards/skov-imx6/board.c |  2 +-
 include/net.h                     |  1 +
 net/ifup.c                        | 16 ++++++++++++++--
 4 files changed, 19 insertions(+), 3 deletions(-)

diff --git a/Documentation/user/networking.rst b/Documentation/user/networking.rst
index 9231ebde56..18936ff169 100644
--- a/Documentation/user/networking.rst
+++ b/Documentation/user/networking.rst
@@ -55,6 +55,9 @@ device:
 |                              |              | detected automatically during start (i.e. for  |
 |                              |              | USB network adapters)                          |
 +------------------------------+--------------+------------------------------------------------+
+| global.net.ifup_detect_usb   | boolean      | Set to true if you use USB network adapter     |
+|                              |              | and global.net.ifup_force_detect is too slow.  |
++------------------------------+--------------+------------------------------------------------+
 
 The first step for networking is configuring the network device. The network
 device is usually ``eth0``. The current configuration can be viewed with the
diff --git a/arch/arm/boards/skov-imx6/board.c b/arch/arm/boards/skov-imx6/board.c
index 9a32e68f21..bd00c16157 100644
--- a/arch/arm/boards/skov-imx6/board.c
+++ b/arch/arm/boards/skov-imx6/board.c
@@ -626,7 +626,7 @@ no_switch:
 		pr_warn("Can't disable eth0\n");
 	}
 
-	globalvar_set("net.ifup_force_detect", "true");
+	globalvar_set("net.ifup_detect_usb", "true");
 
 	return 0;
 }
diff --git a/include/net.h b/include/net.h
index aad28e4f4c..15cd921f56 100644
--- a/include/net.h
+++ b/include/net.h
@@ -488,6 +488,7 @@ int net_icmp_send(struct net_connection *con, int len);
 void led_trigger_network(enum led_trigger trigger);
 
 #define IFUP_FLAG_FORCE		(1 << 0)
+#define IFUP_FLAG_USB		(1 << 1)
 
 int ifup_edev(struct eth_device *edev, unsigned flags);
 int ifup(const char *name, unsigned flags);
diff --git a/net/ifup.c b/net/ifup.c
index 1870f74017..5cb2b52716 100644
--- a/net/ifup.c
+++ b/net/ifup.c
@@ -20,6 +20,7 @@
 #include <globalvar.h>
 #include <magicvar.h>
 #include <linux/stat.h>
+#include <usb/usb.h>
 
 static int eth_discover(char *file)
 {
@@ -260,6 +261,7 @@ int ifdown(const char *ethname)
 }
 
 static int net_ifup_force_detect;
+static int net_ifup_detect_usb;
 
 int ifup_all(unsigned flags)
 {
@@ -282,6 +284,9 @@ int ifup_all(unsigned flags)
 
 	closedir(dir);
 
+	if ((flags & IFUP_FLAG_USB) || net_ifup_detect_usb)
+		usb_rescan();
+
 	if ((flags & IFUP_FLAG_FORCE) || net_ifup_force_detect ||
 	    list_empty(&netdev_list))
 		device_detect_all();
@@ -303,6 +308,7 @@ void ifdown_all(void)
 static int ifup_all_init(void)
 {
 	globalvar_add_simple_bool("net.ifup_force_detect", &net_ifup_force_detect);
+	globalvar_add_simple_bool("net.ifup_detect_usb", &net_ifup_detect_usb);
 
 	return 0;
 }
@@ -310,6 +316,8 @@ late_initcall(ifup_all_init);
 
 BAREBOX_MAGICVAR(global.net.ifup_force_detect,
                  "net: force detection of devices on ifup -a");
+BAREBOX_MAGICVAR(global.net.ifup_detect_usb,
+                 "net: scan usb without forcing detection of all devices on ifup -a");
 
 #if IS_ENABLED(CONFIG_NET_CMD_IFUP)
 
@@ -319,11 +327,14 @@ static int do_ifup(int argc, char *argv[])
 	unsigned flags = 0;
 	int all = 0;
 
-	while ((opt = getopt(argc, argv, "af")) > 0) {
+	while ((opt = getopt(argc, argv, "afu")) > 0) {
 		switch (opt) {
 		case 'f':
 			flags |= IFUP_FLAG_FORCE;
 			break;
+		case 'u':
+			flags |= IFUP_FLAG_USB;
+			break;
 		case 'a':
 			all = 1;
 			break;
@@ -348,12 +359,13 @@ BAREBOX_CMD_HELP_TEXT("")
 BAREBOX_CMD_HELP_TEXT("Options:")
 BAREBOX_CMD_HELP_OPT ("-a",  "bring up all interfaces")
 BAREBOX_CMD_HELP_OPT ("-f",  "Force. Configure even if ip already set")
+BAREBOX_CMD_HELP_OPT ("-u",  "Probe USB ")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(ifup)
 	.cmd		= do_ifup,
 	BAREBOX_CMD_DESC("bring a network interface up")
-	BAREBOX_CMD_OPTS("[-af] [INTF]")
+	BAREBOX_CMD_OPTS("[-afu] [INTF]")
 	BAREBOX_CMD_GROUP(CMD_GRP_NET)
 	BAREBOX_CMD_COMPLETE(eth_complete)
 	BAREBOX_CMD_HELP(cmd_ifup_help)
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

