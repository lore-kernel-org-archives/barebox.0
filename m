Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp34.i.mail.ru ([94.100.177.94])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1bEY8r-00009W-Kl
 for barebox@lists.infradead.org; Sun, 19 Jun 2016 08:31:44 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sun, 19 Jun 2016 11:31:10 +0300
Message-Id: <1466325070-20966-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH] ARM: boards: variscite-mx6: Remove the excess assignment
To: barebox@lists.infradead.org

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/boards/variscite-mx6/board.c | 15 +++++----------
 1 file changed, 5 insertions(+), 10 deletions(-)

diff --git a/arch/arm/boards/variscite-mx6/board.c b/arch/arm/boards/variscite-mx6/board.c
index 3585deb..267f68c 100644
--- a/arch/arm/boards/variscite-mx6/board.c
+++ b/arch/arm/boards/variscite-mx6/board.c
@@ -47,24 +47,19 @@
 static int setup_pmic_voltages(void)
 {
 	unsigned char value, rev_id = 0 ;
-	struct i2c_adapter *adapter = NULL;
+	struct i2c_adapter *adapter;
 	struct i2c_client client;
-	int addr = -1, bus = 0;
 
 	/* I2C2 bus (2-1 = 1 in barebox numbering) */
-	bus = 1;
-
-	/* PFUZE100 device address is 0x08 */
-	addr = 0x08;
-
-	adapter = i2c_get_adapter(bus);
+	adapter = i2c_get_adapter(1);
 	if (!adapter) {
-		pr_err("i2c bus %d not found\n", bus);
+		pr_err("i2c2 bus not found\n");
 		return -ENODEV;
 	}
 
 	client.adapter = adapter;
-	client.addr = addr;
+	/* PFUZE100 device address is 0x08 */
+	client.addr = 0x08;
 
 	/* Attempt to locate the PFUZE100 chip. */
 	if (i2c_read_reg(&client, 0x00, &value, 1) != 1) {
-- 
2.4.9


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
