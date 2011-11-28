Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RUwAd-0000aD-QI
 for barebox@lists.infradead.org; Mon, 28 Nov 2011 08:02:38 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 28 Nov 2011 09:02:17 +0100
Message-Id: <1322467340-10596-12-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1322467340-10596-1-git-send-email-s.hauer@pengutronix.de>
References: <1322467340-10596-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 11/14] bootm: fix typo, update help str
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/bootm.c |    6 ++----
 1 files changed, 2 insertions(+), 4 deletions(-)

diff --git a/commands/bootm.c b/commands/bootm.c
index 86470c2..0458919 100644
--- a/commands/bootm.c
+++ b/commands/bootm.c
@@ -44,9 +44,7 @@
 #include <init.h>
 #include <asm-generic/memory_layout.h>
 
-#ifndef CFG_BOOTM_LEN
 #define CFG_BOOTM_LEN	0x800000	/* use 8MByte as default max gunzip size */
-#endif
 
 struct image_handle_data* image_handle_data_get_by_num(struct image_handle* handle, int num)
 {
@@ -121,7 +119,7 @@ int register_image_handler(struct image_handler *handler)
 
 /*
  * generate a image_handle from a multi_image
- * this image_handle can be free by unmap_image
+ * this image_handle can be freed by unmap_image
  */
 static struct image_handle *get_fake_image_handle(struct image_data *data, int num)
 {
@@ -230,7 +228,7 @@ err_out:
 }
 
 BAREBOX_CMD_HELP_START(bootm)
-BAREBOX_CMD_HELP_USAGE("bootm [-n] image\n")
+BAREBOX_CMD_HELP_USAGE("bootm [OPTIONS] image\n")
 BAREBOX_CMD_HELP_SHORT("Boot an application image.\n")
 BAREBOX_CMD_HELP_OPT  ("-n",  "Do not verify the image (speeds up boot process)\n")
 BAREBOX_CMD_HELP_OPT  ("-r <initrd>","specify an initrd image\n")
-- 
1.7.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
