Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dxB9m-0004KR-QU
 for barebox@lists.infradead.org; Wed, 27 Sep 2017 12:09:51 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 27 Sep 2017 14:09:02 +0200
Message-Id: <20170927120910.10516-5-s.hauer@pengutronix.de>
In-Reply-To: <20170927120910.10516-1-s.hauer@pengutronix.de>
References: <20170927120910.10516-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 04/12] file_list: Fix memory leak in failure path
To: Barebox List <barebox@lists.infradead.org>

In case of a parse error not only the list header has to be freed, but
also the entries. Use file_list_free() for this purpose.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/file-list.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/file-list.c b/common/file-list.c
index e13d5af659..be8f53bd89 100644
--- a/common/file-list.c
+++ b/common/file-list.c
@@ -122,7 +122,7 @@ struct file_list *file_list_parse(const char *str)
 
 	return files;
 out:
-	free(files);
+	file_list_free(files);
 
 	return ERR_PTR(ret);
 }
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
