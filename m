Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo5.mail-out.ovh.net ([178.33.111.247]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TGAoJ-0004LG-16
 for barebox@lists.infradead.org; Mon, 24 Sep 2012 15:43:06 +0000
Received: from mail404.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 2ED21FFA78B
 for <barebox@lists.infradead.org>; Mon, 24 Sep 2012 17:48:59 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 24 Sep 2012 17:40:27 +0200
Message-Id: <1348501228-23083-4-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1348501228-23083-1-git-send-email-plagnioj@jcrosoft.com>
References: <20120924152731.GF26553@game.jcrosoft.org>
 <1348501228-23083-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 4/5] dhcp: switch globalvar to it's own device
To: barebox@lists.infradead.org

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
 arch/arm/boards/tny-a926x/env/config           |    6 +--
 arch/arm/boards/usb-a926x/env/config           |    6 +--
 defaultenv-2/base/network/eth0                 |    2 +-
 defaultenv/bin/boot                            |   12 ++---
 defaultenv/config                              |    2 +-
 net/dhcp.c                                     |   58 +++++++-----------------
 14 files changed, 41 insertions(+), 65 deletions(-)

diff --git a/arch/arm/boards/at91rm9200ek/env/config b/arch/arm/boards/at91rm9200ek/env/config
index a3830cb..8ef28f5 100644
--- a/arch/arm/boards/at91rm9200ek/env/config
+++ b/arch/arm/boards/at91rm9200ek/env/config
@@ -3,7 +3,7 @@
 # use 'dhcp' to do dhcp in barebox and in kernel
 # use 'none' if you want to skip kernel ip autoconfiguration
 ip=dhcp-barebox
-global.dhcp.vendor_id=barebox-at91rm9200ek
+dhcp.vendor_id=barebox-at91rm9200ek
 
 # or set your networking parameters here
 #eth0.ipaddr=a.b.c.d
diff --git a/arch/arm/boards/at91sam9260ek/env/config b/arch/arm/boards/at91sam9260ek/env/config
index 8e88186..53720ae 100644
--- a/arch/arm/boards/at91sam9260ek/env/config
+++ b/arch/arm/boards/at91sam9260ek/env/config
@@ -6,9 +6,9 @@ ip=dhcp-barebox
 
 if [ x$armlinux_architecture = x1099 ]
 then
-	global.dhcp.vendor_id=barebox-at91sam9260ek
+	dhcp.vendor_id=barebox-at91sam9260ek
 else
-	global.dhcp.vendor_id=barebox-at91sam9g20ek
+	dhcp.vendor_id=barebox-at91sam9g20ek
 fi
 
 # or set your networking parameters here
diff --git a/arch/arm/boards/at91sam9261ek/env/config b/arch/arm/boards/at91sam9261ek/env/config
index 7d85577..bc7626e 100644
--- a/arch/arm/boards/at91sam9261ek/env/config
+++ b/arch/arm/boards/at91sam9261ek/env/config
@@ -6,9 +6,9 @@ ip=dhcp-barebox
 
 if [ x$armlinux_architecture = x848 ]
 then
-	global.dhcp.vendor_id=barebox-at91sam9261ek
+	dhcp.vendor_id=barebox-at91sam9261ek
 else
-	global.dhcp.vendor_id=barebox-at91sam9g10ek
+	dhcp.vendor_id=barebox-at91sam9g10ek
 fi
 
 # or set your networking parameters here
diff --git a/arch/arm/boards/at91sam9263ek/env/config b/arch/arm/boards/at91sam9263ek/env/config
index 5125020..60e38e5 100644
--- a/arch/arm/boards/at91sam9263ek/env/config
+++ b/arch/arm/boards/at91sam9263ek/env/config
@@ -3,7 +3,7 @@
 # use 'dhcp' to do dhcp in barebox and in kernel
 # use 'none' if you want to skip kernel ip autoconfiguration
 ip=dhcp-barebox
-global.dhcp.vendor_id=barebox-at91sam9263ek
+dhcp.vendor_id=barebox-at91sam9263ek
 
 # or set your networking parameters here
 #eth0.ipaddr=a.b.c.d
diff --git a/arch/arm/boards/at91sam9m10g45ek/env/config b/arch/arm/boards/at91sam9m10g45ek/env/config
index 54ed2cb..a112a1a 100644
--- a/arch/arm/boards/at91sam9m10g45ek/env/config
+++ b/arch/arm/boards/at91sam9m10g45ek/env/config
@@ -3,7 +3,7 @@
 # use 'dhcp' to do dhcp in barebox and in kernel
 # use 'none' if you want to skip kernel ip autoconfiguration
 ip=dhcp-barebox
