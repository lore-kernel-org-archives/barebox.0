Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-x244.google.com ([2607:f8b0:400e:c03::244])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aNwcN-0004iK-7H
 for barebox@lists.infradead.org; Tue, 26 Jan 2016 05:56:44 +0000
Received: by mail-pa0-x244.google.com with SMTP id yy13so7442934pab.1
 for <barebox@lists.infradead.org>; Mon, 25 Jan 2016 21:56:22 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 25 Jan 2016 21:55:57 -0800
Message-Id: <1453787758-12688-6-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1453787758-12688-1-git-send-email-andrew.smirnov@gmail.com>
References: <1453787758-12688-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 6/7] miitool: Don't print negative parent IDs
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Do not include ID of the parent to mii_bus if that ID is negative since
it produces a rather confusing string (e.g. "mdio.11-1", which is very
likely to be interpreted as "mdio.11<dash>1").

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 commands/miitool.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/commands/miitool.c b/commands/miitool.c
index 9ee3597..9ea5ab5 100644
--- a/commands/miitool.c
+++ b/commands/miitool.c
@@ -115,8 +115,9 @@ static int show_basic_mii(struct mii_bus *mii, struct phy_device *phydev,
 	for (i = 0; i < 32; i++)
 		mii_val[i] = mii->read(mii, phydev->addr, i);
 
-	printf("%s: %s%d: ", phydev->cdev.name,
-		mii->parent->name, mii->parent->id);
+	printf((mii->parent->id) < 0 ? "%s: %s:" : "%s: %s%d: ",
+	       phydev->cdev.name, mii->parent->name, mii->parent->id);
+
 
 	if (mii_val[MII_BMCR] == 0xffff || mii_val[MII_BMSR] == 0x0000) {
 		fprintf(stderr, "  No MII transceiver present!.\n");
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
