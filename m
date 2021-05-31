Delivery-date: Mon, 31 May 2021 09:00:36 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lnbue-0002mL-Nv
	for lore@lore.pengutronix.de; Mon, 31 May 2021 09:00:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lnbud-00015W-TR
	for lore@pengutronix.de; Mon, 31 May 2021 09:00:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AIszInpjsiuwdiWpNUI2UQGQ1YqOOfTzo7Cc8XidiMU=; b=VwXbMp9yb1q9eG
	KlNB5vZjYyGUOIwUkyEU1zmFg2PZYw3/p2qX7juvkjcjtqJvr7oWKzblaHz5m59o94PdhUXrhpu/S
	Y0shGQ3nT6InEVfIR4WCDFI2XnJ+WRWH6OGJBh/fqV9W5Z0tMqkEt2OQCKhopQyyqCisdM2SgtMkO
	oRWXy4Ip2iAQz7lsKctPArz7Ui8/n0V/ZooEGuk3hTfrN0kPKnxIQELDv5G4kdfDmdcjFrTfgRgU7
	9rzhbqGDLwBhPjJj732q7J4sqWjkSLv9bJSF69UGAoUxR9V+0ruGbjcwiBuXsCo2P5eL0snYNOiXD
	9DiYRbrCVAEOrOSlFYwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lnbtd-00B2wj-5M; Mon, 31 May 2021 06:59:33 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lnbtX-00B2vA-Lu
 for barebox@lists.infradead.org; Mon, 31 May 2021 06:59:28 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lnbtW-0000qB-FU; Mon, 31 May 2021 08:59:26 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lnbtV-0004zK-UU; Mon, 31 May 2021 08:59:25 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon, 31 May 2021 08:59:24 +0200
Message-Id: <20210531065924.18966-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210530_235927_736952_EDCFB655 
X-CRM114-Status: GOOD (  10.87  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH RESEND] fixup! gpio: generic: sync with upstream Linux
 gpio-mmio driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Commit inadvertently brcm,bcm6345-gpio, wd,mbl-gpio, and ni,169445-nand-gpio,
because "dat" was now requested twice. Fix this up.

Tested on Erizo.

Reported-by: Antony Pavlov <antonynpavlov@gmail.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
This was part of a series that needed some rework. The fix is relevant
regardless, so sending it out independently.
---
 drivers/gpio/gpio-generic.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpio/gpio-generic.c b/drivers/gpio/gpio-generic.c
index 713085267a15..3066b3f7a19d 100644
--- a/drivers/gpio/gpio-generic.c
+++ b/drivers/gpio/gpio-generic.c
@@ -537,7 +537,7 @@ static int bgpio_dev_probe(struct device_d *dev)
 	if (IS_ERR(pdata))
 		return PTR_ERR(pdata);
 
-	r = dev_request_mem_resource_by_name(dev, "dat");
+	r = dev_get_resource_by_name(dev, IORESOURCE_MEM, "dat");
 	if (!r)
 		return -EINVAL;
 
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

