Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XgHP8-0006sq-1u
 for barebox@lists.infradead.org; Mon, 20 Oct 2014 18:10:03 +0000
Received: from tellur.intern.lynxeye.de (p57B5E0B8.dip0.t-ipconnect.de
 [87.181.224.184]) by lynxeye.de (Postfix) with ESMTPA id 4CA5426C2002
 for <barebox@lists.infradead.org>; Mon, 20 Oct 2014 20:09:11 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Mon, 20 Oct 2014 20:15:57 +0200
Message-Id: <1413828961-12605-3-git-send-email-dev@lynxeye.de>
In-Reply-To: <1413828961-12605-1-git-send-email-dev@lynxeye.de>
References: <1413828961-12605-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 3/7] arm: boards: variscite-mx6: check i2c return value
To: barebox@lists.infradead.org

ret wasn't checked previously.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/boards/variscite-mx6/board.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/variscite-mx6/board.c b/arch/arm/boards/variscite-mx6/board.c
index ce1284f..de74abc 100644
--- a/arch/arm/boards/variscite-mx6/board.c
+++ b/arch/arm/boards/variscite-mx6/board.c
@@ -49,7 +49,7 @@ static int setup_pmic_voltages(void)
 	unsigned char value, rev_id = 0 ;
 	struct i2c_adapter *adapter = NULL;
 	struct i2c_client client;
-	int addr = -1, ret, bus = 0;
+	int addr = -1, bus = 0;
 
 	/* I2C2 bus (2-1 = 1 in barebox numbering) */
 	bus = 1;
@@ -80,7 +80,10 @@ static int setup_pmic_voltages(void)
 
 	/* Set Gigabit Ethernet voltage (SOM v1.1/1.0)*/
         value = 0x60;
-	ret = i2c_write_reg(&client, 0x4a, &value, 1);
+	if (i2c_write_reg(&client, 0x4a, &value, 1) != 1) {
+		pr_err("Set ETH error!\n");
+		return -EIO;
+	}
 
 	/* set VGEN3 to 2.5V */
 	value = 0x77;
-- 
1.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
