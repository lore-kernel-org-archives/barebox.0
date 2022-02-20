Delivery-date: Sun, 20 Feb 2022 13:49:39 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nLlel-004wtO-DZ
	for lore@lore.pengutronix.de; Sun, 20 Feb 2022 13:49:39 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nLlej-0001N7-0W
	for lore@pengutronix.de; Sun, 20 Feb 2022 13:49:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BswLTz5h9KXYyKsVYk0sbApa9hGmF4FyXgKuCGjrcps=; b=URmKh9NyKV+kQu
	iZs4g/bg4XWhjYSPvd2HJ/rSpKeKtNKho6Y9Da6qRN3q437EMRZDpcqpp6Cn2wy/V3avC1t0RNoOf
	AO/A2TBKgcyMQlAdFHgy1pTDzG9YHV5h3z4DY9hEwYKhshYN9TN5xsnUIzBA4zo1Zb/EzJo7Y44ZF
	SLbdxFYsEFGSWgLBJFHx4xrjQ3WGRdoeTBSPjNb3H/ilsiOboI+MDA/sSey2CGkWVtz6CQA0Sj6KI
	FZQF3rdChEqc2vfehY/DW9KAGmeXUJvVkZ6GnnAujUiMD4QV3i1AnyRuQyJru4mTUtGobkMwfW9PI
	ZxcoTtQy3jJg5CDMVtKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nLldF-001I9V-Kw; Sun, 20 Feb 2022 12:48:05 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nLlcw-001I0q-KE
 for barebox@lists.infradead.org; Sun, 20 Feb 2022 12:47:50 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1nLlcs-0000a2-6s; Sun, 20 Feb 2022 13:47:42 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nLlcr-00CoPi-2J; Sun, 20 Feb 2022 13:47:41 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Xogium <contact@xogium.me>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sun, 20 Feb 2022 13:47:21 +0100
Message-Id: <20220220124736.3052502-10-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220220124736.3052502-1-a.fatoum@pengutronix.de>
References: <20220220124736.3052502-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220220_044746_752812_F68F7723 
X-CRM114-Status: GOOD (  15.21  )
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
Subject: [PATCH 09/24] reset: stm32: drop stm32mp1_reset_ops indirection
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The driver used to support both STM32 MCUs and the STM32MP1. STM32 MCU
support is now handled by the reset-simple driver, so the indirection to
support both is no longer necessary. Remove it and simplify the code.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/reset/reset-stm32.c | 97 ++++++++++++++-----------------------
 1 file changed, 37 insertions(+), 60 deletions(-)

diff --git a/drivers/reset/reset-stm32.c b/drivers/reset/reset-stm32.c
index 186b2a8bc654..e625ba27fff6 100644
--- a/drivers/reset/reset-stm32.c
+++ b/drivers/reset/reset-stm32.c
@@ -44,13 +44,6 @@ struct stm32_reset {
 	void __iomem *base;
 	struct reset_controller_dev rcdev;
 	struct restart_handler restart;
-	const struct stm32_reset_ops *ops;
-};
-
-struct stm32_reset_ops {
-	void (*reset)(void __iomem *reg, unsigned offset, bool assert);
-	void __noreturn (*sys_reset)(struct restart_handler *rst);
-	const struct stm32_reset_reason *reset_reasons;
 };
 
 static struct stm32_reset *to_stm32_reset(struct reset_controller_dev *rcdev)
@@ -58,14 +51,6 @@ static struct stm32_reset *to_stm32_reset(struct reset_controller_dev *rcdev)
 	return container_of(rcdev, struct stm32_reset, rcdev);
 }
 
