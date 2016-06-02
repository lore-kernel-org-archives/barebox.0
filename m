Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-x244.google.com ([2607:f8b0:400e:c03::244])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b8KjI-00023H-AX
 for barebox@lists.infradead.org; Thu, 02 Jun 2016 04:59:38 +0000
Received: by mail-pa0-x244.google.com with SMTP id gp3so2238584pac.2
 for <barebox@lists.infradead.org>; Wed, 01 Jun 2016 21:59:16 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed,  1 Jun 2016 21:58:40 -0700
Message-Id: <1464843531-1824-12-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1464843531-1824-1-git-send-email-andrew.smirnov@gmail.com>
References: <1464843531-1824-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 11/22] e1000: Simplify EEPROM init for e1000_80003es2lan
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

That chip specifies read access uising EERD via use_eerd, which means
that none of the more "advanced" EEPROM parameters will be used for
reads, so remove them.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/net/e1000/eeprom.c | 7 -------
 1 file changed, 7 deletions(-)

diff --git a/drivers/net/e1000/eeprom.c b/drivers/net/e1000/eeprom.c
index e4ef5f9..63e84c1 100644
--- a/drivers/net/e1000/eeprom.c
+++ b/drivers/net/e1000/eeprom.c
@@ -369,13 +369,6 @@ int32_t e1000_init_eeprom_params(struct e1000_hw *hw)
 		break;
 	case e1000_80003es2lan:
 		eeprom->type = e1000_eeprom_spi;
-		eeprom->opcode_bits = 8;
-		eeprom->delay_usec = 1;
-		if (eecd & E1000_EECD_ADDR_BITS)
-			eeprom->address_bits = 16;
-		else
-			eeprom->address_bits = 8;
-
 		eeprom->use_eerd = true;
 		break;
 	case e1000_igb:
-- 
2.5.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
