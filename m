Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XgHPa-0007qm-0r
 for barebox@lists.infradead.org; Mon, 20 Oct 2014 18:10:30 +0000
Received: from tellur.intern.lynxeye.de (p57B5E0B8.dip0.t-ipconnect.de
 [87.181.224.184]) by lynxeye.de (Postfix) with ESMTPA id AA74D26C2002
 for <barebox@lists.infradead.org>; Mon, 20 Oct 2014 20:09:12 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Mon, 20 Oct 2014 20:16:00 +0200
Message-Id: <1413828961-12605-6-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 6/7] i2c: at91: fix invalid length check
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 drivers/i2c/busses/i2c-at91.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/i2c/busses/i2c-at91.c b/drivers/i2c/busses/i2c-at91.c
index deb4ea4..3a644cf 100644
--- a/drivers/i2c/busses/i2c-at91.c
+++ b/drivers/i2c/busses/i2c-at91.c
@@ -140,7 +140,7 @@ static void at91_calc_twi_clock(struct at91_twi_dev *dev, int twi_clk)
 
 static void at91_twi_write_next_byte(struct at91_twi_dev *dev)
 {
-	if (dev->buf_len <= 0)
+	if (!dev->buf_len)
 		return;
 
 	at91_twi_write(dev, AT91_TWI_THR, *dev->buf);
@@ -156,7 +156,7 @@ static void at91_twi_write_next_byte(struct at91_twi_dev *dev)
 
 static void at91_twi_read_next_byte(struct at91_twi_dev *dev)
 {
-	if (dev->buf_len <= 0)
+	if (!dev->buf_len)
 		return;
 
 	*dev->buf = at91_twi_read(dev, AT91_TWI_RHR) & 0xff;
-- 
1.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
