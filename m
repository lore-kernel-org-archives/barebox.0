Delivery-date: Mon, 31 Jan 2022 08:55:40 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nERXI-001TE5-1F
	for lore@lore.pengutronix.de; Mon, 31 Jan 2022 08:55:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nERXG-0004zn-Dt
	for lore@pengutronix.de; Mon, 31 Jan 2022 08:55:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GWSmsf3k0Xkvl7TEVM6aEeJ3S0ctYdbmSn2nZqIymFE=; b=R+iksziH+1CrYo
	s+KGqeIk7jr2qAKApOYLbimJ7EsPCVMr/LPQE22+g9A6JNoVGyrslNZtuhrS/EAZER4TbATZGmD56
	yBoQE4e+XG/zqyKt6blw4VnR4+dMGj1fzGhTIWDdEkGYXNzo+U++VV/VW4rqfUlt5cMvj5clsS9Xc
	DSCjZ0q+qCRidtshHmdXIvnxVMjJpvk05y+bKX/IayxWC/A7EfE8wuE2JmEvqTYs/mPFUKRcQ4oe5
	RrTDX43lBCbBVl4CLOomYZJDEcZlT9mPgJFO6+qM3ZAu8Zy5G6OfodJkaCh6024b03p0UtTpLsJnU
	5bFvQlYcYAEYyzEsjzPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nERVc-008Krf-Vi; Mon, 31 Jan 2022 07:53:57 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nERVQ-008Kp9-L0
 for barebox@lists.infradead.org; Mon, 31 Jan 2022 07:53:48 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1nERVN-0004fn-4y; Mon, 31 Jan 2022 08:53:41 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nERVM-007qJ1-MQ; Mon, 31 Jan 2022 08:53:40 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 31 Jan 2022 08:53:38 +0100
Message-Id: <20220131075338.1869305-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220131075338.1869305-1-a.fatoum@pengutronix.de>
References: <20220131075338.1869305-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220130_235344_742978_958F6A01 
X-CRM114-Status: GOOD (  15.16  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/2] reset: stm32: drop STM32 MCU support in favor of simple
 reset driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

RCC reset will eventually get more involved when we add SCMI support.
Linux already has reset and clock control in the same driver.

As we now have a simple driver that can toggle resets on the STM32 MCUs
as well, we can drop the now duplicate support from the dedicated
STM32 reset driver.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/reset/Kconfig       |  2 +-
 drivers/reset/reset-stm32.c | 15 +--------------
 2 files changed, 2 insertions(+), 15 deletions(-)

diff --git a/drivers/reset/Kconfig b/drivers/reset/Kconfig
index 82c85162533d..b12159094d88 100644
--- a/drivers/reset/Kconfig
+++ b/drivers/reset/Kconfig
@@ -43,7 +43,7 @@ config RESET_STM32
 	bool "STM32 Reset Driver"
 	depends on ARCH_STM32MP || COMPILE_TEST
 	help
-	  This enables the reset controller driver for STM32MP and STM32 MCUs.
+	  This enables the reset controller driver for STM32MP1.
 
 config RESET_STARFIVE
 	bool "StarFive Controller Driver" if COMPILE_TEST
diff --git a/drivers/reset/reset-stm32.c b/drivers/reset/reset-stm32.c
index 703ba1f072c5..186b2a8bc654 100644
--- a/drivers/reset/reset-stm32.c
+++ b/drivers/reset/reset-stm32.c
@@ -66,14 +66,6 @@ static void stm32mp_reset(void __iomem *reg, unsigned offset, bool assert)
 	writel(BIT(offset), reg);
 }
 
-static void stm32mcu_reset(void __iomem *reg, unsigned offset, bool assert)
-{
-	if (assert)
-		setbits_le32(reg, BIT(offset));
-	else
-		clrbits_le32(reg, BIT(offset));
-}
-
 static u32 stm32_reset_status(struct stm32_reset *priv, unsigned long bank)
 {
 	return readl(priv->base + bank);
@@ -195,18 +187,13 @@ static const struct stm32_reset_ops stm32mp1_reset_ops = {
 	.reset_reasons = stm32mp_reset_reasons,
 };
 
-static const struct stm32_reset_ops stm32mcu_reset_ops = {
-	.reset = stm32mcu_reset,
-};
-
 static const struct of_device_id stm32_rcc_reset_dt_ids[] = {
 	{ .compatible = "st,stm32mp1-rcc", .data = &stm32mp1_reset_ops },
-	{ .compatible = "st,stm32-rcc", .data = &stm32mcu_reset_ops },
 	{ /* sentinel */ },
 };
 
 static struct driver_d stm32_rcc_reset_driver = {
-	.name = "stm32_rcc_reset",
+	.name = "stm32mp_rcc_reset",
 	.probe = stm32_reset_probe,
 	.of_compatible = DRV_OF_COMPAT(stm32_rcc_reset_dt_ids),
 };
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

