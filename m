Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1ef47c-00038I-D3
 for barebox@lists.infradead.org; Fri, 26 Jan 2018 13:32:50 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <l.stach@pengutronix.de>) id 1ef47M-0005M4-Ix
 for barebox@lists.infradead.org; Fri, 26 Jan 2018 14:32:32 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri, 26 Jan 2018 14:32:31 +0100
Message-Id: <20180126133232.4992-4-l.stach@pengutronix.de>
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
Subject: [PATCH v3 4/5] net/e1000: don't check EEPROM signature if populated
 from iNVM
To: barebox@lists.infradead.org

The EEPROM device will contain an invalid signature if it has been
populated from iNVM. Since the iNVM enum type has been removed, the
only way to tell if a signature check makes sense is to look at the
EEPROM valid status.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/net/e1000/eeprom.c | 10 ++++------
 drivers/net/e1000/main.c   |  2 +-
 2 files changed, 5 insertions(+), 7 deletions(-)

diff --git a/drivers/net/e1000/eeprom.c b/drivers/net/e1000/eeprom.c
index 0a28dfdd8868..b0408107bbdd 100644
--- a/drivers/net/e1000/eeprom.c
+++ b/drivers/net/e1000/eeprom.c
@@ -1006,12 +1006,10 @@ int e1000_validate_eeprom_checksum(struct e1000_hw *hw)
 	DEBUGFUNC();
 
 	/*
-	  Only the following three 'types' of EEPROM can be expected
-	  to have correct EEPROM checksum
-	*/
-	if (hw->eeprom.type != e1000_eeprom_spi &&
-	    hw->eeprom.type != e1000_eeprom_microwire &&
-	    hw->eeprom.type != e1000_eeprom_flash)
+	 * If the EEPROM device content isn't valid there is no point in
+	 * checking the signature.
+	 */
+	if (!e1000_eeprom_valid(hw))
 		return 0;
 
 	/* Read the EEPROM */
diff --git a/drivers/net/e1000/main.c b/drivers/net/e1000/main.c
index 0139c4a6d758..bb6ab4eb0360 100644
--- a/drivers/net/e1000/main.c
+++ b/drivers/net/e1000/main.c
@@ -3597,7 +3597,7 @@ static int e1000_probe(struct pci_dev *pdev, const struct pci_device_id *id)
 		}
 	}
 
-	if (!e1000_eeprom_valid(hw) || e1000_validate_eeprom_checksum(hw))
+	if (e1000_validate_eeprom_checksum(hw))
 		return 0;
 
 	e1000_get_ethaddr(edev, edev->ethaddr);
-- 
2.15.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
