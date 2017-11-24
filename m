Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eI96g-0008K8-NI
 for barebox@lists.infradead.ORG; Fri, 24 Nov 2017 08:13:18 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 24 Nov 2017 09:12:27 +0100
Message-Id: <20171124081237.6830-12-s.hauer@pengutronix.de>
In-Reply-To: <20171124081237.6830-1-s.hauer@pengutronix.de>
References: <20171124081237.6830-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 11/21] net: dhcp: Coding style fixes
To: Barebox List <barebox@lists.infradead.org>

Fix some spaces-before-function-opening-brackets and duplicate empty
lines.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 net/dhcp.c | 13 ++++++-------
 1 file changed, 6 insertions(+), 7 deletions(-)

diff --git a/net/dhcp.c b/net/dhcp.c
index fe3f7f28b6..4403166d2a 100644
--- a/net/dhcp.c
+++ b/net/dhcp.c
@@ -389,7 +389,7 @@ static void bootp_copy_net_params(struct bootp *bp)
 /*
  * Initialize BOOTP extension fields in the request.
  */
-static int dhcp_extended (u8 *e, int message_type, IPaddr_t ServerID,
+static int dhcp_extended(u8 *e, int message_type, IPaddr_t ServerID,
 			  IPaddr_t RequestedIP)
 {
 	struct dhcp_opt *opt;
@@ -411,7 +411,6 @@ static int dhcp_extended (u8 *e, int message_type, IPaddr_t ServerID,
 	*e++ = (576 - 312 + OPT_SIZE) >> 8;
 	*e++ = (576 - 312 + OPT_SIZE) & 0xff;
 
-
 	e += dhcp_set_ip_options(50, e, RequestedIP);
 	e += dhcp_set_ip_options(54, e, ServerID);
 
@@ -467,7 +466,7 @@ static int bootp_request(void)
 
 	bfile = getenv("bootfile");
 	if (bfile)
-		safe_strncpy (bp->bp_file, bfile, sizeof(bp->bp_file));
+		safe_strncpy(bp->bp_file, bfile, sizeof(bp->bp_file));
 
 	/* Request additional information from the BOOTP/DHCP server */
 	ext_len = dhcp_extended(bp->bp_vend, DHCP_DISCOVER, 0, 0);
@@ -523,8 +522,8 @@ static int dhcp_message_type(unsigned char *popt)
 		return -1;
 
 	popt += 4;
-	while ( *popt != 0xff ) {
-		if ( *popt == 53 )	/* DHCP Message Type */
+	while (*popt != 0xff) {
+		if (*popt == 53)	/* DHCP Message Type */
 			return *(popt + 2);
 		popt += *(popt + 1) + 2;	/* Scan through all options */
 	}
@@ -596,7 +595,7 @@ static void dhcp_handler(void *ctx, char *packet, unsigned int len)
 		 * If filename is in format we recognize, assume it is a valid
 		 * OFFER from a server we want.
 		 */
-		debug ("%s: state SELECTING, bp_file: \"%s\"\n", __func__, bp->bp_file);
+		debug("%s: state SELECTING, bp_file: \"%s\"\n", __func__, bp->bp_file);
 		dhcp_state = REQUESTING;
 
 		if (net_read_uint32(&bp->bp_vend[0]) == htonl(BOOTP_VENDOR_MAGIC))
@@ -609,7 +608,7 @@ static void dhcp_handler(void *ctx, char *packet, unsigned int len)
 
 		break;
 	case REQUESTING:
-		debug ("%s: State REQUESTING\n", __func__);
+		debug("%s: State REQUESTING\n", __func__);
 
 		if (dhcp_message_type((u8 *)bp->bp_vend) == DHCP_ACK ) {
 			IPaddr_t ip;
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
