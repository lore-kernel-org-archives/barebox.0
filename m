Delivery-date: Fri, 17 Feb 2023 18:32:14 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pT4ak-00AI24-8Y
	for lore@lore.pengutronix.de; Fri, 17 Feb 2023 18:32:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pT4aj-0004fX-03
	for lore@pengutronix.de; Fri, 17 Feb 2023 18:32:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oKj8n0Nz02i3mswvxuDvpAKkQcDpu3xYJX0M8wlXNi4=; b=HuAAVZZQocdaK6eLnxjnhpyKjk
	VtArSVldtIzEi4rYOXgQovzvrpAqGX2p2ZM0ePCJ7fwrTTGCv2ZsVKH1vRI7+V4Y9/6Z4m1hzxOTE
	vC2eZ4MkaDAKjtxBtVngoQ8nLcfyRn4Xlt/5kBiiQ1V/rjK6rEg5tfp8AQb0OaBM5YmMTTdmunZWi
	liT0gGYniBdQt/9oq+aqZ3PmLcnGMVtWPjVeebADSRpJn2iu5MH4yWCHItAYT6vPGRKkqGQ+wAOpu
	Z218dvy7RILNV69gl6XyOwzVWYCrnc8O/lwMMxm4S+4SJ7ApV9TVXpyyr462oZRbbgm2V63TcfgVq
	q9K+mBQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pT4Zw-00FFPh-0r; Fri, 17 Feb 2023 17:31:24 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pT4Zb-00FFFz-F1
	for barebox@lists.infradead.org; Fri, 17 Feb 2023 17:31:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pT4Za-0004Cv-9h; Fri, 17 Feb 2023 18:31:02 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pT4ZY-005dTd-DM; Fri, 17 Feb 2023 18:31:01 +0100
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pT4ZW-007ixz-2f; Fri, 17 Feb 2023 18:30:58 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 17 Feb 2023 18:30:50 +0100
Message-Id: <20230217173057.1839835-14-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230217173057.1839835-1-a.fatoum@pengutronix.de>
References: <20230217173057.1839835-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230217_093103_572382_2E078FC7 
X-CRM114-Status: UNSURE (   8.93  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v1 13/20] ARM: dts: Layerscape: use label-relative paths references
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We now have fancy new syntax for having label references be
both short and trigger an error if non-existent. Let's make use of it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/dts/fsl-ls1046a-rdb.dts          | 16 ++++++++--------
 arch/arm/dts/fsl-tqmls1046a-mbls10xxa.dts | 16 ++++++++--------
 2 files changed, 16 insertions(+), 16 deletions(-)

diff --git a/arch/arm/dts/fsl-ls1046a-rdb.dts b/arch/arm/dts/fsl-ls1046a-rdb.dts
index a27f8a8f39db..5a75212bb5e6 100644
--- a/arch/arm/dts/fsl-ls1046a-rdb.dts
+++ b/arch/arm/dts/fsl-ls1046a-rdb.dts
@@ -63,35 +63,35 @@
 	phy-mode = "rgmii-id";
 };
 
-&{/soc/fman@1a00000/mdio@e1000} {
+&{fman0/mdio@e1000} {
 	status = "disabled";
 };
 
-&{/soc/fman@1a00000/mdio@e3000} {
+&{fman0/mdio@e3000} {
 	status = "disabled";
 };
 
-&{/soc/fman@1a00000/mdio@e5000} {
+&{fman0/mdio@e5000} {
 	status = "disabled";
 };
 
-&{/soc/fman@1a00000/mdio@e7000} {
+&{fman0/mdio@e7000} {
 	status = "disabled";
 };
 
-&{/soc/fman@1a00000/mdio@e9000} {
+&{fman0/mdio@e9000} {
 	status = "disabled";
 };
 
-&{/soc/fman@1a00000/mdio@eb000} {
+&{fman0/mdio@eb000} {
 	status = "disabled";
 };
 
-&{/soc/fman@1a00000/mdio@f1000} {
+&{fman0/mdio@f1000} {
 	status = "disabled";
 };
 
-&{/soc/fman@1a00000/mdio@f3000} {
+&{fman0/mdio@f3000} {
 	status = "disabled";
 };
 
diff --git a/arch/arm/dts/fsl-tqmls1046a-mbls10xxa.dts b/arch/arm/dts/fsl-tqmls1046a-mbls10xxa.dts
index 7f9a764a8259..13ce24a8895a 100644
--- a/arch/arm/dts/fsl-tqmls1046a-mbls10xxa.dts
+++ b/arch/arm/dts/fsl-tqmls1046a-mbls10xxa.dts
@@ -263,35 +263,35 @@
 	phy-connection-type = "sgmii";
 };
 
-&{/soc/fman@1a00000/mdio@e1000} {
+&{fman0/mdio@e1000} {
 	status = "disabled";
 };
 
-&{/soc/fman@1a00000/mdio@e3000} {
+&{fman0/mdio@e3000} {
 	status = "disabled";
 };
 
-&{/soc/fman@1a00000/mdio@e5000} {
+&{fman0/mdio@e5000} {
 	status = "disabled";
 };
 
-&{/soc/fman@1a00000/mdio@e7000} {
+&{fman0/mdio@e7000} {
 	status = "disabled";
 };
 
-&{/soc/fman@1a00000/mdio@e9000} {
+&{fman0/mdio@e9000} {
 	status = "disabled";
 };
 
-&{/soc/fman@1a00000/mdio@eb000} {
+&{fman0/mdio@eb000} {
 	status = "disabled";
 };
 
-&{/soc/fman@1a00000/mdio@f1000} {
+&{fman0/mdio@f1000} {
 	status = "disabled";
 };
 
-&{/soc/fman@1a00000/mdio@f3000} {
+&{fman0/mdio@f3000} {
 	status = "disabled";
 };
 
-- 
2.30.2



