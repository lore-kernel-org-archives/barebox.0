Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WJ84J-0003TT-Br
 for barebox@lists.infradead.org; Thu, 27 Feb 2014 21:00:44 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 27 Feb 2014 22:00:11 +0100
Message-Id: <1393534812-30995-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1393534812-30995-1-git-send-email-s.hauer@pengutronix.de>
References: <1393534812-30995-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/5] net: Add ifup support
To: barebox@lists.infradead.org

The defaultenv-2 has ifup support as a shell script. This patch
replaces it with a command which is more robust, can be called
from C and now can also bring up all configured interfaces.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/Kconfig                        |   1 +
 defaultenv/defaultenv-2-base/bin/ifup |  67 -------------
 include/net.h                         |   5 +
 net/Kconfig                           |  11 +++
 net/Makefile                          |   1 +
 net/ifup.c                            | 179 ++++++++++++++++++++++++++++++++++
 6 files changed, 197 insertions(+), 67 deletions(-)
 delete mode 100644 defaultenv/defaultenv-2-base/bin/ifup
 create mode 100644 net/ifup.c

diff --git a/common/Kconfig b/common/Kconfig
index 5224838..5989502 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -596,6 +596,7 @@ config DEFAULT_ENVIRONMENT_GENERIC_NEW
 	select CMD_DIRNAME
 	select FLEXIBLE_BOOTARGS
 	select CMD_BOOT
+	select NET_CMD_IFUP if NET
 	prompt "Generic environment template"
 
 config DEFAULT_ENVIRONMENT_GENERIC_NEW_MENU
