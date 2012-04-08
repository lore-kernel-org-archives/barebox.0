Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 18.mo3.mail-out.ovh.net ([87.98.172.162]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SGofU-0007Pk-1y
 for barebox@lists.infradead.org; Sun, 08 Apr 2012 09:44:21 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 60C34FF8624
 for <barebox@lists.infradead.org>; Sun,  8 Apr 2012 11:45:12 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun,  8 Apr 2012 11:27:21 +0200
Message-Id: <1333877242-582-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1333877242-582-1-git-send-email-plagnioj@jcrosoft.com>
References: <1333877242-582-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/3] net: dhcp: add private extention 224 to pass the oftree
 file via dhcp.
To: barebox@lists.infradead.org

DHCP option 224 to 254 are for private use, so use one.

Export it via env dhcp_oftree_file.

E.g. the ISC dhcp server can be configured with

   | option oftree-path code 224 = string
   | class "at91sam9x5ek" {
   | match if substring (option vendor-class-identifier,0,20) = "barebox-at91sam9x5ek";
   |
   | filename "/tftpboot/atmel/at91sam9x5/sam9x5ek/zImage";
   | option tftp-server-name "192.168.200.98";
   | option root-path "192.168.200.98:/opt/work/buildroot/build/sam9x5/target";
   | option oftree-path "/tftpboot/atmel/at91sam9x5/sam9x5ek/sam9g25ek/dtb";
   | }

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 net/dhcp.c |    5 +++++
 1 files changed, 5 insertions(+), 0 deletions(-)

diff --git a/net/dhcp.c b/net/dhcp.c
index ad32b53..0116ba4 100644
--- a/net/dhcp.c
+++ b/net/dhcp.c
@@ -201,6 +201,10 @@ struct dhcp_opt dhcp_options[] = {
 		.option = 67,
 		.handle = bootfile_vendorex_handle,
 		.barebox_var_name = "bootfile",
+	}, {
+		.option = 224,
+		.handle = env_str_handle,
+		.barebox_var_name = "dhcp_oftree_file",
 	},
 };
 
@@ -702,3 +706,4 @@ BAREBOX_MAGICVAR(dhcp_client_uuid, "cliend uuid to send to the DHCP server");
 BAREBOX_MAGICVAR(dhcp_client_id, "cliend id to send to the DHCP server");
 BAREBOX_MAGICVAR(dhcp_user_class, "user class to send to the DHCP server");
 BAREBOX_MAGICVAR(dhcp_tftp_server_name, "TFTP server Name returned from DHCP request");
+BAREBOX_MAGICVAR(dhcp_oftree_file, "OF tree returned from DHCP request (option 224)");
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
