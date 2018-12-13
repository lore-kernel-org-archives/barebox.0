Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gXL2Q-0001fz-Sg
 for barebox@lists.infradead.org; Thu, 13 Dec 2018 07:04:04 +0000
Received: by mail-pl1-x644.google.com with SMTP id u6so595407plm.8
 for <barebox@lists.infradead.org>; Wed, 12 Dec 2018 23:03:52 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 12 Dec 2018 23:03:34 -0800
Message-Id: <20181213070336.26837-2-andrew.smirnov@gmail.com>
In-Reply-To: <20181213070336.26837-1-andrew.smirnov@gmail.com>
References: <20181213070336.26837-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 2/4] net/e1000: Do not discard EEPROM error code in
 e1000_setup_link()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

E1000_read_eeprom() returns a number of different error codes, so
propagate them up the caller chain instead of reducing it to
E1000_READ_EEPROM.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/net/e1000/main.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/net/e1000/main.c b/drivers/net/e1000/main.c
index caa7274a8..d631e44b6 100644
--- a/drivers/net/e1000/main.c
+++ b/drivers/net/e1000/main.c
@@ -840,10 +840,11 @@ static int e1000_setup_link(struct e1000_hw *hw)
 	 * control setting, then the variable hw->fc will
 	 * be initialized based on a value in the EEPROM.
 	 */
-	if (e1000_read_eeprom(hw, EEPROM_INIT_CONTROL2_REG, 1,
-				&eeprom_data) < 0) {
+	ret_val = e1000_read_eeprom(hw, EEPROM_INIT_CONTROL2_REG, 1,
+				    &eeprom_data);
+	if (ret_val < 0) {
 		dev_dbg(hw->dev, "EEPROM Read Error\n");
-		return -E1000_ERR_EEPROM;
+		return ret_val;
 	}
 
 	switch (hw->mac_type) {
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
