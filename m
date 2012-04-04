Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SFSha-0003hh-L0
 for barebox@lists.infradead.org; Wed, 04 Apr 2012 16:04:55 +0000
From: Wolfram Sang <w.sang@pengutronix.de>
Date: Wed,  4 Apr 2012 18:04:40 +0200
Message-Id: <1333555484-32635-3-git-send-email-w.sang@pengutronix.de>
In-Reply-To: <1333555484-32635-1-git-send-email-w.sang@pengutronix.de>
References: <1333555484-32635-1-git-send-email-w.sang@pengutronix.de>
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
Subject: [PATCH 2/6] net: ping: remove unneeded initialization
To: barebox@lists.infradead.org

Signed-off-by: Wolfram Sang <w.sang@pengutronix.de>
---
 net/ping.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/net/ping.c b/net/ping.c
index 0e8a0dc..4aa10f8 100644
--- a/net/ping.c
+++ b/net/ping.c
@@ -55,7 +55,7 @@ static void ping_handler(void *ctx, char *pkt, unsigned len)
 static int do_ping(int argc, char *argv[])
 {
 	int ret;
-	uint64_t ping_start = 0;
+	uint64_t ping_start;
 
 	if (argc < 2)
 		return COMMAND_ERROR_USAGE;
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
