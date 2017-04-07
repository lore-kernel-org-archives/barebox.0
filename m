Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cwNQE-000305-FT
 for barebox@lists.infradead.org; Fri, 07 Apr 2017 06:31:04 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  7 Apr 2017 08:30:38 +0200
Message-Id: <20170407063038.2703-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] nvvar: Fix creation without value
To: Barebox List <barebox@lists.infradead.org>

When a new nvvar is added without a value we want to get the value
from the corresponding globalvar. We do this by using nv_set which
ends up freeing the exact string that we passed into nv_set as
value. This results in a corrupt value. Fix this by assigning a
value manually without calling nv_set.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/globalvar.c | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/common/globalvar.c b/common/globalvar.c
index 52808f8852..ab573cc68d 100644
--- a/common/globalvar.c
+++ b/common/globalvar.c
@@ -233,10 +233,16 @@ static int __nvvar_add(const char *name, const char *value)
 	if (ret && ret != -EEXIST)
 		return ret;
 
-	if (!value)
-		value = dev_get_param(&global_device, name);
+	if (value)
+		return nv_set(&nv_device, p, value);
+
+	value = dev_get_param(&global_device, name);
+	if (value) {
+		free(p->value);
+		p->value = xstrdup(value);
+	}
 
-	return nv_set(&nv_device, p, value);
+	return 0;
 }
 
 int nvvar_add(const char *name, const char *value)
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
