Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail1.bemta25.messagelabs.com ([195.245.230.4])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fvfJK-0003Ry-Kn
 for barebox@lists.infradead.org; Fri, 31 Aug 2018 09:01:57 +0000
From: <Oleg.Karfich@wago.com>
Date: Fri, 31 Aug 2018 09:01:32 +0000
Message-ID: <1535706079-10439-2-git-send-email-oleg.karfich@wago.com>
References: <1535706079-10439-1-git-send-email-oleg.karfich@wago.com>
In-Reply-To: <1535706079-10439-1-git-send-email-oleg.karfich@wago.com>
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
Subject: [PATCH 1/3] net: dhcp: use private extension 224 also in discover
 requests
To: barebox@lists.infradead.org
Cc: Oleg.Karfich@wago.com

Signed-off-by: Oleg Karfich <oleg.karfich@wago.com>
---
 include/dhcp.h | 1 +
 net/dhcp.c     | 7 +++++++
 2 files changed, 8 insertions(+)

diff --git a/include/dhcp.h b/include/dhcp.h
index 0977ff4..ce5ed61 100644
--- a/include/dhcp.h
+++ b/include/dhcp.h
@@ -18,6 +18,7 @@ struct dhcp_req_param {
 	char *client_id;
 	char *user_class;
 	char *client_uuid;
+	char *option224;
 	int retries;
 };
 
diff --git a/net/dhcp.c b/net/dhcp.c
index d30551d..6394397 100644
--- a/net/dhcp.c
+++ b/net/dhcp.c
@@ -98,6 +98,7 @@ struct dhcp_receivce_opts {
 #define DHCP_CLIENT_ID		61
 #define DHCP_USER_CLASS		77
 #define DHCP_CLIENT_UUID	97
+#define DHCP_OPTION224		224
 
 static int dhcp_set_ip_options(int option, u8 *e, IPaddr_t ip)
 {
@@ -212,6 +213,7 @@ static int dhcp_extended(u8 *e, int message_type, IPaddr_t ServerID,
 	e += dhcp_set_string_options(DHCP_CLIENT_ID, dhcp_param.client_id, e);
 	e += dhcp_set_string_options(DHCP_USER_CLASS, dhcp_param.user_class, e);
 	e += dhcp_set_string_options(DHCP_CLIENT_UUID, dhcp_param.client_uuid, e);
+	e += dhcp_set_string_options(DHCP_OPTION224, dhcp_param.option224, e);
 
 	*e++ = 55;		/* Parameter Request List */
 	cnt = e++;		/* Pointer to count of requested items */
@@ -446,6 +448,7 @@ static char *global_dhcp_bootfile;
 static char *global_dhcp_oftree_file;
 static char *global_dhcp_rootpath;
 static char *global_dhcp_tftp_server_name;
+static char *global_dhcp_option224;
 
 static void set_res(char **var, const char *res)
 {
@@ -478,6 +481,8 @@ int dhcp_request(struct eth_device *edev, const struct dhcp_req_param *param,
 		dhcp_param.client_uuid = global_dhcp_client_uuid;
 	if (!dhcp_param.client_id)
 		dhcp_param.client_id = global_dhcp_client_id;
+	if (!dhcp_param.option224)
+		dhcp_param.option224 = global_dhcp_option224;
 	if (!dhcp_param.retries)
 		dhcp_param.retries = DHCP_DEFAULT_RETRY;
 
@@ -624,6 +629,7 @@ static int dhcp_global_init(void)
 	globalvar_add_simple_string("dhcp.user_class", &global_dhcp_user_class);
 	globalvar_add_simple_string("dhcp.oftree_file", &global_dhcp_oftree_file);
 	globalvar_add_simple_string("dhcp.tftp_server_name", &global_dhcp_tftp_server_name);
+	globalvar_add_simple_string("dhcp.option224", &global_dhcp_option224);
 
 	return 0;
 }
@@ -639,3 +645,4 @@ BAREBOX_MAGICVAR_NAMED(global_dhcp_user_class, global.dhcp.user_class, "user cla
 BAREBOX_MAGICVAR_NAMED(global_dhcp_tftp_server_name, global.dhcp.tftp_server_name, "TFTP server Name returned from DHCP request");
 BAREBOX_MAGICVAR_NAMED(global_dhcp_oftree_file, global.dhcp.oftree_file, "OF tree returned from DHCP request (option 224)");
 BAREBOX_MAGICVAR_NAMED(global_dhcp_retries, global.dhcp.retries, "retry limit");
+BAREBOX_MAGICVAR_NAMED(global_dhcp_option224, global.dhcp.option224, "private data to send to the DHCP server (option 224)");
-- 
2.7.4

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
