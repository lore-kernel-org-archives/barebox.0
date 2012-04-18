Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo3.mail-out.ovh.net ([178.33.46.10]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SKUHI-00020y-4F
 for barebox@lists.infradead.org; Wed, 18 Apr 2012 12:46:39 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 606CEFF95D8
 for <barebox@lists.infradead.org>; Wed, 18 Apr 2012 14:47:50 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 18 Apr 2012 14:27:46 +0200
Message-Id: <1334752067-11445-4-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20120418120230.GC1980@game.jcrosoft.org>
References: <20120418120230.GC1980@game.jcrosoft.org>
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
Subject: [PATCH 4/5 v2] arm: bootm: add barebox,
 zImage and aImage binfmt support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
rebase against current next
add aimage support
 arch/arm/lib/bootm.c |   22 +++++++++++++++++++++-
 1 files changed, 21 insertions(+), 1 deletions(-)

diff --git a/arch/arm/lib/bootm.c b/arch/arm/lib/bootm.c
index 26053dc..c4bd156 100644
--- a/arch/arm/lib/bootm.c
+++ b/arch/arm/lib/bootm.c
@@ -15,6 +15,7 @@
 #include <libbb.h>
 #include <magicvar.h>
 #include <libfdt.h>
+#include <binfmt.h>
 
 #include <asm/byteorder.h>
 #include <asm/setup.h>
@@ -445,14 +446,33 @@ BAREBOX_MAGICVAR(aimage_noverwrite_bootargs, "Disable overwrite of the bootargs
 BAREBOX_MAGICVAR(aimage_noverwrite_tags, "Disable overwrite of the tags addr with the one present in aimage");
 #endif
 
+static struct binfmt_hook binfmt_aimage_hook = {
+	.type = filetype_aimage,
+	.exec = "bootm",
+};
+
+static struct binfmt_hook binfmt_arm_zimage_hook = {
+	.type = filetype_arm_zimage,
+	.exec = "bootm",
+};
+
+static struct binfmt_hook binfmt_barebox_hook = {
+	.type = filetype_arm_barebox,
+	.exec = "bootm",
+};
+
 static int armlinux_register_image_handler(void)
 {
 	register_image_handler(&barebox_handler);
 	register_image_handler(&uimage_handler);
 	register_image_handler(&rawimage_handler);
 	register_image_handler(&zimage_handler);
-	if (IS_BUILTIN(CONFIG_CMD_BOOTM_AIMAGE))
+	if (IS_BUILTIN(CONFIG_CMD_BOOTM_AIMAGE)) {
 		register_image_handler(&aimage_handler);
+		binfmt_register(&binfmt_aimage_hook);
+	}
+	binfmt_register(&binfmt_arm_zimage_hook);
+	binfmt_register(&binfmt_barebox_hook);
 
 	return 0;
 }
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
