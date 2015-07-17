Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycore.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZG3bO-000537-T4
 for barebox@lists.infradead.org; Fri, 17 Jul 2015 11:14:52 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 14CD5A0045F
 for <barebox@lists.infradead.org>; Fri, 17 Jul 2015 13:16:11 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Fri, 17 Jul 2015 13:13:48 +0200
Message-Id: <1437131633-9590-2-git-send-email-t.remmet@phytec.de>
In-Reply-To: <1437131633-9590-1-git-send-email-t.remmet@phytec.de>
References: <1437131633-9590-1-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 2/7] drivers: i2c: Only register available devices
To: barebox@lists.infradead.org

Only register i2c devices from device tree where status is enabled.

Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 drivers/i2c/i2c.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/i2c/i2c.c b/drivers/i2c/i2c.c
index 5d0fa06..f0df666 100644
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
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
