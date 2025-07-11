Delivery-date: Fri, 11 Jul 2025 08:48:31 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ua7Yd-00GJGR-0S
	for lore@lore.pengutronix.de;
	Fri, 11 Jul 2025 08:48:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ua7Yc-0005xW-Ix
	for lore@pengutronix.de; Fri, 11 Jul 2025 08:48:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=TGvdgyP1/gN0d5blIpLbbBp10ELZzvyPr8CKPy2JBmw=; b=hNPg2f8gvMvwlGdDbrghhcZ24/
	Cf0Hj+OvTnpljoy8W2ML9DyPsfVzDU/MXMCUS/pTpT91rISj/ksZGFslEoQfXbQvECdWSHXSgryRF
	Ycpjzh8JX7TIIiDQRrehpN9pewVTUV+ktzVemQx6jZDhL9BdOV7bLlYP+SAimNPKlH0VbWczO1Ur3
	fr1VJ/36vWoDVCa/bpNrkuY79pi80y//9P5PbcG/bX4KINfzTSILlhJRHQ0P/EoZeAHypJ4LNqALC
	PGmMQk2DH1NtASsAN5DnOsWC0GoGY8+om28dtpPbvu23zVcZ27YXF8Q1mFOCv8UIYLb+7UgnkeyaD
	1N/6W+3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ua7Xx-0000000Dt6n-0uJl;
	Fri, 11 Jul 2025 06:47:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ua7Sv-0000000Dsm9-19u3
	for barebox@lists.infradead.org;
	Fri, 11 Jul 2025 06:42:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <uol@pengutronix.de>)
	id 1ua7Ss-0002r2-7R; Fri, 11 Jul 2025 08:42:34 +0200
Received: from dude03.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::39])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <uol@pengutronix.de>)
	id 1ua7Ss-007sPm-09;
	Fri, 11 Jul 2025 08:42:34 +0200
Received: from uol by dude03.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <uol@pengutronix.de>)
	id 1ua7Sr-001h5j-3A;
	Fri, 11 Jul 2025 08:42:33 +0200
From: =?UTF-8?q?Ulrich=20=C3=96lmann?= <u.oelmann@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 11 Jul 2025 08:42:32 +0200
Message-Id: <20250711064232.403961-1-u.oelmann@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250710_234237_310054_0D4F5409 
X-CRM114-Status: UNSURE (   9.98  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: i.MX: Kconfig: fix typos
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Ulrich Ölmann <u.oelmann@pengutronix.de>
---
 arch/arm/mach-imx/Kconfig | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 02b9fb4dac9f..b81ebbb1efe3 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -846,9 +846,9 @@ config HAB_CERTS_ENV
 	depends on HAB
 	bool "Specify certificates in environment"
 	help
-	  If this option is enabled the pathes to the HAB certificates are
+	  If this option is enabled the paths to the HAB certificates are
 	  taken from environment variables which allows for better integration
-	  with build systems. With this option disabled the pathes can be
+	  with build systems. With this option disabled the paths can be
 	  specified below.
 
 	  The environment variables have the same name as the corresponding
-- 
2.39.5



