Delivery-date: Mon, 08 Aug 2022 16:02:11 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oL3Kb-00GEns-Di
	for lore@lore.pengutronix.de; Mon, 08 Aug 2022 16:02:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oL3Kc-0007UN-Ax
	for lore@pengutronix.de; Mon, 08 Aug 2022 16:02:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NfXLDWSs+R/fzjVf47NGml8QNXHS46MVx2lYWvyygVw=; b=s/vjuEYyblaW1ZLSuXAlt3e1Qe
	cTnTTpEK7SY+LxLsG4+KkZkqPJIN5MwqmaO+Dnp8btPfnqaYzvDDevETWqNpuGChylN6KFR6qQIF+
	eefZwPRRdNZiaxigzOU1XYSGI22ey8SGmn+bvceulnmUYnKUuOxE0FKdIvBE9OekbytsxaX1Ee2Ui
	Smi+M/STLrlgSis6Rh75naX4EsqtBwbAGTufPU9LNcEJnUf0IwvmCfc/RModK8ApIftSW407xv4T4
	Kpyccp7kgM7ELPVN6U70GspIUthKNko/jJRC/U/ockX5YE2e25QIEpoQ9VVhYD90Ftr1mViK8WrFl
	BqEGHYdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oL3JG-00EFcs-Gx; Mon, 08 Aug 2022 14:00:46 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oL3JB-00EFb5-I3
	for barebox@lists.infradead.org; Mon, 08 Aug 2022 14:00:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oL3J9-0006sm-KB; Mon, 08 Aug 2022 16:00:39 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oL3J6-002Vig-Ir; Mon, 08 Aug 2022 16:00:38 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oL3J8-0071Dw-4P; Mon, 08 Aug 2022 16:00:38 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  8 Aug 2022 16:00:34 +0200
Message-Id: <20220808140035.1672733-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220808140035.1672733-1-a.fatoum@pengutronix.de>
References: <20220808140035.1672733-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220808_070041_618228_B7490B37 
X-CRM114-Status: UNSURE (   9.99  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master v3 3/4] ARM: i.MX8MM: assume USBOTG power domains to be powered
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

When i.MX8MM support was first added, upstream device tree did list no
power domains. Now it does and we defer probe of USB indefinitely
because we have no power domain driver. If we need to do PCI on the
i.MX8MM in barebox, there'll likely be no way around importing the power
domain driver, but for USB which used to work, only thing we need to do
is ignore the new power domain specification. Do so by adding the
new barebox,allow-dummy property to the new known-enabled power domains.

Fixes: 3f2f5980d517 ("dts: update to v5.16-rc1")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v2 -> v3:
  - no change
v1 -> v2:
  - no change
---
 arch/arm/dts/imx8mm.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/dts/imx8mm.dtsi b/arch/arm/dts/imx8mm.dtsi
index 78bbacb2b1b2..cdf212820594 100644
--- a/arch/arm/dts/imx8mm.dtsi
+++ b/arch/arm/dts/imx8mm.dtsi
@@ -5,6 +5,14 @@
 	};
 };
 
+&pgc_otg1 {
+	barebox,allow-dummy;
+};
+
+&pgc_otg2 {
+	barebox,allow-dummy;
+};
+
 &src {
 	compatible = "fsl,imx8mm-src", "fsl,imx8mq-src", "syscon", "simple-mfd";
 
-- 
2.30.2



