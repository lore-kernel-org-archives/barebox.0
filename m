Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aMWDH-0003pn-6b
 for barebox@lists.infradead.org; Fri, 22 Jan 2016 07:32:57 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 22 Jan 2016 08:32:32 +0100
Message-Id: <1453447952-30818-15-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1453447952-30818-1-git-send-email-s.hauer@pengutronix.de>
References: <1453447952-30818-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 14/14] bootm: Add option to force booting signed images
To: Barebox List <barebox@lists.infradead.org>

With CONFIG_BOOTM_FORCE_SIGNED_IMAGES the bootm code will refuse to boot
unsigned images. Since currently FIT is the only image type which
supports signing, this means with this option we enforce using FIT
images. All additionally passed in device trees and initrds will be
ignored, so that only the ones from the FIT image can be used.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/bootm.c | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/common/bootm.c b/common/bootm.c
index d8acff8..3efc17e 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -68,8 +68,10 @@ enum bootm_verify bootm_get_verify_mode(void)
 }
 
 static const char * const bootm_verify_names[] = {
+#ifndef CONFIG_BOOTM_FORCE_SIGNED_IMAGES
 	[BOOTM_VERIFY_NONE] = "none",
 	[BOOTM_VERIFY_HASH] = "hash",
+#endif
 	[BOOTM_VERIFY_SIGNATURE] = "signature",
 };
 
@@ -526,6 +528,23 @@ int bootm_boot(struct bootm_data *bootm_data)
 		goto err_out;
 	}
 
+	if (IS_ENABLED(CONFIG_BOOTM_FORCE_SIGNED_IMAGES))
+		data->verify = BOOTM_VERIFY_SIGNATURE;
+
+		/*
+		 * When we only allow booting signed images make sure everything
+		 * we boot is in the OS image and not given separately.
+		 */
+		data->oftree = NULL;
+		data->oftree_file = NULL;
+		data->initrd_file = NULL;
+		if (os_type != filetype_oftree) {
+			printf("Signed boot and image is no FIT image, aborting\n");
+			ret = -EINVAL;
+			goto err_out;
+		}
+	}
+
 	if (IS_ENABLED(CONFIG_FITIMAGE) && os_type == filetype_oftree) {
 		struct fit_handle *fit;
 
-- 
2.7.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
