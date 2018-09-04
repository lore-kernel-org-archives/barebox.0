Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail1.bemta26.messagelabs.com ([85.158.142.117])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fx5RH-00035F-34
 for barebox@lists.infradead.org; Tue, 04 Sep 2018 07:07:53 +0000
From: <Oleg.Karfich@wago.com>
Date: Tue, 4 Sep 2018 07:07:37 +0000
Message-ID: <1536044850-23483-1-git-send-email-oleg.karfich@wago.com>
Content-Language: en-US
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
Subject: [PATCH v2] net: dhcp: add global variable for retries
To: barebox@lists.infradead.org
Cc: Oleg.Karfich@wago.com

Signed-off-by: Oleg Karfich <oleg.karfich@wago.com>
---

Changes in v2:

	- use globalvar_add_simple_int
	- set default value to global variable
	- and use the global variable in dhcp requests :-)

---
 net/dhcp.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/net/dhcp.c b/net/dhcp.c
index 92e0501..984d32a 100644
--- a/net/dhcp.c
+++ b/net/dhcp.c
@@ -448,7 +448,7 @@ static char *global_dhcp_bootfile;
 static char *global_dhcp_oftree_file;
 static char *global_dhcp_rootpath;
 static char *global_dhcp_tftp_server_name;
-static char *global_dhcp_retries;
+static int global_dhcp_retries = DHCP_DEFAULT_RETRY;
 static char *global_dhcp_option224;
 
 static void set_res(char **var, const char *res)
@@ -485,7 +485,7 @@ int dhcp_request(struct eth_device *edev, const struct dhcp_req_param *param,
 	if (!dhcp_param.option224)
 		dhcp_param.option224 = global_dhcp_option224;
 	if (!dhcp_param.retries)
-		dhcp_param.retries = DHCP_DEFAULT_RETRY;
+		dhcp_param.retries = global_dhcp_retries;
 
 	dhcp_con = net_udp_eth_new(edev, IP_BROADCAST, PORT_BOOTPS, dhcp_handler, NULL);
 	if (IS_ERR(dhcp_con)) {
@@ -630,7 +630,7 @@ static int dhcp_global_init(void)
 	globalvar_add_simple_string("dhcp.user_class", &global_dhcp_user_class);
 	globalvar_add_simple_string("dhcp.oftree_file", &global_dhcp_oftree_file);
 	globalvar_add_simple_string("dhcp.tftp_server_name", &global_dhcp_tftp_server_name);
-	globalvar_add_simple_string("dhcp.retries", &global_dhcp_retries);
+	globalvar_add_simple_int("dhcp.retries", &global_dhcp_retries, "%u");
 	globalvar_add_simple_string("dhcp.option224", &global_dhcp_option224);
 
 	return 0;
-- 
2.7.4

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
