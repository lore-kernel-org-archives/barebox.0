Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x229.google.com ([2a00:1450:4010:c07::229])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dSnv7-0008Jo-FJ
 for barebox@lists.infradead.org; Wed, 05 Jul 2017 17:17:00 +0000
Received: by mail-lf0-x229.google.com with SMTP id t72so28798993lff.1
 for <barebox@lists.infradead.org>; Wed, 05 Jul 2017 10:16:36 -0700 (PDT)
From: Andrey Gusakov <andrey.gusakov@cogentembedded.com>
Date: Wed,  5 Jul 2017 20:18:09 +0300
Message-Id: <20170705171813.17527-7-andrey.gusakov@cogentembedded.com>
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
Subject: [PATCH v1 06/10] video: tc358767: support newer DPCD revisions and
 higher data rates
To: barebox@lists.infradead.org
Cc: andrey.gusakov@cogentembedded.com

Do not fail on newer DPCD revision. Assume it backwards compatible.
Try to fall back to supported data rate in case display reports too
high data rate.

Signed-off-by: Andrey Gusakov <andrey.gusakov@cogentembedded.com>
---
 drivers/video/tc358767.c | 20 ++++++++++++++++----
 1 file changed, 16 insertions(+), 4 deletions(-)

diff --git a/drivers/video/tc358767.c b/drivers/video/tc358767.c
index d652c1442..c2222d916 100644
--- a/drivers/video/tc358767.c
+++ b/drivers/video/tc358767.c
@@ -674,13 +674,25 @@ static int tc_get_display_props(struct tc_data *tc)
 	ret = tc_aux_read(tc, 0x000, tmp, 8);
 	if (ret)
 		goto err_dpcd_read;
-	/* check rev 1.0 or 1.1 */
-	if ((tmp[1] != 0x06) && (tmp[1] != 0x0a))
-		goto err_dpcd_inval;
 
 	tc->assr = !(tc->rev & 0x02);
+
+	/* check DPCD rev */
+	if (tmp[0] < 0x10) {
+		dev_err(tc->dev, "Too low DPCD revision 0x%02x\n", tmp[0]);
+		goto err_dpcd_inval;
+	}
+	if ((tmp[0] != 0x10) && (tmp[0] != 0x11))
+		dev_warn(tc->dev, "Unknown DPCD revision 0x%02x\n", tmp[0]);
 	tc->link.rev = tmp[0];
-	tc->link.rate = tmp[1];
+
+	/* check rate */
+	if ((tmp[1] == 0x06) || (tmp[1] == 0x0a)) {
+		tc->link.rate = tmp[1];
+	} else {
+		dev_warn(tc->dev, "Unknown link rate 0x%02x, falling to 2.7Gbps\n", tmp[1]);
+		tc->link.rate = 0x0a;
+	}
 	tc->link.lanes = tmp[2] & 0x0f;
 	if (tc->link.lanes > 2) {
 		dev_dbg(tc->dev, "Display supports %d lanes, host only 2 max. "
-- 
2.13.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
