Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 13.mo5.mail-out.ovh.net ([87.98.182.191]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Tyt8f-0006RJ-KE
 for barebox@lists.infradead.org; Fri, 25 Jan 2013 23:56:57 +0000
Received: from mail414.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 5797DFFA766
 for <barebox@lists.infradead.org>; Sat, 26 Jan 2013 01:06:47 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat, 26 Jan 2013 00:55:30 +0100
Message-Id: <1359158132-8023-5-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1359158132-8023-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130125235326.GG26329@game.jcrosoft.org>
 <1359158132-8023-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 5/7] dhcp: switch globalvar to it's own device
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 net/dhcp.c |   40 ++++++++--------------------------------
 1 file changed, 8 insertions(+), 32 deletions(-)

diff --git a/net/dhcp.c b/net/dhcp.c
index 768255e..486b407 100644
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
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
