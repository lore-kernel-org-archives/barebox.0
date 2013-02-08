Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 14.mo5.mail-out.ovh.net ([188.165.51.82]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U3kHN-0006Rh-2M
 for barebox@lists.infradead.org; Fri, 08 Feb 2013 09:29:57 +0000
Received: from mail634.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id DB5AA101C172
 for <barebox@lists.infradead.org>; Fri,  8 Feb 2013 10:40:17 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri,  8 Feb 2013 10:28:44 +0100
Message-Id: <1360315724-24736-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20130208092544.GQ19322@game.jcrosoft.org>
References: <20130208092544.GQ19322@game.jcrosoft.org>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [For master PATCH 1/1] sama5de3k: add gmacb support
To: barebox@lists.infradead.org
Cc: Nicolas Ferre <nicolas.ferre@atmel.com>

Cc: Nicolas Ferre <nicolas.ferre@atmel.com>
Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/sama5d3xek/init.c |   31 +++++++++++++++++++++++++++++++
 1 file changed, 31 insertions(+)

diff --git a/arch/arm/boards/sama5d3xek/init.c b/arch/arm/boards/sama5d3xek/init.c
index 110a83f..d17e4c2 100644
--- a/arch/arm/boards/sama5d3xek/init.c
+++ b/arch/arm/boards/sama5d3xek/init.c
@@ -110,6 +110,11 @@ static void ek_add_device_nand(void) {}
 #endif
 
 #if defined(CONFIG_DRIVER_NET_MACB)
+static struct at91_ether_platform_data gmac_pdata = {
+	.phy_interface = PHY_INTERFACE_MODE_RGMII,
+	.phy_addr = 7,
+};
+
 static struct at91_ether_platform_data macb_pdata = {
 	.phy_interface = PHY_INTERFACE_MODE_RMII,
 	.phy_addr = 0,
@@ -138,6 +143,28 @@ static int ek_register_mac_address_43(int id)
 	return w1_local_mac_address_register(id, "tml", "w1-43-0");
 }
 
+static int ksz9021rn_phy_fixup(struct phy_device *phy)
+{
+	int value;
+
+#define GMII_RCCPSR	260
+#define GMII_RRDPSR	261
+#define GMII_ERCR	11
+#define GMII_ERDWR	12
+
+	/* Set delay values */
+	value = GMII_RCCPSR | 0x8000;
+	phy_write(phy, GMII_ERCR, value);
+	value = 0xF2F4;
+	phy_write(phy, GMII_ERDWR, value);
+	value = GMII_RRDPSR | 0x8000;
+	phy_write(phy, GMII_ERCR, value);
+	value = 0x2222;
+	phy_write(phy, GMII_ERDWR, value);
+
+	return 0;
+}
+
 static void ek_add_device_eth(void)
 {
 	if (w1_local_mac_address_register(0, "tml", "w1-2d-0"))
@@ -147,6 +174,10 @@ static void ek_add_device_eth(void)
 	if (ek_register_mac_address_23(1))
 		ek_register_mac_address_43(1);
 
+	phy_register_fixup_for_uid(PHY_ID_KSZ9021, MICREL_PHY_ID_MASK,
+					   ksz9021rn_phy_fixup);
+
+	at91_add_device_eth(0, &gmac_pdata);
 	at91_add_device_eth(1, &macb_pdata);
 }
 #else
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
