Delivery-date: Mon, 15 Apr 2024 07:36:37 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rwF1B-001ZQB-1A
	for lore@lore.pengutronix.de;
	Mon, 15 Apr 2024 07:36:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rwF1A-0006av-OV
	for lore@pengutronix.de; Mon, 15 Apr 2024 07:36:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+NKs0dQLghM5hmAcgbOxwzZs9Bn9I506tOhlbu/utIc=; b=pzJzXuFyPzD8ng4g2GydaF7SsC
	dA2d8m/yizm9CYDa9EiKpVvnFn2QL27pKPjL1nn9SV3JuyaYkyvWgpwChlu4It6xn488ZtNPTS+AZ
	+ShNyyCB0TW+OaitYq/RMjZG69+1r972ptyMuYDlgYc+DWP6eRv4tIcoPDFO/qFwsz/Z65OjrITHX
	AGroTiK8jmLrfN8Bgusn8IA+E9j63VIDpIMXj5eHmVArvvJ/slQCE7Qh47S7qUh4aKb+1ICFuU5gy
	l7NB+8ZHGHBOKYWQvg4LlxtIDDNVYqagUjqh5I9up4wSCLJ0Ym7MDsKcpSs+3G7cem2f7mQ9+c+nN
	CYM6EgUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwF0k-000000071PQ-1att;
	Mon, 15 Apr 2024 05:36:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwF0e-000000071LT-09pv
	for barebox@lists.infradead.org;
	Mon, 15 Apr 2024 05:36:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rwF0c-0005sU-Ta; Mon, 15 Apr 2024 07:36:02 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rwF0c-00CMnS-GJ; Mon, 15 Apr 2024 07:36:02 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rwF0c-001YQH-1L;
	Mon, 15 Apr 2024 07:36:02 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 15 Apr 2024 07:36:00 +0200
Message-Id: <20240415053600.370622-8-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240415053600.370622-1-a.fatoum@pengutronix.de>
References: <20240415053600.370622-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240414_223604_253880_BD3943A7 
X-CRM114-Status: UNSURE (   9.05  )
X-CRM114-Notice: Please train this message.
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
Subject: [PATCH 7/7] ARM: dts: rk356x: add aliases for PWM controllers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The Rockchip PWM driver will identify the different PWM chips by their
MMIO address. Make the names shorter and easier to handle by assigning
0-based aliases according to their numbering in the TRM.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/dts/rk356x.dtsi | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm/dts/rk356x.dtsi b/arch/arm/dts/rk356x.dtsi
index 7fd5f72a5918..fbabf2a6a6b0 100644
--- a/arch/arm/dts/rk356x.dtsi
+++ b/arch/arm/dts/rk356x.dtsi
@@ -5,6 +5,22 @@
 / {
 	aliases {
 		pmugrf.reboot_mode = &reboot_mode_pmugrf;
+		pwm0 = &pwm0;
+		pwm1 = &pwm1;
+		pwm2 = &pwm2;
+		pwm3 = &pwm3;
+		pwm4 = &pwm4;
+		pwm5 = &pwm5;
+		pwm6 = &pwm6;
+		pwm7 = &pwm7;
+		pwm8 = &pwm8;
+		pwm9 = &pwm9;
+		pwm10 = &pwm10;
+		pwm11 = &pwm11;
+		pwm12 = &pwm12;
+		pwm13 = &pwm13;
+		pwm14 = &pwm14;
+		pwm15 = &pwm15;
 	};
 
 	chosen {
-- 
2.39.2



