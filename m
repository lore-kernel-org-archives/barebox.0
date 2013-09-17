Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 12.mo5.mail-out.ovh.net ([46.105.39.65]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VLq4L-00069z-NL
 for barebox@lists.infradead.org; Tue, 17 Sep 2013 07:51:34 +0000
Received: from mail434.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 6E96B103021D
 for <barebox@lists.infradead.org>; Tue, 17 Sep 2013 09:51:11 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 17 Sep 2013 09:52:19 +0200
Message-Id: <1379404339-6716-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1379404339-6716-1-git-send-email-plagnioj@jcrosoft.com>
References: <1379404339-6716-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/2] bootm: add u-boot support
To: barebox@lists.infradead.org

Simply do the same as barebox and hope for the best as u-boot does not handle
runtime address detection for boot quite often. It does only execpt you to
choose as compiling time.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/lib/bootm.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm/lib/bootm.c b/arch/arm/lib/bootm.c
index 599b09a..71200be 100644
--- a/arch/arm/lib/bootm.c
+++ b/arch/arm/lib/bootm.c
@@ -315,6 +315,12 @@ static struct image_handler barebox_handler = {
 	.filetype = filetype_arm_barebox,
 };
 
+static struct image_handler uboot_handler = {
+	.name = "ARM u-boot",
+	.bootm = do_bootm_barebox,
+	.filetype = filetype_arm_uboot,
+};
+
 #include <aimage.h>
 
 static int aimage_load_resource(int fd, struct resource *r, void* buf, int ps)
@@ -470,9 +476,15 @@ static struct binfmt_hook binfmt_barebox_hook = {
 	.exec = "bootm",
 };
 
+static struct binfmt_hook binfmt_uboot_hook = {
+	.type = filetype_arm_uboot,
+	.exec = "bootm",
+};
+
 static int armlinux_register_image_handler(void)
 {
 	register_image_handler(&barebox_handler);
+	register_image_handler(&uboot_handler);
 	register_image_handler(&uimage_handler);
 	register_image_handler(&rawimage_handler);
 	register_image_handler(&zimage_handler);
@@ -482,6 +494,7 @@ static int armlinux_register_image_handler(void)
 	}
 	binfmt_register(&binfmt_arm_zimage_hook);
 	binfmt_register(&binfmt_barebox_hook);
+	binfmt_register(&binfmt_uboot_hook);
 
 	return 0;
 }
-- 
1.8.4.rc1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