-static void stm32mp_reset(void __iomem *reg, unsigned offset, bool assert)
-{
-	if (!assert)
-		reg += RCC_CL;
-
-	writel(BIT(offset), reg);
-}
-
 static u32 stm32_reset_status(struct stm32_reset *priv, unsigned long bank)
 {
 	return readl(priv->base + bank);
@@ -75,10 +60,38 @@ static void stm32_reset(struct stm32_reset *priv, unsigned long id, bool assert)
 {
 	int bank = (id / 32) * 4;
 	int offset = id % 32;
+	void __iomem *reg = priv->base + bank;
 
-	priv->ops->reset(priv->base + bank, offset, assert);
+	if (!assert)
+		reg += RCC_CL;
+
+	writel(BIT(offset), reg);
 }
 
+static void __noreturn stm32mp_rcc_restart_handler(struct restart_handler *rst)
+{
+	struct stm32_reset *priv = container_of(rst, struct stm32_reset, restart);
+
+	stm32_reset(priv, RCC_MP_GRSTCSETR * BITS_PER_BYTE, true);
+
+	mdelay(1000);
+	hang();
+}
+
+static const struct stm32_reset_reason stm32mp_reset_reasons[] = {
+	{ STM32MP_RCC_RSTF_POR,		RESET_POR, 0 },
+	{ STM32MP_RCC_RSTF_BOR,		RESET_BROWNOUT, 0 },
+	{ STM32MP_RCC_RSTF_STDBY,	RESET_WKE, 0 },
+	{ STM32MP_RCC_RSTF_CSTDBY,	RESET_WKE, 1 },
+	{ STM32MP_RCC_RSTF_MPSYS,	RESET_RST, 2 },
+	{ STM32MP_RCC_RSTF_MPUP0,	RESET_RST, 0 },
+	{ STM32MP_RCC_RSTF_MPUP1,	RESET_RST, 1 },
+	{ STM32MP_RCC_RSTF_IWDG1,	RESET_WDG, 0 },
+	{ STM32MP_RCC_RSTF_IWDG2,	RESET_WDG, 1 },
+	{ STM32MP_RCC_RSTF_PAD,		RESET_EXT, 1 },
+	{ /* sentinel */ }
+};
+
 static void stm32_set_reset_reason(struct stm32_reset *priv,
 				   const struct stm32_reset_reason *reasons)
 {
@@ -128,9 +141,6 @@ static int stm32_reset_probe(struct device_d *dev)
 	int ret;
 
 	priv = xzalloc(sizeof(*priv));
-	ret = dev_get_drvdata(dev, (const void **)&priv->ops);
-	if (ret)
-		return ret;
 
 	iores = dev_request_mem_resource(dev, 0);
 	if (IS_ERR(iores))
@@ -141,54 +151,21 @@ static int stm32_reset_probe(struct device_d *dev)
 	priv->rcdev.ops = &stm32_reset_ops;
 	priv->rcdev.of_node = dev->device_node;
 
-	if (priv->ops->sys_reset) {
-		priv->restart.name = "stm32-rcc";
-		priv->restart.restart = priv->ops->sys_reset;
-		priv->restart.priority = 200;
+	priv->restart.name = "stm32-rcc";
+	priv->restart.restart = stm32mp_rcc_restart_handler;
+	priv->restart.priority = 200;
 
-		ret = restart_handler_register(&priv->restart);
-		if (ret)
-			dev_warn(dev, "Cannot register restart handler\n");
-	}
+	ret = restart_handler_register(&priv->restart);
+	if (ret)
+		dev_warn(dev, "Cannot register restart handler\n");
 
-	if (priv->ops->reset_reasons)
-		stm32_set_reset_reason(priv, priv->ops->reset_reasons);
+	stm32_set_reset_reason(priv, stm32mp_reset_reasons);
 
 	return reset_controller_register(&priv->rcdev);
 }
 
-static void __noreturn stm32mp_rcc_restart_handler(struct restart_handler *rst)
-{
-	struct stm32_reset *priv = container_of(rst, struct stm32_reset, restart);
-
-	stm32_reset(priv, RCC_MP_GRSTCSETR * BITS_PER_BYTE, true);
-
-	mdelay(1000);
-	hang();
-}
-
-static const struct stm32_reset_reason stm32mp_reset_reasons[] = {
-	{ STM32MP_RCC_RSTF_POR,		RESET_POR, 0 },
-	{ STM32MP_RCC_RSTF_BOR,		RESET_BROWNOUT, 0 },
-	{ STM32MP_RCC_RSTF_STDBY,	RESET_WKE, 0 },
-	{ STM32MP_RCC_RSTF_CSTDBY,	RESET_WKE, 1 },
-	{ STM32MP_RCC_RSTF_MPSYS,	RESET_RST, 2 },
-	{ STM32MP_RCC_RSTF_MPUP0,	RESET_RST, 0 },
-	{ STM32MP_RCC_RSTF_MPUP1,	RESET_RST, 1 },
-	{ STM32MP_RCC_RSTF_IWDG1,	RESET_WDG, 0 },
-	{ STM32MP_RCC_RSTF_IWDG2,	RESET_WDG, 1 },
-	{ STM32MP_RCC_RSTF_PAD,		RESET_EXT, 1 },
-	{ /* sentinel */ }
-};
-
-static const struct stm32_reset_ops stm32mp1_reset_ops = {
-	.reset = stm32mp_reset,
-	.sys_reset = stm32mp_rcc_restart_handler,
-	.reset_reasons = stm32mp_reset_reasons,
-};
-
 static const struct of_device_id stm32_rcc_reset_dt_ids[] = {
-	{ .compatible = "st,stm32mp1-rcc", .data = &stm32mp1_reset_ops },
+	{ .compatible = "st,stm32mp1-rcc" },
 	{ /* sentinel */ },
 };
 
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

