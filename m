Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OqRu1-0000Ll-5B
	for barebox@lists.infradead.org; Tue, 31 Aug 2010 14:33:34 +0000
From: Wolfram Sang <w.sang@pengutronix.de>
Date: Tue, 31 Aug 2010 16:33:18 +0200
Message-Id: <1283265198-3266-1-git-send-email-w.sang@pengutronix.de>
In-Reply-To: <AANLkTimX=cnQKO78ejygmv-1m6LzcUfmKO20Cg_waz-9@mail.gmail.com>
References: <AANLkTimX=cnQKO78ejygmv-1m6LzcUfmKO20Cg_waz-9@mail.gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] i2c: fix wrong comment and symbol export for
	i2c_add_numbered_adapter()
To: barebox@lists.infradead.org

Signed-off-by: Wolfram Sang <w.sang@pengutronix.de>
---

Can you please check this patch?

 drivers/i2c/i2c.c |   26 ++++++++++++--------------
 1 files changed, 12 insertions(+), 14 deletions(-)

diff --git a/drivers/i2c/i2c.c b/drivers/i2c/i2c.c
index 87360f3..5df0d30 100644
--- a/drivers/i2c/i2c.c
+++ b/drivers/i2c/i2c.c
@@ -344,21 +344,19 @@ struct i2c_adapter *i2c_get_adapter(int busnum)
 }
 
 /**
- * i2c_register_master - register I2C master controller
+ * i2c_add_numbered_adapter - declare i2c adapter, use static bus number
+ * @adapter: the adapter to register (with adap->nr initialized)
  *
- * @param	master	initialized master, originally from i2c_alloc_master()
- *
- * I2C master controllers connect to their drivers using some non-I2C
- * bus, such as the platform bus. The final stage of probe() in that
- * code includes calling i2c_register_master() to hook up to this I2C
- * bus glue.
- *
- * I2C controllers use board specific (often SOC specific) bus
- * numbers, and board-specific addressing for I2C devices combines
- * those numbers with chip select numbers. Since I2C does not directly
- * support dynamic device identification, boards need configuration
- * tables telling which chip is at which address.
+ * This routine is used to declare an I2C adapter when its bus number
+ * matters.  For example, use it for I2C adapters from system-on-chip CPUs,
+ * or otherwise built in to the system's mainboard, and where i2c_board_info
+ * is used to properly configure I2C devices.
  *
+ * When this returns zero, the specified adapter became available for
+ * clients using the bus number provided in adap->nr.  Also, the table
+ * of I2C devices pre-declared using i2c_register_board_info() is scanned,
+ * and the appropriate driver model device nodes are created.  Otherwise, a
+ * negative errno value is returned.
  */
 int i2c_add_numbered_adapter(struct i2c_adapter *adapter)
 {
@@ -372,4 +370,4 @@ int i2c_add_numbered_adapter(struct i2c_adapter *adapter)
 
 	return 0;
 }
-EXPORT_SYMBOL(i2c_register_master);
+EXPORT_SYMBOL(i2c_add_numbered_adapter);
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
