Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WjkJx-0004J3-Jn
 for barebox@lists.infradead.org; Mon, 12 May 2014 07:06:47 +0000
Received: from tellur.localdomain (p4FE65757.dip0.t-ipconnect.de
 [79.230.87.87]) by lynxeye.de (Postfix) with ESMTPA id EFE6118B425C
 for <barebox@lists.infradead.org>; Mon, 12 May 2014 09:05:02 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Mon, 12 May 2014 09:07:58 +0200
Message-Id: <1399878486-16086-18-git-send-email-dev@lynxeye.de>
In-Reply-To: <1399878486-16086-1-git-send-email-dev@lynxeye.de>
References: <1399878486-16086-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 17/25] tegra: cbootimage: remove noisy output
To: barebox@lists.infradead.org

Our build is quiet by default, so don't allow cbootimage
to spam our logs.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 scripts/tegra/cbootimage.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/scripts/tegra/cbootimage.c b/scripts/tegra/cbootimage.c
index 1332c5f..51422d1 100644
--- a/scripts/tegra/cbootimage.c
+++ b/scripts/tegra/cbootimage.c
@@ -217,8 +217,6 @@ main(int argc, char *argv[])
 
 		fwrite(context.bct, 1, context.bct_size,
 			context.raw_file);
-		printf("New BCT file %s has been successfully generated!\n",
-			context.image_filename);
 		goto fail;
 	}
 
@@ -232,9 +230,6 @@ main(int argc, char *argv[])
 	/* The image hasn't been written yet. */
 	if (write_image_file(&context) != 0)
 		printf("Error writing image file.\n");
-	else
-		printf("Image file %s has been successfully generated!\n",
-				context.image_filename);
 
  fail:
 	/* Close the file(s). */
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
