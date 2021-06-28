Delivery-date: Mon, 28 Jun 2021 09:06:26 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lxlLe-0002Dn-GG
	for lore@lore.pengutronix.de; Mon, 28 Jun 2021 09:06:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lxlLd-0006gt-5U
	for lore@pengutronix.de; Mon, 28 Jun 2021 09:06:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=d/Pxco6bK390caAWmR4NUosg+MBYzBwdh9dalaOGgTo=; b=CaMqbZoAy0OE/K
	5PKZfjHor7np1R73vWXN+7y7bpEKTT3uY6g6ceF4uvSE+Fe1epsgpRsncFVI/oSUcsAPgZZ69t6Ln
	FqKriB9Tks3PReeeXPPn1DtxuRIgynFAxLUuJ0/9rNO+pkUjJEmzyAlvRCbnyP8/TtT/rRXQsjFim
	QhvloOYXvbpuVpMSGpru9Aj+xmt8OuYiNlgH/EGn2d+MEXjvHIfLAWmRmaDjT4ziJr1hnbSILD2Q7
	cB7zMQONXNFHOazmyhxOUu38at7n7XjHt77WBxvbHsHmYJg5Xh/qQLkBs4MX1m2DY51/073TcAqWv
	56JDIZq22jFSUKn9Ryjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lxlKJ-0078da-7T; Mon, 28 Jun 2021 07:05:04 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lxlIr-00788u-63
 for barebox@lists.infradead.org; Mon, 28 Jun 2021 07:03:34 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lxlIp-00064e-Ta; Mon, 28 Jun 2021 09:03:31 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lxlIp-0003Zd-L6; Mon, 28 Jun 2021 09:03:31 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 28 Jun 2021 09:03:30 +0200
Message-Id: <20210628070330.13646-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210628_000333_288083_296B6253 
X-CRM114-Status: GOOD (  12.68  )
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
Subject: [PATCH] pinctrl: stm32: support deep probe
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The GPIO children of the pinctrl node don't have their own compatibles
and so the pinctrl driver probe takes care of the whole family.

GPIO drivers when deep probe is enabled don't like that because they
expect a driver to be associated with the GPIO device tree node, once
the chip was registered. Make them happy by assigning the dummy driver.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/pinctrl/pinctrl-stm32.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/pinctrl/pinctrl-stm32.c b/drivers/pinctrl/pinctrl-stm32.c
index 09b62309f6a1..97a643a4da67 100644
--- a/drivers/pinctrl/pinctrl-stm32.c
+++ b/drivers/pinctrl/pinctrl-stm32.c
@@ -412,11 +412,14 @@ static int stm32_pinctrl_probe(struct device_d *dev)
 		if (!of_property_read_bool(child, "gpio-controller"))
 			continue;
 
-		ret = stm32_gpiochip_add(gpio_bank++, child, dev);
+		ret = stm32_gpiochip_add(gpio_bank, child, dev);
 		if (ret) {
 			dev_err(dev, "couldn't add gpiochip %s, ret = %d\n", child->name, ret);
 			return ret;
 		}
+
+		of_platform_device_dummy_drv(gpio_bank->chip.dev);
+		gpio_bank++;
 	}
 
 	dev_dbg(dev, "pinctrl/gpio driver registered\n");
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

