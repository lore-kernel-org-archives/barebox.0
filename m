Delivery-date: Wed, 21 Dec 2022 11:41:19 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p7wXI-003ffB-24
	for lore@lore.pengutronix.de; Wed, 21 Dec 2022 11:41:19 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p7wXF-0005Te-Qm
	for lore@pengutronix.de; Wed, 21 Dec 2022 11:41:18 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=elztlg+6XA8IUL1fXsLMN3PSCz5PADEc83pl0/oPJwU=; b=wOkd90thh22DPmsTdZTJ2DxlKE
	o8ZOI2bnL9J4uFldq0kvfkHciwKMYE2F5IHu/nlZg1ayDEpZrKn79VzqpYLy4XGcG9QjxCuTZPXhp
	MtxYgbA1Fz5ZJWg8qvD4vNwE53u1lFHmTuMlTVv8J1nKy1CC93O3bbvI3SLuTK6Js+q9bTL/4YXA1
	ruXtRz0eKM8SQOgC6y2OiD8xUSFpTewm/vqW7R5o5jGcgI7DjSEJWvjw8D7KE5Dg9Z2RyDbdRFtRE
	uF2CwOEnASu+5gGK0+md7U8f43S0/hXLOd0qSBtxo7CF59yvESn8or0k4ZK+7OWERxwCstAKBwG6I
	YWSOmAig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7wVa-00DYMR-R0; Wed, 21 Dec 2022 10:39:34 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7wJ2-00DPee-6A
	for barebox@lists.infradead.org; Wed, 21 Dec 2022 10:26:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1p7wIw-0003Nx-Ls; Wed, 21 Dec 2022 11:26:30 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1p7wIv-000lrp-PW; Wed, 21 Dec 2022 11:26:29 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1p7wIv-00Cpoh-0s; Wed, 21 Dec 2022 11:26:29 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Sam Ravnborg <sam@ravnborg.org>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 21 Dec 2022 11:26:27 +0100
Message-Id: <20221221102627.3059068-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221221_022636_273452_2E17DA89 
X-CRM114-Status: GOOD (  12.76  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2] ARM: dts: fix wrong display-timings native-mode binding
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The value of the native-mode property is supposed to be a phandle to
the entry in question, but instead the full node path was used because
the <angle brackets> were missing. Fix this. This should not involve any
functional change as the default mode would've been the first element,
which is the same element the malformed native-mode was meant to point
at anyway.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/dts/imx6q-var-custom.dts   | 2 +-
 arch/arm/dts/imx6qdl-skov-imx6.dtsi | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/dts/imx6q-var-custom.dts b/arch/arm/dts/imx6q-var-custom.dts
index ddb220fb0ad4..cbfe4da7e1b4 100644
--- a/arch/arm/dts/imx6q-var-custom.dts
+++ b/arch/arm/dts/imx6q-var-custom.dts
@@ -83,7 +83,7 @@
 		fsl,data-width = <24>;
 		status = "okay";
 		display-timings {
-			native-mode = &claawvga;
+			native-mode = <&claawvga>;
 			claawvga: claawvga {
 				native-mode;
 				clock-frequency = <35714000>;
diff --git a/arch/arm/dts/imx6qdl-skov-imx6.dtsi b/arch/arm/dts/imx6qdl-skov-imx6.dtsi
index f4610ee1e7ba..cb4224f1b441 100644
--- a/arch/arm/dts/imx6qdl-skov-imx6.dtsi
+++ b/arch/arm/dts/imx6qdl-skov-imx6.dtsi
@@ -146,7 +146,7 @@
 		};
 
 		display-timings {
-			native-mode = &l2rt;
+			native-mode = <&l2rt>;
 
 			l2rt: l2rt {
 				native-mode;
@@ -190,7 +190,7 @@
 		/* power-supply = <&reg_3p3v>; */
 
 		display-timings {
-			native-mode = &mi1010ait_1cp1;
+			native-mode = <&mi1010ait_1cp1>;
 
 			mi1010ait_1cp1: mi1010ait-1cp1 {
 				native-mode;
-- 
2.30.2