-global.dhcp.vendor_id=barebox-at91sam9m10g45ek
+dhcp.vendor_id=barebox-at91sam9m10g45ek
 
 # or set your networking parameters here
 #eth0.ipaddr=a.b.c.d
diff --git a/arch/arm/boards/at91sam9x5ek/env/config b/arch/arm/boards/at91sam9x5ek/env/config
index 6a985ce..3e024ed 100644
--- a/arch/arm/boards/at91sam9x5ek/env/config
+++ b/arch/arm/boards/at91sam9x5ek/env/config
@@ -3,7 +3,7 @@
 # use 'dhcp' to do dhcp in barebox and in kernel
 # use 'none' if you want to skip kernel ip autoconfiguration
 ip=dhcp-barebox
-global.dhcp.vendor_id=barebox-at91sam9x5ek
+dhcp.vendor_id=barebox-at91sam9x5ek
 
 # or set your networking parameters here
 #eth0.ipaddr=a.b.c.d
diff --git a/arch/arm/boards/freescale-mx53-loco/env/config b/arch/arm/boards/freescale-mx53-loco/env/config
index 2ab1268..43979a3 100644
--- a/arch/arm/boards/freescale-mx53-loco/env/config
+++ b/arch/arm/boards/freescale-mx53-loco/env/config
@@ -7,7 +7,7 @@ user=
 # use 'dhcp' to do dhcp in barebox and in kernel
 # use 'none' if you want to skip kernel ip autoconfiguration
 ip=dhcp
-global.dhcp.vendor_id=barebox-mx53-loco
+dhcp.vendor_id=barebox-mx53-loco
 
 # or set your networking parameters here
 #eth0.ipaddr=a.b.c.d
diff --git a/arch/arm/boards/qil-a9260/env/config b/arch/arm/boards/qil-a9260/env/config
index 9971106..e0e2a9f 100644
--- a/arch/arm/boards/qil-a9260/env/config
+++ b/arch/arm/boards/qil-a9260/env/config
@@ -3,7 +3,7 @@
 # use 'dhcp' to do dhcp in barebox and in kernel
 # use 'none' if you want to skip kernel ip autoconfiguration
 ip=dhcp-barebox
-global.dhcp.vendor_id=barebox-qil-a9260
+dhcp.vendor_id=barebox-qil-a9260
 
 # or set your networking parameters here
 #eth0.ipaddr=a.b.c.d
diff --git a/arch/arm/boards/tny-a926x/env/config b/arch/arm/boards/tny-a926x/env/config
index c19ec4f..dd5219f 100644
--- a/arch/arm/boards/tny-a926x/env/config
+++ b/arch/arm/boards/tny-a926x/env/config
@@ -3,9 +3,9 @@
 # use 'dhcp' to do dhcp in barebox and in kernel
 # use 'none' if you want to skip kernel ip autoconfiguration
 ip=dhcp-barebox
-[ x$armlinux_architecture = x2058 ] && global.dhcp.vendor_id=barebox-tny-a9260
-[ x$armlinux_architecture = x2059 ] && global.dhcp.vendor_id=barebox-tny-a9g20
-[ x$armlinux_architecture = x2140 ] && global.dhcp.vendor_id=barebox-tny-a9263
+[ x$armlinux_architecture = x2058 ] && dhcp.vendor_id=barebox-tny-a9260
+[ x$armlinux_architecture = x2059 ] && dhcp.vendor_id=barebox-tny-a9g20
+[ x$armlinux_architecture = x2140 ] && dhcp.vendor_id=barebox-tny-a9263
 
 # or set your networking parameters here
 #eth0.ipaddr=a.b.c.d
diff --git a/arch/arm/boards/usb-a926x/env/config b/arch/arm/boards/usb-a926x/env/config
index 49199ba..6f6e823 100644
--- a/arch/arm/boards/usb-a926x/env/config
+++ b/arch/arm/boards/usb-a926x/env/config
@@ -3,9 +3,9 @@
 # use 'dhcp' to do dhcp in barebox and in kernel
 # use 'none' if you want to skip kernel ip autoconfiguration
 ip=dhcp-barebox
