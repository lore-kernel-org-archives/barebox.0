Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1R7viT-0006c5-FB
	for barebox@lists.infradead.org; Sun, 25 Sep 2011 20:54:27 +0000
From: Wolfram Sang <w.sang@pengutronix.de>
Date: Sun, 25 Sep 2011 22:54:11 +0200
Message-Id: <1316984054-31295-9-git-send-email-w.sang@pengutronix.de>
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
Subject: [PATCH 08/11] net: string_to_ip: add sanity check for > 255
To: barebox@lists.infradead.org

Signed-off-by: Wolfram Sang <w.sang@pengutronix.de>
---
 net/net.c |    6 ++++--
 1 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/net/net.c b/net/net.c
index f1ab667..3578118 100644
--- a/net/net.c
+++ b/net/net.c
@@ -113,8 +113,10 @@ int string_to_ip(const char *s, IPaddr_t *ip)
 			return -EINVAL;
 
 		val = simple_strtoul(s, &e, 10);
-		addr <<= 8;
-		addr |= (val & 0xFF);
+		if (val > 255)
+			return -EINVAL;
+
+		addr = (addr << 8) | val;
 
 		if (*e != '.' && i != 3)
 			return -EINVAL;
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
