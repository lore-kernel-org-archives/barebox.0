Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 15.mo1.mail-out.ovh.net ([188.165.38.232])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1clujS-0008P2-Jq
 for barebox@lists.infradead.org; Thu, 09 Mar 2017 09:51:40 +0000
Received: from player730.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo1.mail-out.ovh.net (Postfix) with ESMTP id 637795DDDB
 for <barebox@lists.infradead.org>; Thu,  9 Mar 2017 10:51:14 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu,  9 Mar 2017 10:57:20 +0100
Message-Id: <1489053441-12772-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/2] parameter: fix read only int support
To: barebox@lists.infradead.org

pass PARAM_FLAG_RO flag for read only it
so we can not change them

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 lib/parameter.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/lib/parameter.c b/lib/parameter.c
index 9f96d0760..65d6c7c0d 100644
--- a/lib/parameter.c
+++ b/lib/parameter.c
@@ -692,7 +692,7 @@ struct param_d *dev_add_param_int_ro(struct device_d *dev, const char *name,
 
 	piro = xzalloc(sizeof(*piro));
 
-	ret = __dev_add_param(&piro->param, dev, name, NULL, NULL, 0);
+	ret = __dev_add_param(&piro->param, dev, name, NULL, NULL, PARAM_FLAG_RO);
 	if (ret) {
 		free(piro);
 		return ERR_PTR(ret);
@@ -718,7 +718,7 @@ struct param_d *dev_add_param_llint_ro(struct device_d *dev, const char *name,
 
 	piro = xzalloc(sizeof(*piro));
 
-	ret = __dev_add_param(&piro->param, dev, name, NULL, NULL, 0);
+	ret = __dev_add_param(&piro->param, dev, name, NULL, NULL, PARAM_FLAG_RO);
 	if (ret) {
 		free(piro);
 		return ERR_PTR(ret);
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
