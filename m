Delivery-date: Mon, 04 Sep 2023 17:51:30 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qdBrP-003uFW-Q3
	for lore@lore.pengutronix.de; Mon, 04 Sep 2023 17:51:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qdBrN-0002qY-L6
	for lore@pengutronix.de; Mon, 04 Sep 2023 17:51:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GuPq8U9uA0LAzBSeGwZKd635yVWsRwlUzpCgw8wmMgU=; b=heOZHfViZGI8qn+NjpIAdQI/et
	S0xEP5KSwursoh7g18ZeAYtko5xOpkmLsv8Cm66mhdxHGdVG7Qg0mLnDY9DMgpleun0sPatEiESqD
	NpKpEPaVseE3tigF09ZvqMnqiKB1vl8KZT9peZRnGx6CUZfBILkEMv75/Z0n3hHyXZJBS8ke+kwC/
	nyrIlHpAwG/d5UDiB5wk5H8fDVxxcPzaJOL3Ss7CGKvtV2zRGf7NELRCV/1nwp6s72uSYINBYhNAc
	Nh260l/gsxJEuOSi40QqvdhWYVGfzPtK+Qy9PIvcEztdeRfDIFfjOJSaW2w+MQul/i1tCiKuPnXbk
	QxWz9u0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qdBq0-004P9J-2c;
	Mon, 04 Sep 2023 15:50:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qdBpv-004P89-2a
	for barebox@lists.infradead.org;
	Mon, 04 Sep 2023 15:50:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qdBpr-00080s-0A; Mon, 04 Sep 2023 17:49:55 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qdBpq-003v5v-KL; Mon, 04 Sep 2023 17:49:54 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qdBpq-009vpE-1J;
	Mon, 04 Sep 2023 17:49:54 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: bst@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  4 Sep 2023 17:49:53 +0200
Message-Id: <20230904154953.2367158-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230904154953.2367158-1-a.fatoum@pengutronix.de>
References: <20230904154953.2367158-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230904_084959_857890_6608DBD1 
X-CRM114-Status: GOOD (  15.17  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 2/2] pwm: imx: enable clocks during PWM register accesses
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This is a port of Linux commit 9f4c8f9607c3147d291b70c13dd01c738ed41faf:

| Author:     Anson Huang <anson.huang@nxp.com>
| AuthorDate: Wed Dec 19 05:24:58 2018 +0000
| Commit:     Thierry Reding <thierry.reding@gmail.com>
| CommitDate: Mon Dec 24 12:06:56 2018 +0100
|
|     pwm: imx: Add ipg clock operation
|
|     i.MX PWM module's ipg_clk_s is for PWM register access, on most of i.MX
|     SoCs, this ipg_clk_s is from system ipg clock or perclk which is always
|     enabled, but on i.MX7D, the ipg_clk_s is from PWM1_CLK_ROOT which is
|     controlled by CCGR132, that means the CCGR132 MUST be enabled first
|     before accessing PWM registers on i.MX7D. This patch adds ipg clock
|     operation to make sure register access successfully on i.MX7D and it
|     fixes Linux kernel boot up hang during PWM driver probe.
|
|     Fixes: 4a23e6ee9f69 ("ARM: dts: imx7d-sdb: Restore pwm backlight support")
|     Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
|     Signed-off-by: Thierry Reding <thierry.reding@gmail.com>

Unlike the Linux version, we make clk_ipg optional to reduce changes for
older SoCs.

This fixes system hang during PWM access on i.MX8M and presumably i.MX7.

Reported-by: Bastian Krause <bst@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/pwm/pwm-imx.c | 43 ++++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 42 insertions(+), 1 deletion(-)

diff --git a/drivers/pwm/pwm-imx.c b/drivers/pwm/pwm-imx.c
index 2dc7e4cfd64d..486ca962f96d 100644
--- a/drivers/pwm/pwm-imx.c
+++ b/drivers/pwm/pwm-imx.c
@@ -36,7 +36,7 @@
 #define MX3_PWMCR_EN              (1 << 0)
 
 struct imx_chip {
-	struct clk	*clk_per;
+	struct clk	*clk_per, *clk_ipg;
 
 	void __iomem	*mmio_base;
 
@@ -93,14 +93,42 @@ static void imx_pwm_set_enable_v1(struct pwm_chip *chip, bool enable)
 	writel(val, imx->mmio_base + MX1_PWMC);
 }
 
+static int imx_pwm_clk_enable_v2(struct imx_chip *imx)
+{
+	int ret;
+
+	ret = clk_enable(imx->clk_ipg);
+	if (ret)
+		return ret;
+
+	ret = clk_prepare_enable(imx->clk_per);
+	if (ret) {
+		clk_disable_unprepare(imx->clk_ipg);
+		return ret;
+	}
+
+	return 0;
+}
+
+static void imx_pwm_clk_disable_v2(struct imx_chip *imx)
+{
+	clk_disable_unprepare(imx->clk_per);
+	clk_disable_unprepare(imx->clk_ipg);
+}
+
 static int imx_pwm_config_v2(struct pwm_chip *chip,
 		int duty_ns, int period_ns)
 {
 	struct imx_chip *imx = to_imx_chip(chip);
 	unsigned long long c;
 	unsigned long period_cycles, duty_cycles, prescale;
+	int ret;
 	u32 cr;
 
+	ret = imx_pwm_clk_enable_v2(imx);
+	if (ret)
+		return ret;
+
 	c = clk_get_rate(imx->clk_per);
 	c = c * period_ns;
 	do_div(c, 1000000000);
@@ -134,6 +162,8 @@ static int imx_pwm_config_v2(struct pwm_chip *chip,
 
 	writel(cr, imx->mmio_base + MX3_PWMCR);
 
+	imx_pwm_clk_disable_v2(imx);
+
 	return 0;
 }
 
@@ -141,6 +171,11 @@ static void imx_pwm_set_enable_v2(struct pwm_chip *chip, bool enable)
 {
 	struct imx_chip *imx = to_imx_chip(chip);
 	u32 val;
+	int ret;
+
+	ret = imx_pwm_clk_enable_v2(imx);
+	if (WARN_ON(ret))
+		return;
 
 	val = readl(imx->mmio_base + MX3_PWMCR);
 
@@ -150,6 +185,8 @@ static void imx_pwm_set_enable_v2(struct pwm_chip *chip, bool enable)
 		val &= ~MX3_PWMCR_EN;
 
 	writel(val, imx->mmio_base + MX3_PWMCR);
+
+	imx_pwm_clk_disable_v2(imx);
 }
 
 static int imx_pwm_apply(struct pwm_chip *chip, const struct pwm_state *state)
@@ -215,6 +252,10 @@ static int imx_pwm_probe(struct device *dev)
 
 	imx = xzalloc(sizeof(*imx));
 
+	imx->clk_ipg = clk_get_optional(dev, "ipg");
+	if (IS_ERR(imx->clk_ipg))
+		return PTR_ERR(imx->clk_ipg);
+
 	imx->clk_per = clk_get(dev, "per");
 	if (IS_ERR(imx->clk_per))
 		return PTR_ERR(imx->clk_per);
-- 
2.39.2



