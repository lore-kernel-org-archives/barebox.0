Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from top.free-electrons.com ([176.31.233.9]
 helo=mail.free-electrons.com)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XCEIK-0004ea-Kt
 for barebox@lists.infradead.org; Tue, 29 Jul 2014 20:46:49 +0000
From: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
Date: Tue, 29 Jul 2014 17:44:58 -0300
Message-Id: <1406666701-15356-4-git-send-email-ezequiel.garcia@free-electrons.com>
In-Reply-To: <1406666701-15356-1-git-send-email-ezequiel.garcia@free-electrons.com>
References: <1406666701-15356-1-git-send-email-ezequiel.garcia@free-electrons.com>
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
Subject: [PATCH 3/6] net: phy: Add minimal support for QSGMII PHY
To: barebox@lists.infradead.org
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, Jason Cooper <jason@lakedaemon.net>, Willy Tarreau <w@1wt.eu>

Based on Linux's support by Thomas Petazzoni:

    commit b9d12085f2f531fdea67f0361564e0812696227c
    Author: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
    Date:   Tue Apr 15 15:50:19 2014 +0200
    net: phy: add minimal support for QSGMII PHY

    This commit adds the necessary definitions for the PHY layer to
    recognize "qsgmii" as a valid PHY interface. A QSMII interface, as
    defined at
    http://en.wikipedia.org/wiki/Media_Independent_Interface#Quad_Serial_Gigabit_Media_Independent_Interface,
    is "is a method of combining four SGMII lines into a 5Gbit/s
    interface. QSGMII, like SGMII, uses LVDS signalling for the TX and RX
    data and a single LVDS clock signal. QSGMII uses significantly fewer
    signal lines than four SGMII busses."

    This type of MAC <-> PHY connection might require special handling on
    the MAC driver side, so it should be possible to express this type of
    MAC <-> PHY connection, for example in the Device Tree.

    Signed-off-by: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
    Cc: devicetree@vger.kernel.org
    Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
    Signed-off-by: David S. Miller <davem@davemloft.net>

Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Signed-off-by: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
---
 drivers/of/of_net.c | 1 +
 include/linux/phy.h | 1 +
 2 files changed, 2 insertions(+)

diff --git a/drivers/of/of_net.c b/drivers/of/of_net.c
index 0320c1d..086573f 100644
--- a/drivers/of/of_net.c
+++ b/drivers/of/of_net.c
@@ -28,6 +28,7 @@ static const char *phy_modes[] = {
 	[PHY_INTERFACE_MODE_RGMII_TXID] = "rgmii-txid",
 	[PHY_INTERFACE_MODE_RTBI]	= "rtbi",
 	[PHY_INTERFACE_MODE_SMII]	= "smii",
+	[PHY_INTERFACE_MODE_QSGMII]	= "qsgmii",
 };
 
 /**
diff --git a/include/linux/phy.h b/include/linux/phy.h
index 3229aa6..7c5d754 100644
--- a/include/linux/phy.h
+++ b/include/linux/phy.h
@@ -54,6 +54,7 @@ typedef enum {
 	PHY_INTERFACE_MODE_RGMII_TXID,
 	PHY_INTERFACE_MODE_RTBI,
 	PHY_INTERFACE_MODE_SMII,
+	PHY_INTERFACE_MODE_QSGMII,
 } phy_interface_t;
 
 #define PHY_INIT_TIMEOUT	100000
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
