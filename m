Delivery-date: Mon, 19 Feb 2024 22:07:35 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rcArP-00FAtR-2Z
	for lore@lore.pengutronix.de;
	Mon, 19 Feb 2024 22:07:35 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rcArP-0005Ck-3s
	for lore@pengutronix.de; Mon, 19 Feb 2024 22:07:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=MknyMefQKygKK1EEIFyfouF5cvTVCTvudRhB5yV/Amk=; b=043j/619sCm8GSe3Z7WVlmvgD/
	I2pv9p28WyvvcFL9AmrAMJCTHHG0F2ngMWOayca8CWps3XOB2jMPQ9/4obNK7xoTFvCTc6FgE43k5
	77Ba4miLFw3NbiihWABdpt9iWiAa3/k4WtwBaaC+IXpMacWkwFuG9TrLf0u4Z+Nk2SzJY3keSUYLY
	YLHZDjLhNlBQawneAq6tLiXaECUHbltZZdK0g+G9iRzIMG02kGTS2t/CoWE9wUOZs15RqNale9g1p
	SaBne1NjLYjjHIreFNsBQmKHPDpLBsT3LJQgM2JhGcMYLjo/urqcsZfCxtSdAvazbZUq/4JA4q2OT
	4b2BJKpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcAqi-0000000CB50-16Yw;
	Mon, 19 Feb 2024 21:06:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcAqe-0000000CB4I-2Gxv
	for barebox@lists.infradead.org;
	Mon, 19 Feb 2024 21:06:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rcAqc-0004hS-EX; Mon, 19 Feb 2024 22:06:46 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rcAqc-001irI-2E; Mon, 19 Feb 2024 22:06:46 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rcAqb-001hzf-39;
	Mon, 19 Feb 2024 22:06:46 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: buildroot@buildroot.org
Cc: barebox@lists.infradead.org,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 19 Feb 2024 22:06:28 +0100
Message-Id: <20240219210628.407423-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240219_130648_602322_B044B534 
X-CRM114-Status: GOOD (  13.07  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] boot/barebox: install all barebox images if none were specified
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

When selecting barebox in menuconfig, BR2_TARGET_BAREBOX_IMAGE_FILE will
be empty by default, which causes Buildroot to install whatever the
barebox-flash-image symlink points at for barebox versions >= v2012.10.0.

This is an outdated fallback, because barebox-flash-image is only valid
when the barebox build produces a single binary. Virtually all new
defconfigs added in the last couple of years are multiconfig
(CONFIG_PBL_IMAGE=y) however, meaning that a single imx_v7_defconfig
or multi_v8_defconfig will produce many images that support different
boards or even platforms.

As there is no single valid target for barebox-flash-image to point at
in this case, this symlink will point at a non-existing
'multi-image-build' to alert the user to this fact.

As replacement for barebox-flash-image, barebox commit 550cf79c216a
("Make list of flash images and fix link all single image cases") first
released with v2015.12.0 creates a barebox-flash-images file with a list
of all images built by barebox.

Have buildroot use that file as a fallback before trying
barebox-flash-image to have a fallback that works for any recent barebox
defconfig as well.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 boot/barebox/barebox-aux/Config.in | 9 +++++++--
 boot/barebox/barebox.mk            | 2 ++
 boot/barebox/barebox/Config.in     | 9 +++++++--
 3 files changed, 16 insertions(+), 4 deletions(-)

diff --git a/boot/barebox/barebox-aux/Config.in b/boot/barebox/barebox-aux/Config.in
index d39d24f763e0..4b0201ea6758 100644
--- a/boot/barebox/barebox-aux/Config.in
+++ b/boot/barebox/barebox-aux/Config.in
@@ -36,8 +36,13 @@ config BR2_TARGET_BAREBOX_AUX_IMAGE_FILE
 	  the images directory.
 
 	  If left empty, defaults to:
-	  - barebox.bin for barebox versions older than 2012.10.
-	  - barebox-flash-image for later versions.
+	  - all images as listed in barebox-flash-images (>= v2015.12.0)
+	  - the image pointed at by barebox-flash-image (>= v2012.10.0)
+	  - barebox.bin for even older barebox versions
+
+	  In any case, this only influences the artifacts collected by
+	  Buildroot. They will still need to be referenced from image
+	  packages or flashed separately onto the hardware.
 
 config BR2_TARGET_BAREBOX_AUX_CUSTOM_ENV
 	bool "Generate an environment image"
diff --git a/boot/barebox/barebox.mk b/boot/barebox/barebox.mk
index 4c9df8d6180b..fe366989b9d8 100644
--- a/boot/barebox/barebox.mk
+++ b/boot/barebox/barebox.mk
@@ -151,6 +151,8 @@ $(1)_IMAGE_FILES = $$(call qstrip,$$(BR2_TARGET_$(1)_IMAGE_FILE))
 define $(1)_INSTALL_IMAGES_CMDS
 	if test -n "$$($(1)_IMAGE_FILES)"; then \
 		cp -L $$(foreach image,$$($(1)_IMAGE_FILES),$$(@D)/$$(image)) $$(BINARIES_DIR) ; \
+	elif test -e $$(@D)/barebox-flash-images ; then \
+		cp -L $$(foreach image,$$(shell cat $$(@D)/barebox-flash-images),$$(@D)/$$(image)) $$(BINARIES_DIR) ; \
 	elif test -h $$(@D)/barebox-flash-image ; then \
 		cp -L $$(@D)/barebox-flash-image $$(BINARIES_DIR)/barebox.bin ; \
 	else \
diff --git a/boot/barebox/barebox/Config.in b/boot/barebox/barebox/Config.in
index 958e294e40b6..2fd70a84aec3 100644
--- a/boot/barebox/barebox/Config.in
+++ b/boot/barebox/barebox/Config.in
@@ -36,8 +36,13 @@ config BR2_TARGET_BAREBOX_IMAGE_FILE
 	  the images directory.
 
 	  If left empty, defaults to:
-	  - barebox.bin for barebox versions older than 2012.10.
-	  - barebox-flash-image for later versions.
+	  - all images as listed in barebox-flash-images (>= v2015.12.0)
+	  - the image pointed at by barebox-flash-image (>= v2012.10.0)
+	  - barebox.bin for even older barebox versions
+
+	  In any case, this only influences the artifacts collected by
+	  Buildroot. They will still need to be referenced from image
+	  packages or flashed separately onto the hardware.
 
 config BR2_TARGET_BAREBOX_BAREBOXENV
 	bool "bareboxenv tool in target"
-- 
2.39.2



