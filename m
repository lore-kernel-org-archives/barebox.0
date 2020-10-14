Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kSiOF-0001uY-5w
 for barebox@lists.infradead.org; Wed, 14 Oct 2020 15:08:35 +0000
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Wed, 14 Oct 2020 17:08:24 +0200
Message-Id: <20201014150824.3578133-2-m.tretter@pengutronix.de>
In-Reply-To: <20201014150824.3578133-1-m.tretter@pengutronix.de>
References: <20201014150824.3578133-1-m.tretter@pengutronix.de>
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
Subject: [PATCH 2/2] uimage: disable zero page when loading to SDRAM at
 address 0x0
To: barebox@lists.infradead.org
Cc: Michael Tretter <m.tretter@pengutronix.de>

If the SDRAM is mapped to address 0x0 and an image should be loaded to
to the SDRAM without offset, Barebox would normally trap the access as a
null pointer.

However, since Linux kernel commit cfa7ede20f13 ("arm64: set TEXT_OFFSET
to 0x0 in preparation for removing it entirely") no offset is the
default for arm64. Therefore, copying the image to 0x0 of the SDRAM is
necessary.

Disable the zero page trap for copying an image to address 0x0.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 common/uimage.c | 18 ++++++++++++++++--
 1 file changed, 16 insertions(+), 2 deletions(-)

diff --git a/common/uimage.c b/common/uimage.c
index a84b8fddc4e7..b1e9b402e98a 100644
--- a/common/uimage.c
+++ b/common/uimage.c
@@ -27,6 +27,7 @@
 #include <rtc.h>
 #include <filetype.h>
 #include <memory.h>
+#include <zero_page.h>
 
 static inline int uimage_is_multi_image(struct uimage_handle *handle)
 {
@@ -359,7 +360,13 @@ static int uimage_sdram_flush(void *buf, unsigned int len)
 		}
 	}
 
-	memcpy(uimage_buf + uimage_size, buf, len);
+	if (zero_page_contains((unsigned long)uimage_buf + uimage_size)) {
+		zero_page_disable();
+		memcpy(uimage_buf + uimage_size, buf, len);
+		zero_page_enable();
+	} else {
+		memcpy(uimage_buf + uimage_size, buf, len);
+	}
 
 	uimage_size += len;
 
@@ -388,7 +395,14 @@ struct resource *file_to_sdram(const char *filename, unsigned long adr)
 			goto out;
 		}
 
-		now = read_full(fd, (void *)(res->start + ofs), BUFSIZ);
+		if (zero_page_contains(res->start + ofs)) {
+			zero_page_disable();
+			now = read_full(fd, (void *)(res->start + ofs), BUFSIZ);
+			zero_page_enable();
+		} else {
+			now = read_full(fd, (void *)(res->start + ofs), BUFSIZ);
+		}
+
 		if (now < 0) {
 			release_sdram_region(res);
 			res = NULL;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
