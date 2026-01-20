Delivery-date: Tue, 20 Jan 2026 11:50:38 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vi9Jm-003MJ6-1i
	for lore@lore.pengutronix.de;
	Tue, 20 Jan 2026 11:50:38 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vi9Jl-0000vF-GL
	for lore@pengutronix.de; Tue, 20 Jan 2026 11:50:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=crPJL1urnAi4m07lvywkJuECU7QyNsLP1ILdjdg6o3E=; b=F1S7pDRxPKBJ2KTJI39cNL/n3l
	yzvFv0dkH05l9dASQjH3W6n8gbVKvl7qedEUjoaMFl0TbCodn0wI+YtUU+lAfJul0JouFFH9eRz2X
	m3wxDnbINuHGAI9N/HJluH56Z3j8K2fDsa1s0pZT+Pdpp2BTeeh5+uR/gLXEHnOLl4DELV6A8Twkb
	cuV7FOzPah6gAJqbNHTUwK+xdOTO+k0cAUH3CQwK8//V02QxAVsFXCZx4N2GWSAG2ZehZDqpu2j0d
	IwQ50svTfxYpaN2NOB1Be4d0GHU+l3ukSqc3+iMfV+3QKs/WYWPlS9ZN6hrb+jQGBvwNPAAnLFl7s
	0bZMtIsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vi9JE-00000003ecP-0fjm;
	Tue, 20 Jan 2026 10:50:04 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vi9JC-00000003ec8-32F3
	for barebox@bombadil.infradead.org;
	Tue, 20 Jan 2026 10:50:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=crPJL1urnAi4m07lvywkJuECU7QyNsLP1ILdjdg6o3E=; b=ATNJuBK8US1QJL7F1ZyA1HRppG
	mkceLbVPrme64Q9dgWz/eALrfTUyD7+DzBsWMg7sNnUvZr/3cRmTLrQfk/0yXSZHEGOvDXIjzYgRp
	y4JYcaNMtW/en0mDxlVQjo8Aar5kVaIZWROrC7L+KajHieMJ4U2MT1Xpdr39388qbSeGiAfbnXDZz
	bo1owbk/tK7L5MyfAlEVhKrlz79mm5g05OeS+uKMxJc2mspt8luHlBmqum9r/jaerIq1ErYIVKrr1
	09sMWrdCVwuuKpNa87FUdTqXe2LvI9XRl70Z8Yk/4isXM4WsrBDTnpPYuYPZa1LqFmHapHX3lUQhD
	4gHIB4ww==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vi9J9-0000000DqSU-2p7A
	for barebox@lists.infradead.org;
	Tue, 20 Jan 2026 10:50:01 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vi9J7-0000mK-QC; Tue, 20 Jan 2026 11:49:57 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Tue, 20 Jan 2026 11:49:52 +0100
Message-ID: <20260120104957.41978-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260120_104959_791616_0265741F 
X-CRM114-Status: GOOD (  10.48  )
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
Subject: [PATCH 1/2] efi: loader: protocol: gop: guard behind CONFIG_EFI_LOADER_GOP
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The gop protocol implementation uses fb_open, which is only available
with CONFIG_IMAGE_RENDERER=y.

Add a dedicated symbol for it and have it select CONFIG_IMAGE_RENDERER=y
to fix link errors for configurations with CONFIG_VIDEO=y, but no
CONFIG_IMAGE_RENDERER.

Fixes: d040f49ad0b3 ("efi: loader: protocol: add graphical output protocol support")
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 efi/loader/protocols/Kconfig  | 18 ++++++++++++++++++
 efi/loader/protocols/Makefile |  2 +-
 2 files changed, 19 insertions(+), 1 deletion(-)

diff --git a/efi/loader/protocols/Kconfig b/efi/loader/protocols/Kconfig
index ba6f562b7585..ad7896065ab7 100644
--- a/efi/loader/protocols/Kconfig
+++ b/efi/loader/protocols/Kconfig
@@ -2,6 +2,24 @@
 
 menu "UEFI protocol support"
 
+config EFI_LOADER_GOP
+	bool "Graphics output protocol"
+	depends on VIDEO
+	select IMAGE_RENDERER
+	default y
+	help
+    	  The graphics output protocol (GOP) provides UEFI applications access
+    	  to a framebuffer for graphical output. This allows booting of UEFI
+    	  applications and operating systems that require graphics support.
+
+    	  The protocol exposes the video mode information and framebuffer
+    	  details to UEFI payloads, enabling them to render graphics, display
+    	  boot menus, and provide visual feedback during boot.
+
+    	  If you have video support enabled and want to boot UEFI applications
+    	  that require graphics (such as GRUB with graphical menus or Linux
+    	  with EFIFB), say Y here.
+
 config EFI_LOADER_HII
 	bool "HII protocols"
 	default y
diff --git a/efi/loader/protocols/Makefile b/efi/loader/protocols/Makefile
index a323927b89e3..d0b55bde4644 100644
--- a/efi/loader/protocols/Makefile
+++ b/efi/loader/protocols/Makefile
@@ -2,7 +2,7 @@
 
 obj-$(CONFIG_FS) += file.o
 obj-$(CONFIG_DISK) += disk.o
-obj-$(CONFIG_VIDEO) += gop.o
+obj-$(CONFIG_EFI_LOADER_GOP) += gop.o
 obj-$(CONFIG_CONSOLE_FULL) += console.o
 obj-$(CONFIG_EFI_LOADER_HII) += hii.o hii_config.o
 obj-$(CONFIG_EFI_LOADER_UNICODE_COLLATION_PROTOCOL2) += unicode_collation.o
-- 
2.47.3



