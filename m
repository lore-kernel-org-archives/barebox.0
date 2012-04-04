Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SFShd-0000Pc-6z
 for barebox@lists.infradead.org; Wed, 04 Apr 2012 16:04:58 +0000
From: Wolfram Sang <w.sang@pengutronix.de>
Date: Wed,  4 Apr 2012 18:04:44 +0200
Message-Id: <1333555484-32635-7-git-send-email-w.sang@pengutronix.de>
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
Subject: [PATCH 6/6] net: ping: do not retry endlessly
To: barebox@lists.infradead.org

Signed-off-by: Wolfram Sang <w.sang@pengutronix.de>
---
 net/ping.c |    7 +++++++
 1 files changed, 7 insertions(+), 0 deletions(-)

diff --git a/net/ping.c b/net/ping.c
index 4aa10f8..bc6cf2e 100644
--- a/net/ping.c
+++ b/net/ping.c
@@ -56,6 +56,7 @@ static int do_ping(int argc, char *argv[])
 {
 	int ret;
 	uint64_t ping_start;
+	unsigned retries = 0;
 
 	if (argc < 2)
 		return COMMAND_ERROR_USAGE;
@@ -94,6 +95,12 @@ static int do_ping(int argc, char *argv[])
 			ret = ping_send();
 			if (ret)
 				goto out_unreg;
+			retries++;
+		}
+
+		if (retries > PKT_NUM_RETRIES) {
+			ret = -ETIMEDOUT;
+			goto out_unreg;
 		}
 	}
 
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