-[ x$armlinux_architecture = x1709 ] && global.dhcp.vendor_id=barebox-usb-a9260
-[ x$armlinux_architecture = x1710 ] && global.dhcp.vendor_id=barebox-usb-a9263
-[ x$armlinux_architecture = x1841 ] && global.dhcp.vendor_id=barebox-usb-a9g20
+[ x$armlinux_architecture = x1709 ] && dhcp.vendor_id=barebox-usb-a9260
+[ x$armlinux_architecture = x1710 ] && dhcp.vendor_id=barebox-usb-a9263
+[ x$armlinux_architecture = x1841 ] && dhcp.vendor_id=barebox-usb-a9g20
 
 # or set your networking parameters here
 #eth0.ipaddr=a.b.c.d
diff --git a/defaultenv-2/base/network/eth0 b/defaultenv-2/base/network/eth0
index 7e731ca..59c1e6d 100644
--- a/defaultenv-2/base/network/eth0
+++ b/defaultenv-2/base/network/eth0
@@ -2,7 +2,7 @@
 
 # ip setting (static/dhcp)
 ip=dhcp
-global.dhcp.vendor_id=barebox-${global.hostname}
+dhcp.vendor_id=barebox-${global.hostname}
 
 # static setup used if ip=static
 ipaddr=
diff --git a/defaultenv/bin/boot b/defaultenv/bin/boot
index 4e2056e..7fb37a8 100644
--- a/defaultenv/bin/boot
+++ b/defaultenv/bin/boot
@@ -44,14 +44,14 @@ fi
 if [ x$ip = xdhcp -o x$ip = "xdhcp-barebox" ]; then
 	if [ x$kernel_loc = xnfs -o x$kernel_loc = xtftp ]; then
 		dhcp
-		if [ x${global.dhcp.rootpath} != x ]; then
-			nfsroot=${global.dhcp.rootpath}
+		if [ x${dhcp.rootpath} != x ]; then
+			nfsroot=${dhcp.rootpath}
 		fi
-		if [ x${global.dhcp.bootfile} != x ]; then
-			kernelimage=${global.dhcp.bootfile}
+		if [ x${dhcp.bootfile} != x ]; then
+			kernelimage=${dhcp.bootfile}
 		fi
-		if [ x$global.dhcp.oftree_file} != x ]; then
-			oftreeimage=${global.dhcp_oftree_file}
+		if [ x$dhcp.oftree_file} != x ]; then
+			oftreeimage=${dhcp.oftree_file}
 		fi
 	fi
 fi
diff --git a/defaultenv/config b/defaultenv/config
index 391ba47..2a7b610 100644
--- a/defaultenv/config
+++ b/defaultenv/config
@@ -11,7 +11,7 @@ fi
 # use 'dhcp' to do dhcp in barebox and in kernel
 # use 'none' if you want to skip kernel ip autoconfiguration
 ip=dhcp
-global.dhcp.vendor_id=barebox
+dhcp.vendor_id=barebox
 
 # or set your networking parameters here
 #eth0.ipaddr=a.b.c.d
diff --git a/net/dhcp.c b/net/dhcp.c
index 768255e..673784e 100644
--- a/net/dhcp.c
+++ b/net/dhcp.c
@@ -81,31 +81,16 @@ static uint32_t dhcp_leasetime;
 static IPaddr_t net_dhcp_server_ip;
 static uint64_t dhcp_start;
 static char dhcp_tftpname[256];
+static struct device_d *dhcp_dev;
 
 static const char* dhcp_get_barebox_global(const char * var)
 {
-	char * var_global = asprintf("global.dhcp.%s", var);
-	const char *val;
-
-	if (!var_global)
-		return NULL;
-
-	val = getenv(var_global);
-	free(var_global);
-	return val;
+	return dev_get_param(dhcp_dev, var);
 }
 
 static int dhcp_set_barebox_global(const char * var, char *val)
 {
-	char * var_global = asprintf("global.dhcp.%s", var);
-	int ret;
-
-	if (!var_global)
-		return -ENOMEM;
-
-	ret = setenv(var_global, val);
-	free(var_global);
-	return ret;
+	return dev_set_param(dhcp_dev, var, val);
 }
 
 struct dhcp_opt {
@@ -663,30 +648,21 @@ static void dhcp_reset_env(void)
 	}
 }
 
