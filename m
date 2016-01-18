Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-x242.google.com ([2607:f8b0:400e:c03::242])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aL0sq-0004yE-NF
 for barebox@lists.infradead.org; Mon, 18 Jan 2016 03:53:38 +0000
Received: by mail-pa0-x242.google.com with SMTP id a20so26973372pag.3
 for <barebox@lists.infradead.org>; Sun, 17 Jan 2016 19:53:16 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun, 17 Jan 2016 19:52:30 -0800
Message-Id: <1453089161-6697-9-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1453089161-6697-1-git-send-email-andrew.smirnov@gmail.com>
References: <1453089161-6697-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 09/20] e1000: Simplify EEPROM init for e1000_80003es2lan
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
index 0cd0bf5..1abd630 100644
--- a/drivers/net/e1000/eeprom.c
+++ b/drivers/net/e1000/eeprom.c
@@ -370,13 +370,6 @@ int32_t e1000_init_eeprom_params(struct e1000_hw *hw)
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
2.5.0

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
