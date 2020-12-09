Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mib.mailinblack.com ([137.74.84.110])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kmzJl-00031j-8r
 for barebox@lists.infradead.org; Wed, 09 Dec 2020 13:15:42 +0000
Received: from localhost (localhost [127.0.0.1])
 by mib.mailinblack.com (Postfix) with ESMTP id 9682D1A50A7
 for <barebox@lists.infradead.org>; Wed,  9 Dec 2020 13:15:37 +0000 (UTC)
Received: from mib.mailinblack.com (localhost [127.0.0.1])
 by mib.mailinblack.com with SMTP (Mib Daemon ) id KIHFQVTA
 for barebox@lists.infradead.org;
 Wed, 09 Dec 2020 13:15:37 +0000 (UTC)
Received: from zimbra2.kalray.eu (zimbra2.kalray.eu [92.103.151.219])
 by mib.mailinblack.com (Postfix) with ESMTPS id 6E55C1A50A6
 for <barebox@lists.infradead.org>; Wed,  9 Dec 2020 13:15:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 4563327E05EF
 for <barebox@lists.infradead.org>; Wed,  9 Dec 2020 14:15:37 +0100 (CET)
From: Jules Maselbas <jmaselbas@kalray.eu>
Date: Wed,  9 Dec 2020 14:14:54 +0100
Message-Id: <20201209131454.5248-1-jmaselbas@kalray.eu>
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
Subject: [PATCH] phy: usb-nop-xceiv: Make the clock always optional
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@kalray.eu>

The clock seems to be optional at probe time, if not found it's set
to NULL. However this was not the case in the function nop_usbphy_init
which exits with error if the clock cannot be enabled.

Make the clock optional also during the nop_usbphy_init by trying to
do the clock init only if the clock has been found during probe.

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 drivers/phy/usb-nop-xceiv.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/phy/usb-nop-xceiv.c b/drivers/phy/usb-nop-xceiv.c
index 7ea7d28a2..b549b564b 100644
--- a/drivers/phy/usb-nop-xceiv.c
+++ b/drivers/phy/usb-nop-xceiv.c
@@ -46,9 +46,11 @@ static int nop_usbphy_init(struct phy *phy)
 	int ret;
 	struct nop_usbphy *nopphy = phy_get_drvdata(phy);
 
-	ret = clk_enable(nopphy->clk);
-	if (ret < 0)
-		return ret;
+	if (nopphy->clk) {
+		ret = clk_enable(nopphy->clk);
+		if (ret < 0)
+			return ret;
+	}
 
 	if (gpio_is_valid(nopphy->reset)) {
 		/*
-- 
2.17.1



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
