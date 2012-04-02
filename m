Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo3.mail-out.ovh.net ([178.32.228.3])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SEiLL-00006F-GY
 for barebox@lists.infradead.org; Mon, 02 Apr 2012 14:34:52 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 4F9BFFF99B2
 for <barebox@lists.infradead.org>; Mon,  2 Apr 2012 16:35:27 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon,  2 Apr 2012 16:19:04 +0200
Message-Id: <1333376350-19506-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20120402141700.GF8116@game.jcrosoft.org>
References: <20120402141700.GF8116@game.jcrosoft.org>
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
Subject: [PATCH 2/8] net: dhcp: reset env variable before do a dhcp request
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 net/dhcp.c |   16 ++++++++++++++++
 1 files changed, 16 insertions(+), 0 deletions(-)

diff --git a/net/dhcp.c b/net/dhcp.c
index 3b035d7..3c48aaa 100644
--- a/net/dhcp.c
+++ b/net/dhcp.c
@@ -536,11 +536,27 @@ static void dhcp_handler(void *ctx, char *packet, unsigned int len)
 	}
 }
 
+static void dhcp_reset_env(void)
+{
+	struct dhcp_opt *opt;
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(dhcp_options); i++) {
+		opt = &dhcp_options[i];
+		if (!opt->barebox_var_name)
+			continue;
+
+		setenv(opt->barebox_var_name,"");
+	}
+}
+
 static int do_dhcp(int argc, char *argv[])
 {
 	int ret, opt;
 	char *vendor_id = (char*)getenv("dhcp_vendor_id");
 
+	dhcp_reset_env();
+
 	while((opt = getopt(argc, argv, "v:")) > 0) {
 		switch(opt) {
 		case 'v':
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
