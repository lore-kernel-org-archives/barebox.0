Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from tango.tkos.co.il ([62.219.50.35])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OSkFL-0007YQ-Pe
	for barebox@lists.infradead.org; Sun, 27 Jun 2010 05:17:36 +0000
From: Baruch Siach <baruch@tkos.co.il>
Date: Sun, 27 Jun 2010 08:17:16 +0300
Message-Id: <e049fe5636cc213f485e3d24a3dcbd6c246e8ee5.1277615744.git.baruch@tkos.co.il>
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
Subject: [PATCH net-pu] tftp: fix push for servers supporting 'option
	acknowledgement'
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

When doing push receiving 'option acknowledgement' should move the protocol to
state WDATA, and set block number to 1.

Signed-off-by: Baruch Siach <baruch@tkos.co.il>
---
 net/tftp.c |    4 ++++
 1 files changed, 4 insertions(+), 0 deletions(-)

diff --git a/net/tftp.c b/net/tftp.c
index 14d9b5e..20fab78 100644
--- a/net/tftp.c
+++ b/net/tftp.c
@@ -186,6 +186,10 @@ static void tftp_handler(char *packet, unsigned len)
 	case TFTP_OACK:
 		debug("Got OACK: %s %s\n", pkt, pkt + strlen(pkt) + 1);
 		tftp_state = STATE_OACK;
+		if (tftp_put) {
+			tftp_block = 1;
+			tftp_state = STATE_WDATA;
+		}
 		tftp_server_port = ntohs(udp->uh_sport);
 		tftp_con->udp->uh_dport = udp->uh_sport;
 		tftp_send(); /* Send ACK */
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
