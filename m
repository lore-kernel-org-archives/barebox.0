Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0gz8-0005Jd-ES
 for barebox@lists.infradead.org; Thu, 22 Aug 2019 06:54:16 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 22 Aug 2019 08:54:06 +0200
Message-Id: <20190822065408.29279-2-a.fatoum@pengutronix.de>
In-Reply-To: <20190822065408.29279-1-a.fatoum@pengutronix.de>
References: <20190822065408.29279-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 2/4] libfile: have write_full return a descriptive error code
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

So far (p|)write_full has been returning -1 on error.
Some callers of write_full like imx_bbu_write_device print out the
function's return value on error, effectively rendering every printed
error message to be due to EPERM.

On the other hand, some callers like do_memcpy, use it correctly and
use errno. Sidestep the issue by having the function return -errno on
errors as well.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 lib/libfile.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/lib/libfile.c b/lib/libfile.c
index b42753c2b5ea..f6c588d7373f 100644
--- a/lib/libfile.c
+++ b/lib/libfile.c
@@ -38,7 +38,7 @@ int pwrite_full(int fd, const void *buf, size_t size, loff_t offset)
 		now = pwrite(fd, buf, size, offset);
 		if (now == 0) {
 			errno = ENOSPC;
-			return -1;
+			return -errno;
 		}
 		if (now < 0)
 			return now;
@@ -66,7 +66,7 @@ int write_full(int fd, const void *buf, size_t size)
 		now = write(fd, buf, size);
 		if (now == 0) {
 			errno = ENOSPC;
-			return -1;
+			return -errno;
 		}
 		if (now < 0)
 			return now;
@@ -194,6 +194,7 @@ again:
 	buf = calloc(read_size + 1, 1);
 	if (!buf) {
 		ret = -ENOMEM;
+		errno = ENOMEM;
 		goto err_out;
 	}
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
