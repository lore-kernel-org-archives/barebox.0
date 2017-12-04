Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x241.google.com ([2607:f8b0:400e:c00::241])
 by merlin.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eLson-0002h7-8z
 for barebox@lists.infradead.org; Mon, 04 Dec 2017 15:38:07 +0000
Received: by mail-pf0-x241.google.com with SMTP id n6so8782529pfa.4
 for <barebox@lists.infradead.org>; Mon, 04 Dec 2017 07:37:42 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon,  4 Dec 2017 07:37:23 -0800
Message-Id: <20171204153726.11479-2-andrew.smirnov@gmail.com>
In-Reply-To: <20171204153726.11479-1-andrew.smirnov@gmail.com>
References: <20171204153726.11479-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 1/4] commands: miitool: Constify 'phydevname' in mdiobus_show()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

It seems like mdiobus_show() doesn't need more than read-only to
'phydevname', so constify it to allow passing const stings in.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 commands/miitool.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/commands/miitool.c b/commands/miitool.c
index 07bce1865..1a46037f2 100644
--- a/commands/miitool.c
+++ b/commands/miitool.c
@@ -225,7 +225,8 @@ static int show_basic_mii(struct mii_bus *mii, struct phy_device *phydev,
 	return 0;
 }
 
-static void mdiobus_show(struct device_d *dev, char *phydevname, int verbose)
+static void mdiobus_show(struct device_d *dev, const char *phydevname,
+			 int verbose)
 {
 	struct mii_bus *mii = to_mii_bus(dev);
 	int i;
-- 
2.14.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
