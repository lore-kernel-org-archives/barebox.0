Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPltG-0003DN-Cy
 for barebox@lists.infradead.org; Wed, 30 Oct 2019 11:11:51 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>) id 1iPltF-0003x5-8A
 for barebox@lists.infradead.org; Wed, 30 Oct 2019 12:11:49 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Wed, 30 Oct 2019 12:11:49 +0100
Message-Id: <20191030111149.6761-1-l.stach@pengutronix.de>
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
Subject: [PATCH] fs: ubootvarfs: use correct format specifier for pointer diff
To: barebox@lists.infradead.org

The difference between two pointers is represented as a ptrdiff_t, use the
correct format specifier when printing to get rid of the following warning
in a 64bit build:

warning: format '%x' expects argument of type 'unsigned int',
but argument 3 has type 'long int' [-Wformat=]

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 fs/ubootvarfs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/ubootvarfs.c b/fs/ubootvarfs.c
index 81ec05d5efaa..475e4b7a79c4 100644
--- a/fs/ubootvarfs.c
+++ b/fs/ubootvarfs.c
@@ -409,7 +409,7 @@ static void ubootvarfs_parse(struct ubootvarfs_data *data, char *blob,
 
 			list_add_tail(&var->list, &data->var_list);
 		} else {
-			pr_err("No separator in data @ 0x%08x. Skipped.",
+			pr_err("No separator in data @ 0x%08tx. Skipped.",
 			       blob - start);
 			free(var);
 		}
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
