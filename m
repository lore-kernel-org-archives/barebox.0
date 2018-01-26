Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1ef47c-00038G-H6
 for barebox@lists.infradead.org; Fri, 26 Jan 2018 13:32:50 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <l.stach@pengutronix.de>) id 1ef47M-0005M4-H0
 for barebox@lists.infradead.org; Fri, 26 Jan 2018 14:32:32 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri, 26 Jan 2018 14:32:29 +0100
Message-Id: <20180126133232.4992-2-l.stach@pengutronix.de>
In-Reply-To: <20180126133232.4992-1-l.stach@pengutronix.de>
References: <20180126133232.4992-1-l.stach@pengutronix.de>
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
Subject: [PATCH v3 2/5] net/e1000: use correct bit for flash detection
To: barebox@lists.infradead.org

Fixes: 95c346ccaa6d (net/e1000: don't access the (simulated)
                     eeprom when it is invalid)
Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/net/e1000/e1000.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/e1000/e1000.h b/drivers/net/e1000/e1000.h
index 1558b3c7f5c7..4a1a1aa33694 100644
--- a/drivers/net/e1000/e1000.h
+++ b/drivers/net/e1000/e1000.h
@@ -794,7 +794,7 @@ struct e1000_eeprom_info {
 #ifndef E1000_EEPROM_GRANT_ATTEMPTS
 #define E1000_EEPROM_GRANT_ATTEMPTS 1000 /* EEPROM # attempts to gain grant */
 #endif
-#define E1000_EECD_FLASH_IN_USE     0x00000100  /* Flash is present with a valid signature */
+#define E1000_EECD_FLASH_IN_USE     0x00000040  /* Flash is present with a valid signature */
 #define E1000_EECD_EE_PRES          0x00000100
 #define E1000_EECD_AUTO_RD          0x00000200  /* EEPROM Auto Read done */
 #define E1000_EECD_SIZE_EX_MASK     0x00007800  /* EEprom Size */
-- 
2.15.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
