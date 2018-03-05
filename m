Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x241.google.com ([2a00:1450:4010:c07::241])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1esqwd-0004Mr-7L
 for barebox@lists.infradead.org; Mon, 05 Mar 2018 14:18:30 +0000
Received: by mail-lf0-x241.google.com with SMTP id 70so23347352lfw.2
 for <barebox@lists.infradead.org>; Mon, 05 Mar 2018 06:18:16 -0800 (PST)
From: Andrey Gusakov <andrey.gusakov@cogentembedded.com>
Date: Mon,  5 Mar 2018 17:19:53 +0300
Message-Id: <1520259593-21311-1-git-send-email-andrey.gusakov@cogentembedded.com>
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
Subject: [PATCH] video: tc358767: register aux i2c bus after validating link
To: barebox@lists.infradead.org
Cc: andrey.gusakov@cogentembedded.com

Register AUX i2c adapter only if AUX link is functional. This
should avoid possible hung during tc358767 probe when no display
connected.

Signed-off-by: Andrey Gusakov <andrey.gusakov@cogentembedded.com>
---
 drivers/video/tc358767.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/video/tc358767.c b/drivers/video/tc358767.c
index f9ca06c..5ad5cb4 100644
--- a/drivers/video/tc358767.c
+++ b/drivers/video/tc358767.c
@@ -1404,6 +1404,10 @@ static int tc_probe(struct device_d *dev)
 	if (ret)
 		goto err;
 
+	ret = tc_get_display_props(tc);
+	if (ret)
+		goto err;
+
 	/* Register DP AUX channel */
 	tc->adapter.master_xfer = tc_aux_i2c_xfer;
 	tc->adapter.nr = -1; /* any free */
@@ -1416,10 +1420,6 @@ static int tc_probe(struct device_d *dev)
 		goto err;
 	}
 
-	ret = tc_get_display_props(tc);
-	if (ret)
-		goto err;
-
 	/* add vlp */
 	tc->vpl.node = dev->device_node;
 	tc->vpl.ioctl = tc_ioctl;
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
