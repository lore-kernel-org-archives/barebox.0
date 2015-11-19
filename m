Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.kymetacorp.com ([192.81.58.21])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZzVM1-0000yC-WC
 for barebox@lists.infradead.org; Thu, 19 Nov 2015 19:58:50 +0000
From: Trent Piepho <tpiepho@kymetacorp.com>
Date: Thu, 19 Nov 2015 19:57:30 +0000
Message-ID: <1447963050.4553.183.camel@rtred1test09.kymeta.local>
Content-Language: en-US
Content-ID: <9A2AA37D9D40D640ACB8E5F2732DC464@kymetacorp.com>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] i2c: core: Add client I2C address to devinfo
To: barebox <barebox@lists.infradead.org>

Useful bit of information.  Example:
barebox:/ devinfo dummy0
Bus: i2c
  Address: 0x52

Signed-off-by: Trent Piepho <tpiepho@kymetacorp.com>
---
 drivers/i2c/i2c.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/i2c/i2c.c b/drivers/i2c/i2c.c
index 52aaea8..9e9513d 100644
--- a/drivers/i2c/i2c.c
+++ b/drivers/i2c/i2c.c
@@ -358,6 +358,14 @@ int i2c_recover_bus(struct i2c_adapter *adap)
 	return adap->bus_recovery_info->recover_bus(adap);
 }
 
+static void i2c_info(struct device_d *dev)
+{
+	const struct i2c_client *client = to_i2c_client(dev);
+
+	printf("  Address: 0x%02x\n", client->addr);
+	return;
+}
+
 /**
  * i2c_new_device - instantiate one new I2C device
  *
@@ -396,6 +404,7 @@ static struct i2c_client *i2c_new_device(struct i2c_adapter *adapter,
 		free(client);
 		return NULL;
 	}
+	client->dev.info = i2c_info;
 
 	return client;
 }
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
