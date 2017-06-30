Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x233.google.com ([2a00:1450:4010:c07::233])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dQuIs-0002q5-47
 for barebox@lists.infradead.org; Fri, 30 Jun 2017 11:41:40 +0000
Received: by mail-lf0-x233.google.com with SMTP id z78so27036556lff.0
 for <barebox@lists.infradead.org>; Fri, 30 Jun 2017 04:41:17 -0700 (PDT)
From: Andrey Gusakov <andrey.gusakov@cogentembedded.com>
Date: Fri, 30 Jun 2017 14:43:00 +0300
Message-Id: <20170630114304.8070-5-andrey.gusakov@cogentembedded.com>
In-Reply-To: <20170630114304.8070-1-andrey.gusakov@cogentembedded.com>
References: <20170630114304.8070-1-andrey.gusakov@cogentembedded.com>
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
Subject: [PATCH 4/8] video: tc358767: fix DP0_MISC register set
To: barebox@lists.infradead.org
Cc: andrey.gusakov@cogentembedded.com, Chris.Healy@zii.aero

Remove shift from TU_SIZE_RECOMMENDED define as it used to
calculate max_tu_symbols.
---
 drivers/video/tc358767.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/video/tc358767.c b/drivers/video/tc358767.c
index 3d38f86ba..033da4fb2 100644
--- a/drivers/video/tc358767.c
+++ b/drivers/video/tc358767.c
@@ -122,7 +122,7 @@
 #define DP0_ACTIVEVAL		0x0650
 #define DP0_SYNCVAL		0x0654
 #define DP0_MISC		0x0658
-#define TU_SIZE_RECOMMENDED		(0x3f << 16) /* LSCLK cycles per TU */
+#define TU_SIZE_RECOMMENDED		(63) /* LSCLK cycles per TU */
 #define BPC_6				(0 << 5)
 #define BPC_8				(1 << 5)
 
@@ -799,7 +799,7 @@ static int tc_set_video_mode(struct tc_data *tc, struct fb_videomode *mode)
 	 * Must be less than tu_size.
 	 */
 	max_tu_symbol = TU_SIZE_RECOMMENDED - 1;
-	tc_write(DP0_MISC, (max_tu_symbol << 23) | TU_SIZE_RECOMMENDED | BPC_8);
+	tc_write(DP0_MISC, (max_tu_symbol << 23) | (TU_SIZE_RECOMMENDED << 16) | BPC_8);
 
 	return 0;
 err:
-- 
2.13.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
