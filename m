Delivery-date: Thu, 05 Mar 2026 07:54:24 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vy2bH-008FNl-2c
	for lore@lore.pengutronix.de;
	Thu, 05 Mar 2026 07:54:24 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vy2bI-0002ck-5m
	for lore@pengutronix.de; Thu, 05 Mar 2026 07:54:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=SVQUydWqdSlX2e7FbUQRb9DPrQsodytz8eRdoaZU7EY=; b=E/gK1HPevK4AP4sMZv+F9Gi+1N
	dAslsh3njxqMWFskb97/kj7E0IiQNpOKW02tHxCH1X7e/MS29l6Aof+2M/pYExPm7C860nwu95djT
	doBbLa/H0tBi7Gg5+L3ZCb+EfozdAuk5wVlaQUXahGWEXx0ycxpiZLvie6l0on82nHDHJIRlWr54C
	W4RBqM0GCQgci2/9XiUyIBPD0DxPe9Jvdvl6L+MHTVcZtO7SQ3ETOWuZZpIUWVSUc4HfPuv9ynGyM
	xhEbo2Ez8F9czCZ8s9Bb0achNPxtHoFfrtiZ7pxd4a6q/Thut8ojAKw9sJ63dVslTMIsJdcZIoI5M
	GBeebA2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy2ar-000000012zV-26rR;
	Thu, 05 Mar 2026 06:53:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy2ap-000000012z9-1IT1
	for barebox@lists.infradead.org;
	Thu, 05 Mar 2026 06:53:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vy2an-0002XH-MH; Thu, 05 Mar 2026 07:53:53 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vy2am-003q6c-0W;
	Thu, 05 Mar 2026 07:53:53 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vy2an-0000000EKvI-1gNW;
	Thu, 05 Mar 2026 07:53:53 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  5 Mar 2026 07:53:52 +0100
Message-ID: <20260305065352.3417011-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260304_225355_367866_31445018 
X-CRM114-Status: GOOD (  10.30  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] aiodev: Enable saradc for RK3588
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The RK3588 also has a saradc, add the SoC to the dependency list.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/aiodev/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/aiodev/Kconfig b/drivers/aiodev/Kconfig
index 1c7bf16546..5c925109fb 100644
--- a/drivers/aiodev/Kconfig
+++ b/drivers/aiodev/Kconfig
@@ -60,7 +60,7 @@ config STM32_ADC
 
 config ROCKCHIP_SARADC
 	tristate "Rockchip SARADC driver"
-	depends on ARCH_RK3568 || ARCH_RK3576 || COMPILE_TEST
+	depends on ARCH_RK3568 || ARCH_RK3576 || ARCH_RK3588 || COMPILE_TEST
 	depends on OFDEVICE
 	help
 	  Support for Successive Approximation Register (SAR) ADC in Rockchip
-- 
2.47.3



