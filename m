Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eKjPw-0003OJ-B9
 for barebox@lists.infradead.ORG; Fri, 01 Dec 2017 11:23:42 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH 26/27] commands: Add ip_route_add command
Date: Fri,  1 Dec 2017 12:22:55 +0100
Message-Id: <20171201112256.20196-27-s.hauer@pengutronix.de>
In-Reply-To: <20171201112256.20196-1-s.hauer@pengutronix.de>
References: <20171201112256.20196-1-s.hauer@pengutronix.de>
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
To: Barebox List <barebox@lists.infradead.org>

The ip_route_get command is used to retrieve the network
device used to reach a given IP address. This is useful
for informational purposes and also for the network boot
which wants to get the linux.bootargs parameter of the
network device used for nfsroot.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/Kconfig        | 10 ++++++
 commands/Makefile       |  1 +
 commands/ip-route-get.c | 96 +++++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 107 insertions(+)
 create mode 100644 commands/ip-route-get.c

diff --git a/commands/Kconfig b/commands/Kconfig
index ae2dc4b094..eee4b6aee8 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -1200,6 +1200,16 @@ config CMD_TFTP
 	  Options:
 		  -p	push to TFTP server
 
+config CMD_IP_ROUTE_GET
+	tristate
+	prompt "ip-route-get"
+	default y
+	help
+	  The ip-route-get command is used to retrieve the network interface
+	  which is used to reach the specified IP address. Information can
+	  be shown on the command line or alternatively a variable is set to
+	  the result.
+
 # end Network commands
 endmenu
 
diff --git a/commands/Makefile b/commands/Makefile
index 582175f631..eb4796389e 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -122,3 +122,4 @@ obj-$(CONFIG_CMD_SPD_DECODE)	+= spd_decode.o
 obj-$(CONFIG_CMD_MMC_EXTCSD)	+= mmc_extcsd.o
 obj-$(CONFIG_CMD_NAND_BITFLIP)	+= nand-bitflip.o
 obj-$(CONFIG_CMD_SEED)		+= seed.o
+obj-$(CONFIG_CMD_IP_ROUTE_GET)  += ip-route-get.o
diff --git a/commands/ip-route-get.c b/commands/ip-route-get.c
new file mode 100644
index 0000000000..d393218188
--- /dev/null
+++ b/commands/ip-route-get.c
@@ -0,0 +1,96 @@
+/*
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; version 2.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
+ * General Public License for more details.
+ */
+
+#include <command.h>
+#include <common.h>
+#include <getopt.h>
+#include <complete.h>
+#include <environment.h>
+#include <net.h>
+
+static int do_ip_route_get(int argc, char *argv[])
+{
+	struct eth_device *edev;
+	IPaddr_t ip, gw = 0;
+	const char *variable = NULL;
+	int opt, ret;
+	bool bootarg = false;
+
+	while ((opt = getopt(argc, argv, "b")) > 0) {
+		switch (opt) {
+		case 'b':
+			bootarg = true;
+			break;
+		default:
+			return COMMAND_ERROR_USAGE;
+		}
+	}
+
+	if (argc == optind)
+		return COMMAND_ERROR_USAGE;
+
+	if (argc == optind + 2)
+		variable = argv[optind + 1];
+
+	ret = string_to_ip(argv[optind], &ip);
+	if (ret) {
+		printf("Cannot convert %s into a IP address: %s\n",
+		       argv[1], strerror(-ret));
+		return 1;
+	}
+
+	edev = net_route(ip);
+	if (!edev) {
+		gw = net_get_gateway();
+		if (gw)
+			edev = net_route(gw);
+	}
+
+	if (!edev) {
+		printf("IP %pI4 is not reachable\n", &ip);
+		return 1;
+	}
+
+	if (variable) {
+		if (bootarg)
+			setenv(variable, edev->bootarg);
+		else
+			setenv(variable, edev->devname);
+		return 0;
+	}
+
+	if (bootarg) {
+		printf("%s\n", edev->bootarg);
+	} else {
+		if (gw)
+			printf("%pI4 via %pI4 dev %s\n", &ip, &gw,
+			       edev->devname);
+		else
+			printf("%pI4 dev %s\n", &ip, edev->devname);
+	}
+
+	return 0;
+}
+
+BAREBOX_CMD_HELP_START(ip_route_get)
+BAREBOX_CMD_HELP_TEXT("get ethernet device used to reach given IP address")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT("-b", "Instead of ethernet device, show linux bootargs for that device")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(ip_route_get)
+	.cmd = do_ip_route_get,
+	BAREBOX_CMD_DESC("get ethernet device name for an IP address")
+	BAREBOX_CMD_OPTS("[-b] <IP> [variable]")
+	BAREBOX_CMD_GROUP(CMD_GRP_MISC)
+	BAREBOX_CMD_COMPLETE(empty_complete)
+BAREBOX_CMD_END
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
