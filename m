Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x229.google.com ([2607:f8b0:400e:c00::229])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1amszF-0007O2-AD
 for barebox@lists.infradead.org; Mon, 04 Apr 2016 01:07:26 +0000
Received: by mail-pf0-x229.google.com with SMTP id n1so27452097pfn.2
 for <barebox@lists.infradead.org>; Sun, 03 Apr 2016 18:07:05 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun,  3 Apr 2016 18:06:32 -0700
Message-Id: <1459731993-14807-2-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1459731993-14807-1-git-send-email-andrew.smirnov@gmail.com>
References: <1459731993-14807-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 2/3] ds1307: Fix a bug in probe()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add missing "~" to bit clearing operation.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/rtc/rtc-ds1307.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/rtc/rtc-ds1307.c b/drivers/rtc/rtc-ds1307.c
index e2d561b..a1cfed6 100644
--- a/drivers/rtc/rtc-ds1307.c
+++ b/drivers/rtc/rtc-ds1307.c
@@ -338,7 +338,7 @@ static int ds1307_probe(struct device_d *dev)
 		  ECLK bit set to 0
 		 */
 		if (ds1307->type == ds_1341) {
-			ds1307->regs[1] &= DS1341_BIT_ECLK;
+			ds1307->regs[1] &= ~DS1341_BIT_ECLK;
 			i2c_smbus_write_byte_data(client, DS1337_REG_STATUS,
 						  ds1307->regs[1]);
 		}
-- 
2.5.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
