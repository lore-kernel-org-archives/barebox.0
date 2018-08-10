Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fo0nP-0005Bv-Up
 for barebox@lists.infradead.org; Fri, 10 Aug 2018 06:21:13 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 10 Aug 2018 08:20:59 +0200
Message-Id: <20180810062059.19066-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] fs: ramfs: get chunks zero initialized
To: Barebox List <barebox@lists.infradead.org>

Initialize new chunks to zero, otherwise a ->truncate call may
result in uninitialized data in files.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/ramfs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/ramfs.c b/fs/ramfs.c
index a97f0a6ebf..7af885b324 100644
--- a/fs/ramfs.c
+++ b/fs/ramfs.c
@@ -140,7 +140,7 @@ static struct ramfs_chunk *ramfs_get_chunk(void)
 	if (!data)
 		return NULL;
 
-	data->data = malloc(CHUNK_SIZE);
+	data->data = calloc(CHUNK_SIZE, 1);
 	if (!data->data) {
 		free(data);
 		return NULL;
-- 
2.18.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
