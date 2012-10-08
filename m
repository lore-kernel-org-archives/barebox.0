Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-f177.google.com ([74.125.82.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TLMEs-0007Os-7r
 for barebox@lists.infradead.org; Mon, 08 Oct 2012 22:55:54 +0000
Received: by mail-we0-f177.google.com with SMTP id u50so2991003wey.36
 for <barebox@lists.infradead.org>; Mon, 08 Oct 2012 15:55:53 -0700 (PDT)
From: Vicente <vicencb@gmail.com>
Date: Tue,  9 Oct 2012 00:55:18 +0200
Message-Id: <1349736924-24667-9-git-send-email-vicencb@gmail.com>
In-Reply-To: <1349736924-24667-1-git-send-email-vicencb@gmail.com>
References: <1349736924-24667-1-git-send-email-vicencb@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 08/14] uimage: improve transfer speed
To: barebox@lists.infradead.org
Cc: Vicente <vicencb@gmail.com>


Signed-off-by: Vicente <vicencb@gmail.com>
---
 common/uimage.c | 27 +++++++++++++++++++++++++--
 1 file changed, 25 insertions(+), 2 deletions(-)

diff --git a/common/uimage.c b/common/uimage.c
index c72db41..8f8736f 100644
--- a/common/uimage.c
+++ b/common/uimage.c
@@ -28,6 +28,8 @@
 #include <rtc.h>
 #include <filetype.h>
 #include <memory.h>
+#include <linux/stat.h>
+#include <sizes.h>
 
 #ifdef CONFIG_UIMAGE_MULTI
 static inline int uimage_is_multi_image(struct uimage_handle *handle)
@@ -380,15 +382,36 @@ struct resource *file_to_sdram(const char *filename, unsigned long adr)
 	struct resource *res;
 	size_t size = BUFSIZ;
 	size_t ofs = 0;
+	size_t now;
 	int fd;
+	struct stat s;
 
 	fd = open(filename, O_RDONLY);
 	if (fd < 0)
 		return NULL;
 
-	while (1) {
-		size_t now;
+	/* TODO: use fstat(fd, &s) when implemented and avoid reopening file */
+	if (stat(filename, &s) == 0 && s.st_size <= SZ_1G) {
+		/*
+		 * As the file size is known we can read it at once and improve
+		 * transfer speed.
+		 */
+		size = s.st_size;
+		res = request_sdram_region("image", adr, size);
+		if (!res) {
+			printf("unable to request SDRAM 0x%08lx-0x%08lx\n",
+				adr, adr + size - 1);
+			goto out;
+		}
 
+		now = read_full(fd, (void *)(res->start), size);
+		if (now < size) {
+			release_sdram_region(res);
+			res = NULL;
+		}
+		goto out;
+	}
+	while (1) {
 		res = request_sdram_region("image", adr, size);
 		if (!res) {
 			printf("unable to request SDRAM 0x%08lx-0x%08lx\n",
-- 
1.7.12.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
