Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NZJRA-0005qF-L9
	for barebox@lists.infradead.org; Mon, 25 Jan 2010 07:32:41 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 25 Jan 2010 08:32:28 +0100
Message-Id: <1264404750-11596-11-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1264404750-11596-10-git-send-email-s.hauer@pengutronix.de>
References: <1264404750-11596-1-git-send-email-s.hauer@pengutronix.de>
	<1264404750-11596-2-git-send-email-s.hauer@pengutronix.de>
	<1264404750-11596-3-git-send-email-s.hauer@pengutronix.de>
	<1264404750-11596-4-git-send-email-s.hauer@pengutronix.de>
	<1264404750-11596-5-git-send-email-s.hauer@pengutronix.de>
	<1264404750-11596-6-git-send-email-s.hauer@pengutronix.de>
	<1264404750-11596-7-git-send-email-s.hauer@pengutronix.de>
	<1264404750-11596-8-git-send-email-s.hauer@pengutronix.de>
	<1264404750-11596-9-git-send-email-s.hauer@pengutronix.de>
	<1264404750-11596-10-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 10/12] put only once used function inline
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 net/net.c |   19 ++++++-------------
 1 files changed, 6 insertions(+), 13 deletions(-)

diff --git a/net/net.c b/net/net.c
index 7dc1bc6..4554d49 100644
--- a/net/net.c
+++ b/net/net.c
@@ -189,18 +189,6 @@ void ArpRequest (void)
 	(void) eth_send (NetTxPacket, (pkt - NetTxPacket) + ARP_HDR_SIZE);
 }
 
-static void ArpTimeoutCheck(void)
-{
-	if (!NetArpWaitPacketIP)
-		return;
-
-	/* check for arp timeout */
-	if (is_timeout(NetArpWaitTimerStart, ARP_TIMEOUT)) {
-		NetArpWaitTimerStart = get_time_ns();
-		ArpRequest();
-	}
-}
-
 /**********************************************************************/
 /*
  *	Main network processing loop.
@@ -298,7 +286,12 @@ int NetLoop(void)
 			return -1;
 		}
 
-		ArpTimeoutCheck();
+		/* check for arp timeout */
+		if (NetArpWaitPacketIP &&
+				is_timeout(NetArpWaitTimerStart, ARP_TIMEOUT)) {
+			NetArpWaitTimerStart = get_time_ns();
+			ArpRequest();
+		}
 
 		/*
 		 *	Check for a timeout, and run the timeout handler
-- 
1.6.6


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
