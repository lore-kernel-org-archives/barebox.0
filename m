Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.mei.co.jp ([133.183.100.20])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YGmZP-0006KK-Hd
 for barebox@lists.infradead.org; Thu, 29 Jan 2015 10:43:32 +0000
Received: from mail-gw.jp.panasonic.com ([157.8.1.157])
 by smtp.mei.co.jp (8.12.11.20060614/3.7W/kc-maile12) with ESMTP id
 t0TAh8F0008724
 for <barebox@lists.infradead.org>; Thu, 29 Jan 2015 19:43:08 +0900 (JST)
Received: from epochmail.jp.panasonic.com ([157.8.1.130])
 by mail.jp.panasonic.com (8.11.6p2/3.7W/kc-maili13) with ESMTP id t0TAh8J07189
 for <barebox@lists.infradead.org>; Thu, 29 Jan 2015 19:43:08 +0900
From: Masahiro Yamada <yamada.m@jp.panasonic.com>
Date: Thu, 29 Jan 2015 19:43:06 +0900
Message-Id: <1422528186-3666-1-git-send-email-yamada.m@jp.panasonic.com>
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
Subject: [PATCH v3] param: add error check to __dev_add_param()
To: barebox@lists.infradead.org

If strdup() fails with out-of-memory, __dev_add_param() should fail
with -ENOMEM.

(Note strdup() is always given with a non-NULL pointer.  If the
argument name is given with NULL, the system would already have
crashed in the get_param_by_name() function.)

Signed-off-by: Masahiro Yamada <yamada.m@jp.panasonic.com>
---

Changes in v3:
  - Drop -ENOMEM check

 lib/parameter.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/lib/parameter.c b/lib/parameter.c
index 71262c4..865ad9f 100644
--- a/lib/parameter.c
+++ b/lib/parameter.c
@@ -130,6 +130,10 @@ static int __dev_add_param(struct param_d *param, struct device_d *dev, const ch
 	if (get_param_by_name(dev, name))
 		return -EEXIST;
 
+	param->name = strdup(name);
+	if (!param->name)
+		return -ENOMEM;
+
 	if (set)
 		param->set = set;
 	else
@@ -139,7 +143,6 @@ static int __dev_add_param(struct param_d *param, struct device_d *dev, const ch
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
