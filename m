Delivery-date: Wed, 22 Mar 2023 09:34:10 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1petv7-00AE1z-3k
	for lore@lore.pengutronix.de; Wed, 22 Mar 2023 09:34:10 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1petv3-0001jo-Sl
	for lore@pengutronix.de; Wed, 22 Mar 2023 09:34:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4hAv1th4uWrtHJBQ8PtFtp78+3KSk2RXyGI2VdW8Ers=; b=doRdyOmiyQ1PU/5lUPZq/2nTkB
	cgvHYzYAj46sR7mwsL4BHTx7+tJuIpGI9jU66Zw/bd27UhwlfMidcT1xoA0w6olLXgaB/q5uxJA3O
	AFWv9IhTiNkyFql0UblkucNe6IpbFK9u6/2QoVfdmfJDYnvKqv66r4ybJcLMIqdMztd3/KF4t1ARZ
	BAQtC2xQNoWMXfwy6ObkdXLacT8gbmP4lbL5FZvDjc2eJBK3At9x2DNUl6fOZWWVJNgZKcS/jf+5q
	4GuqnN0MBqby4wgWA5J8MKRtdeVZZjKHJCC3LdC2w/0kynXF3pmJz9Cj83QpCOGQWYWPteI9jqsmK
	UGXJkFew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pettx-00FCHO-0j;
	Wed, 22 Mar 2023 08:32:57 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pettp-00FCDQ-1l
	for barebox@lists.infradead.org;
	Wed, 22 Mar 2023 08:32:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1petto-0001TF-9T; Wed, 22 Mar 2023 09:32:48 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pettn-005sSl-K1; Wed, 22 Mar 2023 09:32:47 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pettm-001D9s-4Q; Wed, 22 Mar 2023 09:32:46 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 22 Mar 2023 09:32:42 +0100
Message-Id: <20230322083245.251340-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230322083245.251340-1-s.hauer@pengutronix.de>
References: <20230322083245.251340-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230322_013249_582236_F58AAA71 
X-CRM114-Status: GOOD (  15.64  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/4] clk: clk-gpio: Turn into driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

A comment states OF_CLK_DECLARE can't be used for the clk-gpio driver
as it needs to be registered after the GPIO controllers. If that's the
case there is no point in calling of_clk_init() directly from an
initcall. We can better register it as a regular driver which also
makes deep probe work.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/clk-gpio.c | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/clk/clk-gpio.c b/drivers/clk/clk-gpio.c
index 6ac2e820fa..8cc0c5fc97 100644
--- a/drivers/clk/clk-gpio.c
+++ b/drivers/clk/clk-gpio.c
@@ -50,8 +50,9 @@ static struct clk_ops clk_gpio_ops = {
 	.is_enabled = clk_gpio_is_enabled,
 };
 
-static int of_gpio_clk_setup(struct device_node *node)
+static int of_gpio_clk_probe(struct device *dev)
 {
+	struct device_node *node = dev->device_node;
 	struct clk_gpio *clk_gpio;
 	enum of_gpio_flags of_flags;
 	unsigned long flags;
@@ -105,16 +106,15 @@ no_parent:
 	return ret;
 }
 
-/* Can't use OF_CLK_DECLARE due to need to run after GPIOcontrollers have
- * registrered */
-
 static const struct of_device_id clk_gpio_device_id[] = {
-	{ .compatible = "gpio-gate-clock", .data = of_gpio_clk_setup, },
+	{ .compatible = "gpio-gate-clock", },
 	{}
 };
 
-static int clk_gpio_init(void)
-{
-	return of_clk_init(NULL, clk_gpio_device_id);
-}
-coredevice_initcall(clk_gpio_init);
+static struct driver gpio_gate_clock_driver = {
+	.probe = of_gpio_clk_probe,
+	.name = "gpio-gate-clock",
+	.of_compatible = DRV_OF_COMPAT(clk_gpio_device_id),
+};
+
+core_platform_driver(gpio_gate_clock_driver);
-- 
2.30.2



