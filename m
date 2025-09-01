Delivery-date: Mon, 01 Sep 2025 10:02:23 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uszUe-006q3F-1a
	for lore@lore.pengutronix.de;
	Mon, 01 Sep 2025 10:02:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uszUb-0000bn-NS
	for lore@pengutronix.de; Mon, 01 Sep 2025 10:02:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=e+T+j+yralbQWl1h0vjjxGX6ak2hPInUO98j/FyzQLM=; b=L4fJ0gGnqS5B/nd2A7F8B9nRM0
	4UWQUM2nbn4POsKNv3DG/EC+Cw/dLSLL0EJ5v8Pkwbujtn4KJ1IE857149BbRmy/ZslQ8eLmH/6zn
	T15IPXCYBmMmAJSXJ/dMZXB1STfvV/6hk2KKKPEtTTRi/PeQe/UvVve/FqSxuVpzFM2aPTGLDSobU
	X11s30YJrzP0nRQad0WMiJrwtZqCYaFVSEIRWDIe3h2I3Io4TMqyi5q3KxeeKZHFZ9hgaBwL1oDzZ
	Fzs9/kAZqo6cEVvIEsi9hE0sq4d3CUJinrCH2Hgy2eIMuMsRfJgG0x0PEUTkTo5edu2fO6aVdpPRq
	XsXxIO8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uszU0-0000000BVvP-2Dl3;
	Mon, 01 Sep 2025 08:01:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1usz52-0000000BSGD-2hS6
	for barebox@lists.infradead.org;
	Mon, 01 Sep 2025 07:35:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1usz4l-0008Vg-Fz; Mon, 01 Sep 2025 09:35:39 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1usz4l-003BNq-0l;
	Mon, 01 Sep 2025 09:35:39 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1usz4l-00000000kLH-0gm2;
	Mon, 01 Sep 2025 09:35:39 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 01 Sep 2025 09:35:31 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250901-imx6-usb-uuu-v1-3-1194bb6135ae@pengutronix.de>
References: <20250901-imx6-usb-uuu-v1-0-1194bb6135ae@pengutronix.de>
In-Reply-To: <20250901-imx6-usb-uuu-v1-0-1194bb6135ae@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1756712139; l=3158;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=KTJoAPa70WQSLS4D8YLXQ7jmh16hVzLY/qMD7jIKpHY=;
 b=SuCwW486SYUologYBpoYjL45LVC3JO/ALPYX6nBpaUl4OVGRxFC2EhsaOiqOVRrc8c/tMsoXv
 hYGoIlf2i8+ACuUlIgZkL4gGTprXTWgck46xQMG9b+WLyN6+Y6Xmqzj
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250901_003556_691457_AD394937 
X-CRM114-Status: GOOD (  10.54  )
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
Cc: Matthias Zoechmann <matthias.zoechmann@ife-doors.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/3] mach-imx: Kconfig: add option for image with dcd auth
 block
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Matthias Zoechmann <matthias.zoechmann@ife-doors.com>

Add option CONFIG_HABV4_IMAGE_SIGNED_USB_DCD to select build of barebox
image for i.mx6 devices with an additional authentication block in CSF
("0x0091000 offset size filename").
Additional the barebox toolchain will build now a signed image e.g.
barebox-image-name-dcdus.img for usb loading with SDP DCD_WRITE ROM
command.

Signed-off-by: Matthias Zoechmann <matthias.zoechmann@ife-doors.com>
---
 arch/arm/mach-imx/Kconfig |  9 +++++++++
 images/Makefile.imx       | 11 +++++++----
 2 files changed, 16 insertions(+), 4 deletions(-)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 0d745ce2315834ec5d0c366d227b40f2adff5e83..ade4a4ce1783fc60f85aefab2da2df17a57bfe55 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -945,6 +945,15 @@ config HABV4_IMAGE_SIGNED_USB
 	  enable the creation of a usb signed image, if the habv4-imx6-gencsf.h
 	  included in the flash-header and the NXP cst Tool is available
 
+config HABV4_IMAGE_SIGNED_USB_DCD
+	bool "build signed USB images including DCD"
+	depends on ARCH_IMX6
+	depends on HABV4_IMAGE_SIGNED_USB
+	help
+	  enable the creation of a usb signed image loaded via SDP and DCD_WRITE
+	  ROM command, if the habv4-imx6-gencsf.h included in the flash-header
+	  and the NXP cst Tool is available
+
 config HABV4_IMAGE_SIGNED_ENCRYPTED
 	bool "build signed encrypted images"
 	help
diff --git a/images/Makefile.imx b/images/Makefile.imx
index 93264254e9e4cda3969bf7bf4812f2d1c5b59c09..8aa35a28e06ccffc9609054292eca026b17c0140 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -9,13 +9,15 @@ $(eval
 ifeq ($($(strip $(1))), y)
 	pblb-y += $(strip $(2))
 	CFG_$(strip $(2)).pblb.imximg = $(board)/$(strip $(3)).imxcfg
-	FILE_barebox-$(strip $(4)).img    = $(strip $(2)).pblb.imximg
-	FILE_barebox-$(strip $(4))-s.img  = $(strip $(2)).pblb.simximg
-	FILE_barebox-$(strip $(4))-us.img = $(strip $(2)).pblb.usimximg
-	FILE_barebox-$(strip $(4))-es.img = $(strip $(2)).pblb.esimximg
+	FILE_barebox-$(strip $(4)).img       = $(strip $(2)).pblb.imximg
+	FILE_barebox-$(strip $(4))-s.img     = $(strip $(2)).pblb.simximg
+	FILE_barebox-$(strip $(4))-us.img    = $(strip $(2)).pblb.usimximg
+	FILE_barebox-$(strip $(4))-dcdus.img = $(strip $(2)).pblb.dcdusimximg
+	FILE_barebox-$(strip $(4))-es.img    = $(strip $(2)).pblb.esimximg
 	image-y += barebox-$(strip $(4)).img
 	image-$(CONFIG_HABV4_IMAGE_SIGNED) += barebox-$(strip $(4))-s.img
 	image-$(CONFIG_HABV4_IMAGE_SIGNED_USB) += barebox-$(strip $(4))-us.img
+	image-$(CONFIG_HABV4_IMAGE_SIGNED_USB_DCD) += barebox-$(strip $(4))-dcdus.img
 	image-$(CONFIG_HABV4_IMAGE_SIGNED_ENCRYPTED) += barebox-$(strip $(4))-es.img
 endif
 )
@@ -51,6 +53,7 @@ $(call imx_image_rule,pimximg, -p $$($$(patsubst $$(obj)/%.pblb,PBL_MEMORY_SIZE_
 $(call imx_image_rule,psimximg, -p $$($$(patsubst $$(obj)/%.pblb,PBL_MEMORY_SIZE_%,$$<)) -s)
 $(call imx_image_rule,simximg, -s)
 $(call imx_image_rule,usimximg, -u -s)
+$(call imx_image_rule,dcdusimximg, -u -s -a)
 $(call imx_image_rule,esimximg, -e -s)
 $(call imx_image_rule,esimximg.dek, -e -s)
 

-- 
2.47.2



