Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp14.mail.ru ([94.100.176.91])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WEw6G-0005y4-U1
 for barebox@lists.infradead.org; Sun, 16 Feb 2014 07:25:22 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sun, 16 Feb 2014 11:24:36 +0400
Message-Id: <1392535477-21275-7-git-send-email-shc_work@mail.ru>
In-Reply-To: <1392535477-21275-1-git-send-email-shc_work@mail.ru>
References: <1392535477-21275-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 7/8] drivers/i2c/i2c.c: Fix sparse warnings
To: barebox@lists.infradead.org

drivers/i2c/i2c.c:246:19: warning: symbol 'i2c_new_device' was not declared. Should it be static?
drivers/i2c/i2c.c:274:6: warning: symbol 'of_i2c_register_devices' was not declared. Should it be static?

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 drivers/i2c/i2c.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/i2c/i2c.c b/drivers/i2c/i2c.c
index 3b9f601..f8785cb 100644
--- a/drivers/i2c/i2c.c
+++ b/drivers/i2c/i2c.c
@@ -243,8 +243,8 @@ EXPORT_SYMBOL(i2c_write_reg);
  *
  * Returns the new device, or NULL.
  */
-struct i2c_client *i2c_new_device(struct i2c_adapter *adapter,
-				  struct i2c_board_info *chip)
+static struct i2c_client *i2c_new_device(struct i2c_adapter *adapter,
+					 struct i2c_board_info *chip)
 {
 	struct i2c_client *client;
 	int status;
@@ -269,9 +269,8 @@ struct i2c_client *i2c_new_device(struct i2c_adapter *adapter,
 
 	return client;
 }
-EXPORT_SYMBOL(i2c_new_device);
 
-void of_i2c_register_devices(struct i2c_adapter *adap)
+static void of_i2c_register_devices(struct i2c_adapter *adap)
 {
 	struct device_node *n;
 
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
