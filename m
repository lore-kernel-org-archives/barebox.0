Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kT4Ki-0004gw-53
 for barebox@lists.infradead.org; Thu, 15 Oct 2020 14:34:21 +0000
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Thu, 15 Oct 2020 16:34:15 +0200
Message-Id: <20201015143415.446978-2-m.tretter@pengutronix.de>
In-Reply-To: <20201015143415.446978-1-m.tretter@pengutronix.de>
References: <20201015143415.446978-1-m.tretter@pengutronix.de>
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
Subject: [PATCH v2 2/2] uimage: disable zero page when loading to SDRAM at
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
v2:
- switch to zero_page_memcpy helper function
- read file to temporary buffer before copying to page 0
---
 common/uimage.c | 21 +++++++++++++++++++--
 1 file changed, 19 insertions(+), 2 deletions(-)

diff --git a/common/uimage.c b/common/uimage.c
index a84b8fddc4e7..9abfbcf3bac9 100644
--- a/common/uimage.c
+++ b/common/uimage.c
@@ -27,6 +27,7 @@
 #include <rtc.h>
 #include <filetype.h>
 #include <memory.h>
+#include <zero_page.h>
 
 static inline int uimage_is_multi_image(struct uimage_handle *handle)
 {
@@ -359,7 +360,10 @@ static int uimage_sdram_flush(void *buf, unsigned int len)
 		}
 	}
 
-	memcpy(uimage_buf + uimage_size, buf, len);
+	if (zero_page_contains((unsigned long)uimage_buf + uimage_size))
+		zero_page_memcpy(uimage_buf + uimage_size, buf, len);
+	else
+		memcpy(uimage_buf + uimage_size, buf, len);
 
 	uimage_size += len;
 
@@ -388,7 +392,20 @@ struct resource *file_to_sdram(const char *filename, unsigned long adr)
 			goto out;
 		}
 
-		now = read_full(fd, (void *)(res->start + ofs), BUFSIZ);
+		if (zero_page_contains(res->start + ofs)) {
+			void *tmp = malloc(BUFSIZ);
+			if (!tmp)
+				now = -ENOMEM;
+			else
+				now = read_full(fd, tmp, BUFSIZ);
+
+			if (now > 0)
+				zero_page_memcpy((void *)(res->start + ofs), tmp, now);
+			free(tmp);
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
