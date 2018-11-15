Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gNMpM-0000qa-Io
 for barebox@lists.infradead.org; Thu, 15 Nov 2018 18:57:22 +0000
Received: by mail-pf1-x443.google.com with SMTP id c72so5440357pfc.6
 for <barebox@lists.infradead.org>; Thu, 15 Nov 2018 10:57:10 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 15 Nov 2018 10:56:59 -0800
Message-Id: <20181115185700.24823-2-andrew.smirnov@gmail.com>
In-Reply-To: <20181115185700.24823-1-andrew.smirnov@gmail.com>
References: <20181115185700.24823-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 2/3] net/e1000: Mark e1000_igb_get_flash_size() static
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Mark e1000_igb_get_flash_size() static because it is not used outside
the source file.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/net/e1000/eeprom.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/e1000/eeprom.c b/drivers/net/e1000/eeprom.c
index ce74a8b20..aec533325 100644
--- a/drivers/net/e1000/eeprom.c
+++ b/drivers/net/e1000/eeprom.c
@@ -407,7 +407,7 @@ static void e1000_eeprom_uses_microwire(struct e1000_eeprom_info *eeprom,
 	eeprom->read = e1000_read_eeprom_microwire;
 }
 
-size_t e1000_igb_get_flash_size(struct e1000_hw *hw)
+static size_t e1000_igb_get_flash_size(struct e1000_hw *hw)
 {
 	struct device_node *node =
 		hw->pdev->dev.device_node;
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
