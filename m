Delivery-date: Fri, 19 Dec 2025 10:30:07 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWWoJ-00D9Sd-0V
	for lore@lore.pengutronix.de;
	Fri, 19 Dec 2025 10:30:07 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWWoI-0005RZ-JI
	for lore@pengutronix.de; Fri, 19 Dec 2025 10:30:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=AbhIvkAaguEOZ7eGdp2JNvo3UZ5d+OSgiU4lPCSQIMU=; b=mPCAm9nxyzQ9D/erceBbbDF/EZ
	VCIa5ym1idF3SzCFEiZCFiGsB9R/8LGaApAdo1lkHI1ck3wT3IghaWUJ2DDwmncPk2hWeSXRnvH6d
	Bd/Kp4PNk2b0ZGZKdIkINqCiA4cQBEAFUWWT5nK4lE1GN9QVDyO0w4g5qaTTTnmCqZQTCCdLW07IU
	AN1Vk/oj6+NZViPPlnrwUuTGuoIfVSkRm2LyEIOlAXyEhsHgHEYfzYqiCL1OSPYLyYlXMFytM8Paf
	I6gC2xypPcImtu6+8vm1MyVyHMXReaiG/K8/OpGrWdw/MsQDO/iHdcOaeepsB1buqWhJIdgwXm52O
	dL3oJ75g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWWnp-00000009xHh-1qU1;
	Fri, 19 Dec 2025 09:29:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWWnn-00000009xGr-0ddg
	for barebox@lists.infradead.org;
	Fri, 19 Dec 2025 09:29:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <m.grzeschik@pengutronix.de>)
	id 1vWWnk-0005MM-3b; Fri, 19 Dec 2025 10:29:32 +0100
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <m.grzeschik@pengutronix.de>)
	id 1vWWnj-006Qy5-2y;
	Fri, 19 Dec 2025 10:29:31 +0100
Received: from localhost ([::1] helo=dude04.red.stw.pengutronix.de)
	by dude04.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <m.grzeschik@pengutronix.de>)
	id 1vWWnj-00000006YmP-3dV1;
	Fri, 19 Dec 2025 10:29:31 +0100
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Date: Fri, 19 Dec 2025 10:29:30 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251219-imx93-clk-v1-1-087f491c7f89@pengutronix.de>
X-B4-Tracking: v=1; b=H4sIAPkaRWkC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1NDI0NL3czcCktj3eScbN3kNENLQwPjtOQUczMloPqCotS0zAqwWdGxtbU
 AFxCLElsAAAA=
X-Change-ID: 20251219-imx93-clk-cf19103fcd76
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=886;
 i=m.grzeschik@pengutronix.de; h=from:subject:message-id;
 bh=iSKWqrqW7riiHo3PbnAN0ziaXuvwYSDsQSsk6oRo7/M=;
 b=kA0DAAoBv2lYRPlx9KsByyZiAGlFGvuiLgmvbnGcz34ZUgeR0Q/rZ2zAAu0GUHoT/JhCJQzp3
 IkCMwQAAQoAHRYhBBXb7YWlup3p++/QaL9pWET5cfSrBQJpRRr7AAoJEL9pWET5cfSraSYP/RKd
 dRgr7rin+XhIkzC3myKjy+e0Hic7CH8iNk94PLw/Cb7+p5+NQiKZmSrWe4ZNKzYQrCExpNsE+0e
 mALmeZd6GRxG6J3pGXcoDD7dq+QwEvJVWs1zaWL4S/9Cn3+KRvqPDGQkgb0Isc6UxxQNCtckrWA
 UFSOEcn9v5hECuTpd8TgT9xdyEZ5OqY0d5W4nT3S/pU6U9ZCUGYSS6xvbJIctOm7rG4p7ZDb+GW
 +XU9sQli+bHzM6721jND+TXQr8zAttFaGMby0/JgB/EVMm6vdPo9rMqKzXKT5RnKXNkTiLLfT07
 0Dxrurd6QikeZ/0D843VI/kKuG2N2J7meefndhLz2C8sZNlx0P8jj77FWJ356dZhfkZVfslEgz4
 jnpoFzBWtwNAaSbdV5lzB1Ccvh04e0cw7uIbCTuk2wJzhNM4+Ntk75LHsM7L6kx/c/iRaI39W85
 UEwDV3+9JTlVXEvZWn+a5wo34Gj9+simZ0eyIYoiXZpWPdMUzxbuA6mBT37+61aTzmpWAGpEX5j
 7AJbrCbjhrde19pDUwq28NuY7A55sxJsWvlRQYQXCE7Zv7mUMuRuikh/SHKTEzIIkGtiEeaJ8hA
 Z14SGlXQguU58hz98JBI7k1gINxgIsWZB9cihoYJYTF8T+lSyC73mfRFXsGV93mtW54hgpyZjyi
 1MZrq
X-Developer-Key: i=m.grzeschik@pengutronix.de; a=openpgp;
 fpr=957BC452CE953D7EA60CF4FC0BE9E3157A1E2C64
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251219_012935_200228_997FDBC3 
X-CRM114-Status: UNSURE (   6.85  )
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
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: imx93: dtsi: set assigned-clocks for usdhc1
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Configure the usdhc1 clock for imx93 devices.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
 arch/arm/dts/imx93.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm/dts/imx93.dtsi b/arch/arm/dts/imx93.dtsi
index e1328de672438ffc8a3b785a3fb76168ced8dbdb..3bb9e24c781632dd390e483f059cabb600a4f6a6 100644
--- a/arch/arm/dts/imx93.dtsi
+++ b/arch/arm/dts/imx93.dtsi
@@ -47,3 +47,9 @@ ddrc: memory-controller@4e300000 {
 		};
 	};
 };
+
+&usdhc1 {
+	assigned-clocks = <&clk IMX93_CLK_USDHC1>;
+	assigned-clock-parents = <&clk IMX93_CLK_SYS_PLL_PFD1>;
+	assigned-clock-rates = <400000000>;
+};

---
base-commit: e2d7e032281158b54541392b4d8108de204137a1
change-id: 20251219-imx93-clk-cf19103fcd76

Best regards,
-- 
Michael Grzeschik <m.grzeschik@pengutronix.de>



