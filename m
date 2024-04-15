Delivery-date: Mon, 15 Apr 2024 07:32:07 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rwEwp-001ZDG-14
	for lore@lore.pengutronix.de;
	Mon, 15 Apr 2024 07:32:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rwEwo-0002Jl-Jc
	for lore@pengutronix.de; Mon, 15 Apr 2024 07:32:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=7b3t60W4wxzP4fo6GH3NoCFFyQBWrjNvQlTYYvl/NR0=; b=JUlR0HauSu2i4SXiPRu0iNE8QK
	pBd3g4vJl7hub70p6t4tQPE5zxVBE7S6nAhhewKlfQ8HAGIsrJ9gwtpDgvPESMjf9NhJxnbFWoMe5
	Tc0E1eos53JH9CqJL0hCOgWFlEvgkVSGoaSkqTZtw8CEEH8TGiOh2MmCxFpQ1gxqie0qAIeGiUKhi
	OISpAiOH1AQ76V/5CNE9PGHUVuTxCTlt8rHJZSRVXc2H0XipwMrPPKa6VpZtzpno40+mTXHYEqhbC
	lGW98tWi1f3NHyMh2tsxKjgox+q2ZJoybw1wD5aKhpqXkOEThMktzj8vphN7XZkxvly/oWCGQVH7a
	BoK0G2rw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwEwQ-000000070l2-3ELu;
	Mon, 15 Apr 2024 05:31:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwEwN-000000070k3-1feO
	for barebox@lists.infradead.org;
	Mon, 15 Apr 2024 05:31:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rwEwM-0001oK-9k; Mon, 15 Apr 2024 07:31:38 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rwEwL-00CMjy-T6; Mon, 15 Apr 2024 07:31:37 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rwEwL-001Xq3-2d;
	Mon, 15 Apr 2024 07:31:37 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 15 Apr 2024 07:31:37 +0200
Message-Id: <20240415053137.368391-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240414_223139_478165_34DE922E 
X-CRM114-Status: GOOD (  14.76  )
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
X-Spam-Status: No, score=-6.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master] gpio: rockchip: fix support for RK3588/RK3566
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The GPIO controller on newer Rockchip SoCs isn't compatible with the
older ones. Back when GPIOv2 support was added, RK3568 was the only
SoC supported using it, but since then support for the very similar
RK3566 as well as the newer RK3588 has followed, but the driver wasn't
extended to support them.

As GPIOv2 controllers have an identification register, start checking it
like Linux does and use that to detect whether we have a GPIOv2 or GPIOv1.

This issue was found trying to read GPIO inputs of the RK3566.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/gpio/gpio-rockchip.c | 16 +++++++++++++++-
 1 file changed, 15 insertions(+), 1 deletion(-)

diff --git a/drivers/gpio/gpio-rockchip.c b/drivers/gpio/gpio-rockchip.c
index 7c67512ee380..2c13e97b9774 100644
--- a/drivers/gpio/gpio-rockchip.c
+++ b/drivers/gpio/gpio-rockchip.c
@@ -10,6 +10,10 @@
 #include <linux/basic_mmio_gpio.h>
 #include <mach/rockchip/rockchip.h>
 
+#define GPIO_TYPE_V1		(0)           /* GPIO Version ID reserved */
+#define GPIO_TYPE_V2		(0x01000C2B)  /* GPIO Version ID 0x01000C2B */
+#define GPIO_TYPE_V2_1		(0x0101157C)  /* GPIO Version ID 0x0101157C */
+
 struct rockchip_gpiochip {
 	struct device			*dev;
 	void __iomem			*reg_base;
@@ -131,6 +135,7 @@ static int rockchip_gpio_probe(struct device *dev)
 	struct gpio_chip *gpio;
 	struct resource *res;
 	void __iomem *reg_base;
+	u32 id, gpio_type;
 	int ret;
 
 	rgc = xzalloc(sizeof(*rgc));
@@ -153,7 +158,13 @@ static int rockchip_gpio_probe(struct device *dev)
 
 	reg_base = rgc->reg_base;
 
-	if (rockchip_soc() == 3568) {
+	id = readl(reg_base + 0x78);
+	if (id == GPIO_TYPE_V2 || id == GPIO_TYPE_V2_1)
+		gpio_type = GPIO_TYPE_V2;
+	else
+		gpio_type = GPIO_TYPE_V1;
+
+	if (gpio_type >= GPIO_TYPE_V2) {
 		gpio->ngpio = 32;
 		gpio->dev = dev;
 		gpio->ops = &rockchip_gpio_ops;
@@ -176,6 +187,9 @@ static int rockchip_gpio_probe(struct device *dev)
 		return ret;
 	}
 
+	dev_dbg(dev, "registered GPIOv%d-compatible bank\n",
+		gpio_type == GPIO_TYPE_V1 ? 1 : 2);
+
 	return 0;
 }
 
-- 
2.39.2



