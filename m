Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [92.103.151.219] (helo=zimbra2.kalray.eu)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gC4M1-0002ls-Rp
 for barebox@lists.infradead.org; Mon, 15 Oct 2018 15:00:23 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id BE00C27E0356
 for <barebox@lists.infradead.org>; Mon, 15 Oct 2018 17:00:06 +0200 (CEST)
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id cXV0v_0sfSSK for <barebox@lists.infradead.org>;
 Mon, 15 Oct 2018 17:00:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id EC74627E0359
 for <barebox@lists.infradead.org>; Mon, 15 Oct 2018 17:00:04 +0200 (CEST)
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id EExyXXCc1izs for <barebox@lists.infradead.org>;
 Mon, 15 Oct 2018 17:00:04 +0200 (CEST)
Received: from zimbra2.kalray.eu (zimbra2.kalray.eu [192.168.40.202])
 by zimbra2.kalray.eu (Postfix) with ESMTP id D85C627E0356
 for <barebox@lists.infradead.org>; Mon, 15 Oct 2018 17:00:04 +0200 (CEST)
Date: Mon, 15 Oct 2018 17:00:04 +0200 (CEST)
From: =?utf-8?Q?Cl=C3=A9ment?= Leger <cleger@kalray.eu>
Message-ID: <1034587066.7904413.1539615604832.JavaMail.zimbra@kalray.eu>
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
Subject: [PATCH] phy: call adjust_link in attach if using fixed-link
To: Barebox List <barebox@lists.infradead.org>

Normally, phy_update_status is in charge of reporting a change in link
status when phy is updated. When using fixed-link, speed and duplex are
initialized directly after registering the phy and there is no driver.
Hence when phy_update_status is called, the check for new values fails
and returns directly. Since update_link call is mandatory for some
network devices to work, call it directly when using fixed link in
phy_device_attach to force update of link.

Signed-off-by: Clement Leger <clement.leger@kalray.eu>
---
 drivers/net/phy/phy.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
index 42dcad906..63f249fcf 100644
--- a/drivers/net/phy/phy.c
+++ b/drivers/net/phy/phy.c
@@ -398,6 +398,10 @@ static int phy_device_attach(struct phy_device *phy, struct eth_device *edev,
 
 	phy->adjust_link = adjust_link;
 
+	/* If the phy is a fixed-link, then call adjust_link directly */
+	if (!phy->bus && adjust_link)
+		adjust_link(edev);
+
 	return 0;
 }
 
-- 
2.15.0.276.g89ea799

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
