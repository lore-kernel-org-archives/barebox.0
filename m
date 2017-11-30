Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eKMsy-00060i-S0
 for barebox@lists.infradead.ORG; Thu, 30 Nov 2017 11:20:13 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 30 Nov 2017 12:19:44 +0100
Message-Id: <20171130111944.25665-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] common: globalvar: fix removing multiple nvvars with wildcards
To: Barebox List <barebox@lists.infradead.org>

nvvar_remove takes wildcards, so it can remove multiple variables. This
means we cannot return after the first loop iteration, but instead must
continue.

Fixes: 609d3edc3ad9 (common: globvar: let nvvar_remove() report non-existing variable)

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Cc:
---
 common/globalvar.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/common/globalvar.c b/common/globalvar.c
index ee756e5140..77b89c1791 100644
--- a/common/globalvar.c
+++ b/common/globalvar.c
@@ -247,6 +247,7 @@ int nvvar_remove(const char *name)
 {
 	struct param_d *p, *tmp;
 	char *fname;
+	int ret = -ENOENT;
 
 	if (!IS_ENABLED(CONFIG_NVVAR))
 		return -ENOSYS;
@@ -262,10 +263,10 @@ int nvvar_remove(const char *name)
 		unlink(fname);
 		free(fname);
 
-		return 0;
+		ret = 0;
 	}
 
-	return -ENOENT;
+	return ret;
 }
 
 int nvvar_load(void)
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
