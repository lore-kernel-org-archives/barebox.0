Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1ORiq3-0003M7-4j
	for barebox@lists.infradead.org; Thu, 24 Jun 2010 09:35:16 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 24 Jun 2010 11:35:03 +0200
Message-Id: <1277372108-30332-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1277372108-30332-1-git-send-email-s.hauer@pengutronix.de>
References: <1277372108-30332-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/8] cfi flash driver: Use generic progression bar function
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/nor/cfi_flash.c |    5 ++++-
 1 files changed, 4 insertions(+), 1 deletions(-)

diff --git a/drivers/nor/cfi_flash.c b/drivers/nor/cfi_flash.c
index dbfb004..b21739b 100644
--- a/drivers/nor/cfi_flash.c
+++ b/drivers/nor/cfi_flash.c
@@ -42,6 +42,7 @@
 #include <malloc.h>
 #include <asm/io.h>
 #include <errno.h>
+#include <progress.h>
 #include "cfi_flash.h"
 
 /*
@@ -499,11 +500,13 @@ static int cfi_erase(struct cdev *cdev, size_t count, unsigned long offset)
         start = find_sector(finfo, cdev->dev->map_base + offset);
         end   = find_sector(finfo, cdev->dev->map_base + offset + count - 1);
 
+	init_progression_bar(end - start);
+
         for (i = start; i <= end; i++) {
                 ret = finfo->cfi_cmd_set->flash_erase_one(finfo, i);
                 if (ret)
                         goto out;
-		printf(".");
+		show_progress(i - start);
         }
 out:
         putchar('\n');
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
