Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 15.mo5.mail-out.ovh.net ([178.33.107.29]
 helo=mo5.mail-out.ovh.net)
 by bombadil.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TBoLS-0005Ls-V3
 for barebox@lists.infradead.org; Wed, 12 Sep 2012 14:55:16 +0000
Received: from mail404.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 434D3FFA027
 for <barebox@lists.infradead.org>; Wed, 12 Sep 2012 16:56:42 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 12 Sep 2012 16:48:25 +0200
Message-Id: <1347461308-24208-4-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1347461308-24208-1-git-send-email-plagnioj@jcrosoft.com>
References: <20120912142743.GR31207@game.jcrosoft.org>
 <1347461308-24208-1-git-send-email-plagnioj@jcrosoft.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 4/7] dhcp: switch to global var support
To: barebox@lists.infradead.org

This way you can specify as previously set the dhcp parameter via global.dhcp.xxx
and get the result via global.dhcp.xxx

This is need for the defaultenv-2 to add the bootp suppport.
Use it on defaultenv too to have only one set of var.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/at91rm9200ek/env/config        |    2 +-
 arch/arm/boards/at91sam9260ek/env/config       |    4 +-
 arch/arm/boards/at91sam9261ek/env/config       |    4 +-
 arch/arm/boards/at91sam9263ek/env/config       |    2 +-
 arch/arm/boards/at91sam9m10g45ek/env/config    |    2 +-
 arch/arm/boards/at91sam9x5ek/env/config        |    2 +-
 arch/arm/boards/freescale-mx53-loco/env/config |    2 +-
 arch/arm/boards/qil-a9260/env/config           |    2 +-
 arch/arm/boards/tny-a926x/env/config           |    6 +-
 arch/arm/boards/usb-a926x/env/config           |    6 +-
 defaultenv/bin/boot                            |   12 +--
 defaultenv/config                              |    2 +-
 net/dhcp.c                                     |  119 ++++++++++++++++++++----
 13 files changed, 123 insertions(+), 42 deletions(-)

diff --git a/arch/arm/boards/at91rm9200ek/env/config b/arch/arm/boards/at91rm9200ek/env/config
index 735bb10..a3830cb 100644
--- a/arch/arm/boards/at91rm9200ek/env/config
+++ b/arch/arm/boards/at91rm9200ek/env/config
@@ -3,7 +3,7 @@
 # use 'dhcp' to do dhcp in barebox and in kernel
 # use 'none' if you want to skip kernel ip autoconfiguration
 ip=dhcp-barebox
-dhcp_vendor_id=barebox-at91rm9200ek
+global.dhcp.vendor_id=barebox-at91rm9200ek
 
 # or set your networking parameters here
 #eth0.ipaddr=a.b.c.d
diff --git a/arch/arm/boards/at91sam9260ek/env/config b/arch/arm/boards/at91sam9260ek/env/config
index 06b9faf..8e88186 100644
--- a/arch/arm/boards/at91sam9260ek/env/config
+++ b/arch/arm/boards/at91sam9260ek/env/config
@@ -6,9 +6,9 @@ ip=dhcp-barebox
 
 if [ x$armlinux_architecture = x1099 ]
 then
-	dhcp_vendor_id=barebox-at91sam9260ek
+	global.dhcp.vendor_id=barebox-at91sam9260ek
 else
-	dhcp_vendor_id=barebox-at91sam9g20ek
+	global.dhcp.vendor_id=barebox-at91sam9g20ek
 fi
 
 # or set your networking parameters here
diff --git a/arch/arm/boards/at91sam9261ek/env/config b/arch/arm/boards/at91sam9261ek/env/config
index 820485d..7d85577 100644
--- a/arch/arm/boards/at91sam9261ek/env/config
+++ b/arch/arm/boards/at91sam9261ek/env/config
@@ -6,9 +6,9 @@ ip=dhcp-barebox
 
 if [ x$armlinux_architecture = x848 ]
 then
-	dhcp_vendor_id=barebox-at91sam9261ek
+	global.dhcp.vendor_id=barebox-at91sam9261ek
 else
-	dhcp_vendor_id=barebox-at91sam9g10ek
+	global.dhcp.vendor_id=barebox-at91sam9g10ek
 fi
 
 # or set your networking parameters here
