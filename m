Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.mei.co.jp ([133.183.100.20])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YGf4Q-0000fT-6r
 for barebox@lists.infradead.org; Thu, 29 Jan 2015 02:43:02 +0000
Received: from mail-gw.jp.panasonic.com ([157.8.1.157])
 by smtp.mei.co.jp (8.12.11.20060614/3.7W/kc-maile11) with ESMTP id
 t0T2gevA006572
 for <barebox@lists.infradead.org>; Thu, 29 Jan 2015 11:42:40 +0900 (JST)
Received: from epochmail.jp.panasonic.com ([157.8.1.130])
 by mail.jp.panasonic.com (8.11.6p2/3.7W/kc-maili15) with ESMTP id t0T2geB05940
 for <barebox@lists.infradead.org>; Thu, 29 Jan 2015 11:42:40 +0900
From: Masahiro Yamada <yamada.m@jp.panasonic.com>
Date: Thu, 29 Jan 2015 11:42:36 +0900
Message-Id: <1422499357-31461-1-git-send-email-yamada.m@jp.panasonic.com>
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
Subject: [PATCH] param: add error check to __dev_add_param()
To: barebox@lists.infradead.org

If the argument, name is given with NULL, it would be probably
unexpected behavior.  It should fail rather than register the
NULL-named parameter.

If strdup() fails with out-of-memory, it should also fail
with -ENOMEM.

Signed-off-by: Masahiro Yamada <yamada.m@jp.panasonic.com>
---

 lib/parameter.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/lib/parameter.c b/lib/parameter.c
index 71262c4..c658538 100644
--- a/lib/parameter.c
+++ b/lib/parameter.c
@@ -130,6 +130,13 @@ static int __dev_add_param(struct param_d *param, struct device_d *dev, const ch
 	if (get_param_by_name(dev, name))
 		return -EEXIST;
 
+	if (!name)
+		return -EINVAL;
+
+	param->name = strdup(name);
+	if (param->name)
+		return -ENOMEM;
+
 	if (set)
 		param->set = set;
 	else
@@ -139,7 +146,6 @@ static int __dev_add_param(struct param_d *param, struct device_d *dev, const ch
 	else
 		param->get = param_get_generic;
 
-	param->name = strdup(name);
 	param->flags = flags;
 	param->dev = dev;
 	list_add_tail(&param->list, &dev->parameters);
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
