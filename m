Delivery-date: Mon, 28 Jun 2021 09:10:05 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lxlPB-0002L1-8W
	for lore@lore.pengutronix.de; Mon, 28 Jun 2021 09:10:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lxlPA-0007Ho-1u
	for lore@pengutronix.de; Mon, 28 Jun 2021 09:10:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pwFHKfdT/+09Zm9MfO+1eX7ZAyu31Ha0H0DoDJjHoAI=; b=psXjkhrlgnQv1H
	DBlxpvugZJ8CGSngRV6rDMKHUqtUMLoKT0lxOKqt4q5KUplB5dCZohQKrd4riCHA1UIKFfhNdQ6FM
	Yz7Iz6r506hWTEMsNND3hrCGSan+GfIZ3ir3z5RFO1OXpU2/4kF5sY6B+0TYOgajz1Fep51UpvMpJ
	fbAOZZGkPoMueTopdVKNCDW00IthVJmyd9UkaCJgJA+YRKKVwh0+O5UDiJIR5OrsrC/pYn4JEeoxR
	7aJohS7vz9Tk/7/ktpGYTa2pkMqeaA1Bq2A11xxeINwYYgdlWWHEtkfmlPkXj2Ny1C8QunjBU/gDw
	qsT6uQkPVfIQBvvNxoMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lxlNw-007ALN-1q; Mon, 28 Jun 2021 07:08:48 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lxlLi-0079U6-QI
 for barebox@lists.infradead.org; Mon, 28 Jun 2021 07:06:32 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lxlLh-0006iL-BK; Mon, 28 Jun 2021 09:06:29 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lxlLh-0004JG-2U; Mon, 28 Jun 2021 09:06:29 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 28 Jun 2021 09:06:27 +0200
Message-Id: <20210628070627.16329-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210628070627.16329-1-a.fatoum@pengutronix.de>
References: <20210628070627.16329-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210628_000630_956856_50B7228D 
X-CRM114-Status: GOOD (  13.35  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] ARM: imx6: marsboard: enable deep-probe
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Everything done by the mars board code is unrelated to probe order,
so turn it into a driver and enable deep probe for it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/embest-marsboard/board.c | 20 +++++++++++++++-----
 1 file changed, 15 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boards/embest-marsboard/board.c b/arch/arm/boards/embest-marsboard/board.c
index 72d0aa28f781..a11b7b6579c0 100644
--- a/arch/arm/boards/embest-marsboard/board.c
+++ b/arch/arm/boards/embest-marsboard/board.c
@@ -10,6 +10,7 @@
 #include <envfs.h>
 #include <mach/bbu.h>
 #include <linux/phy.h>
+#include <deep-probe.h>
 
 static int ar8035_phy_fixup(struct phy_device *dev)
 {
@@ -32,11 +33,8 @@ static int ar8035_phy_fixup(struct phy_device *dev)
 	return 0;
 }
 
-static int marsboard_device_init(void)
+static int marsboard_device_init(struct device_d *dev)
 {
-	if (!of_machine_is_compatible("embest,imx6q-marsboard"))
-		return 0;
-
 	barebox_set_hostname("marsboard");
 
 	phy_register_fixup_for_uid(0x004dd072, 0xffffffef, ar8035_phy_fixup);
@@ -48,4 +46,16 @@ static int marsboard_device_init(void)
 
 	return 0;
 }
-device_initcall(marsboard_device_init);
+
+static const struct of_device_id marsboard_of_match[] = {
+	{ .compatible = "embest,imx6q-marsboard" },
+	{ /* sentinel */ },
+};
+BAREBOX_DEEP_PROBE_ENABLE(marsboard_of_match);
+
+static struct driver_d marsboard_driver = {
+	.name = "board-mars",
+	.probe = marsboard_device_init,
+	.of_compatible = marsboard_of_match,
+};
+postcore_platform_driver(marsboard_driver);
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