diff --git a/arch/arm/boards/at91sam9263ek/env/config b/arch/arm/boards/at91sam9263ek/env/config
index a09bc26..5125020 100644
--- a/arch/arm/boards/at91sam9263ek/env/config
+++ b/arch/arm/boards/at91sam9263ek/env/config
@@ -3,7 +3,7 @@
 # use 'dhcp' to do dhcp in barebox and in kernel
 # use 'none' if you want to skip kernel ip autoconfiguration
 ip=dhcp-barebox
-dhcp_vendor_id=barebox-at91sam9263ek
+global.dhcp.vendor_id=barebox-at91sam9263ek
 
 # or set your networking parameters here
 #eth0.ipaddr=a.b.c.d
diff --git a/arch/arm/boards/at91sam9m10g45ek/env/config b/arch/arm/boards/at91sam9m10g45ek/env/config
index 37a20e9..54ed2cb 100644
--- a/arch/arm/boards/at91sam9m10g45ek/env/config
+++ b/arch/arm/boards/at91sam9m10g45ek/env/config
@@ -3,7 +3,7 @@
 # use 'dhcp' to do dhcp in barebox and in kernel
 # use 'none' if you want to skip kernel ip autoconfiguration
 ip=dhcp-barebox
-dhcp_vendor_id=barebox-at91sam9m10g45ek
+global.dhcp.vendor_id=barebox-at91sam9m10g45ek
 
 # or set your networking parameters here
 #eth0.ipaddr=a.b.c.d
diff --git a/arch/arm/boards/at91sam9x5ek/env/config b/arch/arm/boards/at91sam9x5ek/env/config
index dafe875..6a985ce 100644
--- a/arch/arm/boards/at91sam9x5ek/env/config
+++ b/arch/arm/boards/at91sam9x5ek/env/config
@@ -3,7 +3,7 @@
 # use 'dhcp' to do dhcp in barebox and in kernel
 # use 'none' if you want to skip kernel ip autoconfiguration
 ip=dhcp-barebox
-dhcp_vendor_id=barebox-at91sam9x5ek
+global.dhcp.vendor_id=barebox-at91sam9x5ek
 
 # or set your networking parameters here
 #eth0.ipaddr=a.b.c.d
diff --git a/arch/arm/boards/freescale-mx53-loco/env/config b/arch/arm/boards/freescale-mx53-loco/env/config
index 7226364..9fb39e8 100644
--- a/arch/arm/boards/freescale-mx53-loco/env/config
+++ b/arch/arm/boards/freescale-mx53-loco/env/config
@@ -7,7 +7,7 @@ user=
 # use 'dhcp' to do dhcp in barebox and in kernel
 # use 'none' if you want to skip kernel ip autoconfiguration
 ip=dhcp
-dhcp_vendor_id=barebox-mx53-loco
+global.dhcp.vendor_id=barebox-mx53-loco
 
 # or set your networking parameters here
 #eth0.ipaddr=a.b.c.d
diff --git a/arch/arm/boards/qil-a9260/env/config b/arch/arm/boards/qil-a9260/env/config
index c0b5546..9971106 100644
--- a/arch/arm/boards/qil-a9260/env/config
+++ b/arch/arm/boards/qil-a9260/env/config
@@ -3,7 +3,7 @@
 # use 'dhcp' to do dhcp in barebox and in kernel
 # use 'none' if you want to skip kernel ip autoconfiguration
 ip=dhcp-barebox
-dhcp_vendor_id=barebox-qil-a9260
+global.dhcp.vendor_id=barebox-qil-a9260
 
 # or set your networking parameters here
 #eth0.ipaddr=a.b.c.d
diff --git a/arch/arm/boards/tny-a926x/env/config b/arch/arm/boards/tny-a926x/env/config
index 514fc9f..c19ec4f 100644
--- a/arch/arm/boards/tny-a926x/env/config
+++ b/arch/arm/boards/tny-a926x/env/config
@@ -3,9 +3,9 @@
 # use 'dhcp' to do dhcp in barebox and in kernel
 # use 'none' if you want to skip kernel ip autoconfiguration
 ip=dhcp-barebox
