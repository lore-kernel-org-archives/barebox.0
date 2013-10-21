Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp20.mail.ru ([94.100.176.173])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VYJbF-0000jN-00
 for barebox@lists.infradead.org; Mon, 21 Oct 2013 17:49:06 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Mon, 21 Oct 2013 21:48:23 +0400
Message-Id: <1382377705-15040-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 1/3] calloc: Fix possible memory leak
To: barebox@lists.infradead.org


Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 common/dlmalloc.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/common/dlmalloc.c b/common/dlmalloc.c
index 7ad368e..b4341fe 100644
--- a/common/dlmalloc.c
+++ b/common/dlmalloc.c
@@ -1750,11 +1750,11 @@ void *calloc(size_t n, size_t elem_size)
 	mchunkptr oldtop = top;
 	INTERNAL_SIZE_T oldtopsize = chunksize(top);
 
-	void *mem = malloc(sz);
-
 	if ((long)n < 0)
 		return NULL;
 
+	void *mem = malloc(sz);
+
 	if (!mem)
 		return NULL;
 	else {
-- 
1.8.1.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
