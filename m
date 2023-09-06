Delivery-date: Wed, 06 Sep 2023 15:41:04 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qdsmH-0061Rh-Ov
	for lore@lore.pengutronix.de; Wed, 06 Sep 2023 15:41:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qdsmF-0007Ou-Jd
	for lore@pengutronix.de; Wed, 06 Sep 2023 15:41:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Zw7IWZQzNbdUTy8AoVxNscbCDUb4yPuIrJ5cAwaCRZE=; b=12BRSWsgGABSWSibH8bkMfsZ9R
	+4XEAKrlED++HAXHN7nj6UxzVTLMPcM/0mtUAWUaI7QrcpCTMhFPxjlFylLz+qvHbv7bOJcPfmavf
	Q8fp1f+VGLtdlBTAHDcbZZmwN8Yx9GfoyDmwvccBX87IWgIxyU992pVVDnIhY278sYy0FbirdZ0By
	M6WO2apfKoPAwlERlg/E9FwQHz4EALol0J5kP7BuOutxV88YtGrlK9hnDjpZLnC3/FQ/oaQTfCGvy
	IQg9TIOcuHULtsMkUNj2BKTqU7Tz1MkTZrlWeXBII76osylrEFtF//U6sELJKDkvC78Vk0qxlx/uh
	g57+AvcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qdsl3-00A54T-2e;
	Wed, 06 Sep 2023 13:39:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qdsl0-00A538-0w
	for barebox@lists.infradead.org;
	Wed, 06 Sep 2023 13:39:47 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <bst@pengutronix.de>)
	id 1qdsky-000703-ST; Wed, 06 Sep 2023 15:39:44 +0200
From: Bastian Krause <bst@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <ukl@pengutronix.de>,
	Bastian Krause <bst@pengutronix.de>,
	Marco Felsch <m.felsch@pengutronix.de>
Date: Wed,  6 Sep 2023 15:39:28 +0200
Message-Id: <20230906133928.1609901-2-bst@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230906133928.1609901-1-bst@pengutronix.de>
References: <20230906133928.1609901-1-bst@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230906_063946_327621_51E807B8 
X-CRM114-Status: GOOD (  20.35  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 2/2] pwm: imx: enable clocks during PWM register accesses
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@pengutronix.de>

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

On top of that, integrate Linux commit
15d4dbd601591858611184f9ddeb5bf21569159c:

| Author:     Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
| AuthorDate: Sun Feb 9 22:31:06 2020 +0100
| Commit:     Thierry Reding <thierry.reding@gmail.com>
| CommitDate: Mon Mar 30 16:55:25 2020 +0200
|
|     pwm: imx27: Fix clock handling in pwm_imx27_apply()
|
|     pwm_imx27_apply() enables the clocks if the previous PWM state was
|     disabled. Given that the clocks are supposed to be left on iff the PWM
|     is running, the decision to disable the clocks at the end of the
|     function must not depend on the previous state.
|
|     Without this fix the enable count of the two affected clocks increases
|     by one whenever ->apply() changes from one disabled state to another.
|
|     Fixes: bd88d319abe9 ("pwm: imx27: Unconditionally write state to hardware")
|     Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
|     Signed-off-by: Thierry Reding <thierry.reding@gmail.com>

In barebox, this means calling imx_pwm_clk_disable_v2() conditionally
iff the PWM is left disabled, otherwise keep the clocks enabled.

Reported-by: Bastian Krause <bst@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>
Signed-off-by: Bastian Krause <bst@pengutronix.de>
---
Changes since (implicit) v1:
- also port Linux commit 15d4dbd601591858611184f9ddeb5bf21569159c,
  leaving the clocks on iff the PWM is enabled
---
 drivers/pwm/pwm-imx.c | 45 ++++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 44 insertions(+), 1 deletion(-)

diff --git a/drivers/pwm/pwm-imx.c b/drivers/pwm/pwm-imx.c
index 2dc7e4cfd64..c9db4aef344 100644
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
@@ -134,6 +162,9 @@ static int imx_pwm_config_v2(struct pwm_chip *chip,
 
 	writel(cr, imx->mmio_base + MX3_PWMCR);
 
+	if (!chip->state.p_enable)
+		imx_pwm_clk_disable_v2(imx);
+
 	return 0;
 }
 
@@ -141,6 +172,11 @@ static void imx_pwm_set_enable_v2(struct pwm_chip *chip, bool enable)
 {
 	struct imx_chip *imx = to_imx_chip(chip);
 	u32 val;
+	int ret;
+
+	ret = imx_pwm_clk_enable_v2(imx);
+	if (WARN_ON(ret))
+		return;
 
 	val = readl(imx->mmio_base + MX3_PWMCR);
 
@@ -150,6 +186,9 @@ static void imx_pwm_set_enable_v2(struct pwm_chip *chip, bool enable)
 		val &= ~MX3_PWMCR_EN;
 
 	writel(val, imx->mmio_base + MX3_PWMCR);
+
+	if (!enable)
+		imx_pwm_clk_disable_v2(imx);
 }
 
 static int imx_pwm_apply(struct pwm_chip *chip, const struct pwm_state *state)
@@ -215,6 +254,10 @@ static int imx_pwm_probe(struct device *dev)
 
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