-[ x$armlinux_architecture = x2058 ] && dhcp_vendor_id=barebox-tny-a9260
-[ x$armlinux_architecture = x2059 ] && dhcp_vendor_id=barebox-tny-a9g20
-[ x$armlinux_architecture = x2140 ] && dhcp_vendor_id=barebox-tny-a9263
+[ x$armlinux_architecture = x2058 ] && global.dhcp.vendor_id=barebox-tny-a9260
+[ x$armlinux_architecture = x2059 ] && global.dhcp.vendor_id=barebox-tny-a9g20
+[ x$armlinux_architecture = x2140 ] && global.dhcp.vendor_id=barebox-tny-a9263
 
 # or set your networking parameters here
 #eth0.ipaddr=a.b.c.d
diff --git a/arch/arm/boards/usb-a926x/env/config b/arch/arm/boards/usb-a926x/env/config
index dc0a264..49199ba 100644
--- a/arch/arm/boards/usb-a926x/env/config
+++ b/arch/arm/boards/usb-a926x/env/config
@@ -3,9 +3,9 @@
 # use 'dhcp' to do dhcp in barebox and in kernel
 # use 'none' if you want to skip kernel ip autoconfiguration
 ip=dhcp-barebox
-[ x$armlinux_architecture = x1709 ] && dhcp_vendor_id=barebox-usb-a9260
-[ x$armlinux_architecture = x1710 ] && dhcp_vendor_id=barebox-usb-a9263
-[ x$armlinux_architecture = x1841 ] && dhcp_vendor_id=barebox-usb-a9g20
+[ x$armlinux_architecture = x1709 ] && global.dhcp.vendor_id=barebox-usb-a9260
+[ x$armlinux_architecture = x1710 ] && global.dhcp.vendor_id=barebox-usb-a9263
+[ x$armlinux_architecture = x1841 ] && global.dhcp.vendor_id=barebox-usb-a9g20
 
 # or set your networking parameters here
 #eth0.ipaddr=a.b.c.d
diff --git a/defaultenv/bin/boot b/defaultenv/bin/boot
index 61b893a..4e2056e 100644
--- a/defaultenv/bin/boot
+++ b/defaultenv/bin/boot
@@ -44,14 +44,14 @@ fi
 if [ x$ip = xdhcp -o x$ip = "xdhcp-barebox" ]; then
 	if [ x$kernel_loc = xnfs -o x$kernel_loc = xtftp ]; then
 		dhcp
-		if [ x$rootpath != x ]; then
-			nfsroot=$rootpath
+		if [ x${global.dhcp.rootpath} != x ]; then
+			nfsroot=${global.dhcp.rootpath}
 		fi
-		if [ x$bootfile != x ]; then
-			kernelimage=$bootfile
+		if [ x${global.dhcp.bootfile} != x ]; then
+			kernelimage=${global.dhcp.bootfile}
 		fi
-		if [ x$dhcp_oftree_file != x ]; then
-			oftreeimage=$dhcp_oftree_file
+		if [ x$global.dhcp.oftree_file} != x ]; then
+			oftreeimage=${global.dhcp_oftree_file}
 		fi
 	fi
 fi
diff --git a/defaultenv/config b/defaultenv/config
index 81d6f95..391ba47 100644
--- a/defaultenv/config
+++ b/defaultenv/config
@@ -11,7 +11,7 @@ fi
 # use 'dhcp' to do dhcp in barebox and in kernel
 # use 'none' if you want to skip kernel ip autoconfiguration
 ip=dhcp
-dhcp_vendor_id=barebox
+global.dhcp.vendor_id=barebox
 
 # or set your networking parameters here
 #eth0.ipaddr=a.b.c.d
diff --git a/net/dhcp.c b/net/dhcp.c
index e73cc70..b4f2830 100644
--- a/net/dhcp.c
+++ b/net/dhcp.c
@@ -19,6 +19,8 @@
 #include <magicvar.h>
 #include <linux/err.h>
 #include <getopt.h>
+#include <globalvar.h>
+#include <init.h>
 
 #define OPT_SIZE 312	/* Minimum DHCP Options size per RFC2131 - results in 576 byte pkt */
 
@@ -78,11 +80,38 @@ static IPaddr_t net_dhcp_server_ip;
 static uint64_t dhcp_start;
 static char dhcp_tftpname[256];
 
