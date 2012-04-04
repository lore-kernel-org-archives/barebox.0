Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SFShd-0000Pb-5u
 for barebox@lists.infradead.org; Wed, 04 Apr 2012 16:04:58 +0000
From: Wolfram Sang <w.sang@pengutronix.de>
Date: Wed,  4 Apr 2012 18:04:39 +0200
Message-Id: <1333555484-32635-2-git-send-email-w.sang@pengutronix.de>
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
Subject: [PATCH 1/6] net: ping: send PING packets with 1-second interval
To: barebox@lists.infradead.org

Like standard ping does by default.

Signed-off-by: Wolfram Sang <w.sang@pengutronix.de>
---
 net/ping.c |    3 ++-
 1 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/net/ping.c b/net/ping.c
index b90e5af..0e8a0dc 100644
--- a/net/ping.c
+++ b/net/ping.c
@@ -88,7 +88,8 @@ static int do_ping(int argc, char *argv[])
 
 		net_poll();
 
-		if (is_timeout(ping_start, 10 * SECOND)) {
+		if (is_timeout(ping_start, SECOND)) {
+			/* No answer, send another packet */
 			ping_start = get_time_ns();
 			ret = ping_send();
 			if (ret)
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