-static void dhcp_global_add(const char *var)
-{
-	char * var_global = asprintf("dhcp.%s", var);
-
-	if (!var_global)
-		return;
-
-	globalvar_add_simple(var_global);
-	free(var_global);
-}
-
 static int dhcp_global_init(void)
 {
 	struct dhcp_opt *opt;
 	struct dhcp_param *param;
 	int i;
 
+	dhcp_dev = global_add_device("dhcp");
+
 	for (i = 0; i < ARRAY_SIZE(dhcp_options); i++) {
 		opt = &dhcp_options[i];
 
 		if (!opt->barebox_dhcp_global)
 			continue;
 
-		dhcp_global_add(opt->barebox_dhcp_global);
+		global_add_simple(dhcp_dev, opt->barebox_dhcp_global);
 	}
 
 	for (i = 0; i < ARRAY_SIZE(dhcp_params); i++) {
@@ -695,7 +671,7 @@ static int dhcp_global_init(void)
 		if (!param->barebox_dhcp_global)
 			continue;
 
-		dhcp_global_add(param->barebox_dhcp_global);
+		global_add_simple(dhcp_dev, param->barebox_dhcp_global);
 	}
 
 	return 0;
@@ -719,7 +695,7 @@ static int do_dhcp(int argc, char *argv[])
 
 	dhcp_reset_env();
 
-	dhcp_getenv_int("global.dhcp.retries", &retries);
+	dhcp_getenv_int("dhcp.retries", &retries);
 
 	while((opt = getopt(argc, argv, "H:v:c:u:U:r:")) > 0) {
 		switch(opt) {
@@ -826,12 +802,12 @@ BAREBOX_CMD_START(dhcp)
 BAREBOX_CMD_END
 
 BAREBOX_MAGICVAR_NAMED(global_hostname, global.hostname, "hostname to send or returned from DHCP request");
-BAREBOX_MAGICVAR_NAMED(global_dhcp_bootfile, global.dhcp.bootfile, "bootfile returned from DHCP request");
-BAREBOX_MAGICVAR_NAMED(global_dhcp_rootpath, global.dhcp.rootpath, "rootpath returned from DHCP request");
-BAREBOX_MAGICVAR_NAMED(global_dhcp_vendor_id, global.dhcp.vendor_id, "vendor id to send to the DHCP server");
-BAREBOX_MAGICVAR_NAMED(global_dhcp_client_uuid, global.dhcp.client_uuid, "cliend uuid to send to the DHCP server");
-BAREBOX_MAGICVAR_NAMED(global_dhcp_client_id, global.dhcp.client_id, "cliend id to send to the DHCP server");
-BAREBOX_MAGICVAR_NAMED(global_dhcp_user_class, global.dhcp.user_class, "user class to send to the DHCP server");
-BAREBOX_MAGICVAR_NAMED(global_dhcp_tftp_server_name, global.dhcp.tftp_server_name, "TFTP server Name returned from DHCP request");
-BAREBOX_MAGICVAR_NAMED(global_dhcp_oftree_file, global.dhcp.oftree_file, "OF tree returned from DHCP request (option 224)");
-BAREBOX_MAGICVAR_NAMED(global_dhcp_retries, global.dhcp.retries, "retry limit");
+BAREBOX_MAGICVAR_NAMED(dhcp_bootfile, dhcp.bootfile, "bootfile returned from DHCP request");
+BAREBOX_MAGICVAR_NAMED(dhcp_rootpath, dhcp.rootpath, "rootpath returned from DHCP request");
+BAREBOX_MAGICVAR_NAMED(dhcp_vendor_id, dhcp.vendor_id, "vendor id to send to the DHCP server");
+BAREBOX_MAGICVAR_NAMED(dhcp_client_uuid, dhcp.client_uuid, "cliend uuid to send to the DHCP server");
+BAREBOX_MAGICVAR_NAMED(dhcp_client_id, dhcp.client_id, "cliend id to send to the DHCP server");
+BAREBOX_MAGICVAR_NAMED(dhcp_user_class, dhcp.user_class, "user class to send to the DHCP server");
+BAREBOX_MAGICVAR_NAMED(dhcp_tftp_server_name, dhcp.tftp_server_name, "TFTP server Name returned from DHCP request");
+BAREBOX_MAGICVAR_NAMED(dhcp_oftree_file, dhcp.oftree_file, "OF tree returned from DHCP request (option 224)");
+BAREBOX_MAGICVAR_NAMED(dhcp_retries, dhcp.retries, "retry limit");
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