+static const char* dhcp_get_barebox_global(const char * var)
+{
+	char * var_global = asprintf("global.dhcp.%s", var);
+	const char *val;
+
+	if (!var_global)
+		return NULL;
+
+	val = getenv(var_global);
+	free(var_global);
+	return val;
+}
+
+static int dhcp_set_barebox_global(const char * var, char *val)
+{
+	char * var_global = asprintf("global.dhcp.%s", var);
+	int ret;
+
+	if (!var_global)
+		return -ENOMEM;
+
+	ret = setenv(var_global, val);
+	free(var_global);
+	return ret;
+}
+
 struct dhcp_opt {
 	unsigned char option;
 	/* request automatically the option when creating the DHCP request */
 	bool optional;
 	const char *barebox_var_name;
+	const char *barebox_dhcp_global;
 	void (*handle)(struct dhcp_opt *opt, unsigned char *data, int tlen);
 	void *data;
 
@@ -123,7 +152,12 @@ static void env_str_handle(struct dhcp_opt *opt, unsigned char *popt, int optlen
 
 	memcpy(tmp, popt, optlen);
 	tmp[optlen] = 0;
-	setenv(opt->barebox_var_name, tmp);
+
+	if (opt->barebox_var_name)
+		setenv(opt->barebox_var_name, tmp);
+	if (opt->barebox_dhcp_global)
+		dhcp_set_barebox_global(opt->barebox_dhcp_global, tmp);
+
 }
 
 static void copy_uint32_handle(struct dhcp_opt *opt, unsigned char *popt, int optlen)
@@ -183,7 +217,7 @@ struct dhcp_opt dhcp_options[] = {
 	}, {
 		.option = 17,
 		.handle = env_str_handle,
-		.barebox_var_name = "rootpath",
+		.barebox_dhcp_global = "rootpath",
 	}, {
 		.option = 51,
 		.handle = copy_uint32_handle,
@@ -196,22 +230,23 @@ struct dhcp_opt dhcp_options[] = {
 	}, {
 		.option = 66,
 		.handle = env_str_handle,
-		.barebox_var_name = "dhcp_tftp_server_name",
+		.barebox_dhcp_global = "tftp_server_name",
 		.data = dhcp_tftpname,
 	}, {
 		.option = 67,
 		.handle = bootfile_vendorex_handle,
-		.barebox_var_name = "bootfile",
+		.barebox_dhcp_global = "bootfile",
 	}, {
 		.option = 224,
 		.handle = env_str_handle,
-		.barebox_var_name = "dhcp_oftree_file",
+		.barebox_dhcp_global = "oftree_file",
 	},
 };
 
 struct dhcp_param {
 	unsigned char option;
 	const char *barebox_var_name;
+	const char *barebox_dhcp_global;
 	int (*handle)(struct dhcp_param *param, u8 *e);
 	void *data;
 };
@@ -224,6 +259,9 @@ static int dhcp_set_string_options(struct dhcp_param *param, u8 *e)
 	if (!str && param->barebox_var_name)
 		str = (char*)getenv(param->barebox_var_name);
 
+	if (!str && param->barebox_dhcp_global)
+		str = (char*)dhcp_get_barebox_global(param->barebox_dhcp_global);
+
 	if (!str)
 		return 0;
 
@@ -252,19 +290,19 @@ struct dhcp_param dhcp_params[] = {
 	}, {
 		.option = DHCP_VENDOR_ID,
 		.handle = dhcp_set_string_options,
-		.barebox_var_name = "dhcp_vendor_id",
+		.barebox_dhcp_global = "vendor_id",
 	}, {
 		.option = DHCP_CLIENT_ID,
 		.handle = dhcp_set_string_options,
-		.barebox_var_name = "dhcp_client_id",
+		.barebox_dhcp_global = "client_id",
 	}, {
 		.option = DHCP_USER_CLASS,
 		.handle = dhcp_set_string_options,
-		.barebox_var_name = "dhcp_user_class",
+		.barebox_dhcp_global = "user_class",
 	}, {
 		.option = DHCP_CLIENT_UUID,
 		.handle = dhcp_set_string_options,
-		.barebox_var_name = "dhcp_client_uuid",
+		.barebox_dhcp_global = "client_uuid",
 	}
 };
 
