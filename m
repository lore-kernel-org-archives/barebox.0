Delivery-date: Wed, 13 Mar 2024 15:42:26 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rkPoI-004WJg-1b
	for lore@lore.pengutronix.de;
	Wed, 13 Mar 2024 15:42:26 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rkPoH-0005pY-Qv
	for lore@pengutronix.de; Wed, 13 Mar 2024 15:42:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0UVT5Yy+nSSwDWnVlSavKL7GfhwBHCFv4WCpysiYass=; b=qmZd0PloSART4fdQLAX6EHG3B3
	MBEndMRuc876vt01G96/zznwfYEDc5HoctrC8Umb2lw5MXswpvkpiLpum+//Ukyyc3hchEq85uMzU
	V48EuO9MCjdmNFP8UU7n2BoxtjivGlN6jtT1TSEAEcMqqIXyuiKoxB1Qq+b4B1JesvfpsF64VoEOB
	1yvKeI2nd41DrwyxbtKqjyI2Fs+aMc+Q/tax6jZYO7tDXdLMjKIQNzS7zyKDVFIx0rpIYq5rxLJHV
	tJzU49MOMVqFgmpFGAs7unEtw/C2eiOD/KaxxP+8iO03/TL3U40/sLT5Ch+clFqfLdODZFGjxEqEQ
	/DNjF4gA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkPnb-0000000ASVF-3Ogt;
	Wed, 13 Mar 2024 14:41:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkPnY-0000000ASTg-2L8M
	for barebox@lists.infradead.org;
	Wed, 13 Mar 2024 14:41:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rkPnW-00052X-L2; Wed, 13 Mar 2024 15:41:38 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rkPnW-0068Ng-8a; Wed, 13 Mar 2024 15:41:38 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rkPnV-0093HA-28;
	Wed, 13 Mar 2024 15:41:38 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 13 Mar 2024 15:41:36 +0100
Message-Id: <20240313144136.2157496-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240313144136.2157496-1-a.fatoum@pengutronix.de>
References: <20240313144136.2157496-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240313_074140_625056_6AD56F77 
X-CRM114-Status: GOOD (  16.32  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master 2/2] pmdomain: imx: gpc2: ignore missing regulators
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The GPV2 driver supports controlling voltage rails associated with
domains via adding a power-supply binding to the power domain's
device tree node. This is only done for the i.MX8MQ's GPU, VPU and MIPI
domains. All boards supported upstream that do this reference a
regulator of the pfuze100 as power supply.

While we have a pfuze100 driver, it only does one-time init and doesn't
implement a regulator API. This means these boards will fail with probe
deferrals:

  imx-pgc imx-pgc-domain5: error Requested probe deferral: Failed to get domain's regulator
  imx-pgc imx-pgc-domain6: error Requested probe deferral: Failed to get domain's regulator
  ERROR: imx-pgc-domain6: probe permanently deferred (Failed to get domain's regulator)
  ERROR: imx-pgc-domain5: probe permanently deferred (Failed to get domain's regulator)

As we don't use MIPI, GPU or VPU in barebox and we want to move boards
over to deep probe (where every EPROBE_DEFER is permanent), let's stop
propagating EPROBE_DEFER and just write an info message and continue
probing as usual and delay the error message until the regulator is
actually used.

Fixes: eb487a8d39e2 ("soc: imx: gpcv2: extend for i.MX8M Mini/Nano/Plus support")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/pmdomain/imx/gpcv2.c | 28 ++++++++++++++++++++++------
 1 file changed, 22 insertions(+), 6 deletions(-)

diff --git a/drivers/pmdomain/imx/gpcv2.c b/drivers/pmdomain/imx/gpcv2.c
index b967947478b9..fc2fbdaf140b 100644
--- a/drivers/pmdomain/imx/gpcv2.c
+++ b/drivers/pmdomain/imx/gpcv2.c
@@ -326,12 +326,16 @@ static int imx_pgc_power_up(struct generic_pm_domain *genpd)
 	u32 reg_val, pgc;
 	int ret;
 
-	if (!IS_ERR(domain->regulator)) {
+	if (!IS_ERR(domain->regulator))
 		ret = regulator_enable(domain->regulator);
-		if (ret) {
-			dev_err(domain->dev, "failed to enable regulator\n");
-			return ret;
-		}
+	else if (PTR_ERR(domain->regulator) == -ENOENT)
+		ret = -ENOENT;
+	else
+		ret = 0;
+
+	if (ret) {
+		dev_err(domain->dev, "failed to enable regulator\n");
+		return ret;
 	}
 
 	/* Enable reset clocks for all devices in the domain */
@@ -1145,9 +1149,21 @@ static int imx_pgc_domain_probe(struct device *dev)
 
 	domain->regulator = regulator_get(domain->dev, "power");
 	if (IS_ERR(domain->regulator)) {
-		if (PTR_ERR(domain->regulator) != -ENODEV)
+		/* On i.MX8M, we usually set up PMIC in early board code once
+		 * and don't do dynamic voltage regulation in barebox.
+		 * This means, even with deferred probe we will never succeed.
+		 * Instead, let's just print an info message and continue
+		 *
+		 * If you actually require access to a regulator here that has
+		 * a driver, enable deep probe for your board.
+		 */
+		if (PTR_ERR(domain->regulator) == -EPROBE_DEFER) {
+			dev_info(domain->dev, "Failed to get domain's regulator (ignored)\n");
+			domain->regulator = ERR_PTR(-ENOENT);
+		} else if (PTR_ERR(domain->regulator) != -ENODEV) {
 			return dev_err_probe(domain->dev, PTR_ERR(domain->regulator),
 					     "Failed to get domain's regulator\n");
+		}
 	} else if (domain->voltage) {
 		regulator_set_voltage(domain->regulator,
 				      domain->voltage, domain->voltage);
-- 
2.39.2



