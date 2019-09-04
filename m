Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5UKX-00064Z-Pu
 for barebox@lists.infradead.org; Wed, 04 Sep 2019 12:24:10 +0000
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Wed,  4 Sep 2019 14:24:04 +0200
Message-Id: <20190904122404.2755-1-m.tretter@pengutronix.de>
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
Subject: [PATCH] libfile: fix typos
To: barebox@lists.infradead.org
Cc: Michael Tretter <m.tretter@pengutronix.de>

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 lib/libfile.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/lib/libfile.c b/lib/libfile.c
index f6c588d737..3f3ec21fdb 100644
--- a/lib/libfile.c
+++ b/lib/libfile.c
@@ -242,9 +242,9 @@ EXPORT_SYMBOL(read_file_2);
  *
  * This function reads a file to an allocated buffer.
  * Some TFTP servers do not transfer the size of a file. In this case
- * a the file is first read to a temporary file.
+ * the file is first read to a temporary file.
  *
- * Return: The buffer conataining the file or NULL on failure
+ * Return: The buffer containing the file or NULL on failure
  */
 void *read_file(const char *filename, size_t *size)
 {
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
