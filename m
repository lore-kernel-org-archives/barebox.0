Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 3.mo3.mail-out.ovh.net ([46.105.44.175]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SDTjg-00042u-GB
 for barebox@lists.infradead.org; Fri, 30 Mar 2012 04:46:54 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id B4778FF8B22
 for <barebox@lists.infradead.org>; Fri, 30 Mar 2012 06:47:20 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 30 Mar 2012 06:31:48 +0200
Message-Id: <1333081913-19168-3-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 3/8] net: dhcp: add support of tftp server ip or Etherboot
 file (option 150)
To: barebox@lists.infradead.org

if tftp server ip
	Use the tftp server name only if this option is not set.
	Export it also via env tftp_server_ip.
else
	Export it via end etherboot_file

E.g. the ISC dhcp server can be configured with

  | option option-150 code 150 = ip-address;
  | option option-150-etherboot-file code 150 = string;
  |
  | class "at91sam9x5ek" {
  |         match if substring (option vendor-class-identifier,0,20) = "barebox-at91sam9x5ek";
  |
  |         filename "/tftpboot/atmel/at91sam9x5/sam9x5ek/zImage";
  |         option tftp-server-name "192.168.200.98";
  |         option option-150 192.168.200.98;
  |         next-server 192.168.200.98;
  |         option root-path "192.168.200.98:/opt/work/buildroot/build/sam9x5/target";
  |         if substring (option dhcp-client-identifier,0,7) = "ser2net" {
  |                 filename "/tftpboot/atmel/at91sam9x5/sam9x5ek/zImage-ser2net";
  |                 ption option-150-etherboot-file "/tftpboot/test.sh";
  |         }
  | }

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 net/dhcp.c |   21 ++++++++++++++++++++-
 1 files changed, 20 insertions(+), 1 deletions(-)

diff --git a/net/dhcp.c b/net/dhcp.c
index 6728717..adfb4a0 100644
--- a/net/dhcp.c
+++ b/net/dhcp.c
@@ -195,6 +195,8 @@ static int dhcp_extended (u8 *e, int message_type, IPaddr_t ServerID,
 	*cnt += 1;
 	*e++  = 66;		/* TFTP server name */
 	*cnt += 1;
+	*e++  = 150;		/* TFTP server ip */
+	*cnt += 1;
 	*e++  = 255;		/* End of the list */
 
 	/* Pad to minimal length */
@@ -255,6 +257,7 @@ static void dhcp_options_process(unsigned char *popt, struct bootp *bp)
 	IPaddr_t ip;
 	char str[256];
 	char tftpname[256];
+	bool is_tftpserverip = false;
 
 	while (popt < end && *popt != 0xff) {
 		oplen = *(popt + 1);
@@ -327,6 +330,18 @@ static void dhcp_options_process(unsigned char *popt, struct bootp *bp)
 					setenv("bootfile", str);
 			}
 			break;
+		case 150:	/* TFTP server ip or Etherboot*/
+			if (oplen == sizeof(IPaddr_t)) {
+				is_tftpserverip = true;
+				ip = net_read_ip(popt + 2);
+				net_set_serverip(ip);
+				setenv_ip("tftp_server_ip", ip);
+			} else {
+				memcpy(str, popt + 2, oplen);
+				str[oplen] = 0;
+				setenv("etherboot_file", str);
+			}
+			break;
 		default:
 #ifdef CONFIG_BOOTP_VENDOREX
 			if (dhcp_vendorex_proc (popt))
@@ -338,7 +353,7 @@ static void dhcp_options_process(unsigned char *popt, struct bootp *bp)
 		popt += oplen + 2;	/* Process next option */
 	}
 
-	if (tftpname[0] != 0)
+	if (!is_tftpserverip && tftpname[0] != 0)
 		net_set_serverip(resolv(tftpname));
 }
 
@@ -468,6 +483,8 @@ static int do_dhcp(int argc, char *argv[])
 	setenv("domainname","");
 	setenv("rootpath","");
 	setenv("tftp_server_name","");
+	setenv("tftp_server_ip","");
+	setenv("etherboot_file","");
 
 	while((opt = getopt(argc, argv, "v:")) > 0) {
 		switch(opt) {
@@ -537,3 +554,5 @@ BAREBOX_MAGICVAR(domainname, "domainname returned from DHCP request");
 BAREBOX_MAGICVAR(rootpath, "rootpath returned from DHCP request");
 BAREBOX_MAGICVAR(dhcp_vendor_id, "vendor id to send to the DHCP server");
 BAREBOX_MAGICVAR(tftp_server_name, "TFTP server Name returned from DHCP request");
+BAREBOX_MAGICVAR(tftp_server_ip, "TFTP server IP returned from DHCP request");
+BAREBOX_MAGICVAR(etherboot_file, "Etherboot File returned from DHCP request");
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
