Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bGO1J-0003JZ-W2
 for barebox@lists.infradead.org; Fri, 24 Jun 2016 10:07:31 +0000
From: Markus Pargmann <mpa@pengutronix.de>
Date: Fri, 24 Jun 2016 12:05:57 +0200
Message-Id: <1466762762-15212-2-git-send-email-mpa@pengutronix.de>
In-Reply-To: <1466762762-15212-1-git-send-email-mpa@pengutronix.de>
References: <1466762762-15212-1-git-send-email-mpa@pengutronix.de>
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
Subject: [PATCH v2 1/6] libfile: Change write_full to be have const buf
To: barebox@lists.infradead.org
Cc: mgr@pengutronix.de

write() uses a const pointer so write_full should do the same.

Signed-off-by: Markus Pargmann <mpa@pengutronix.de>
---
 include/libfile.h | 2 +-
 lib/libfile.c     | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/include/libfile.h b/include/libfile.h
index de4f42dbd19c..dd0b00f98845 100644
--- a/include/libfile.h
+++ b/include/libfile.h
@@ -1,7 +1,7 @@
 #ifndef __LIBFILE_H
 #define __LIBFILE_H
 
-int write_full(int fd, void *buf, size_t size);
+int write_full(int fd, const void *buf, size_t size);
 int read_full(int fd, void *buf, size_t size);
 
 char *read_file_line(const char *fmt, ...);
diff --git a/lib/libfile.c b/lib/libfile.c
index 62e9b8ed2289..cba2f02a23a6 100644
--- a/lib/libfile.c
+++ b/lib/libfile.c
@@ -28,7 +28,7 @@
  * Like write, but guarantees to write the full buffer out, else
  * it returns with an error.
  */
-int write_full(int fd, void *buf, size_t size)
+int write_full(int fd, const void *buf, size_t size)
 {
 	size_t insize = size;
 	int now;
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
