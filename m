Delivery-date: Fri, 19 Dec 2025 11:15:51 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWXWZ-00DAI2-1Y
	for lore@lore.pengutronix.de;
	Fri, 19 Dec 2025 11:15:51 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWXWY-0002Y9-SA
	for lore@pengutronix.de; Fri, 19 Dec 2025 11:15:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7NV79lKjFWV2jh+yMIjbWhCHdJ0VP3j5ebwfQfo9DQI=; b=OsomjQE/sO4mr8DS5IoJvmXwxb
	Xo04LcZrgFKE9a5Fskofddz3B17SraAZ2O+2YGsHLSvOIajd8/A13msx5/1F1jjflP+lCKdnR/5ex
	j0YY6A+n59O3Q6eMM1+DOuOvQkk2P2NrgXep4gn+7WQUiaFvJAvsQNMYeNwB8bCN6FCfcurDcJ8uJ
	+qM1SzOV/q8+SV5pVT0ZELcNumZc8fQf6KnqN+LBeb1FRJCCTzJDYgWZVnnoQ/2GVaFKUkrluVFSl
	NBu2PDb3aM4NLo3JLC6yoarJCw7uQqGvIPd2wfrj/20u70appBw48czrEooLczjKAlllz+XW8Lnfr
	6OyNrjTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWXVp-0000000A33Y-1HZY;
	Fri, 19 Dec 2025 10:15:05 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWXVn-0000000A31I-3XBf
	for barebox@bombadil.infradead.org;
	Fri, 19 Dec 2025 10:15:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=7NV79lKjFWV2jh+yMIjbWhCHdJ0VP3j5ebwfQfo9DQI=; b=LqKWaBKq7NBd4bQPud2t6DqgbB
	+3C/i3dJY2iGDmjzmAep4t3/7/OdZpNnjnDszgpkAvRjsL5I4EKeGNoYCUxBbfY5+EF7xTzMuioea
	6yMpWQTq+wbFQ3ORBxwPSDqBmteMnRfUUU54QFzeLeQSz+nkcA24b/qBCvgGPGvclqk0llXAHwW7m
	1kkp+oX59DMldbFMSbTi4LktTygoDzHaN2/Jb1VXxQ8HKJXwZXmgkXnVfJqsiTtP7KPusA0XZtXb4
	hsBFDlH+lI/BWMDRfdOUFL7ij+Hi0qwSz50jBrIqatfmDtIS1bDLLmb+k/B9WLDV5B7bDKnu1DKmI
	Mo6YHpVQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWWeG-0000000AYya-26b7
	for barebox@lists.infradead.org;
	Fri, 19 Dec 2025 09:19:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWXVh-00021r-2J; Fri, 19 Dec 2025 11:14:57 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWXVg-006RNF-2W;
	Fri, 19 Dec 2025 11:14:56 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWXVg-0000000320L-2r2t;
	Fri, 19 Dec 2025 11:14:56 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 19 Dec 2025 10:20:40 +0100
Message-ID: <20251219101453.2806980-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251219101453.2806980-1-a.fatoum@pengutronix.de>
References: <20251219101453.2806980-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251219_091944_873443_ADFEA54E 
X-CRM114-Status: GOOD (  10.37  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2025.09.y 04/49] ARM: dts: rockchip: Set initial CPU frequencies for RK3588
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Alexander Shiyan <eagle.alexander923@gmail.com>

During system boot, the cpufreq driver reports unlisted initial frequencies:
cpufreq: cpufreq_policy_online: CPU0: Running at unlisted initial frequency: 900000 kHz, changing to: 1200000 kHz
cpufreq: cpufreq_policy_online: CPU4: Running at unlisted initial frequency: 816000 kHz, changing to: 1200000 kHz
cpufreq: cpufreq_policy_online: CPU6: Running at unlisted initial frequency: 816000 kHz, changing to: 1200000 kHz

Add assigned-clock-rates to the SCMI clock controller node in the device
tree to establish proper initial frequencies.
This ensures all CPU cores boot at valid frequencies that match the
cpufreq policy, eliminating the warning messages and unnecessary
frequency changes during initialization.

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
Link: https://lore.barebox.org/20250929135857.965181-1-eagle.alexander923@gmail.com
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
(cherry picked from commit 1b91aafee348423090c1347307674fd17729c00c)
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/dts/rk3588.dtsi | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/arch/arm/dts/rk3588.dtsi b/arch/arm/dts/rk3588.dtsi
index 667dd0c5a873..416700cf0ecd 100644
--- a/arch/arm/dts/rk3588.dtsi
+++ b/arch/arm/dts/rk3588.dtsi
@@ -8,7 +8,12 @@ dmc: memory-controller {
 };
 
 &scmi_clk {
-	assigned-clocks = <&scmi_clk SCMI_CLK_CPUB01>,
-			  <&scmi_clk SCMI_CLK_CPUB23>;
-	assigned-clock-rates = <816000000>, <816000000>;
+	assigned-clocks =
+		<&scmi_clk SCMI_CLK_CPUL>,
+		<&scmi_clk SCMI_CLK_CPUB01>,
+		<&scmi_clk SCMI_CLK_CPUB23>;
+	assigned-clock-rates =
+		<1200000000>,
+		<1200000000>,
+		<1200000000>;
 };
-- 
2.47.3



