Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XSNde-0003Kv-Ll
 for barebox@lists.infradead.org; Fri, 12 Sep 2014 09:59:35 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 12 Sep 2014 11:59:10 +0200
Message-Id: <1410515950-9843-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] input: imx_keypad: remove unused variable
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/input/imx_keypad.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/input/imx_keypad.c b/drivers/input/imx_keypad.c
index afe93c3..f220d85 100644
--- a/drivers/input/imx_keypad.c
+++ b/drivers/input/imx_keypad.c
@@ -390,7 +390,7 @@ static int __init imx_keypad_probe(struct device_d *dev)
 	struct imx_keypad *keypad;
 	const struct matrix_keymap_data *keymap_data = dev->platform_data;
 	struct console_device *cdev;
-	int error, i;
+	int i;
 
 	if (!keymap_data) {
 		pr_err("no keymap defined\n");
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
