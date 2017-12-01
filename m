Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eKjPs-0002bn-D0
 for barebox@lists.infradead.ORG; Fri, 01 Dec 2017 11:23:38 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  1 Dec 2017 12:22:49 +0100
Message-Id: <20171201112256.20196-21-s.hauer@pengutronix.de>
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
Subject: [PATCH 20/27] net: Provide new way to configure network devices
To: Barebox List <barebox@lists.infradead.org>

This provides a new way to configure network interfaces based
on nvvars. A network interface can now be configured with variables
in the nv.dev.<ethname>.* namespace. There is a new network device
parameter "mode" which specifies the mode used to obtain IP settings.
The mode can be "dhcp", "static" or "disabled":

nv.dev.eth0.mode=dhcp
(ipaddr, netmask are ignored in this setting)

nv.dev.eth0.mode=static
nv.dev.eth0.ipaddr=192.168.0.17
nv.dev.eth0.netmask=255.255.0.0

nv.dev.eth0.mode=disabled

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/net.h |   7 ++
 net/eth.c     |  15 ++++
 net/ifup.c    | 256 ++++++++++++++++++++++++++++++++++++++--------------------
 3 files changed, 190 insertions(+), 88 deletions(-)

diff --git a/include/net.h b/include/net.h
index 9f98b6f4df..926d817802 100644
--- a/include/net.h
+++ b/include/net.h
@@ -61,6 +61,12 @@ struct eth_device {
 	IPaddr_t netmask;
 	char ethaddr[6];
 	char *bootarg;
+
+	bool ifup;
+#define ETH_MODE_DHCP 0
+#define ETH_MODE_STATIC 1
+#define ETH_MODE_DISABLED 2
+	unsigned int global_mode;
 };
 
 #define dev_to_edev(d) container_of(d, struct eth_device, dev)
@@ -473,6 +479,7 @@ void led_trigger_network(enum led_trigger trigger);
 
 #define IFUP_FLAG_FORCE		(1 << 0)
 
+int ifup_edev(struct eth_device *edev, unsigned flags);
 int ifup(const char *name, unsigned flags);
 int ifup_all(unsigned flags);
 
diff --git a/net/eth.c b/net/eth.c
index a8f21b2277..a9869f7d9d 100644
--- a/net/eth.c
+++ b/net/eth.c
@@ -21,12 +21,18 @@
 #include <command.h>
 #include <complete.h>
 #include <driver.h>
+#include <unistd.h>
 #include <init.h>
+#include <dhcp.h>
 #include <net.h>
 #include <of.h>
 #include <linux/phy.h>
 #include <errno.h>
 #include <malloc.h>
+#include <globalvar.h>
+#include <environment.h>
+#include <linux/ctype.h>
+#include <linux/stat.h>
 
 static uint64_t last_link_check;
 
@@ -340,6 +346,12 @@ late_initcall(eth_register_of_fixup);
 extern IPaddr_t net_serverip;
 extern IPaddr_t net_gateway;
 
+static const char * const eth_mode_names[] = {
+	[ETH_MODE_DHCP] = "dhcp",
+	[ETH_MODE_STATIC] = "static",
+	[ETH_MODE_DISABLED] = "disabled",
+};
+
 int eth_register(struct eth_device *edev)
 {
 	struct device_d *dev = &edev->dev;
@@ -378,6 +390,9 @@ int eth_register(struct eth_device *edev)
 			edev->ethaddr, edev);
 	edev->bootarg = xstrdup("");
 	dev_add_param_string(dev, "linux.bootargs", NULL, NULL, &edev->bootarg, NULL);
+	dev_add_param_enum(dev, "mode", NULL, NULL, &edev->global_mode,
+				  eth_mode_names, ARRAY_SIZE(eth_mode_names),
+				  NULL);
 
 	if (edev->init)
 		edev->init(edev);
diff --git a/net/ifup.c b/net/ifup.c
index 0f5d2772e8..dc41c47f24 100644
--- a/net/ifup.c
+++ b/net/ifup.c
@@ -25,116 +25,147 @@
 #include <dhcp.h>
 #include <net.h>
 #include <fs.h>
+#include <globalvar.h>
+#include <string.h>
+#include <driver.h>
 #include <linux/stat.h>
 
-static int eth_discover(const char *name)
+static int eth_discover(char *file)
 {
-	char *cmd_discover;
 	struct stat s;
 	int ret;
 
-	cmd_discover = basprintf("/env/network/%s-discover", name);
-
-	ret = stat(cmd_discover, &s);
-	if (ret)
+	ret = stat(file, &s);
+	if (ret) {
+		ret = 0;
 		goto out;
+	}
 
-	ret = run_command(cmd_discover);
+	ret = run_command(file);
 	if (ret) {
-		pr_err("Running '%s' failed with %d\n", cmd_discover, ret);
+		pr_err("Running '%s' failed with %d\n", file, ret);
 		goto out;
 	}
 
 out:
-	free(cmd_discover);
+	free(file);
 
 	return ret;
 }
 
