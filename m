Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.mei.co.jp ([133.183.100.20])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YGf42-0000Zm-Vm
 for barebox@lists.infradead.org; Thu, 29 Jan 2015 02:42:39 +0000
Received: from mail-gw.jp.panasonic.com ([157.8.1.157])
 by smtp.mei.co.jp (8.12.11.20060614/3.7W/kc-maile12) with ESMTP id
 t0T2gG4J027816
 for <barebox@lists.infradead.org>; Thu, 29 Jan 2015 11:42:16 +0900 (JST)
Received: from epochmail.jp.panasonic.com ([157.8.1.130])
 by mail.jp.panasonic.com (8.11.6p2/3.7W/kc-maili12) with ESMTP id t0T2gHo22567
 for <barebox@lists.infradead.org>; Thu, 29 Jan 2015 11:42:17 +0900
From: Masahiro Yamada <yamada.m@jp.panasonic.com>
Date: Thu, 29 Jan 2015 11:42:13 +0900
Message-Id: <1422499334-31394-1-git-send-email-yamada.m@jp.panasonic.com>
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
Subject: [PATCH] param: add error check to dev_param_set_generic()
To: barebox@lists.infradead.org

The function dev_param_set_generic() may fail because of
out of memory.  If so, return -ENOMEM.

Signed-off-by: Masahiro Yamada <yamada.m@jp.panasonic.com>
---

 lib/parameter.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/lib/parameter.c b/lib/parameter.c
index d337ef3..71262c4 100644
--- a/lib/parameter.c
+++ b/lib/parameter.c
@@ -114,7 +114,7 @@ int dev_param_set_generic(struct device_d *dev, struct param_d *p,
 		return 0;
 	}
 	p->value = strdup(val);
-	return 0;
+	return p->value ? 0 : -ENOMEM;
 }
 
 static const char *param_get_generic(struct device_d *dev, struct param_d *p)
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