@@ -345,8 +383,10 @@ static void bootp_copy_net_params(struct bootp *bp)
 	if (tmp_ip != 0)
 		net_set_serverip(tmp_ip);
 
-	if (strlen(bp->bp_file) > 0)
+	if (strlen(bp->bp_file) > 0) {
 		setenv("bootfile", bp->bp_file);
+		dhcp_set_barebox_global("bootfile", bp->bp_file);
+	}
 
 	debug("bootfile: %s\n", bp->bp_file);
 }
@@ -611,9 +651,50 @@ static void dhcp_reset_env(void)
 			continue;
 
 		setenv(opt->barebox_var_name,"");
+		if (opt->barebox_dhcp_global)
+			dhcp_set_barebox_global(opt->barebox_dhcp_global,"");
 	}
 }
 
+static void dhcp_global_add(const char *var)
+{
+	char * var_global = asprintf("dhcp.%s", var);
+
+	if (!var_global)
+		return;
+
+	globalvar_add_simple(var_global);
+	free(var_global);
+}
+
+static int dhcp_global_init(void)
+{
+	struct dhcp_opt *opt;
+	struct dhcp_param *param;
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(dhcp_options); i++) {
+		opt = &dhcp_options[i];
+
+		if (!opt->barebox_dhcp_global)
+			continue;
+
+		dhcp_global_add(opt->barebox_dhcp_global);
+	}
+
+	for (i = 0; i < ARRAY_SIZE(dhcp_params); i++) {
+		param = &dhcp_params[i];
+
+		if (!param->barebox_dhcp_global)
+			continue;
+
+		dhcp_global_add(param->barebox_dhcp_global);
+	}
+
+	return 0;
+}
+late_initcall(dhcp_global_init);
+
 static int do_dhcp(int argc, char *argv[])
 {
 	int ret, opt;
@@ -709,12 +790,12 @@ BAREBOX_CMD_START(dhcp)
 	BAREBOX_CMD_COMPLETE(empty_complete)
 BAREBOX_CMD_END
 
-BAREBOX_MAGICVAR(bootfile, "bootfile returned from DHCP request");
-BAREBOX_MAGICVAR(hostname, "hostname to send or returned from DHCP request");
-BAREBOX_MAGICVAR(rootpath, "rootpath returned from DHCP request");
-BAREBOX_MAGICVAR(dhcp_vendor_id, "vendor id to send to the DHCP server");
-BAREBOX_MAGICVAR(dhcp_client_uuid, "cliend uuid to send to the DHCP server");
-BAREBOX_MAGICVAR(dhcp_client_id, "cliend id to send to the DHCP server");
-BAREBOX_MAGICVAR(dhcp_user_class, "user class to send to the DHCP server");
-BAREBOX_MAGICVAR(dhcp_tftp_server_name, "TFTP server Name returned from DHCP request");
-BAREBOX_MAGICVAR(dhcp_oftree_file, "OF tree returned from DHCP request (option 224)");
+BAREBOX_MAGICVAR_NAMED(global_hostname, global.hostname, "hostname to send or returned from DHCP request");
+BAREBOX_MAGICVAR_NAMED(global_dhcp_bootfile, global.dhcp.bootfile, "bootfile returned from DHCP request");
+BAREBOX_MAGICVAR_NAMED(global_dhcp_rootpath, global.dhcp.rootpath, "rootpath returned from DHCP request");
+BAREBOX_MAGICVAR_NAMED(global_dhcp_vendor_id, global.dhcp.vendor_id, "vendor id to send to the DHCP server");
+BAREBOX_MAGICVAR_NAMED(global_dhcp_client_uuid, global.dhcp.client_uuid, "cliend uuid to send to the DHCP server");
+BAREBOX_MAGICVAR_NAMED(global_dhcp_client_id, global.dhcp.client_id, "cliend id to send to the DHCP server");
+BAREBOX_MAGICVAR_NAMED(global_dhcp_user_class, global.dhcp.user_class, "user class to send to the DHCP server");
+BAREBOX_MAGICVAR_NAMED(global_dhcp_tftp_server_name, global.dhcp.tftp_server_name, "TFTP server Name returned from DHCP request");
+BAREBOX_MAGICVAR_NAMED(global_dhcp_oftree_file, global.dhcp.oftree_file, "OF tree returned from DHCP request (option 224)");
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
