Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 11.mo5.mail-out.ovh.net ([46.105.47.167]
 helo=mo5.mail-out.ovh.net)
 by casper.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TBoLP-0001wy-8W
 for barebox@lists.infradead.org; Wed, 12 Sep 2012 14:55:12 +0000
Received: from mail404.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 79146FFA037
 for <barebox@lists.infradead.org>; Wed, 12 Sep 2012 16:56:42 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 12 Sep 2012 16:48:27 +0200
Message-Id: <1347461308-24208-6-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 6/7] dhcp: add retries limit support
To: barebox@lists.infradead.org

via -r opt, global.dhcp.retries or dhcp_retries

set the priority order;

This will allow to do not stay infinite loop if no dhcp availlable
for boot sequence as example

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 net/dhcp.c |   33 +++++++++++++++++++++++++++++++--
 1 file changed, 31 insertions(+), 2 deletions(-)

diff --git a/net/dhcp.c b/net/dhcp.c
index 02dc529..a5fcb14 100644
--- a/net/dhcp.c
+++ b/net/dhcp.c
@@ -700,13 +700,26 @@ static int dhcp_global_init(void)
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
+	int retries = -1;
 
 	dhcp_reset_env();
 
-	while((opt = getopt(argc, argv, "H:v:c:u:U:")) > 0) {
+	dhcp_getenv_int("global.dhcp.retries", &retries);
+
+	while((opt = getopt(argc, argv, "H:v:c:u:U:r:")) > 0) {
 		switch(opt) {
 		case 'H':
 			dhcp_set_param_data(DHCP_HOSTNAME, optarg);
@@ -723,9 +736,17 @@ static int do_dhcp(int argc, char *argv[])
 		case 'U':
 			dhcp_set_param_data(DHCP_USER_CLASS, optarg);
 			break;
+		case 'r':
+			retries = simple_strtoul(optarg, NULL, 10);
+			break;
 		}
 	}
 
+	if (!retries) {
+		printf("retries is set to zero, set it to -1\n");
+		retries = -1;
+	}
+
 	dhcp_con = net_udp_new(0xffffffff, PORT_BOOTPS, dhcp_handler, NULL);
 	if (IS_ERR(dhcp_con)) {
 		ret = PTR_ERR(dhcp_con);
@@ -746,11 +767,17 @@ static int do_dhcp(int argc, char *argv[])
 	while (dhcp_state != BOUND) {
 		if (ctrlc())
 			break;
+		if (!retries) {
+			ret = ETIMEDOUT;
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
@@ -785,7 +812,8 @@ BAREBOX_CMD_HELP_OPT  ("-u <client_uuid>",
 BAREBOX_CMD_HELP_OPT  ("-U <user_class>",
 "DHCP User class (code 77) submitted in DHCP requests. It can\n"
 "be used in the DHCP server's configuration to select options\n"
-"(e.g. bootfile or server) which are valid for barebox clients only.\n");
+"(e.g. bootfile or server) which are valid for barebox clients only.\n")
+BAREBOX_CMD_HELP_OPT  ("-r <retry>", "retry limi\n");
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(dhcp)
@@ -804,3 +832,4 @@ BAREBOX_MAGICVAR_NAMED(global_dhcp_client_id, global.dhcp.client_id, "cliend id
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
