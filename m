Delivery-date: Fri, 19 Jan 2024 17:43:21 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rQrxf-007HY5-2K
	for lore@lore.pengutronix.de;
	Fri, 19 Jan 2024 17:43:20 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rQrxg-0005Qw-D7
	for lore@pengutronix.de; Fri, 19 Jan 2024 17:43:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iuHHcrJGxQPvVWp1NcmW7OYDtpvFX+Zq9wBVzc40m5w=; b=gC83AD7EatoMZGsnXEmVrq+Z2s
	Fn1R1l8xT3l1qY1hoPAGwLZOrYRophl2L6K4UFDYUHkL+4O9ae1Ll+kN6wGOYHcxt9Q0nRmBMAKdO
	2rw1YHnS8X3NpmwwYN5vqkP3yZ8tqKFWZv71ON92I8tCb7F5IlI992quYeP1BqX174c7jNEm8Y+iX
	L+4mqv3OSe7Iyx+jy45GU861IPAWi94BqoOxp0Y0MTs2Nk9uxScbrf6SUBll+VGiDhjcfEu1HACTV
	UcylNb7XaVXdaIyRVJhvOIkyPGtV740RbWBfuP87cBqMs4nXNt+samw9LkfrlSHYd6X9SPLOdZ7ut
	6rLE+Rmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rQrwh-0069eH-2y;
	Fri, 19 Jan 2024 16:42:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rQrwc-0069Zp-0X
	for barebox@lists.infradead.org;
	Fri, 19 Jan 2024 16:42:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rQrwa-0004xp-Qq; Fri, 19 Jan 2024 17:42:12 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rQrwa-000xYO-Ds; Fri, 19 Jan 2024 17:42:12 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rQrh8-0054dX-34;
	Fri, 19 Jan 2024 17:26:14 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 19 Jan 2024 17:26:10 +0100
Message-Id: <20240119162610.1014870-20-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240119162610.1014870-1-a.fatoum@pengutronix.de>
References: <20240119162610.1014870-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240119_084214_217963_75B2CCB7 
X-CRM114-Status: GOOD (  11.57  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 19/19] ARM: dts: i.MX8MP: drop barebox,allow-dummy for HSIO blk-ctrl
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Now that we have a HSIO blk ctrl driver, there is no need to generally
assume that TF-A or BootROM have left them enabled for us.

Boards that want to continue making use of this assumption can reinstate
the barebox,allow-dummy property, but everyone else should just enable
CONFIG_IMX8M_BLK_CTRL.

While barebox,allow-dummy only has an effect if the driver doesn't
exist (as determined by deep probe), we remove the property for improved
user experience when the TF-A doesn't enable the HSIO power domain.

In that case, barebox,allow-dummy would cause barebox to continue
probe of USB controller and PHY resulting in a bus hang instead of
an error message that tells what's up:

  imx8mq-usb-phy 381f0040.usb-phy@381f0040.of: error No such device: power domain attach failed
  dwc3-of-simple 32f10100.usb@32f10100.of: error No such device: power domain attach failed
  imx8mq-usb-phy 382f0040.usb-phy@382f0040.of: error No such device: power domain attach failed
  dwc3-of-simple 32f10108.usb@32f10108.of: error No such device: power domain attach failed

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/dts/imx8mp.dtsi | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/arch/arm/dts/imx8mp.dtsi b/arch/arm/dts/imx8mp.dtsi
index 04767ad382c8..7a038217c468 100644
--- a/arch/arm/dts/imx8mp.dtsi
+++ b/arch/arm/dts/imx8mp.dtsi
@@ -73,7 +73,3 @@ &gpu3d {
 &gpu2d {
 	barebox,feature-gates = <&feat IMX8M_FEAT_GPU>;
 };
-
-&hsio_blk_ctrl {
-	barebox,allow-dummy;
-};
-- 
2.39.2



