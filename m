Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo5.mail-out.ovh.net ([178.32.228.5])
 by bombadil.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TCCOg-00024A-52
 for barebox@lists.infradead.org; Thu, 13 Sep 2012 16:36:12 +0000
Received: from mail404.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 8BCDFFFAAF2
 for <barebox@lists.infradead.org>; Thu, 13 Sep 2012 18:37:43 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu, 13 Sep 2012 18:29:27 +0200
Message-Id: <1347553768-19030-6-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1347553768-19030-1-git-send-email-plagnioj@jcrosoft.com>
References: <20120913155532.GA9153@game.jcrosoft.org>
 <1347553768-19030-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 6/7] dhcp: add retries limit support
To: barebox@lists.infradead.org

via -r opt, global.dhcp.retries or dhcp_retries

set the priority order;

This will allow to do not stay infinite loop if no dhcp available
for boot sequence as example

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 net/dhcp.c |   37 ++++++++++++++++++++++++++++++++++---
 1 file changed, 34 insertions(+), 3 deletions(-)

diff --git a/net/dhcp.c b/net/dhcp.c
index 02dc529..768255e 100644
--- a/net/dhcp.c
+++ b/net/dhcp.c
@@ -22,6 +22,8 @@
 #include <globalvar.h>
 #include <init.h>
 
+#define DHCP_DEFAULT_RETRY 20
+
 #define OPT_SIZE 312	/* Minimum DHCP Options size per RFC2131 - results in 576 byte pkt */
 
 struct bootp {
@@ -700,13 +702,26 @@ static int dhcp_global_init(void)
 }
 late_initcall(dhcp_global_init);
 
+static void dhcp_getenv_int(const char *name, int *i)
+{
+	const char* str = getenv(name);
+
+	if (!str)
+		return;
+
+	*i = simple_strtoul(str, NULL, 10);
+}
+
 static int do_dhcp(int argc, char *argv[])
 {
 	int ret, opt;
+	int retries = DHCP_DEFAULT_RETRY;
 
 	dhcp_reset_env();
 
-	while((opt = getopt(argc, argv, "H:v:c:u:U:")) > 0) {
+	dhcp_getenv_int("global.dhcp.retries", &retries);
+
+	while((opt = getopt(argc, argv, "H:v:c:u:U:r:")) > 0) {
 		switch(opt) {
 		case 'H':
 			dhcp_set_param_data(DHCP_HOSTNAME, optarg);
@@ -723,9 +738,17 @@ static int do_dhcp(int argc, char *argv[])
 		case 'U':
 			dhcp_set_param_data(DHCP_USER_CLASS, optarg);
 			break;
+		case 'r':
+			retries = simple_strtoul(optarg, NULL, 10);
+			break;
 		}
 	}
 
+	if (!retries) {
+		printf("retries is set to zero, set it to %d\n", DHCP_DEFAULT_RETRY);
+		retries = DHCP_DEFAULT_RETRY;
+	}
+
 	dhcp_con = net_udp_new(0xffffffff, PORT_BOOTPS, dhcp_handler, NULL);
 	if (IS_ERR(dhcp_con)) {
 		ret = PTR_ERR(dhcp_con);
@@ -746,11 +769,17 @@ static int do_dhcp(int argc, char *argv[])
 	while (dhcp_state != BOUND) {
 		if (ctrlc())
 			break;
+		if (!retries) {
+			ret = -ETIMEDOUT;
+			goto out1;
+		}
 		net_poll();
 		if (is_timeout(dhcp_start, 3 * SECOND)) {
 			dhcp_start = get_time_ns();
 			printf("T ");
 			ret = bootp_request();
+			/* no need to check if retries > 0 as we check if != 0 */
+			retries--;
 			if (ret)
 				goto out1;
 		}
@@ -762,7 +791,7 @@ out:
 	if (ret)
 		printf("dhcp failed: %s\n", strerror(-ret));
 
-	return ret ? 1 : 0;
+	return ret;
 }
 
 BAREBOX_CMD_HELP_START(dhcp)
@@ -785,7 +814,8 @@ BAREBOX_CMD_HELP_OPT  ("-u <client_uuid>",
 BAREBOX_CMD_HELP_OPT  ("-U <user_class>",
 "DHCP User class (code 77) submitted in DHCP requests. It can\n"
 "be used in the DHCP server's configuration to select options\n"
-"(e.g. bootfile or server) which are valid for barebox clients only.\n");
+"(e.g. bootfile or server) which are valid for barebox clients only.\n")
+BAREBOX_CMD_HELP_OPT  ("-r <retry>", "retry limit by default "__stringify(DHCP_DEFAULT_RETRY)"\n");
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(dhcp)
@@ -804,3 +834,4 @@ BAREBOX_MAGICVAR_NAMED(global_dhcp_client_id, global.dhcp.client_id, "cliend id
 BAREBOX_MAGICVAR_NAMED(global_dhcp_user_class, global.dhcp.user_class, "user class to send to the DHCP server");
 BAREBOX_MAGICVAR_NAMED(global_dhcp_tftp_server_name, global.dhcp.tftp_server_name, "TFTP server Name returned from DHCP request");
 BAREBOX_MAGICVAR_NAMED(global_dhcp_oftree_file, global.dhcp.oftree_file, "OF tree returned from DHCP request (option 224)");
+BAREBOX_MAGICVAR_NAMED(global_dhcp_retries, global.dhcp.retries, "retry limit");
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
