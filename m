Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22a.google.com ([2a00:1450:4010:c03::22a])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X25Em-00030c-OP
 for barebox@lists.infradead.org; Tue, 01 Jul 2014 21:05:13 +0000
Received: by mail-la0-f42.google.com with SMTP id pn19so6368400lab.15
 for <barebox@lists.infradead.org>; Tue, 01 Jul 2014 14:04:50 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed,  2 Jul 2014 01:04:25 +0400
Message-Id: <1404248665-15430-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] mii-tool: make the 'No MII transceiver present!' message more
 clear
To: barebox@lists.infradead.org

Suppose you have two network controllers.
The first one is ENC28J60 (it is in low power mode
after start) the second one is always-enabled eth1.

As ENC28J60 is in low power mode before enc28j60_eth_open()
is called. ENC28J60's mii traceiver is in low power mode too
so the mii traceiver's register are inaccessable.

Here is a sample log just after barebox start:

  barebox:/ miitool
  miibus0: registered phy as /dev/phy0
    No MII transceiver present!.
  miibus1: registered phy as /dev/phy1
  phy1: eth1: negotiated 100baseTx-FD, link ok
  barebox:/ miitool
    No MII transceiver present!.
  phy1: eth1: negotiated 100baseTx-FD, link ok

The 'No MII transceiver present!.' message is confusing here.

This patch fixes the problem so the miitool output
looks like this:

  barebox:/ miitool
  phy0: spieth0:  No MII transceiver present!.
  phy1: eth1: negotiated 100baseTx-FD, link ok

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 commands/miitool.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/commands/miitool.c b/commands/miitool.c
index 40e34e9..c62e758 100644
--- a/commands/miitool.c
+++ b/commands/miitool.c
@@ -115,14 +115,14 @@ static int show_basic_mii(struct mii_bus *mii, struct phy_device *phydev,
 	for (i = 0; i < 32; i++)
 		mii_val[i] = mii->read(mii, phydev->addr, i);
 
+	printf("%s: %s%d: ", phydev->cdev.name,
+		mii->parent->name, mii->parent->id);
+
 	if (mii_val[MII_BMCR] == 0xffff || mii_val[MII_BMSR] == 0x0000) {
 		fprintf(stderr, "  No MII transceiver present!.\n");
 		return -1;
 	}
 
-	printf("%s: %s%d: ", phydev->cdev.name,
-		mii->parent->name, mii->parent->id);
-
 	/* Descriptive rename. */
 	bmcr = mii_val[MII_BMCR];
 	bmsr = mii_val[MII_BMSR];
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
