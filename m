Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x236.google.com ([2607:f8b0:400e:c00::236])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aVqwO-0003n2-Ez
 for barebox@lists.infradead.org; Wed, 17 Feb 2016 01:30:05 +0000
Received: by mail-pf0-x236.google.com with SMTP id c10so1560853pfc.2
 for <barebox@lists.infradead.org>; Tue, 16 Feb 2016 17:29:44 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 16 Feb 2016 17:29:06 -0800
Message-Id: <1455672559-25061-6-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1455672559-25061-1-git-send-email-andrew.smirnov@gmail.com>
References: <1455672559-25061-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 05/18] i2c-at91: Use IS_ERR instead of checking for NULL
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Dev_request_mem_region doesn't return NULL to indicate error and IS_ERR
should be used in conjuction with it in order to detect failure.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/i2c/busses/i2c-at91.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/i2c/busses/i2c-at91.c b/drivers/i2c/busses/i2c-at91.c
index 622c56d..6db7243 100644
--- a/drivers/i2c/busses/i2c-at91.c
+++ b/drivers/i2c/busses/i2c-at91.c
@@ -426,9 +426,9 @@ static int at91_twi_probe(struct device_d *dev)
 	i2c_at91->pdata = i2c_data;
 
 	i2c_at91->base = dev_request_mem_region(dev, 0);
-	if (!i2c_at91->base) {
+	if (IS_ERR(i2c_at91->base)) {
 		dev_err(dev, "could not get memory region\n");
-		rc = -ENODEV;
+		rc = PTR_ERR(i2c_at91->base);
 		goto out_free;
 	}
 
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
