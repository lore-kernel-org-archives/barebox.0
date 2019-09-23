Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCTkw-0001OS-VJ
 for barebox@lists.infradead.org; Mon, 23 Sep 2019 19:12:20 +0000
Received: by mail-pf1-x441.google.com with SMTP id v4so5076552pff.6
 for <barebox@lists.infradead.org>; Mon, 23 Sep 2019 12:12:18 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 23 Sep 2019 12:12:10 -0700
Message-Id: <20190923191210.1600-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH] net: dsa: mv88e6xxx: Fix error message typo
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

s/MIDO/MDIO

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/net/phy/mv88e6xxx/chip.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/phy/mv88e6xxx/chip.c b/drivers/net/phy/mv88e6xxx/chip.c
index 3af2b64eda..b1bffe5cbc 100644
--- a/drivers/net/phy/mv88e6xxx/chip.c
+++ b/drivers/net/phy/mv88e6xxx/chip.c
@@ -826,7 +826,7 @@ static int mv88e6xxx_probe(struct device_d *dev)
 
 	err = of_property_read_u32(np, "reg", &reg);
 	if (err) {
-		dev_err(dev, "Couldn't determine switch MIDO address\n");
+		dev_err(dev, "Couldn't determine switch MDIO address\n");
 		return err;
 	}
 
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
