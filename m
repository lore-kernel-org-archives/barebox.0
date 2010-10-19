Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by casper.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P8BjQ-0000sa-Un
	for barebox@lists.infradead.org; Tue, 19 Oct 2010 12:55:57 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 19 Oct 2010 14:55:15 +0200
Message-Id: <1287492930-15716-28-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1287492930-15716-1-git-send-email-s.hauer@pengutronix.de>
References: <1287492930-15716-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 27/42] ping: make locally used functions static
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 net/ping.c |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/net/ping.c b/net/ping.c
index 440e229..d414784 100644
--- a/net/ping.c
+++ b/net/ping.c
@@ -40,7 +40,7 @@ static int ping_send(void)
 	return net_icmp_send(ping_con, 9);
 }
 
-void ping_handler(char *pkt, unsigned len)
+static void ping_handler(char *pkt, unsigned len)
 {
 	IPaddr_t tmp;
 	struct iphdr *ip = net_eth_to_iphdr(pkt);
@@ -52,7 +52,7 @@ void ping_handler(char *pkt, unsigned len)
 	ping_state = PING_STATE_SUCCESS;
 }
 
-int do_ping(struct command *cmdtp, int argc, char *argv[])
+static int do_ping(struct command *cmdtp, int argc, char *argv[])
 {
 	int ret;
 	uint64_t ping_start = 0;
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
