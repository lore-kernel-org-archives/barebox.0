Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ganesha.gnumonks.org ([213.95.27.120])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aW7Gi-0000lm-6s
 for barebox@lists.infradead.org; Wed, 17 Feb 2016 18:56:12 +0000
From: Harald Welte <laforge@gnumonks.org>
Date: Wed, 17 Feb 2016 19:45:24 +0100
Message-Id: <1455734724-22913-1-git-send-email-laforge@gnumonks.org>
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
Subject: [PATCH] bootm: Free allocated fdt buffer in error path
To: barebox@lists.infradead.org

It seems like there is a memory leak in an error path of
bootm_open_oftree_uimage() where the memory allocated for the fdt is not
released again.

Signed-off-by: Harald Welte <laforge@gnumonks.org>
---
 common/bootm.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/common/bootm.c b/common/bootm.c
index 052cffa..7d00f8e 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -288,6 +288,7 @@ static int bootm_open_oftree_uimage(struct image_data *data, size_t *size,
 	if (ft != filetype_oftree) {
 		printf("%s is not an oftree but %s\n",
 			data->oftree_file, file_type_to_string(ft));
+		free(*fdt);
 		return -EINVAL;
 	}
 
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
