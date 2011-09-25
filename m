Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1R7viT-0006c6-F5
	for barebox@lists.infradead.org; Sun, 25 Sep 2011 20:54:26 +0000
From: Wolfram Sang <w.sang@pengutronix.de>
Date: Sun, 25 Sep 2011 22:54:12 +0200
Message-Id: <1316984054-31295-10-git-send-email-w.sang@pengutronix.de>
In-Reply-To: <1316984054-31295-1-git-send-email-w.sang@pengutronix.de>
References: <1316984054-31295-1-git-send-email-w.sang@pengutronix.de>
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
Subject: [PATCH 09/11] net: getenv_ip: check return value of string_to_ip
To: barebox@lists.infradead.org

Return 0 if we encounter an error.

Signed-off-by: Wolfram Sang <w.sang@pengutronix.de>
---
 net/net.c |    3 ++-
 1 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/net/net.c b/net/net.c
index 3578118..8416861 100644
--- a/net/net.c
+++ b/net/net.c
@@ -136,7 +136,8 @@ IPaddr_t getenv_ip(const char *name)
 	if (!var)
 		return 0;
 
-	string_to_ip(var, &ip);
+	if (string_to_ip(var, &ip))
+		return 0;
 
 	return ip;
 }
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
