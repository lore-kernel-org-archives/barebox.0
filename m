Delivery-date: Thu, 29 Jun 2023 08:54:11 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qElXh-008768-5y
	for lore@lore.pengutronix.de; Thu, 29 Jun 2023 08:54:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qElXe-0003M8-Q1
	for lore@pengutronix.de; Thu, 29 Jun 2023 08:54:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=+JctAzj7CbWgWSCmuby+bnA5ixkilauwtpFE0i/0SNA=; b=X8DcnPxKPp2bPZ5VGRb2Hbz+Og
	XDs1MCV1Jiczy5zNBD63hZYKtvkIXdBeKsg49Oqh3l358cnXJrGwURDE14Kv5CCbfwi+lbk8WeyhT
	pzI8WtPNG26U1ddBweMvEMb5cATSemaw8tQjGLzKCkh71Y/0hw14jgNFx+aDATVKaKCFHU8V34sNb
	gO/9Fdi0K2oOipfmi2FvmGvZZQsBq7rykZ0Mcycelv9Fe/+quFlsJTt+hzCmVIz4f58ukOL/p6v/P
	bKWay3c6poa6bIFTTlQ8VDNzBRFShwBGX4TE9uzz3ToH0F016tWP5Va9FpudHAeerxZEyyS4D9sHg
	Y7wdS5jA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qElWC-0008pD-0Y;
	Thu, 29 Jun 2023 06:52:40 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qElW7-0008nD-1N
	for barebox@lists.infradead.org;
	Thu, 29 Jun 2023 06:52:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qElW0-0003CV-Iz; Thu, 29 Jun 2023 08:52:28 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qElVz-00Aq5X-Un; Thu, 29 Jun 2023 08:52:27 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qElVy-004hCE-3C;
	Thu, 29 Jun 2023 08:52:26 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 29 Jun 2023 08:52:25 +0200
Message-Id: <20230629065225.1119341-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230628_235236_027720_494CF285 
X-CRM114-Status: GOOD (  13.32  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] Documentation: use current link to bootloader spec spec
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Both the Freedesktop and the systemd links are outdated, so replace them
with the current home of the spec.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/talks.rst              | 2 +-
 Documentation/user/booting-linux.rst | 2 +-
 common/Kconfig                       | 4 ++--
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/Documentation/talks.rst b/Documentation/talks.rst
index 5f1af599316b..5206d649a2a7 100644
--- a/Documentation/talks.rst
+++ b/Documentation/talks.rst
@@ -100,7 +100,7 @@ Sascha Hauer, Embedded Linux Conference - Europe 2013
 `[slides] <https://elinux.org/images/9/90/Barebox-elce2013-bootloaderspec.pdf>`__
 `[video] <https://www.youtube.com/watch?v=Z8FcIGXox_Y>`__
 
-  The freedesktop.org bootloader specification and its support in barebox.
+  The bootloader specification and its support in barebox.
 
 Barebox Bootloader
 ------------------
diff --git a/Documentation/user/booting-linux.rst b/Documentation/user/booting-linux.rst
index 6fa8cd911e06..0ba6229797cd 100644
--- a/Documentation/user/booting-linux.rst
+++ b/Documentation/user/booting-linux.rst
@@ -168,7 +168,7 @@ Bootloader Spec
 
 barebox supports booting according to the bootloader spec:
 
-https://systemd.io/BOOT_LOADER_SPECIFICATION/
+https://uapi-group.org/specifications/specs/boot_loader_specification/
 
 It follows another philosophy than the :ref:`boot_entries`. With Boot Entries
 booting is completely configured in the bootloader. Bootloader Spec Entries
diff --git a/common/Kconfig b/common/Kconfig
index 3a57e16b3be6..6bcb2dac5b7f 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -684,8 +684,8 @@ config BLSPEC
 	bool
 	prompt "Support bootloader spec"
 	help
-	  Enable this to let barebox support the Freedesktop bootloader spec,
-	  see: http://www.freedesktop.org/wiki/Specifications/BootLoaderSpec/
+	  Enable this to let barebox support the UAPI bootloader spec,
+	  see: https://uapi-group.org/specifications/specs/boot_loader_specification/
 	  The bootloader spec is a standard interface between the bootloader
 	  and the kernel. It allows the bootloader to discover boot options
 	  on a device and it allows the Operating System to install / update
-- 
2.39.2



