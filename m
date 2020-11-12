Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kdGG1-0006OO-55
 for barebox@lists.infradead.org; Thu, 12 Nov 2020 17:19:37 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 12 Nov 2020 18:19:27 +0100
Message-Id: <20201112171927.29337-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH master] nv: fix use-after-free when clearing from shell
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>, Holger Assmann <has@pengutronix.de>

From: Ahmad Fatoum <ahmad@a3f.at>

When we use hush to set the same nv.var twice to the empty string:

  $ nv.user=
  $ nv.user=

nv_set is called twice with a NULL val argument leading
to a double free and accompanied memory corruption.

Reorder the code, so p->value is freed just once.

Fixes: fa4c41ba60af ("nvvar: when setting a nvvar to NULL just free the content")
Cc: Holger Assmann <has@pengutronix.de>
Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 common/globalvar.c | 12 ++++--------
 1 file changed, 4 insertions(+), 8 deletions(-)

diff --git a/common/globalvar.c b/common/globalvar.c
index 60793d7a30c6..a55b38b00fd5 100644
--- a/common/globalvar.c
+++ b/common/globalvar.c
@@ -179,16 +179,12 @@ static int nv_set(struct device_d *dev, struct param_d *p, const char *name, con
 {
 	int ret;
 
-	if (!val) {
-		if (p)
-			free(p->value);
-		return 0;
+	if (val) {
+		ret = dev_set_param(&global_device, name, val);
+		if (ret)
+			return ret;
 	}
 
-	ret = dev_set_param(&global_device, name, val);
-	if (ret)
-		return ret;
-
 	if (p) {
 		free(p->value);
 		p->value = xstrdup(val);
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
