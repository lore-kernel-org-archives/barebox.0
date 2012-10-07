Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TKpD8-0006fv-GR
 for barebox@lists.infradead.org; Sun, 07 Oct 2012 11:39:55 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun,  7 Oct 2012 13:39:48 +0200
Message-Id: <1349609991-26567-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1349609991-26567-1-git-send-email-s.hauer@pengutronix.de>
References: <1349609991-26567-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/5] resource: statically initialize iomem resource
To: barebox@lists.infradead.org

This gets us rid of an initcall and also has the advantage that
request_iomem_region can be called at any time now.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/resource.c |   10 ++--------
 1 file changed, 2 insertions(+), 8 deletions(-)

diff --git a/common/resource.c b/common/resource.c
index da631d3..ea6abe8 100644
--- a/common/resource.c
+++ b/common/resource.c
@@ -101,6 +101,8 @@ int release_region(struct resource *res)
 struct resource iomem_resource = {
 	.start = 0,
 	.end = 0xffffffff,
+	.name = "iomem",
+	.children = LIST_HEAD_INIT(iomem_resource.children),
 };
 
 /*
@@ -111,11 +113,3 @@ struct resource *request_iomem_region(const char *name,
 {
 	return request_region(&iomem_resource, name, start, end);
 }
-
-static int iomem_init(void)
-{
-	init_resource(&iomem_resource, "iomem");
-
-	return 0;
-}
-postcore_initcall(iomem_init);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
