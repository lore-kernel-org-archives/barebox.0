Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x22a.google.com ([2a00:1450:4010:c07::22a])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dSnv2-0008JI-Uw
 for barebox@lists.infradead.org; Wed, 05 Jul 2017 17:16:55 +0000
Received: by mail-lf0-x22a.google.com with SMTP id b207so138230753lfg.2
 for <barebox@lists.infradead.org>; Wed, 05 Jul 2017 10:16:32 -0700 (PDT)
From: Andrey Gusakov <andrey.gusakov@cogentembedded.com>
Date: Wed,  5 Jul 2017 20:18:05 +0300
Message-Id: <20170705171813.17527-3-andrey.gusakov@cogentembedded.com>
In-Reply-To: <20170705171813.17527-1-andrey.gusakov@cogentembedded.com>
References: <20170705171813.17527-1-andrey.gusakov@cogentembedded.com>
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
Subject: [PATCH v1 02/10] video: tc358767: fix DP0_MISC register set
To: barebox@lists.infradead.org
Cc: andrey.gusakov@cogentembedded.com

Remove shift from TU_SIZE_RECOMMENDED define as it used to
calculate max_tu_symbols.

Signed-off-by: Andrey Gusakov <andrey.gusakov@cogentembedded.com>
---
 drivers/video/tc358767.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/video/tc358767.c b/drivers/video/tc358767.c
index f9df383fc..e0b09af4f 100644
--- a/drivers/video/tc358767.c
+++ b/drivers/video/tc358767.c
@@ -121,7 +121,7 @@
 #define DP0_ACTIVEVAL		0x0650
 #define DP0_SYNCVAL		0x0654
 #define DP0_MISC		0x0658
-#define TU_SIZE_RECOMMENDED		(0x3f << 16) /* LSCLK cycles per TU */
+#define TU_SIZE_RECOMMENDED		(63) /* LSCLK cycles per TU */
 #define BPC_6				(0 << 5)
 #define BPC_8				(1 << 5)
 
@@ -780,7 +780,7 @@ static int tc_set_video_mode(struct tc_data *tc, struct fb_videomode *mode)
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
