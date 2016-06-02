Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x244.google.com ([2607:f8b0:400e:c00::244])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b8KjF-00023I-L6
 for barebox@lists.infradead.org; Thu, 02 Jun 2016 04:59:35 +0000
Received: by mail-pf0-x244.google.com with SMTP id b124so6535287pfb.0
 for <barebox@lists.infradead.org>; Wed, 01 Jun 2016 21:59:17 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed,  1 Jun 2016 21:58:41 -0700
Message-Id: <1464843531-1824-13-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 12/22] e1000: Simplify EEPROM init for e1000_igb
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
index 63e84c1..55a8f96 100644
--- a/drivers/net/e1000/eeprom.c
+++ b/drivers/net/e1000/eeprom.c
@@ -374,9 +374,6 @@ int32_t e1000_init_eeprom_params(struct e1000_hw *hw)
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
2.5.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
