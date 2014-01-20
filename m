Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W5EfT-0006rT-9e
 for barebox@lists.infradead.org; Mon, 20 Jan 2014 13:13:31 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 20 Jan 2014 14:13:07 +0100
Message-Id: <1390223587-6519-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] net: Fix error return value for string_to_ethaddr
To: barebox@lists.infradead.org

Return a proper error code instead of -1 which would be -EPERM.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 net/net.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/net/net.c b/net/net.c
index 9ef0784..20051bc 100644
--- a/net/net.c
+++ b/net/net.c
@@ -143,12 +143,12 @@ int string_to_ethaddr(const char *str, u8 enetaddr[6])
 
         if (!str || strlen(str) != 17) {
 		memset(enetaddr, 0, 6);
-		return -1;
+		return -EINVAL;
 	}
 
         if (str[2] != ':' || str[5] != ':' || str[8] != ':' ||
                         str[11] != ':' || str[14] != ':')
-                return -1;
+                return -EINVAL;
 
 	for (reg = 0; reg < 6; ++reg) {
 		enetaddr[reg] = simple_strtoul (str, &e, 16);
-- 
1.8.5.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
