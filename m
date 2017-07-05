Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x231.google.com ([2a00:1450:4010:c07::231])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dSnv9-0008K0-WC
 for barebox@lists.infradead.org; Wed, 05 Jul 2017 17:17:04 +0000
Received: by mail-lf0-x231.google.com with SMTP id h22so138292863lfk.3
 for <barebox@lists.infradead.org>; Wed, 05 Jul 2017 10:16:39 -0700 (PDT)
From: Andrey Gusakov <andrey.gusakov@cogentembedded.com>
Date: Wed,  5 Jul 2017 20:18:11 +0300
Message-Id: <20170705171813.17527-9-andrey.gusakov@cogentembedded.com>
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
Subject: [PATCH v1 08/10] video: tc358767: optimize DPCD register write
To: barebox@lists.infradead.org
Cc: andrey.gusakov@cogentembedded.com

Signed-off-by: Andrey Gusakov <andrey.gusakov@cogentembedded.com>
---
 drivers/video/tc358767.c | 24 +++++++++++++-----------
 1 file changed, 13 insertions(+), 11 deletions(-)

diff --git a/drivers/video/tc358767.c b/drivers/video/tc358767.c
index cd56bb4f4..246b49e07 100644
--- a/drivers/video/tc358767.c
+++ b/drivers/video/tc358767.c
@@ -35,6 +35,7 @@
 #include <asm-generic/div64.h>
 
 #define DP_LINK_BW_SET			0x100
+#define DP_ENHANCED_FRAME_EN		(1 << 7)
 #define DP_TRAINING_PATTERN_SET		0x102
 #define TRAINING_LANE0_SET		0x103
 
@@ -892,7 +893,7 @@ static int tc_main_link_setup(struct tc_data *tc)
 	bool ready;
 	u32 value;
 	int ret;
-	u8 tmp[8];
+	u8 tmp[16];
 
 	/* display mode should be set at this point */
 	if (!tc->mode)
@@ -993,21 +994,22 @@ static int tc_main_link_setup(struct tc_data *tc)
 	/* LANE_COUNT_SET */
 	tmp[1] = tc->link.lanes;
 	if (tc->link.enhanced)
-		tmp[1] |= (1 << 7);
-	ret = tc_aux_write(tc, DP_LINK_BW_SET, tmp, 2);
-	if (ret)
-		goto err_dpcd_write;
+		tmp[1] |= DP_ENHANCED_FRAME_EN;
 
-	/* TRAINING_LANE0_SET .. TRAINING_LANE3_SET */
-	tmp[0] = 0x00;
-	tmp[1] = 0x00;
+	/* TRAINING_PATTERN_SET */
 	tmp[2] = 0x00;
+	/* TRAINING_LANE0_SET .. TRAINING_LANE3_SET */
 	tmp[3] = 0x00;
+	tmp[4] = 0x00;
+	tmp[5] = 0x00;
+	tmp[6] = 0x00;
 	/* DOWNSPREAD_CTRL */
-	tmp[4] = tc->link.spread ? DP_SPREAD_AMP_0_5 : 0x00;
+	tmp[7] = tc->link.spread ? DP_SPREAD_AMP_0_5 : 0x00;
 	/* MAIN_LINK_CHANNEL_CODING_SET */
-	tmp[5] = tc->link.coding8b10b ? DP_SET_ANSI_8B10B : 0x00;
-	ret = tc_aux_write(tc, TRAINING_LANE0_SET, tmp, 6);
+	tmp[8] = tc->link.coding8b10b ? DP_SET_ANSI_8B10B : 0x00;
+
+	/* DP_LINK_BW_SET .. MAIN_LINK_CHANNEL_CODING_SET */
+	ret = tc_aux_write(tc, DP_LINK_BW_SET, tmp, 9);
 	if (ret)
 		goto err_dpcd_write;
 
-- 
2.13.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
