Delivery-date: Wed, 26 Mar 2025 09:00:10 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1txLgJ-004Ljw-19
	for lore@lore.pengutronix.de;
	Wed, 26 Mar 2025 09:00:10 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1txLgI-0005ju-2e
	for lore@pengutronix.de; Wed, 26 Mar 2025 09:00:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=38zyZ5ZKjDEcnPQB6KeKbauCbEMaTOYmjnsXViQ4LnQ=; b=16dXJU96F2IGYTGipWUH2C9D82
	bSb2erceDgePpGwuYGTnRKFR8A1xCvGiHI82TF03JBXVq4/8JWWXdsBIDyik5KvYCl5zjtSUwikBF
	lcStlwFYsKB0sdIXbBcIdzzFgN/VH3xSOoUyTIBdmqvr8m/WJaTu+iTMLF0rA3kBlNYhRcljmSEAK
	tIfszQ7TfpV1k+DLXyJrHSupzzVpqvMQZ1mi8I5n6eFUpf1vOXGUQGFekR4zj5KSEylKWJ1W59KAP
	cBXu9pwoHzrWarsgGjaICgFmkahzxTHKwTc7sBL0wH8WbVKJ2QrhhhtTERdoSYhNTlY5LMkksIozy
	0ZyqtEzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txLfm-00000007qZS-2iFG;
	Wed, 26 Mar 2025 07:59:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txLfW-00000007qSc-21gp
	for barebox@lists.infradead.org;
	Wed, 26 Mar 2025 07:59:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1txLfV-0005KS-3f; Wed, 26 Mar 2025 08:59:21 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1txLfU-001iAm-1Y;
	Wed, 26 Mar 2025 08:59:20 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1txLfU-00EZsX-2d;
	Wed, 26 Mar 2025 08:59:20 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@zdiv.net>,
	jre@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 26 Mar 2025 08:59:15 +0100
Message-Id: <20250326075919.3448789-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250326075919.3448789-1-a.fatoum@pengutronix.de>
References: <20250326075919.3448789-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250326_005922_545245_3DD451EB 
X-CRM114-Status: GOOD (  11.04  )
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
Subject: [PATCH 2/6] sandbox: hide sdl/libftdi symbols if libraries not found
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

To make an allyesconfig build work out of the box on sandbox, let's hide
the SDL and libftdi GPIO drivers unless the libraries are already
installed.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/sandbox/Kconfig  | 6 ++++++
 drivers/gpio/Kconfig  | 2 +-
 drivers/sound/Kconfig | 2 +-
 drivers/video/Kconfig | 2 +-
 4 files changed, 9 insertions(+), 3 deletions(-)

diff --git a/arch/sandbox/Kconfig b/arch/sandbox/Kconfig
index 0357414a3f79..c404f73a9970 100644
--- a/arch/sandbox/Kconfig
+++ b/arch/sandbox/Kconfig
@@ -81,6 +81,12 @@ config CMD_SANDBOX_CPUINFO
 	help
 	  Say yes here to get a dummy cpuinfo command.
 
+config HAVE_LIBSDL2
+	def_bool $(success,$(CROSS_PKG_CONFIG) --exists sdl2)
+
+config HAVE_LIBFTDI
+	def_bool $(success,$(CROSS_PKG_CONFIG) --exists libftdi1)
+
 config SDL
 	bool
 
diff --git a/drivers/gpio/Kconfig b/drivers/gpio/Kconfig
index dd95e8906b39..7caa1aa96eb3 100644
--- a/drivers/gpio/Kconfig
+++ b/drivers/gpio/Kconfig
@@ -229,7 +229,7 @@ config GPIO_STARFIVE
 
 config GPIO_LIBFTDI1
 	bool "libftdi1 driver"
-	depends on SANDBOX
+	depends on HAVE_LIBFTDI1
 
 config GPIO_ZYNQ
 	tristate "Xilinx Zynq GPIO support"
diff --git a/drivers/sound/Kconfig b/drivers/sound/Kconfig
index bf6f715200e0..bc695fed2cd4 100644
--- a/drivers/sound/Kconfig
+++ b/drivers/sound/Kconfig
@@ -11,7 +11,7 @@ if SOUND
 
 config SOUND_SDL
 	bool "SDL sound driver for sandbox"
-	depends on SANDBOX && OFDEVICE
+	depends on HAVE_LIBSDL2 && OFDEVICE
 	select SDL
 
 config PWM_BEEPER
diff --git a/drivers/video/Kconfig b/drivers/video/Kconfig
index 0539e2d453da..ef19948219f3 100644
--- a/drivers/video/Kconfig
+++ b/drivers/video/Kconfig
@@ -70,7 +70,7 @@ config DRIVER_VIDEO_STM32_LTDC
 
 config DRIVER_VIDEO_SDL
 	bool "SDL framebuffer driver"
-	depends on SANDBOX
+	depends on HAVE_LIBSDL2
 	select SDL
 
 config DRIVER_VIDEO_PXA
-- 
2.39.5



