Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SjDFB-0002O7-UY
 for barebox@lists.infradead.org; Mon, 25 Jun 2012 17:38:39 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 25 Jun 2012 19:38:30 +0200
Message-Id: <1340645910-15668-13-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1340645910-15668-1-git-send-email-s.hauer@pengutronix.de>
References: <1340645910-15668-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 12/12] of: Fix usage of 0 as NULL pointer
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/oftree.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/oftree.c b/common/oftree.c
index 49758a9..677e934 100644
--- a/common/oftree.c
+++ b/common/oftree.c
@@ -207,7 +207,7 @@ int fdt_find_and_setprop(struct fdt_header *fdt, const char *node,
 	if (nodeoff < 0)
 		return nodeoff;
 
-	if ((!create) && (fdt_get_property(fdt, nodeoff, prop, 0) == NULL))
+	if ((!create) && (fdt_get_property(fdt, nodeoff, prop, NULL) == NULL))
 		return 0; /* create flag not set; so exit quietly */
 
 	return fdt_setprop(fdt, nodeoff, prop, val, len);
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
