Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wkg5f-0000PJ-Bq
 for barebox@lists.infradead.org; Wed, 14 May 2014 20:47:53 +0000
Received: from antimon.intern.lynxeye.de.intern.lynxeye.de
 (p548307D2.dip0.t-ipconnect.de [84.131.7.210])
 by lynxeye.de (Postfix) with ESMTPA id EFE4118B425A
 for <barebox@lists.infradead.org>; Wed, 14 May 2014 22:46:28 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Wed, 14 May 2014 22:45:44 +0200
Message-Id: <1400100352-13002-17-git-send-email-dev@lynxeye.de>
In-Reply-To: <1400100352-13002-1-git-send-email-dev@lynxeye.de>
References: <1400100352-13002-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH v2 17/25] tegra: cbootimage: remove noisy output
To: barebox@lists.infradead.org

Our build is quiet by default, so don't allow cbootimage
to spam our logs.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 scripts/tegra/cbootimage.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/scripts/tegra/cbootimage.c b/scripts/tegra/cbootimage.c
index 1332c5f118b5..51422d1efa69 100644
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
