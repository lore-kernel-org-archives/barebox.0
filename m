Delivery-date: Mon, 05 Feb 2024 12:17:13 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rWwyO-004C12-1F
	for lore@lore.pengutronix.de;
	Mon, 05 Feb 2024 12:17:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rWwyP-0000Gc-3B
	for lore@pengutronix.de; Mon, 05 Feb 2024 12:17:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=mahp5LDll08/pzNRXe114cSV6cKJc1Q7KIXiJAJlEvU=; b=p64JX2XRPcJctN4BRZtUL5ihVm
	5f3ddJSVh4F/NM//ey1QO1uhWpx3sxKu929J+dcTPUkqCDgu/WuonliQMmASdPkPkj4h71AXBFRLP
	3hyHrLTdHyxURcX7g3z0/ig+VSbiY/2vi+mRsB0beOFYmpV25Oo4zJZ8xfCFaCKi6vJNqpromh63E
	yDQ9WDF2rgaWtFqVrsGT8PNFfxHgSkIOL7yRvW2mYRDdX25yYuEiLUmI8undHz3mif0SdzB40orsK
	aJzkGSDGu2Lkd/T7CViCLdveJp5A2TRdc/FxleE8nYio/ehz7ivYz2kk7XRBVM8khP+F0nSQtH+F/
	+er/YWuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rWwxm-00000002xLd-0FKY;
	Mon, 05 Feb 2024 11:16:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rWwxi-00000002xKE-3h5N
	for barebox@lists.infradead.org;
	Mon, 05 Feb 2024 11:16:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rWwxg-0000Ds-R3; Mon, 05 Feb 2024 12:16:28 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rWwxg-004cTS-EL; Mon, 05 Feb 2024 12:16:28 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rWwxg-00A3jg-15;
	Mon, 05 Feb 2024 12:16:28 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon,  5 Feb 2024 12:16:27 +0100
Message-Id: <20240205111627.2397633-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240205_031630_937507_53149034 
X-CRM114-Status: GOOD (  13.90  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] gpio-vf610: always register 32 GPIOs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The gpio-vf610 driver used to parse the number of GPIOs to register from
the gpio-ranges property. This was ok to do when the gpio-ranges
property only contained a single entry like on the vf610. On i.MX93 we
have multiple entries though, so the first entry doesn't contain the
full number of GPIOs the device supports. We would have to parse all
entries instead. That doesn't give us any gain though, we can equally
well just register the maximum of 32 GPIOs and just have a few GPIOs
registered that are not pinmuxed to the outside.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/gpio/gpio-vf610.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpio/gpio-vf610.c b/drivers/gpio/gpio-vf610.c
index 510ee74333..7c535c2e5e 100644
--- a/drivers/gpio/gpio-vf610.c
+++ b/drivers/gpio/gpio-vf610.c
@@ -177,7 +177,7 @@ static int vf610_gpio_probe(struct device *dev)
 	port->need_pinctrl = devtype->need_pinctrl;
 
 	port->pinctrl_base = be32_to_cpu(gpio_ranges[PINCTRL_BASE]);
-	port->chip.ngpio   = be32_to_cpu(gpio_ranges[COUNT]);
+	port->chip.ngpio   = 32;
 
 	/*
 	 * Some old bindings have two register ranges. When we have two ranges
-- 
2.39.2



