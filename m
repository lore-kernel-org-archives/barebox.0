Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c9U2A-0008Mh-EY
 for barebox@lists.infradead.org; Wed, 23 Nov 2016 09:40:10 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 23 Nov 2016 10:39:31 +0100
Message-Id: <20161123093937.15711-4-s.hauer@pengutronix.de>
In-Reply-To: <20161123093937.15711-1-s.hauer@pengutronix.de>
References: <20161123093937.15711-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 04/10] globalvar: Fix compiler warning
To: Barebox List <barebox@lists.infradead.org>

Fixes:
common/globalvar.c:393:7: warning: 'pname' may be used uninitialized in this function [-Wmaybe-uninitialized]

This is a false positive, pname cannot be uninitialized. Silence this
warning.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/globalvar.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/globalvar.c b/common/globalvar.c
index 85d0795..52808f8 100644
--- a/common/globalvar.c
+++ b/common/globalvar.c
@@ -382,7 +382,7 @@ void globalvar_set_match(const char *match, const char *val)
 static int globalvar_simple_set(struct device_d *dev, struct param_d *p, const char *val)
 {
 	struct device_d *rdev;
-	const char *pname;
+	const char *pname = NULL;
 	int ret;
 
 	ret = nvvar_device_dispatch(p->name, &rdev, &pname);
-- 
2.10.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
