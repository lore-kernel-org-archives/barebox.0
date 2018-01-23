Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1edzld-00043j-F9
 for barebox@lists.infradead.org; Tue, 23 Jan 2018 14:41:44 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <l.stach@pengutronix.de>) id 1edzlR-0008GN-6L
 for barebox@lists.infradead.org; Tue, 23 Jan 2018 15:41:29 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Tue, 23 Jan 2018 15:41:29 +0100
Message-Id: <20180123144129.26630-1-l.stach@pengutronix.de>
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
Subject: [PATCH] net/e1000: init eeprom word size if only iNVM is found
To: barebox@lists.infradead.org

The commit removing the iNVM enum type didn't make sure that the code path
initializing the word size is also executed when only the iNVM is present.
This leads to failed reads, as the read function will check the word size.

Fixes: 761bed13abcb (net/e1000: provide access to iNVM even if a
                     flash is present)
Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/net/e1000/eeprom.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/e1000/eeprom.c b/drivers/net/e1000/eeprom.c
index 748d8afe7922..bf08ac87fdbb 100644
--- a/drivers/net/e1000/eeprom.c
+++ b/drivers/net/e1000/eeprom.c
@@ -506,7 +506,8 @@ int32_t e1000_init_eeprom_params(struct e1000_hw *hw)
 		break;
 	}
 
-	if (eeprom->type == e1000_eeprom_spi) {
+	/* SPI or iNVM */
+	if (!eeprom->word_size) {
 		/* eeprom_size will be an enum [0..8] that maps
 		 * to eeprom sizes 128B to
 		 * 32KB (incremented by powers of 2).
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
