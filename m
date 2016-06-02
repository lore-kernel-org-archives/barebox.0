Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x244.google.com ([2607:f8b0:400e:c00::244])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b8KjF-000237-L5
 for barebox@lists.infradead.org; Thu, 02 Jun 2016 04:59:35 +0000
Received: by mail-pf0-x244.google.com with SMTP id c84so6516216pfc.1
 for <barebox@lists.infradead.org>; Wed, 01 Jun 2016 21:59:13 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed,  1 Jun 2016 21:58:35 -0700
Message-Id: <1464843531-1824-7-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 06/22] e1000: Do not read same register twice
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

EEPROM_INIT_CONTROL2_REG is already read once before entering this
switch statement, so there's not much use in reading its value for the
second time.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/net/e1000/main.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/net/e1000/main.c b/drivers/net/e1000/main.c
index 6d92cde..11a0a2f 100644
--- a/drivers/net/e1000/main.c
+++ b/drivers/net/e1000/main.c
@@ -839,12 +839,6 @@ static int e1000_setup_link(struct e1000_hw *hw)
 		hw->fc = e1000_fc_full;
 		break;
 	default:
-		ret_val = e1000_read_eeprom(hw, EEPROM_INIT_CONTROL2_REG, 1, &eeprom_data);
-		if (ret_val) {
-			dev_dbg(hw->dev, "EEPROM Read Error\n");
-			return -E1000_ERR_EEPROM;
-		}
-
 		if ((eeprom_data & EEPROM_WORD0F_PAUSE_MASK) == 0)
 			hw->fc = e1000_fc_none;
 		else if ((eeprom_data & EEPROM_WORD0F_PAUSE_MASK) == EEPROM_WORD0F_ASM_DIR)
-- 
2.5.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
