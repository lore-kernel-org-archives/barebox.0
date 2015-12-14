Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a8QZV-0008HK-G1
 for barebox@lists.infradead.org; Mon, 14 Dec 2015 10:41:38 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 14 Dec 2015 11:41:12 +0100
Message-Id: <1450089674-25721-2-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/4] net: dhcp: simplify dhcp_options_process
To: Barebox List <barebox@lists.infradead.org>

dhcp_options_handle returns the index into the dhcp_options array.
This is only to be able in the caller to print a debug message when
the index returned from dhcp_options_handle is out of bounds.
Simplify this by printing the debug message in dhcp_options_handle
and not in the caller.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 net/dhcp.c | 15 ++++++---------
 1 file changed, 6 insertions(+), 9 deletions(-)

diff --git a/net/dhcp.c b/net/dhcp.c
index fa4c4d1..78e5fe0 100644
--- a/net/dhcp.c
+++ b/net/dhcp.c
@@ -482,7 +482,7 @@ static int bootp_request(void)
 	return ret;
 }
 
-static int dhcp_options_handle(unsigned char option, unsigned char *popt,
+static void dhcp_options_handle(unsigned char option, unsigned char *popt,
 			       int optlen, struct bootp *bp)
 {
 	int i;
@@ -492,13 +492,13 @@ static int dhcp_options_handle(unsigned char option, unsigned char *popt,
 		opt = &dhcp_options[i];
 		if (opt->option == option) {
 			opt->bp = bp;
-			opt->handle(opt, popt, optlen);
-			goto end;
+			if (opt->handle)
+				opt->handle(opt, popt, optlen);
+			return;
 		}
 	}
 
-end:
-	return i;
+	debug("*** Unhandled DHCP Option in OFFER/ACK: %d\n", option);
 }
 
 static void dhcp_options_process(unsigned char *popt, struct bootp *bp)
@@ -506,15 +506,12 @@ static void dhcp_options_process(unsigned char *popt, struct bootp *bp)
 	unsigned char *end = popt + sizeof(*bp) + OPT_SIZE;
 	int oplen;
 	unsigned char option;
-	int i;
 
 	while (popt < end && *popt != 0xff) {
 		oplen = *(popt + 1);
 		option = *popt;
 
-		i = dhcp_options_handle(option, popt + 2, oplen, bp);
-		if (i == ARRAY_SIZE(dhcp_options))
-			debug("*** Unhandled DHCP Option in OFFER/ACK: %d\n", option);
+		dhcp_options_handle(option, popt + 2, oplen, bp);
 
 		popt += oplen + 2;	/* Process next option */
 	}
-- 
2.6.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
