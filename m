Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from proxima.lasnet.de ([78.47.171.185])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZCpRl-0000zF-V3
 for barebox@lists.infradead.org; Wed, 08 Jul 2015 13:31:34 +0000
Received: from polaris.guest.pengutronix.de (hazel.nat.pengutronix.de
 [85.220.165.66])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: polaris@lasnet.de)
 by proxima.lasnet.de (Postfix) with ESMTPSA id 6F301C019D
 for <barebox@lists.infradead.org>; Wed,  8 Jul 2015 15:31:12 +0200 (CEST)
From: Jan Luebbe <jluebbe@debian.org>
Date: Wed,  8 Jul 2015 15:31:02 +0200
Message-Id: <1436362263-25076-1-git-send-email-jluebbe@debian.org>
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
Subject: [PATCH 1/2] i2c: only register enabled child nodes
To: barebox@lists.infradead.org

Signed-off-by: Jan Luebbe <jluebbe@debian.org>
---
 drivers/i2c/i2c.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/i2c/i2c.c b/drivers/i2c/i2c.c
index 7a6bde0..ebc7e23 100644
--- a/drivers/i2c/i2c.c
+++ b/drivers/i2c/i2c.c
@@ -278,7 +278,7 @@ static void of_i2c_register_devices(struct i2c_adapter *adap)
 	if (!IS_ENABLED(CONFIG_OFDEVICE) || !adap->dev.device_node)
 		return;
 
-	for_each_child_of_node(adap->dev.device_node, n) {
+	for_each_available_child_of_node(adap->dev.device_node, n) {
 		struct i2c_board_info info = {};
 		struct i2c_client *result;
 		const __be32 *addr;
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
