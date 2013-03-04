Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UCS5Y-0006Vh-Ln
 for barebox@lists.infradead.org; Mon, 04 Mar 2013 09:53:48 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Mar 2013 10:53:06 +0100
Message-Id: <1362390820-10333-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1362390820-10333-1-git-send-email-s.hauer@pengutronix.de>
References: <1362390820-10333-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 03/37] of: removed unused variables
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/base.c |    5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 86dca6a..01d4e4f 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -932,10 +932,8 @@ int of_unflatten_dtb(struct fdt_header *fdt)
 	int  nextoffset;	/* next node offset from libfdt */
 	uint32_t tag;		/* tag */
 	int  len;		/* length of the property */
-	int  level = 0;		/* keep track of nesting level */
 	const struct fdt_property *fdt_prop;
 	const char *pathp;
-	int depth = 10000;
 	struct device_node *node = NULL, *n, *root = NULL;
 	struct property *p;
 
@@ -998,8 +996,7 @@ int of_unflatten_dtb(struct fdt_header *fdt)
 			of_alias_scan();
 			return 0;
 		default:
-			if (level <= depth)
-				printf("Unknown tag 0x%08X\n", tag);
+			printf("Unknown tag 0x%08X\n", tag);
 			return -EINVAL;
 		}
 		nodeoffset = nextoffset;
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
