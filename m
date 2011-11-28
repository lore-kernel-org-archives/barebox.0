Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RV9PK-0003Bc-7M
 for barebox@lists.infradead.org; Mon, 28 Nov 2011 22:10:45 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 28 Nov 2011 23:10:09 +0100
Message-Id: <1322518209-2965-17-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1322518209-2965-1-git-send-email-s.hauer@pengutronix.de>
References: <1322518209-2965-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 16/16] bootm: use generic uncompress function
To: barebox@lists.infradead.org

This simplifies the code somewhat. The user visible change here is
that we now ignore the compression specified in the uImage. Instead
we detect the compression type from the data which also means that
we now support lzo compressed uImages.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/bootm.c |   31 ++++---------------------------
 1 files changed, 4 insertions(+), 27 deletions(-)

diff --git a/commands/bootm.c b/commands/bootm.c
index 878b7aa..b313cfc 100644
--- a/commands/bootm.c
+++ b/commands/bootm.c
@@ -30,7 +30,6 @@
 #include <command.h>
 #include <image.h>
 #include <malloc.h>
-#include <gunzip.h>
 #include <environment.h>
 #include <asm/byteorder.h>
 #include <xfuncs.h>
@@ -41,7 +40,7 @@
 #include <boot.h>
 #include <rtc.h>
 #include <init.h>
-#include <bunzip2.h>
+#include <uncompress.h>
 #include <asm-generic/memory_layout.h>
 
 /*
@@ -103,11 +102,6 @@ struct image_handle_data* image_handle_data_get_by_num(struct image_handle* hand
 	return &handle->data_entries[num];
 }
 
-static void unzip_error(char *x)
-{
-	puts(x);
-}
-
 int relocate_image(struct image_handle *handle, void *load_address)
 {
 	image_header_t *hdr = &handle->header;
@@ -131,30 +125,13 @@ int relocate_image(struct image_handle *handle, void *load_address)
 			memmove ((void *) image_get_load(hdr), (uchar *)data, len);
 		}
 		break;
-#ifdef CONFIG_ZLIB
-	case IH_COMP_GZIP:
-		printf ("   Uncompressing ... ");
-
-		ret = gunzip((void *)data, len, NULL, NULL, load_address, NULL,
-				unzip_error);
-		if (ret)
-			return ret;
-		break;
-#endif
-#ifdef CONFIG_BZLIB
-	case IH_COMP_BZIP2:
+	default:
 		printf ("   Uncompressing ... ");
-
-		ret = bunzip2((void *)data, len, NULL, NULL, load_address, NULL,
-				unzip_error);
+		ret = uncompress((void *)data, len, NULL, NULL, load_address, NULL,
+				uncompress_err_stdout);
 		if (ret)
 			return ret;
 		break;
-#endif
-	default:
-		printf("Unimplemented compression type %d\n",
-		       image_get_comp(hdr));
-		return -1;
 	}
 
 	return 0;
-- 
1.7.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
