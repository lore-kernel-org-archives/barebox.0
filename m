Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vs81.iboxed.net ([185.82.85.146])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ccgDL-0007EI-NM
 for barebox@lists.infradead.org; Sat, 11 Feb 2017 22:32:23 +0000
From: Alexander Kurz <akurz@blala.de>
Date: Sat, 11 Feb 2017 23:31:38 +0100
Message-Id: <1486852299-30432-1-git-send-email-akurz@blala.de>
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
Subject: [PATCH 1/2] i.MX: i2c: fix i2c-fsl for non-OF boards
To: barebox@lists.infradead.org
Cc: Alexander Kurz <akurz@blala.de>

With commit 4ed5b778a56b ("i.MX: i2c: Add Vybrid support") i2c-fsl probe
returns -EINVAL for all non-OF boards.
Since newer planforms, especially vf610 are restricted OF-only it is safe to
assume "fsl,imx21-i2c" if CONFIG_OFDEVICE is not set.

Signed-off-by: Alexander Kurz <akurz@blala.de>
---
 drivers/i2c/busses/i2c-imx.c | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

diff --git a/drivers/i2c/busses/i2c-imx.c b/drivers/i2c/busses/i2c-imx.c
index 5677443..4ff4f5c 100644
--- a/drivers/i2c/busses/i2c-imx.c
+++ b/drivers/i2c/busses/i2c-imx.c
@@ -153,6 +153,8 @@ static struct fsl_i2c_clk_pair vf610_i2c_clk_div[] = {
 	{ 3840, 0x3F }, { 4096, 0x7B }, { 5120, 0x7D }, { 6144, 0x7E },
 };
 
+static const struct fsl_i2c_hwdata imx21_i2c_hwdata;
+
 struct fsl_i2c_hwdata {
 	unsigned		regshift;
 	struct fsl_i2c_clk_pair	*clk_div;
@@ -676,10 +678,14 @@ static int __init i2c_fsl_probe(struct device_d *pdev)
 	clk_enable(i2c_fsl->clk);
 #endif
 
-	i2c_fsl->hwdata = of_device_get_match_data(pdev);
-	if (!i2c_fsl->hwdata) {
-		ret = -EINVAL;
-		goto fail;
+	if (IS_ENABLED(CONFIG_OFDEVICE)) {
+		i2c_fsl->hwdata = of_device_get_match_data(pdev);
+		if (!i2c_fsl->hwdata) {
+			ret = -EINVAL;
+			goto fail;
+		}
+	} else {
+		i2c_fsl->hwdata = &imx21_i2c_hwdata;
 	}
 
 	/* Setup i2c_fsl driver structure */
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
