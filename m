Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by casper.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P8Bj8-0000si-LW
	for barebox@lists.infradead.org; Tue, 19 Oct 2010 12:55:41 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 19 Oct 2010 14:55:20 +0200
Message-Id: <1287492930-15716-33-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1287492930-15716-1-git-send-email-s.hauer@pengutronix.de>
References: <1287492930-15716-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 32/42] bootm: sparse fixes
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/bootm.c |    2 +-
 include/image.h  |    1 +
 2 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/commands/bootm.c b/commands/bootm.c
index 14475c7..0d3649f 100644
--- a/commands/bootm.c
+++ b/commands/bootm.c
@@ -225,7 +225,7 @@ void unmap_image(struct image_handle *handle)
 }
 EXPORT_SYMBOL(unmap_image);
 
-LIST_HEAD(handler_list);
+static LIST_HEAD(handler_list);
 
 int register_image_handler(struct image_handler *handler)
 {
diff --git a/include/image.h b/include/image.h
index a42d06b..8932947 100644
--- a/include/image.h
+++ b/include/image.h
@@ -336,6 +336,7 @@ void	print_image_hdr (image_header_t *hdr);
  * image.
  */
 struct image_handle *map_image(const char *filename, int verify);
+void unmap_image(struct image_handle *handle);
 
 /*
  * Relocate an image to load_address by uncompressing
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
