Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x243.google.com ([2607:f8b0:400e:c00::243])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aL0sp-0004yS-3a
 for barebox@lists.infradead.org; Mon, 18 Jan 2016 03:53:36 +0000
Received: by mail-pf0-x243.google.com with SMTP id 65so11171870pff.2
 for <barebox@lists.infradead.org>; Sun, 17 Jan 2016 19:53:17 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun, 17 Jan 2016 19:52:31 -0800
Message-Id: <1453089161-6697-10-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 10/20] e1000: Simplify EEPROM init for e1000_igb
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

That chip specifies read access uising EERD via use_eerd, which means
that none of the more "advanced" EEPROM parameters will be used for
reads, so remove them.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/net/e1000/eeprom.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/net/e1000/eeprom.c b/drivers/net/e1000/eeprom.c
index 1abd630..ef2cc6b 100644
--- a/drivers/net/e1000/eeprom.c
+++ b/drivers/net/e1000/eeprom.c
@@ -375,9 +375,6 @@ int32_t e1000_init_eeprom_params(struct e1000_hw *hw)
 	case e1000_igb:
 		/* i210 has 4k of iNVM mapped as EEPROM */
 		eeprom->type = e1000_eeprom_invm;
-		eeprom->opcode_bits = 8;
-		eeprom->delay_usec = 1;
-		eeprom->address_bits = 16;
 		eeprom->use_eerd = true;
 		break;
 	default:
--
2.5.0

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
