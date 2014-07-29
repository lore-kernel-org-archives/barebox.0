Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from top.free-electrons.com ([176.31.233.9]
 helo=mail.free-electrons.com)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XCEIG-0004dr-Kd
 for barebox@lists.infradead.org; Tue, 29 Jul 2014 20:46:45 +0000
From: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
Date: Tue, 29 Jul 2014 17:44:56 -0300
Message-Id: <1406666701-15356-2-git-send-email-ezequiel.garcia@free-electrons.com>
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
Subject: [PATCH 1/6] net: phy: Add fallbacks for the obsoletes phy DT
 properties
To: barebox@lists.infradead.org
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, Jason Cooper <jason@lakedaemon.net>, Willy Tarreau <w@1wt.eu>

In addition to the standard 'phy-handle' devicetree property, the binding
specifies two properties, which are considered obsolete: 'phy' and 'phy-device'.
This commit adds support for them in of_mdio_find_phy().

Signed-off-by: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
---
 drivers/net/phy/phy.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
index 1a2fdf1..cad4cf5 100644
--- a/drivers/net/phy/phy.c
+++ b/drivers/net/phy/phy.c
@@ -275,6 +275,10 @@ static struct phy_device *of_mdio_find_phy(struct eth_device *edev)
 
 	phy_node = of_parse_phandle(edev->parent->device_node, "phy-handle", 0);
 	if (!phy_node)
+		phy_node = of_parse_phandle(edev->parent->device_node, "phy", 0);
+	if (!phy_node)
+		phy_node = of_parse_phandle(edev->parent->device_node, "phy-device", 0);
+	if (!phy_node)
 		return NULL;
 
 	bus_for_each_device(&mdio_bus_type, dev) {
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
