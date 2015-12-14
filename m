Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a8QZV-0008HL-G2
 for barebox@lists.infradead.org; Mon, 14 Dec 2015 10:41:39 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 14 Dec 2015 11:41:13 +0100
Message-Id: <1450089674-25721-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1450089674-25721-1-git-send-email-s.hauer@pengutronix.de>
References: <1450089674-25721-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/4] net: dhcp: make unmodified variable const
To: Barebox List <barebox@lists.infradead.org>

'str' in dhcp_set_string_options is never modified, so make it const.
With this we no longer have to cast away the const returned from getenv.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 net/dhcp.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/net/dhcp.c b/net/dhcp.c
index 78e5fe0..4433b44 100644
--- a/net/dhcp.c
+++ b/net/dhcp.c
@@ -204,13 +204,13 @@ static void bootfile_vendorex_handle(struct dhcp_opt *opt, unsigned char *popt,
 static int dhcp_set_string_options(struct dhcp_opt *param, u8 *e)
 {
 	int str_len;
-	char* str = param->data;
+	const char *str = param->data;
 
 	if (!str && param->barebox_var_name && IS_ENABLED(CONFIG_ENVIRONMENT_VARIABLES))
-		str = (char*)getenv(param->barebox_var_name);
+		str = getenv(param->barebox_var_name);
 
 	if (!str && param->barebox_dhcp_global && IS_ENABLED(CONFIG_GLOBALVAR))
-		str = (char*)dhcp_get_barebox_global(param->barebox_dhcp_global);
+		str = dhcp_get_barebox_global(param->barebox_dhcp_global);
 
 	if (!str)
 		return 0;
-- 
2.6.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
