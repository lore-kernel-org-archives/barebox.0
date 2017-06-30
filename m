Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x230.google.com ([2a00:1450:4010:c07::230])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dQuIm-0002p4-5K
 for barebox@lists.infradead.org; Fri, 30 Jun 2017 11:41:33 +0000
Received: by mail-lf0-x230.google.com with SMTP id h22so68617394lfk.3
 for <barebox@lists.infradead.org>; Fri, 30 Jun 2017 04:41:11 -0700 (PDT)
From: Andrey Gusakov <andrey.gusakov@cogentembedded.com>
Date: Fri, 30 Jun 2017 14:42:57 +0300
Message-Id: <20170630114304.8070-2-andrey.gusakov@cogentembedded.com>
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
Subject: [PATCH 1/8] video: tc358767: do not fail if sink supports more than 2
 lanes
To: barebox@lists.infradead.org
Cc: andrey.gusakov@cogentembedded.com, Chris.Healy@zii.aero

Display should support lower lane count for backward compatibility
---
 drivers/video/tc358767.c | 36 +++++++++++++++++++++++++++++++-----
 1 file changed, 31 insertions(+), 5 deletions(-)

diff --git a/drivers/video/tc358767.c b/drivers/video/tc358767.c
index ab2e86ec4..eaf3baad3 100644
--- a/drivers/video/tc358767.c
+++ b/drivers/video/tc358767.c
@@ -36,6 +36,7 @@
 
 #define DP_LINK_BW_SET			0x100
 #define DP_TRAINING_PATTERN_SET		0x102
+#define TRAINING_LANE0_SET		0x103
 
 #define DP_DOWNSPREAD_CTRL		0x107
 #define DP_SPREAD_AMP_0_5		(1 << 4)
@@ -681,6 +682,12 @@ static int tc_get_display_props(struct tc_data *tc)
 	tc->link.rev = tmp[0];
 	tc->link.rate = tmp[1];
 	tc->link.lanes = tmp[2] & 0x0f;
+	if (tc->link.lanes > 2) {
+		dev_dbg(tc->dev, "Display supports %d lanes, host only 2 max. "
+			"Tryin 2-lane mode.\n",
+			tc->link.lanes);
+		tc->link.lanes = 2;
+	}
 	tc->link.enhanced = !!(tmp[2] & 0x80);
 	tc->link.spread = tmp[3] & 0x01;
 	tc->link.coding8b10b = tmp[6] & 0x01;
@@ -985,14 +992,30 @@ static int tc_main_link_setup(struct tc_data *tc)
 	if (ret)
 		goto err_dpcd_write;
 
+	/* TRAINING_LANE0_SET .. TRAINING_LANE3_SET */
+	tmp[0] = 0x00;
+	tmp[1] = 0x00;
+	tmp[2] = 0x00;
+	tmp[3] = 0x00;
 	/* DOWNSPREAD_CTRL */
-	tmp[0] = tc->link.spread ? DP_SPREAD_AMP_0_5 : 0x00;
+	tmp[4] = tc->link.spread ? DP_SPREAD_AMP_0_5 : 0x00;
 	/* MAIN_LINK_CHANNEL_CODING_SET */
-	tmp[1] = tc->link.coding8b10b ? DP_SET_ANSI_8B10B : 0x00;
-	ret = tc_aux_write(tc, DP_DOWNSPREAD_CTRL, tmp, 2);
+	tmp[5] = tc->link.coding8b10b ? DP_SET_ANSI_8B10B : 0x00;
+	ret = tc_aux_write(tc, TRAINING_LANE0_SET, tmp, 6);
 	if (ret)
 		goto err_dpcd_write;
 
+	/* check lanes */
+	ret =  tc_aux_read(tc, DP_LINK_BW_SET, tmp, 2);
+	if (ret)
+		goto err_dpcd_read;
+
+	if ((tmp[1] & 0x0f) != tc->link.lanes) {
+		dev_err(dev, "Failed to set lanes = %d on display side\n",
+			tc->link.lanes);
+		goto err;
+	}
+
 	ret = tc_link_training(tc, DP_TRAINING_PATTERN_1);
 	if (ret)
 		goto err;
@@ -1019,8 +1042,11 @@ static int tc_main_link_setup(struct tc_data *tc)
 		ret = tc_aux_read(tc, 0x200, tmp, 7);
 		if (ret)
 			goto err_dpcd_read;
-		ready = (tmp[2] == ((DP_CHANNEL_EQ_BITS << 4) | /* Lane1 */
-				     DP_CHANNEL_EQ_BITS));      /* Lane0 */
+		if (tc->link.lanes == 1)
+			ready = (tmp[2] == DP_CHANNEL_EQ_BITS);         /* Lane0 */
+		else
+			ready = (tmp[2] == ((DP_CHANNEL_EQ_BITS << 4) | /* Lane1 */
+					     DP_CHANNEL_EQ_BITS));      /* Lane0 */
 		aligned = tmp[4] & DP_INTERLANE_ALIGN_DONE;
 	} while ((--timeout) && !(ready && aligned));
 
-- 
2.13.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
