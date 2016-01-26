Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-x242.google.com ([2607:f8b0:400e:c03::242])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aNwcL-0004hv-1p
 for barebox@lists.infradead.org; Tue, 26 Jan 2016 05:56:42 +0000
Received: by mail-pa0-x242.google.com with SMTP id pv5so7466085pac.0
 for <barebox@lists.infradead.org>; Mon, 25 Jan 2016 21:56:20 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 25 Jan 2016 21:55:54 -0800
Message-Id: <1453787758-12688-3-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 3/7] miitool: Fix PHY argument handling
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, Andrey Gusakov <andrey.gusakov@cogentembedded.com>

Instead of displaying the status of PHY "PHY" the tool will print status
of all PHYs it encounters while searching for the one that was
requested. This commit fixes the logic such that only requested
information is printed.

Signed-off-by: Andrey Gusakov <andrey.gusakov@cogentembedded.com>
Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 commands/miitool.c | 25 +++++++++++++++++--------
 1 file changed, 17 insertions(+), 8 deletions(-)

diff --git a/commands/miitool.c b/commands/miitool.c
index c62e758..9ee3597 100644
--- a/commands/miitool.c
+++ b/commands/miitool.c
@@ -233,18 +233,27 @@ static void mdiobus_show(struct device_d *dev, char *phydevname, int verbose)
 		struct phy_device *phydev;
 
 		phydev = mdiobus_scan(mii, i);
-		if (IS_ERR(phydev))
+		if (IS_ERR(phydev) || !phydev->registered)
 			continue;
-		if (phydev->registered) {
 
-			show_basic_mii(mii, phydev, verbose);
+		/*
+		 * If we are looking for a secific phy, called
+		 * 'phydevname', but current phydev is not it, skip to
+		 * the next iteration
+		 */
+		if (phydevname &&
+		    strcmp(phydev->cdev.name, phydevname))
+			continue;
 
-			if (phydevname &&
-				!strcmp(phydev->cdev.name, phydevname)) {
-				return;
-			}
-		}
+		show_basic_mii(mii, phydev, verbose);
 
+		/*
+		 * We were looking for a specific device and at this
+		 * point we already shown the info about it so end the
+		 * loop and exit
+		 */
+		if (phydevname)
+			break;
 	}
 
 	return;
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
