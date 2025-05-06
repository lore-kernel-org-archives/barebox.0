Delivery-date: Tue, 06 May 2025 08:38:24 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uCBwe-002i3e-15
	for lore@lore.pengutronix.de;
	Tue, 06 May 2025 08:38:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uCBwc-0001x0-Ui
	for lore@pengutronix.de; Tue, 06 May 2025 08:38:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=46Dy87LNeVRR2COKiV3ep84f9JnVeIUSVbVv8w/vgEU=; b=LHM6QyhHZcmU8ijPJ3qMga8hmJ
	7hJ7kLm0VCHC4PSw3BIbfEnjNpa4uOq7TzNmF7cDW9kxHKzxj52mvIC79Sn1riqgYTiBXXMHUQ9dD
	077yw70pLXqTzQUC2Vxi4plPPtcXruxWHgSePHfzL9If7CrBbQaKmq2PJFgJJr1rwqV07HKM3BddF
	SjgfRgYtorB1mqn0QBMH1fGUVezbBmhbUcpLcXOesi3SMXhiOlMQ98JxUeviA7nlTIaRiimGcJcoF
	2/p3c3PU+AieEsEegz/hBbj1I37wxdgeYF67d6AOTLJotcpjyIK3rClW/FS9yPQetbBN5jKT3znVW
	+ITdAx3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCBwB-0000000AjSr-39KT;
	Tue, 06 May 2025 06:37:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCBtA-0000000AiKO-3eqD
	for barebox@lists.infradead.org;
	Tue, 06 May 2025 06:34:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCBt9-0000TR-EC; Tue, 06 May 2025 08:34:47 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCBt9-001LpL-0i;
	Tue, 06 May 2025 08:34:47 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCBt9-00D9CO-1w;
	Tue, 06 May 2025 08:34:47 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  6 May 2025 08:34:42 +0200
Message-Id: <20250506063446.3133582-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250506063446.3133582-1-a.fatoum@pengutronix.de>
References: <20250506063446.3133582-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250505_233449_010475_6B34FF99 
X-CRM114-Status: GOOD (  12.34  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 4/8] gpio: gpio-mxs: replace dev_get_drvdata with device_get_match_data
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

In preparation for aligning dev_get_drvdata with Linux, use
device_get_match_data instead.
While at it, we drop the unneeded struct mxs_gpio_chip::regs member to
not have to worry about const safety.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/gpio/gpio-mxs.c | 12 +++++-------
 1 file changed, 5 insertions(+), 7 deletions(-)

diff --git a/drivers/gpio/gpio-mxs.c b/drivers/gpio/gpio-mxs.c
index 770acb61c858..df698eb19167 100644
--- a/drivers/gpio/gpio-mxs.c
+++ b/drivers/gpio/gpio-mxs.c
@@ -19,7 +19,6 @@ struct mxs_gpio_chip {
 	void __iomem *doe;
 	void __iomem *dout;
 	struct gpio_chip chip;
-	struct mxs_gpio_regs *regs;
 };
 
 struct mxs_gpio_regs {
@@ -101,12 +100,12 @@ static struct gpio_ops mxs_gpio_ops = {
 static int mxs_gpio_probe(struct device *dev)
 {
 	struct mxs_gpio_chip *mxsgpio;
-	struct mxs_gpio_regs *regs;
-	int ret, id;
+	const struct mxs_gpio_regs *regs;
+	int id;
 
-	ret = dev_get_drvdata(dev, (const void **)&regs);
-	if (ret)
-		return ret;
+	regs = device_get_match_data(dev);
+	if (!regs)
+		return -ENODEV;
 
 	mxsgpio = xzalloc(sizeof(*mxsgpio));
 	mxsgpio->chip.ops = &mxs_gpio_ops;
@@ -131,7 +130,6 @@ static int mxs_gpio_probe(struct device *dev)
 
 	mxsgpio->chip.ngpio = 32;
 	mxsgpio->chip.dev = dev;
-	mxsgpio->regs = regs;
 	gpiochip_add(&mxsgpio->chip);
 
 	dev_dbg(dev, "probed gpiochip%d with base %d\n", dev->id, mxsgpio->chip.base);
-- 
2.39.5



