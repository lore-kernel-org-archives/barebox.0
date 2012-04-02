Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 10.mo3.mail-out.ovh.net ([87.98.165.232]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SEiLP-00007r-1T
 for barebox@lists.infradead.org; Mon, 02 Apr 2012 14:34:55 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id AD2E7FF9992
 for <barebox@lists.infradead.org>; Mon,  2 Apr 2012 16:35:30 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon,  2 Apr 2012 16:19:07 +0200
Message-Id: <1333376350-19506-5-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 5/8] net: dhcp: allow to set transmitted client id
To: barebox@lists.infradead.org

For net boot setups it is useful to submit boot params like server or
bootfile over dhcp. To distinguish diffrent type of OS running on the same hardware,
a custom client id can be sent in dhcp discover/request messages.

E.g. the ISC dhcp server can be configured with

 | class "at91sam9x5ek" {
 |         match if substring (option vendor-class-identifier,0,20) = "barebox-at91sam9x5ek";
 |
 |         filename "/tftpboot/atmel/at91sam9x5/sam9x5ek/zImage";
 |         if substring (option dhcp-client-identifier,0,7) = "ser2net" {
 |                 filename "/tftpboot/atmel/at91sam9x5/sam9x5ek/zImage-ser2net";
 |         }
 |         option tftp-server-name "192.168.200.98";
 |         option option-150 192.168.200.98;
 |         next-server 192.168.200.98;
 |         option root-path "192.168.200.98:/opt/work/buildroot/build/sam9x5/target";
 | }

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 net/dhcp.c |   10 +++++++++-
 1 files changed, 9 insertions(+), 1 deletions(-)

diff --git a/net/dhcp.c b/net/dhcp.c
index 7d01d4b..5b1ab5a 100644
--- a/net/dhcp.c
+++ b/net/dhcp.c
@@ -257,12 +257,17 @@ static int dhcp_set_string_options(struct dhcp_param *param, u8 *e)
 }
 
 #define DHCP_VENDOR_ID		60
+#define DHCP_CLIENT_ID		61
 
 struct dhcp_param dhcp_params[] = {
 	{
 		.option = DHCP_VENDOR_ID,
 		.handle = dhcp_set_string_options,
 		.barebox_var_name = "dhcp_vendor_id",
+	}, {
+		.option = DHCP_CLIENT_ID,
+		.handle = dhcp_set_string_options,
+		.barebox_var_name = "dhcp_client_id",
 	}
 };
 
@@ -618,11 +623,14 @@ static int do_dhcp(int argc, char *argv[])
 
 	dhcp_reset_env();
 
-	while((opt = getopt(argc, argv, "v:")) > 0) {
+	while((opt = getopt(argc, argv, "v:c:")) > 0) {
 		switch(opt) {
 		case 'v':
 			dhcp_set_param_data(DHCP_VENDOR_ID, optarg);
 			break;
+		case 'c':
+			dhcp_set_param_data(DHCP_CLIENT_ID, optarg);
+			break;
 		}
 	}
 
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
