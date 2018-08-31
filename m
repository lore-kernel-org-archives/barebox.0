Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail1.bemta25.messagelabs.com ([195.245.230.4])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fvfJV-0003Ry-NR
 for barebox@lists.infradead.org; Fri, 31 Aug 2018 09:02:14 +0000
From: <Oleg.Karfich@wago.com>
Date: Fri, 31 Aug 2018 09:01:32 +0000
Message-ID: <1535706079-10439-4-git-send-email-oleg.karfich@wago.com>
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
Subject: [PATCH 3/3] net: dhcp: add global variable for retries
To: barebox@lists.infradead.org
Cc: Oleg.Karfich@wago.com

Signed-off-by: Oleg Karfich <oleg.karfich@wago.com>
---
 net/dhcp.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/net/dhcp.c b/net/dhcp.c
index 6394397..92e0501 100644
--- a/net/dhcp.c
+++ b/net/dhcp.c
@@ -448,6 +448,7 @@ static char *global_dhcp_bootfile;
 static char *global_dhcp_oftree_file;
 static char *global_dhcp_rootpath;
 static char *global_dhcp_tftp_server_name;
+static char *global_dhcp_retries;
 static char *global_dhcp_option224;
 
 static void set_res(char **var, const char *res)
@@ -629,6 +630,7 @@ static int dhcp_global_init(void)
 	globalvar_add_simple_string("dhcp.user_class", &global_dhcp_user_class);
 	globalvar_add_simple_string("dhcp.oftree_file", &global_dhcp_oftree_file);
 	globalvar_add_simple_string("dhcp.tftp_server_name", &global_dhcp_tftp_server_name);
+	globalvar_add_simple_string("dhcp.retries", &global_dhcp_retries);
 	globalvar_add_simple_string("dhcp.option224", &global_dhcp_option224);
 
 	return 0;
-- 
2.7.4

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
