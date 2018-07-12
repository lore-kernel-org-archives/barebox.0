Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fdY4L-000066-A0
 for barebox@lists.infradead.org; Thu, 12 Jul 2018 09:39:26 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Thu, 12 Jul 2018 11:39:11 +0200
Message-Id: <20180712093911.4086-1-u.kleine-koenig@pengutronix.de>
In-Reply-To: <20180712092911.8475-1-u.kleine-koenig@pengutronix.de>
References: <20180712092911.8475-1-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH] fixup! net/e1000: allow to overwrite flash size from device
 tree
To: barebox@lists.infradead.org

---
 drivers/net/e1000/eeprom.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/net/e1000/eeprom.c b/drivers/net/e1000/eeprom.c
index 97cb09a718f9..dda022e05437 100644
--- a/drivers/net/e1000/eeprom.c
+++ b/drivers/net/e1000/eeprom.c
@@ -407,7 +407,6 @@ static void e1000_eeprom_uses_microwire(struct e1000_eeprom_info *eeprom,
 	eeprom->read = e1000_read_eeprom_microwire;
 }
 
-
 size_t e1000_igb_get_flash_size(struct e1000_hw *hw)
 {
 	struct device_node *node =
-- 
2.18.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
