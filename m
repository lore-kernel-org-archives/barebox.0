Delivery-date: Mon, 13 Jan 2025 12:39:56 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tXInU-000a4O-2n
	for lore@lore.pengutronix.de;
	Mon, 13 Jan 2025 12:39:56 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tXInO-0007oj-Ma
	for lore@pengutronix.de; Mon, 13 Jan 2025 12:39:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QziWXej1fwIrGZ+bX3g9AWUUS6yMSVTjxfWkUlro3oI=; b=to+0tuHbG3vD3KX01dwFnnowtO
	83tJlmMI+DwifKRVYZB0nStEPYUzNoExFniTGE/I7tkwujLMeDoANi1D6ZdxXckN5Lp9hg0Iro4m7
	Xi4BkgWZ+BfH30i2dqd9dNuZsTySykoCQqK/b5z51mvdtT+DysK2jrxxWxt99jMdQOB0T+he8LsdC
	FWACSzBhw2/tDfwPPFXtBZzmx6PpqairiyJCFbUdwzg5tBzqdqmr01clzplbX0CCPn7Dv3zMGlTHy
	g1XQ6rMs4z2aqLt9yIsmuCrBT84HYtlEbqLpwLszPmEAzVTh5zNzHlNPMyA8LgGAFJsaXtY+cg7CD
	a3k0bqKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tXImn-00000004xGv-3wVi;
	Mon, 13 Jan 2025 11:39:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tXImj-00000004xD2-1HQt
	for barebox@lists.infradead.org;
	Mon, 13 Jan 2025 11:39:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tXImh-0007KR-Vs; Mon, 13 Jan 2025 12:39:07 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tXImh-000FYb-0w;
	Mon, 13 Jan 2025 12:39:07 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tXIar-001FK2-1s;
	Mon, 13 Jan 2025 12:26:53 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 13 Jan 2025 12:27:08 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250113-k3-r5-v3-21-065fcdcc28d3@pengutronix.de>
References: <20250113-k3-r5-v3-0-065fcdcc28d3@pengutronix.de>
In-Reply-To: <20250113-k3-r5-v3-0-065fcdcc28d3@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1736767613; l=900;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=RKFgcMOYPa8OKdMP26RuyNjv592/unzt1qVtwFs+WO4=;
 b=F2FZgfMRJq/q3+jc+J/AHioKW2Jj9CtIQa2tQ8HiUn+8FGLWIZZm5DAQT6vv6H2VXzAurF3Qx
 Iy8TwIEH2d3D68CVbYOqMvb3l8v28KBjbY1q4nhYttCvelflkYHdNYF
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250113_033909_370587_B283CA23 
X-CRM114-Status: GOOD (  10.34  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v3 21/23] ARM: am625: disable secondary watchdogs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The main_rti* watchdogs seem to be related to the secondary CPUs.
Letting the driver probe means the associated power domains are
turned on in barebox. With the power domains being enabled the
secondary CPUs do not come up under Linux. Just disable the watchdogs
for barebox.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/k3-am625.dtsi | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/arch/arm/dts/k3-am625.dtsi b/arch/arm/dts/k3-am625.dtsi
index 7d49198aa2..7910cf3e6c 100644
--- a/arch/arm/dts/k3-am625.dtsi
+++ b/arch/arm/dts/k3-am625.dtsi
@@ -11,3 +11,18 @@ &phy_gmii_sel {
 	compatible = "ti,am654-phy-gmii-sel", "syscon";
 };
 
+&main_rti1 {
+	status = "disabled";
+};
+
+&main_rti2 {
+	status = "disabled";
+};
+
+&main_rti3 {
+	status = "disabled";
+};
+
+&main_rti15 {
+	status = "disabled";
+};

-- 
2.39.5



