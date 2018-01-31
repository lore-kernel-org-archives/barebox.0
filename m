Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1egnIY-0006Zc-5j
 for barebox@lists.infradead.org; Wed, 31 Jan 2018 07:59:15 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 31 Jan 2018 08:58:55 +0100
Message-Id: <20180131075855.32425-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] libfile: Make write_file buffer const
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/libfile.h | 2 +-
 lib/libfile.c     | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/include/libfile.h b/include/libfile.h
index dd0b00f988..eb4311d0bc 100644
--- a/include/libfile.h
+++ b/include/libfile.h
@@ -11,7 +11,7 @@ void *read_file(const char *filename, size_t *size);
 int read_file_2(const char *filename, size_t *size, void **outbuf,
 		loff_t max_size);
 
-int write_file(const char *filename, void *buf, size_t size);
+int write_file(const char *filename, const void *buf, size_t size);
 
 int copy_file(const char *src, const char *dst, int verbose);
 
diff --git a/lib/libfile.c b/lib/libfile.c
index 6b70306dbd..1face96c82 100644
--- a/lib/libfile.c
+++ b/lib/libfile.c
@@ -230,7 +230,7 @@ EXPORT_SYMBOL(read_file);
  *
  * Return: 0 for success or negative error value
  */
-int write_file(const char *filename, void *buf, size_t size)
+int write_file(const char *filename, const void *buf, size_t size)
 {
 	int fd, ret;
 
-- 
2.15.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