-static char *vars[] = {
-	"ipaddr",
-	"netmask",
-	"gateway",
-	"serverip",
-};
-
-static int eth_set_param(struct device_d *dev, const char *param)
+static int eth_discover_ethname(const char *ethname)
 {
-	const char *value = getenv(param);
-
-	if (!value)
-		return 0;
-	if (!*value)
-		return 0;
+	return eth_discover(basprintf("/env/network/%s-discover", ethname));
+}
 
-	return dev_set_param(dev, param, value);
+static int eth_discover_file(const char *filename)
+{
+	return eth_discover(basprintf("/env/network/%s", filename));
 }
 
-int ifup(const char *name, unsigned flags)
+static int source_env_network(struct eth_device *edev)
 {
-	int ret;
-	char *cmd;
-	const char *ip;
-	int i;
-	struct device_d *dev;
-	struct eth_device *edev = eth_get_byname(name);
+	char *vars[] = {
+		"ipaddr",
+		"netmask",
+		"gateway",
+		"serverip",
+		"ethaddr",
+		"ip",
+	};
+	IPaddr_t ipaddr, netmask, gateway, serverip;
+	unsigned char ethaddr[6];
+	char *file, *cmd;
+	const char *ethaddrstr, *modestr;
+	int ret, mode, ethaddr_valid = 0, i;
+	struct stat s;
 
-	if (edev && edev->ipaddr && !(flags & IFUP_FLAG_FORCE))
+	file = basprintf("/env/network/%s", edev->devname);
+	ret = stat(file, &s);
+	if (ret) {
+		free(file);
 		return 0;
+	}
 
-	env_push_context();
+	dev_info(&edev->dev, "/env/network/%s is deprecated.\n"
+		 "Use nv.dev.%s.* nvvars to configure your network device instead\n",
+		 edev->devname, edev->devname);
 
-	setenv("ip", "");
+	env_push_context();
 
 	for (i = 0; i < ARRAY_SIZE(vars); i++)
 		setenv(vars[i], "");
 
-	cmd = basprintf("source /env/network/%s", name);
-
+	cmd = basprintf("source /env/network/%s", edev->devname);
 	ret = run_command(cmd);
 	if (ret) {
 		pr_err("Running '%s' failed with %d\n", cmd, ret);
 		goto out;
 	}
 
-	eth_discover(name);
+	ipaddr = getenv_ip("ipaddr");
+	netmask = getenv_ip("netmask");
+	gateway = getenv_ip("gateway");
+	serverip = getenv_ip("serverip");
+	ethaddrstr = getenv("ethaddr");
+	if (ethaddrstr && *ethaddrstr) {
+		ret = string_to_ethaddr(ethaddrstr, ethaddr);
+		if (ret) {
+			dev_err(&edev->dev, "Cannot parse ethaddr \"%s\"\n", ethaddrstr);
+			ret = -EINVAL;
+			goto out;
+		}
+		ethaddr_valid = 1;
+	}
 
-	dev = get_device_by_name(name);
-	if (!dev) {
-		pr_err("Cannot find device %s\n", name);
+	modestr = getenv("ip");
+	if (!modestr) {
+		dev_err(&edev->dev, "No mode specified in \"ip\" variable\n");
+		ret = -EINVAL;
 		goto out;
 	}
 
-	ret = eth_set_param(dev, "ethaddr");
-	if (ret)
+	if (!strcmp(modestr, "static")) {
+		mode = ETH_MODE_STATIC;
+	} else if (!strcmp(modestr, "dhcp")) {
+		mode = ETH_MODE_DHCP;
+	} else {
+		dev_err(&edev->dev, "Invalid ip mode \"%s\" found\n", modestr);
+		ret = -EINVAL;
 		goto out;
+	}
 
-	ip = getenv("ip");
-	if (!ip)
-		ip = "";
+	edev->global_mode = mode;
 
-	if (!strcmp(ip, "dhcp")) {
-		IPaddr_t serverip;
+	if (ethaddr_valid)
+		memcpy(edev->ethaddr, ethaddr, 6);
 
-		serverip = getenv_ip("serverip");
+	if (mode == ETH_MODE_STATIC) {
+		edev->ipaddr = ipaddr;
+		edev->netmask = netmask;
+		if (gateway)
+			net_set_gateway(gateway);
 		if (serverip)
-			net_set_serverip_empty(serverip);
+			net_set_serverip(serverip);
+	}
 
-		ret = dhcp(edev, NULL);
-		if (ret)
-			goto out;
-		dev_set_param(dev, "linux.bootargs", "ip=dhcp");
-	} else if (!strcmp(ip, "static")) {
+	ret = 0;
+
+out:
+	env_pop_context();
+	free(cmd);
+	free(file);
+
+	return ret;
+}
+
+static void set_linux_bootarg(struct eth_device *edev)
+{
+	if (edev->global_mode == ETH_MODE_STATIC) {
 		char *bootarg;
 		IPaddr_t serverip;
 		IPaddr_t gateway;
 
-		for (i = 0; i < ARRAY_SIZE(vars); i++) {
-			ret = eth_set_param(dev, vars[i]);
-			if (ret)
-				goto out;
-		}
-
 		serverip = net_get_serverip();
 		gateway = net_get_gateway();
 
@@ -143,46 +174,95 @@ int ifup(const char *name, unsigned flags)
 				&serverip,
 				&gateway,
 				&edev->netmask);
-		dev_set_param(dev, "linux.bootargs", bootarg);
+		dev_set_param(&edev->dev, "linux.bootargs", bootarg);
 		free(bootarg);
-	} else {
-		pr_err("unknown ip type: %s\n", ip);
-		ret = -EINVAL;
-		goto out;
+	} else if (edev->global_mode == ETH_MODE_DHCP) {
+		dev_set_param(&edev->dev, "linux.bootargs", "ip=dhcp");
 	}
+}
 
-	ret = 0;
-out:
-	env_pop_context();
-	free(cmd);
+int ifup_edev(struct eth_device *edev, unsigned flags)
+{
+	int ret;
 
-	return ret;
+	if (edev->global_mode == ETH_MODE_DISABLED) {
+		edev->ipaddr = 0;
+		edev->netmask = 0;
+		edev->ifup = false;
+		return 0;
+	}
+
+	if (edev->ifup) {
+		if (flags & IFUP_FLAG_FORCE)
+			edev->ifup = false;
+		else
+			return 0;
+	}
+
+	ret = source_env_network(edev);
+	if (ret)
+		return ret;
+
+	if (edev->global_mode == ETH_MODE_DHCP) {
+		if (IS_ENABLED(CONFIG_NET_DHCP)) {
+			ret = dhcp(edev, NULL);
+		} else {
+			dev_err(&edev->dev, "DHCP support not available\n");
+			ret = -ENOSYS;
+		}
+		if (ret)
+			return ret;
+	}
+
+	set_linux_bootarg(edev);
+
+	edev->ifup = true;
+
+	return 0;
+}
+
+int ifup(const char *ethname, unsigned flags)
+{
+	struct eth_device *edev;
+	int ret;
+
+	ret = eth_discover_ethname(ethname);
+	if (ret)
+		return ret;
+
+	edev = eth_get_byname(ethname);
+	if (!edev)
+		return -ENODEV;
+
+	return ifup_edev(edev, flags);
 }
 
 int ifup_all(unsigned flags)
 {
+	struct eth_device *edev;
 	DIR *dir;
 	struct dirent *d;
 
 	dir = opendir("/env/network");
-	if (!dir)
-		return -ENOENT;
-
-	while ((d = readdir(dir))) {
-		if (*d->d_name == '.')
-			continue;
-		/*
-		 * Skip xxx-discover files since these are no
-		 * network configuration files, but scripts to bring
-		 * up network interface xxx.
-		 */
-		if (strstr(d->d_name, "-discover"))
-			continue;
-		ifup(d->d_name, flags);
+	if (dir) {
+
+		while ((d = readdir(dir))) {
+			if (*d->d_name == '.')
+				continue;
+			if (!strstr(d->d_name, "-discover"))
+				continue;
+
+			eth_discover_file(d->d_name);
+		}
 	}
 
 	closedir(dir);
 
+	device_detect_all();
+
+	for_each_netdev(edev)
+		ifup_edev(edev, flags);
+
 	return 0;
 }
 
@@ -214,11 +294,11 @@ static int do_ifup(int argc, char *argv[])
 	return ifup(argv[optind], flags);
 }
 
+
+
 BAREBOX_CMD_HELP_START(ifup)
-BAREBOX_CMD_HELP_TEXT("Each INTF must have a script /env/network/INTF that set the variables")
-BAREBOX_CMD_HELP_TEXT("ip (to 'static' or 'dynamic'), ipaddr, netmask, gateway, serverip and/or")
-BAREBOX_CMD_HELP_TEXT("ethaddr. A script /env/network/INTF-discover can contains for discovering")
-BAREBOX_CMD_HELP_TEXT("the ethernet device, e.g. 'usb'.")
+BAREBOX_CMD_HELP_TEXT("Network interfaces are configured with a NV variables or a")
+BAREBOX_CMD_HELP_TEXT("/env/network/<intf> file. See Documentation/user/networking.rst")
 BAREBOX_CMD_HELP_TEXT("")
 BAREBOX_CMD_HELP_TEXT("Options:")
 BAREBOX_CMD_HELP_OPT ("-a",  "bring up all interfaces")
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
