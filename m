Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x234.google.com ([2a00:1450:4010:c07::234])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dSnv1-0008JB-Bm
 for barebox@lists.infradead.org; Wed, 05 Jul 2017 17:16:53 +0000
Received: by mail-lf0-x234.google.com with SMTP id z78so97003758lff.0
 for <barebox@lists.infradead.org>; Wed, 05 Jul 2017 10:16:30 -0700 (PDT)
From: Andrey Gusakov <andrey.gusakov@cogentembedded.com>
Date: Wed,  5 Jul 2017 20:18:04 +0300
Message-Id: <20170705171813.17527-2-andrey.gusakov@cogentembedded.com>
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
Subject: [PATCH v1 01/10] video: tc358767: fix EDID read for DP displays
To: barebox@lists.infradead.org
Cc: andrey.gusakov@cogentembedded.com

Desktop displays do not always support E-DDC. So do not fall on
EDID segment index write operation.

Signed-off-by: Andrey Gusakov <andrey.gusakov@cogentembedded.com>
---
 drivers/video/tc358767.c | 21 ++++++++++++++++-----
 1 file changed, 16 insertions(+), 5 deletions(-)

diff --git a/drivers/video/tc358767.c b/drivers/video/tc358767.c
index ab2e86ec4..f9df383fc 100644
--- a/drivers/video/tc358767.c
+++ b/drivers/video/tc358767.c
@@ -1108,13 +1108,16 @@ static int tc_read_edid(struct tc_data *tc)
 	unsigned char start = 0;
 	unsigned char segment = 0;
 
-	struct i2c_msg msgs[] = {
+	struct i2c_msg msg_segment[] = {
 		{
 			.addr	= DDC_SEGMENT_ADDR,
 			.flags	= 0,
 			.len	= 1,
 			.buf	= &segment,
-		}, {
+		}
+	};
+	struct i2c_msg msgs[] = {
+		{
 			.addr	= DDC_ADDR,
 			.flags	= 0,
 			.len	= 1,
@@ -1126,13 +1129,21 @@ static int tc_read_edid(struct tc_data *tc)
 	};
 	tc->edid = xmalloc(EDID_LENGTH);
 
+	/*
+	 * Some displays supports E-EDID some not
+	 * Just reset segment address to 0x0
+	 * This transfer can fail on non E-DCC displays
+	 * Ignore error
+	 */
+	i2c_transfer(&tc->adapter, msg_segment, 1);
+
 	do {
 		block = min(DDC_BLOCK_READ, EDID_LENGTH - i);
 
-		msgs[2].buf = tc->edid + i;
-		msgs[2].len = block;
+		msgs[1].buf = tc->edid + i;
+		msgs[1].len = block;
 
-		ret = i2c_transfer(&tc->adapter, msgs, 3);
+		ret = i2c_transfer(&tc->adapter, msgs, 2);
 		if (ret < 0)
 			goto err;
 
-- 
2.13.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
