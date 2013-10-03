Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo2.mail-out.ovh.net ([87.98.181.248]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VRfSP-00056W-RP
 for barebox@lists.infradead.org; Thu, 03 Oct 2013 09:44:30 +0000
Received: from mail616.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 56DF4DC0AB2
 for <barebox@lists.infradead.org>; Thu,  3 Oct 2013 11:44:06 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu,  3 Oct 2013 11:45:29 +0200
Message-Id: <1380793529-6141-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1] macb: add support to read the mac address from register
To: barebox@lists.infradead.org

check the 4 mac address register and return at the first valid

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/net/macb.c | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/drivers/net/macb.c b/drivers/net/macb.c
index b1f544b..d8523ce 100644
--- a/drivers/net/macb.c
+++ b/drivers/net/macb.c
@@ -458,9 +458,31 @@ static int macb_phy_write(struct mii_bus *bus, int addr, int reg, u16 value)
 static int macb_get_ethaddr(struct eth_device *edev, unsigned char *adr)
 {
 	struct macb_device *macb = edev->priv;
+	u32 bottom;
+	u16 top;
+	u8 addr[6];
+	int i;
 
 	dev_dbg(macb->dev, "%s\n", __func__);
 
+	/* Check all 4 address register for vaild address */
+	for (i = 0; i < 4; i++) {
+		bottom = macb_or_gem_readl(macb, SA1B + i * 8);
+		top = macb_or_gem_readl(macb, SA1T + i * 8);
+
+		addr[0] = bottom & 0xff;
+		addr[1] = (bottom >> 8) & 0xff;
+		addr[2] = (bottom >> 16) & 0xff;
+		addr[3] = (bottom >> 24) & 0xff;
+		addr[4] = top & 0xff;
+		addr[5] = (top >> 8) & 0xff;
+
+		if (is_valid_ether_addr(addr)) {
+			memcpy(adr, addr, sizeof(addr));
+			return 0;
+		}
+	}
+
 	return -1;
 }
 
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
