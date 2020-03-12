Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCJKJ-0005TT-Au
 for barebox@lists.infradead.org; Thu, 12 Mar 2020 08:36:25 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 12 Mar 2020 09:35:54 +0100
Message-Id: <20200312083555.10793-19-s.hauer@pengutronix.de>
In-Reply-To: <20200312083555.10793-1-s.hauer@pengutronix.de>
References: <20200312083555.10793-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 18/19] net: Add ifdown support and command
To: Barebox List <barebox@lists.infradead.org>
Cc: Edmund Henniges <eh@emlix.com>, =?UTF-8?q?Daniel=20Gl=C3=B6ckner?= <dg@emlix.com>

ifdown is the counterpart to ifup and disables one or all ethernet
interfaces.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/net.h |  4 +++
 net/ifup.c    | 69 +++++++++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 73 insertions(+)

diff --git a/include/net.h b/include/net.h
index 23e3759905..583dc14ed5 100644
--- a/include/net.h
+++ b/include/net.h
@@ -488,6 +488,10 @@ int ifup_edev(struct eth_device *edev, unsigned flags);
 int ifup(const char *name, unsigned flags);
 int ifup_all(unsigned flags);
 
+void ifdown_edev(struct eth_device *edev);
+int ifdown(const char *name);
+void ifdown_all(void);
+
 extern struct list_head netdev_list;
 
 #define for_each_netdev(netdev) list_for_each_entry(netdev, &netdev_list, list)
diff --git a/net/ifup.c b/net/ifup.c
index fa2c52ff8b..b76b4bc44c 100644
--- a/net/ifup.c
+++ b/net/ifup.c
@@ -237,6 +237,12 @@ int ifup_edev(struct eth_device *edev, unsigned flags)
 	return 0;
 }
 
+void ifdown_edev(struct eth_device *edev)
+{
+	eth_close(edev);
+	edev->ifup = false;
+}
+
 int ifup(const char *ethname, unsigned flags)
 {
 	struct eth_device *edev;
@@ -253,6 +259,19 @@ int ifup(const char *ethname, unsigned flags)
 	return ifup_edev(edev, flags);
 }
 
+int ifdown(const char *ethname)
+{
+	struct eth_device *edev;
+
+	edev = eth_get_byname(ethname);
+	if (!edev)
+		return -ENODEV;
+
+	ifdown_edev(edev);
+
+	return 0;
+}
+
 static int net_ifup_force_detect;
 
 int ifup_all(unsigned flags)
@@ -286,6 +305,14 @@ int ifup_all(unsigned flags)
 	return 0;
 }
 
+void ifdown_all(void)
+{
+	struct eth_device *edev;
+
+	for_each_netdev(edev)
+		ifdown_edev(edev);
+}
+
 static int ifup_all_init(void)
 {
 	globalvar_add_simple_bool("net.ifup_force_detect", &net_ifup_force_detect);
@@ -346,4 +373,46 @@ BAREBOX_CMD_START(ifup)
 	BAREBOX_CMD_HELP(cmd_ifup_help)
 BAREBOX_CMD_END
 
+static int do_ifdown(int argc, char *argv[])
+{
+	int opt;
+	int all = 0;
+
+	while ((opt = getopt(argc, argv, "a")) > 0) {
+		switch (opt) {
+		case 'a':
+			all = 1;
+			break;
+		}
+	}
+
+	if (all) {
+		ifdown_all();
+		return 0;
+	}
+
+	if (argc == optind)
+		return COMMAND_ERROR_USAGE;
+
+	return ifdown(argv[optind]);
+}
+
+
+
+BAREBOX_CMD_HELP_START(ifdown)
+BAREBOX_CMD_HELP_TEXT("Disable a network interface")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT ("-a",  "disable all interfaces")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(ifdown)
+	.cmd		= do_ifdown,
+	BAREBOX_CMD_DESC("disable a network interface")
+	BAREBOX_CMD_OPTS("[-a] [INTF]")
+	BAREBOX_CMD_GROUP(CMD_GRP_NET)
+	BAREBOX_CMD_COMPLETE(eth_complete)
+	BAREBOX_CMD_HELP(cmd_ifdown_help)
+BAREBOX_CMD_END
+
 #endif
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
