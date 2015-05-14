Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YsqH1-0002Ht-Bh
 for barebox@lists.infradead.org; Thu, 14 May 2015 10:21:52 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 14 May 2015 12:21:20 +0200
Message-Id: <1431598883-25668-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/4] i2c: Use correct format specifier
To: Barebox List <barebox@lists.infradead.org>

'count' is of type u16, not size_t.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/i2c/i2c.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/i2c/i2c.c b/drivers/i2c/i2c.c
index 7a6bde0..5d0fa06 100644
--- a/drivers/i2c/i2c.c
+++ b/drivers/i2c/i2c.c
@@ -183,7 +183,7 @@ int i2c_read_reg(struct i2c_client *client, u32 addr, u8 *buf, u16 count)
 	msg->len = i;
 
 	status = i2c_transfer(client->adapter, msg, ARRAY_SIZE(msg));
-	dev_dbg(&client->dev, "%s: %zu@%u --> %d\n", __func__,
+	dev_dbg(&client->dev, "%s: %u@%u --> %d\n", __func__,
 		count, addr, status);
 
 	if (status == ARRAY_SIZE(msg))
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
