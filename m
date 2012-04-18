Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 2.mo3.mail-out.ovh.net ([46.105.75.36]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SKUHI-00020w-00
 for barebox@lists.infradead.org; Wed, 18 Apr 2012 12:46:35 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id D2FAAFF9779
 for <barebox@lists.infradead.org>; Wed, 18 Apr 2012 14:47:49 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 18 Apr 2012 14:27:45 +0200
Message-Id: <1334752067-11445-3-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 3/5] bootm: add uimage binfmt support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 commands/bootm.c |   12 ++++++++++++
 1 files changed, 12 insertions(+), 0 deletions(-)

diff --git a/commands/bootm.c b/commands/bootm.c
index 1e1dc52..9e9abe4 100644
--- a/commands/bootm.c
+++ b/commands/bootm.c
@@ -46,6 +46,7 @@
 #include <uncompress.h>
 #include <memory.h>
 #include <filetype.h>
+#include <binfmt.h>
 #include <asm-generic/memory_layout.h>
 
 static LIST_HEAD(handler_list);
@@ -454,6 +455,17 @@ BAREBOX_CMD_END
 
 BAREBOX_MAGICVAR(bootargs, "Linux Kernel parameters");
 
+static struct binfmt_hook binfmt_uimage_hook = {
+	.type = filetype_uimage,
+	.exec = "bootm",
+};
+
+static int binfmt_uimage_init(void)
+{
+	return binfmt_register(&binfmt_uimage_hook);
+}
+fs_initcall(binfmt_uimage_init);
+
 /**
  * @file
  * @brief Boot support for Linux
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
