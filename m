Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gNMnW-0000Bc-QR
 for barebox@lists.infradead.org; Thu, 15 Nov 2018 18:55:28 +0000
Received: by mail-pf1-x442.google.com with SMTP id c72so5438010pfc.6
 for <barebox@lists.infradead.org>; Thu, 15 Nov 2018 10:55:15 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 15 Nov 2018 10:54:58 -0800
Message-Id: <20181115185458.22396-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH] rtc: ds1307: Set DS1341_BIT_DOSF in the right register
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

DS1341_BIT_DOSF is located in DS1337_REG_STATUS, not
DS1337_REG_CONTROL. Fix the code to reflect that.

Also fix "additionale" -> "additional" typo while at it.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/rtc/rtc-ds1307.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/rtc/rtc-ds1307.c b/drivers/rtc/rtc-ds1307.c
index bb597305e..f1feee468 100644
--- a/drivers/rtc/rtc-ds1307.c
+++ b/drivers/rtc/rtc-ds1307.c
@@ -348,10 +348,10 @@ static int ds1307_probe(struct device_d *dev)
 			ds1307->regs[1] &= ~DS1341_BIT_ECLK;
 
 			/*
-			 * Let's set additionale RTC bits to
+			 * Let's set additional RTC bits to
 			 * facilitate maximum power saving.
 			 */
-			ds1307->regs[0] |=  DS1341_BIT_DOSF;
+			ds1307->regs[1] |=  DS1341_BIT_DOSF;
 			ds1307->regs[0] &= ~DS1341_BIT_EGFIL;
 
 			i2c_smbus_write_byte_data(client, DS1337_REG_CONTROL,
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
