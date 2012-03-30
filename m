Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 3.mo3.mail-out.ovh.net ([46.105.44.175]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SDTjg-00042t-B0
 for barebox@lists.infradead.org; Fri, 30 Mar 2012 04:46:53 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 2C6A1FF8B12
 for <barebox@lists.infradead.org>; Fri, 30 Mar 2012 06:47:20 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 30 Mar 2012 06:31:47 +0200
Message-Id: <1333081913-19168-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20120330042713.GX444@game.jcrosoft.org>
References: <20120330042713.GX444@game.jcrosoft.org>
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
Subject: [PATCH 2/8] net: dhcp: add support of tftp name server
To: barebox@lists.infradead.org

if the DNS is enable resolve it. The server ip will be set if no server ip it
is set in the bootp.
Export it via env tftp_server_name.

E.g. the ISC dhcp server can be configured with

   | class "at91sam9x5ek" {
   |         match if substring (option vendor-class-identifier,0,20) = "barebox-at91sam9x5ek";
   |
   |         filename "/tftpboot/atmel/at91sam9x5/sam9x5ek/zImage";
   |         option tftp-server-name "192.168.200.98";
   |         option root-path "192.168.200.98:/opt/work/buildroot/build/sam9x5/target";
   |         }
   | }

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 net/dhcp.c |   13 ++++++++++++-
 1 files changed, 12 insertions(+), 1 deletions(-)

diff --git a/net/dhcp.c b/net/dhcp.c
index 1ba4def..6728717 100644
--- a/net/dhcp.c
+++ b/net/dhcp.c
@@ -193,6 +193,8 @@ static int dhcp_extended (u8 *e, int message_type, IPaddr_t ServerID,
 	*cnt += 1;
 	*e++  = 17;		/* Boot path */
 	*cnt += 1;
+	*e++  = 66;		/* TFTP server name */
+	*cnt += 1;
 	*e++  = 255;		/* End of the list */
 
 	/* Pad to minimal length */
@@ -252,6 +254,7 @@ static void dhcp_options_process(unsigned char *popt, struct bootp *bp)
 	int oplen;
 	IPaddr_t ip;
 	char str[256];
+	char tftpname[256];
 
 	while (popt < end && *popt != 0xff) {
 		oplen = *(popt + 1);
@@ -295,7 +298,10 @@ static void dhcp_options_process(unsigned char *popt, struct bootp *bp)
 			break;
 		case 59:	/* Ignore Rebinding Time Option */
 			break;
-		case 66:	/* Ignore TFTP server name */
+		case 66:	/* TFTP server name */
+			memcpy(tftpname, popt + 2, oplen);
+			tftpname[oplen] = 0;
+			setenv("tftp_server_name", tftpname);
 			break;
 		case 67:	/* vendor opt bootfile */
 			/*
@@ -331,6 +337,9 @@ static void dhcp_options_process(unsigned char *popt, struct bootp *bp)
 		}
 		popt += oplen + 2;	/* Process next option */
 	}
+
+	if (tftpname[0] != 0)
+		net_set_serverip(resolv(tftpname));
 }
 
 static int dhcp_message_type(unsigned char *popt)
@@ -458,6 +467,7 @@ static int do_dhcp(int argc, char *argv[])
 	setenv("hostname","");
 	setenv("domainname","");
 	setenv("rootpath","");
+	setenv("tftp_server_name","");
 
 	while((opt = getopt(argc, argv, "v:")) > 0) {
 		switch(opt) {
@@ -526,3 +536,4 @@ BAREBOX_MAGICVAR(hostname, "hostname returned from DHCP request");
 BAREBOX_MAGICVAR(domainname, "domainname returned from DHCP request");
 BAREBOX_MAGICVAR(rootpath, "rootpath returned from DHCP request");
 BAREBOX_MAGICVAR(dhcp_vendor_id, "vendor id to send to the DHCP server");
+BAREBOX_MAGICVAR(tftp_server_name, "TFTP server Name returned from DHCP request");
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
