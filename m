Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gGDSC-0000fF-7P
 for barebox@lists.infradead.org; Sat, 27 Oct 2018 01:31:56 +0000
Received: by mail-pg1-x541.google.com with SMTP id a5-v6so1275479pgt.13
 for <barebox@lists.infradead.org>; Fri, 26 Oct 2018 18:31:41 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 26 Oct 2018 18:31:22 -0700
Message-Id: <20181027013127.22163-3-andrew.smirnov@gmail.com>
In-Reply-To: <20181027013127.22163-1-andrew.smirnov@gmail.com>
References: <20181027013127.22163-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH] miitool: Fix inconsistent spacing
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Make sure that there's a space between device name and it's status
string regardless if if device is using "id" field or not.

Before:

barebox@ZII RDU2 Board:/ miitool
mdio0-phy00: mdio:no link
mdio1-phy15: 2188000.ethernet@2188000:10 Mbit, half duplex, no link
mdio1-phy16: 2188000.ethernet@2188000:10 Mbit, half duplex, no link
mdio2-phy00: 2188000.ethernet@2188000:mdio:switch@0:no link
mdio2-phy01: 2188000.ethernet@2188000:mdio:switch@0:no link
mdio2-phy02: 2188000.ethernet@2188000:mdio:switch@0:negotiated 100baseTx-FD, link ok
mdio2-phy03: 2188000.ethernet@2188000:mdio:switch@0:no link
mdio2-phy04: 2188000.ethernet@2188000:mdio:switch@0:no link
mdio3-phy01: eth1: negotiated 1000baseT-FD flow-control, link ok

After:

barebox@ZII RDU2 Board:/ miitool
mdio0-phy00: mdio: no link
mdio1-phy15: 2188000.ethernet@2188000: 10 Mbit, half duplex, no link
mdio1-phy16: 2188000.ethernet@2188000: 10 Mbit, half duplex, no link
mdio2-phy00: 2188000.ethernet@2188000:mdio:switch@0: no link
mdio2-phy01: 2188000.ethernet@2188000:mdio:switch@0: no link
mdio2-phy02: 2188000.ethernet@2188000:mdio:switch@0: no link
mdio2-phy03: 2188000.ethernet@2188000:mdio:switch@0: no link
mdio2-phy04: 2188000.ethernet@2188000:mdio:switch@0: no link
mdio3-phy01: eth1: no link

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 commands/miitool.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/commands/miitool.c b/commands/miitool.c
index dea4f853c..acf61421b 100644
--- a/commands/miitool.c
+++ b/commands/miitool.c
@@ -115,7 +115,7 @@ static int show_basic_mii(struct mii_bus *mii, struct phy_device *phydev,
 	for (i = 0; i < 32; i++)
 		mii_val[i] = mii->read(mii, phydev->addr, i);
 
-	printf((mii->parent->id) < 0 ? "%s: %s:" : "%s: %s%d: ",
+	printf((mii->parent->id) < 0 ? "%s: %s: " : "%s: %s%d: ",
 	       phydev->cdev.name, mii->parent->name, mii->parent->id);
 
 
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
