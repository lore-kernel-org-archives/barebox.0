Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YLpY2-0003lr-8G
 for barebox@lists.infradead.org; Thu, 12 Feb 2015 08:55:03 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 12 Feb 2015 09:54:25 +0100
Message-Id: <1423731274-9860-9-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1423731274-9860-1-git-send-email-s.hauer@pengutronix.de>
References: <1423731274-9860-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 08/17] cmdlinepart: Change SIZE_REMAINING to loff_t
To: Barebox List <barebox@lists.infradead.org>

For compatibility with devices > 4G.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 lib/cmdlinepart.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/lib/cmdlinepart.c b/lib/cmdlinepart.c
index 0474992..4781d82 100644
--- a/lib/cmdlinepart.c
+++ b/lib/cmdlinepart.c
@@ -22,7 +22,7 @@
 #include <linux/err.h>
 #include <cmdlinepart.h>
 
-#define SIZE_REMAINING ((size_t)-1)
+#define SIZE_REMAINING ((loff_t)-1)
 
 int cmdlinepart_do_parse_one(char *devname, const char *partstr,
 				 char **endp, loff_t *offset,
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
