Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-x241.google.com ([2607:f8b0:400e:c03::241])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b7nBK-0003pU-Ee
 for barebox@lists.infradead.org; Tue, 31 May 2016 17:10:21 +0000
Received: by mail-pa0-x241.google.com with SMTP id f8so25679999pag.0
 for <barebox@lists.infradead.org>; Tue, 31 May 2016 10:10:02 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 31 May 2016 10:09:28 -0700
Message-Id: <1464714580-31488-10-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1464714580-31488-1-git-send-email-andrew.smirnov@gmail.com>
References: <1464714580-31488-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 09/21] e1000: Remove 'use_eewr' parameter
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Remove 'use_eewr' from 'struct e1000_eeprom_info' since it is not used
anywhere in the code.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/net/e1000/e1000.h  | 1 -
 drivers/net/e1000/eeprom.c | 7 -------
 2 files changed, 8 deletions(-)

diff --git a/drivers/net/e1000/e1000.h b/drivers/net/e1000/e1000.h
index d75c707..76872f0 100644
--- a/drivers/net/e1000/e1000.h
+++ b/drivers/net/e1000/e1000.h
@@ -690,7 +690,6 @@ struct e1000_eeprom_info {
 	uint16_t delay_usec;
 	uint16_t page_size;
 	bool use_eerd;
-	bool use_eewr;
 };
 
 #define E1000_EEPROM_SWDPIN0   0x0001	/* SWDPIN 0 EEPROM Value */
diff --git a/drivers/net/e1000/eeprom.c b/drivers/net/e1000/eeprom.c
index c2dfad5..b6414b2 100644
--- a/drivers/net/e1000/eeprom.c
+++ b/drivers/net/e1000/eeprom.c
@@ -289,7 +289,6 @@ int32_t e1000_init_eeprom_params(struct e1000_hw *hw)
 		eeprom->address_bits = 6;
 		eeprom->delay_usec = 50;
 		eeprom->use_eerd = false;
-		eeprom->use_eewr = false;
 	break;
 	case e1000_82540:
 	case e1000_82545:
@@ -307,7 +306,6 @@ int32_t e1000_init_eeprom_params(struct e1000_hw *hw)
 			eeprom->address_bits = 6;
 		}
 		eeprom->use_eerd = false;
-		eeprom->use_eewr = false;
 		break;
 	case e1000_82541:
 	case e1000_82541_rev_2:
@@ -337,7 +335,6 @@ int32_t e1000_init_eeprom_params(struct e1000_hw *hw)
 			}
 		}
 		eeprom->use_eerd = false;
-		eeprom->use_eewr = false;
 		break;
 	case e1000_82571:
 	case e1000_82572:
@@ -352,7 +349,6 @@ int32_t e1000_init_eeprom_params(struct e1000_hw *hw)
 			eeprom->address_bits = 8;
 		}
 		eeprom->use_eerd = false;
-		eeprom->use_eewr = false;
 		break;
 	case e1000_82573:
 	case e1000_82574:
@@ -368,7 +364,6 @@ int32_t e1000_init_eeprom_params(struct e1000_hw *hw)
 		}
 		if (e1000_is_onboard_nvm_eeprom(hw) == false) {
 			eeprom->use_eerd = true;
-			eeprom->use_eewr = true;
 
 			eeprom->type = e1000_eeprom_flash;
 			eeprom->word_size = 2048;
@@ -391,7 +386,6 @@ int32_t e1000_init_eeprom_params(struct e1000_hw *hw)
 			eeprom->address_bits = 8;
 		}
 		eeprom->use_eerd = true;
-		eeprom->use_eewr = false;
 		break;
 	case e1000_igb:
 		/* i210 has 4k of iNVM mapped as EEPROM */
@@ -401,7 +395,6 @@ int32_t e1000_init_eeprom_params(struct e1000_hw *hw)
 		eeprom->page_size = 32;
 		eeprom->address_bits = 16;
 		eeprom->use_eerd = true;
-		eeprom->use_eewr = false;
 		break;
 	default:
 		break;
-- 
2.5.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
