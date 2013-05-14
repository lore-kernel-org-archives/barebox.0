Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UcC0H-0001Ya-0S
 for barebox@lists.infradead.org; Tue, 14 May 2013 09:58:42 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 14 May 2013 11:58:17 +0200
Message-Id: <1368525497-4413-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1368525497-4413-1-git-send-email-s.hauer@pengutronix.de>
References: <1368525497-4413-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] net: dhcp: Fix tftp servername handling
To: barebox@lists.infradead.org

When the dhcp code discovered the tftp-server-name option it immediately
tries to resolve the name. This can't succeed since the we are somewhere
in the dhcp processing and the nameserver may not even be known.

Fix this by resolving the name when dhcp is completed. While at it, do
this in a way that net_set_serverip is only called when resolv() returns
something useful. Otherwise we may end up overwriting a previously
configured serverip which came from the bootp bp_siaddr field.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 net/dhcp.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/net/dhcp.c b/net/dhcp.c
index 7324c94..1261b2d 100644
--- a/net/dhcp.c
+++ b/net/dhcp.c
@@ -527,9 +527,6 @@ static void dhcp_options_process(unsigned char *popt, struct bootp *bp)
 
 		popt += oplen + 2;	/* Process next option */
 	}
-
-	if (dhcp_tftpname[0] != 0)
-		net_set_serverip(resolv(dhcp_tftpname));
 }
 
 static int dhcp_message_type(unsigned char *popt)
@@ -787,6 +784,12 @@ static int do_dhcp(int argc, char *argv[])
 		}
 	}
 
+	if (dhcp_tftpname[0] != 0) {
+		IPaddr_t tftpserver = resolv(dhcp_tftpname);
+		if (tftpserver)
+			net_set_serverip(tftpserver);
+	}
+
 out1:
 	net_unregister(dhcp_con);
 out:
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
