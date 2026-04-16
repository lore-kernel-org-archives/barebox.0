Delivery-date: Thu, 16 Apr 2026 08:46:03 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDGUF-00Ciyw-0Z
	for lore@lore.pengutronix.de;
	Thu, 16 Apr 2026 08:46:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDGUE-0005qJ-LF
	for lore@pengutronix.de; Thu, 16 Apr 2026 08:46:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Fpxmmbh+2EPEcz9liijUTq1Bgw+qJwVBqsaAJ+wVqpk=; b=W/ojnG1M7k1scNN7lbQVrjlQrp
	EKKLEVDv0dMB9BOi2p/8yW1LiNtNfrnnNoSv63BzrYWvwWIbmTbOE/jPMHOwriDMXby/sGaTqZ4We
	Ys0zB/zs0syMeeZ0zA6gxsfCqYUfaZfR3NQRj8d81syO7i49zQvFTNkcfFsyc5fzfsA2iK4WygROJ
	ZK2PwRopxYLXUsHgueMU+tLBZgn2SE4FcTUe+Drx5kANGwhVDQR9KDwb0O1GG8FiAzQft0UoSQd4T
	hAfbsOMRCFLD6No7dp7sMCIJHJV87XwQKFMEzZRseEqFPoYeN8k/N0zZRO+Ck/ZMxlg7/Ix1StZAk
	JS+ucNMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDGTm-000000024Ad-0a7n;
	Thu, 16 Apr 2026 06:45:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDGTj-000000024AG-11YB
	for barebox@lists.infradead.org;
	Thu, 16 Apr 2026 06:45:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wDGTf-0005gq-78; Thu, 16 Apr 2026 08:45:27 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wDGTe-005dUS-2c;
	Thu, 16 Apr 2026 08:45:26 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wDGTe-0000000FtZO-30sW;
	Thu, 16 Apr 2026 08:45:26 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 16 Apr 2026 08:45:23 +0200
Message-ID: <20260416064524.3788520-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260415_234531_304616_86375DB2 
X-CRM114-Status: UNSURE (   7.28  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: i.MX8M: evk: mark PMIC barebox,allow-dummy-supply
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On i.MX8MM-EVK with PCA953x I2C GPIO expander driver enabled, one is
greeted with this warning:

  WARNING: pca953x pca64160: Failed to get 'vcc' regulator (ignored).

We don't have a PMIC driver in barebox proper and assume that all
relevant regulators are already enabled by the prebootloader, so note
that in the device tree.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/dts/imx8mm-evk.dts  | 4 ++++
 arch/arm/dts/imx8mm-evkb.dts | 4 ++++
 2 files changed, 8 insertions(+)

diff --git a/arch/arm/dts/imx8mm-evk.dts b/arch/arm/dts/imx8mm-evk.dts
index 18ad177a8bf7..de7525851f89 100644
--- a/arch/arm/dts/imx8mm-evk.dts
+++ b/arch/arm/dts/imx8mm-evk.dts
@@ -13,3 +13,7 @@
 / {
 	barebox,deep-probe;
 };
+
+&{i2c1/pmic@4b/regulators} {
+	barebox,allow-dummy-supply;
+};
diff --git a/arch/arm/dts/imx8mm-evkb.dts b/arch/arm/dts/imx8mm-evkb.dts
index a5fcce76036c..7e4a2d90bf1d 100644
--- a/arch/arm/dts/imx8mm-evkb.dts
+++ b/arch/arm/dts/imx8mm-evkb.dts
@@ -121,3 +121,7 @@ ldo5_reg: LDO5 {
 		};
 	};
 };
+
+&{i2c1/pmic@25/regulators} {
+	barebox,allow-dummy-supply;
+};
-- 
2.47.3