diff --git a/defaultenv/defaultenv-2-base/bin/ifup b/defaultenv/defaultenv-2-base/bin/ifup
deleted file mode 100644
index 37b986c..0000000
--- a/defaultenv/defaultenv-2-base/bin/ifup
+++ /dev/null
@@ -1,67 +0,0 @@
-#!/bin/sh
-
-mkdir -p /tmp/network
-
-if [ $# != 1 ]; then
-	echo "usage: ifup <interface>"
-	exit 1
-fi
-
-interface="$1"
-
-if [ -f /tmp/network/$interface ]; then
-	exit 0
-fi
-
-cmd=/env/network/$interface
-
-if [ ! -e $cmd ]; then
-	echo "$f: no such file"
-	exit 1
-fi
-
-ip=
-ipaddr=
-netmask=
-gateway=
-serverip=
-ethaddr=
-
-. $cmd
-
-if [ $? != 0 ]; then
-	echo "failed to bring up $interface"
-	exit 1
-fi
-
-if [ -f /env/network/${interface}-discover ]; then
-	/env/network/${interface}-discover
-	if [ $? != 0 ]; then
-		echo "failed to discover eth0"
-		exit 1
-	fi
-fi
-
-if [ -n "$ethaddr" ]; then
-	${interface}.ethaddr=$ethaddr
-fi
-
-if [ "$ip" = static ]; then
-	${interface}.ipaddr=$ipaddr
-	${interface}.netmask=$netmask
-	${interface}.serverip=$serverip
-	${interface}.gateway=$gateway
-	ret=0
-elif [ "$ip" = dhcp ]; then
-	dhcp
-	ret=$?
-	if [ $ret = 0 -a -n "$serverip" ]; then
-		${interface}.serverip=$serverip
-	fi
-fi
-
-if [ $ret = 0 ]; then
-	echo -o /tmp/network/$interface up
-fi
-
-exit $ret
diff --git a/include/net.h b/include/net.h
index a680f97..3b800b7 100644
--- a/include/net.h
+++ b/include/net.h
@@ -457,4 +457,9 @@ int net_icmp_send(struct net_connection *con, int len);
 
 void led_trigger_network(enum led_trigger trigger);
 
+#define IFUP_FLAG_FORCE		(1 << 0)
+
+int ifup(const char *name, unsigned flags);
+int ifup_all(unsigned flags);
+
 #endif /* __NET_H__ */
diff --git a/net/Kconfig b/net/Kconfig
index adafa9b..d59a88d 100644
--- a/net/Kconfig
+++ b/net/Kconfig
@@ -22,4 +22,15 @@ config NET_RESOLV
 	bool
 	prompt "dns support"
 
+config NET_IFUP
+	default y
+	bool
+
+config NET_CMD_IFUP
+	bool
+	prompt "ifup support"
+	help
+	  This enables the 'ifup' command which is used to bring up network
+	  interfaces based on config files under /env/network/<ethname>
+
 endif
diff --git a/net/Makefile b/net/Makefile
index 98e0f09..30f6e5a 100644
--- a/net/Makefile
+++ b/net/Makefile
@@ -4,3 +4,4 @@ obj-$(CONFIG_NET)	+= net.o
 obj-$(CONFIG_NET_PING)	+= ping.o
 obj-$(CONFIG_NET_RESOLV)+= dns.o
 obj-$(CONFIG_NET_NETCONSOLE) += netconsole.o
+obj-$(CONFIG_NET_IFUP)	+= ifup.o
diff --git a/net/ifup.c b/net/ifup.c
new file mode 100644
index 0000000..3b89ce1
--- /dev/null
+++ b/net/ifup.c
@@ -0,0 +1,179 @@
+/*
+ * ifup.c - bring up network interfaces
+ *
+ * Copyright (c) 2014 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2
+ * as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more detaiifup.
+ *
+ */
+#define pr_fmt(fmt)  "ifup: " fmt
+
+#include <environment.h>
+#include <command.h>
+#include <common.h>
+#include <getopt.h>
+#include <net.h>
+#include <fs.h>
+#include <linux/stat.h>
+
+static char *vars[] = {
+	"ipaddr",
+	"netmask",
+	"gateway",
+	"serverip",
+	"ethaddr",
+};
+
+static int eth_set_param(struct device_d *dev, const char *param)
+{
+	const char *value = getenv(param);
+
+	if (!value)
+		return 0;
+	if (!*value)
+		return 0;
+
+	return dev_set_param(dev, param, value);
+}
+
+int ifup(const char *name, unsigned flags)
+{
+	int ret;
+	char *cmd, *cmd_discover;
+	const char *ip;
+	struct stat s;
+	int i;
+	struct device_d *dev;
+	struct eth_device *edev = eth_get_byname(name);
+
+	if (edev && edev->ipaddr && !(flags & IFUP_FLAG_FORCE))
+		return 0;
+
+	env_push_context();
+
+	setenv("ip", "");
+
+	for (i = 0; i < ARRAY_SIZE(vars); i++)
+		setenv(vars[i], "");
+
+	cmd = asprintf("source /env/network/%s", name);
+	cmd_discover = asprintf("/env/network/%s-discover", name);
+
+	ret = run_command(cmd);
+	if (ret)
+		goto out;
+
+	ret = stat(cmd_discover, &s);
+	if (!ret) {
+		ret = run_command(cmd_discover);
+		if (ret)
+			goto out;
+	}
+
+	dev = get_device_by_name(name);
+	if (!dev) {
+		pr_err("Cannot find device %s\n", name);
+		goto out;
+	}
+
+	ret = eth_set_param(dev, "ethaddr");
+	if (ret)
+		goto out;
+
+	ip = getenv("ip");
+	if (!strcmp(ip, "dhcp")) {
+		ret = run_command("dhcp");
+		if (ret)
+			goto out;
+	} else if (!strcmp(ip, "static")) {
+		for (i = 0; i < ARRAY_SIZE(vars); i++) {
+			ret = eth_set_param(dev, vars[i]);
+			if (ret)
+				goto out;
+		}
+	} else {
+		pr_err("unknown ip type: %s\n", ip);
+		ret = -EINVAL;
+		goto out;
+	}
+
+	ret = 0;
+out:
+	env_pop_context();
+	free(cmd);
+	free(cmd_discover);
+
+	return ret;
+}
+
+int ifup_all(unsigned flags)
+{
+	DIR *dir;
+	struct dirent *d;
+
+	dir = opendir("/env/network");
+	if (!dir)
+		return -ENOENT;
+
+	while ((d = readdir(dir))) {
+		if (*d->d_name == '.')
+			continue;
+		ifup(d->d_name, flags);
+	}
+
+	closedir(dir);
+
+	return 0;
+}
+
+#if IS_ENABLED(CONFIG_NET_CMD_IFUP)
+
+static int do_ifup(int argc, char *argv[])
+{
+	int opt;
+	unsigned flags = 0;
+	int all = 0;
+
+	while ((opt = getopt(argc, argv, "af")) > 0) {
+		switch (opt) {
+		case 'f':
+			flags |= IFUP_FLAG_FORCE;
+			break;
+		case 'a':
+			all = 1;
+			break;
+		}
+	}
+
+	if (all)
+		return ifup_all(flags);
+
+	if (argc == optind)
+		return COMMAND_ERROR_USAGE;
+
+	return ifup(argv[optind], flags);
+}
+
+BAREBOX_CMD_HELP_START(ifup)
+BAREBOX_CMD_HELP_USAGE("ifup [OPTIONS] <interface>\n")
+BAREBOX_CMD_HELP_OPT  ("-a",  "bring up all interfaces\n")
+BAREBOX_CMD_HELP_OPT  ("-f",  "Force. Configure even if ip already set\n")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(ifup)
+	.cmd		= do_ifup,
+	.usage		= "Bring up network interfaces",
+	BAREBOX_CMD_HELP(cmd_ifup_help)
+BAREBOX_CMD_END
+
+#endif
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
