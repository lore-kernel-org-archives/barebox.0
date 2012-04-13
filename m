Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 17.mo3.mail-out.ovh.net ([87.98.178.58]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SIbk9-0006ra-Td
 for barebox@lists.infradead.org; Fri, 13 Apr 2012 08:20:35 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 3102EFF90C7
 for <barebox@lists.infradead.org>; Fri, 13 Apr 2012 10:21:39 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 13 Apr 2012 10:02:48 +0200
Message-Id: <1334304170-26176-4-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20120413075705.GE11079@game.jcrosoft.org>
References: <20120413075705.GE11079@game.jcrosoft.org>
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
Subject: [PATCH 4/5] arm: bootm: add barebox and zImage binfmt support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/lib/bootm.c |   13 +++++++++++++
 1 files changed, 13 insertions(+), 0 deletions(-)

diff --git a/arch/arm/lib/bootm.c b/arch/arm/lib/bootm.c
index 500e378..6d10e0b 100644
--- a/arch/arm/lib/bootm.c
+++ b/arch/arm/lib/bootm.c
@@ -14,6 +14,7 @@
 #include <sizes.h>
 #include <libbb.h>
 #include <libfdt.h>
+#include <binfmt.h>
 
 #include <asm/byteorder.h>
 #include <asm/setup.h>
@@ -285,12 +286,24 @@ static struct image_handler barebox_handler = {
 	.filetype = filetype_arm_barebox,
 };
 
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
