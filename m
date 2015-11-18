Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-x232.google.com ([2607:f8b0:400e:c03::232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZyuLM-00029H-J7
 for barebox@lists.infradead.org; Wed, 18 Nov 2015 04:27:41 +0000
Received: by padhx2 with SMTP id hx2so31217760pad.1
 for <barebox@lists.infradead.org>; Tue, 17 Nov 2015 20:27:19 -0800 (PST)
From: Jason Cobham <cobham.jason@gmail.com>
Date: Tue, 17 Nov 2015 20:27:04 -0800
Message-Id: <1447820824-12471-4-git-send-email-cobham.jason@gmail.com>
In-Reply-To: <1447820824-12471-1-git-send-email-cobham.jason@gmail.com>
References: <1447820824-12471-1-git-send-email-cobham.jason@gmail.com>
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
Subject: [PATCH 4/4] ARM: ccxmx53: Formatting changes and remove un-used code.
To: barebox@lists.infradead.org
Cc: cobham.jason@gmail.com

Tested with a 512M and 1GB module on a JSK dev board.
Signed-off-by: Jason Cobham <cobham.jason@gmail.com>
---
 arch/arm/boards/ccxmx53/board.c | 16 +++++-----------
 1 file changed, 5 insertions(+), 11 deletions(-)

diff --git a/arch/arm/boards/ccxmx53/board.c b/arch/arm/boards/ccxmx53/board.c
index 721eb0d..a6d37e2 100644
--- a/arch/arm/boards/ccxmx53/board.c
+++ b/arch/arm/boards/ccxmx53/board.c
@@ -70,12 +70,9 @@ static void ccwmx53_fec_reset(void)
 	gpio_set_value(ccwmx53_FEC_PHY_RST, 1);
 }
 
-/*
- * Configure this board for 256Mb. The real
- * size is determined by the board id read from the IIM module
- * and added as ram1.
- */
-
+/* On these boards, memory information is encoded in the MAC address.
+ * Print device memory, and option info from lookup table.
+ * */
 static int ccwmx53_devices_init(void)
 {
 	u8 hwid[6] = {0};
@@ -108,10 +105,7 @@ static int ccwmx53_devices_init(void)
 		}
 		printf("Module Serial : %c%d\n", manloc, ((hwid[2] & 0x3f) << 24) | (hwid[3] << 16) | (hwid[4] << 8) | hwid[5]);
 		printf("Module RAM    : %dK\n", (ccwmx53_id->mem_sz)/1024);
-		if ((ccwmx53_id->mem_sz - SZ_512M) > 0)
-		{
-			//arm_add_mem_device("ram1", MX53_CSD0_BASE_ADDR + SZ_512M, (ccwmx53_id->mem_sz)-SZ_512M);
-		}
+
 	} else {
 		return -ENOSYS;
 	}
@@ -146,7 +140,7 @@ static int ccxmx53_reg_init(void)
 	client.adapter = adapter;
 	client.addr = addr;
 
-	/* Enable 3.3V ext regulator. This is not supported in dt */
+	/* Enable 3.3V ext regulator. */
 	value = 0xfa;
 	if (i2c_write_reg(&client, 0x19, &value, 1) < 0){
 		printf("****I2C write failed\n");
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
