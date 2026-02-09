Delivery-date: Mon, 09 Feb 2026 19:12:20 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vpVkD-00AdY5-0Z
	for lore@lore.pengutronix.de;
	Mon, 09 Feb 2026 19:12:20 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vpVkA-0006Gm-Vt
	for lore@pengutronix.de; Mon, 09 Feb 2026 19:12:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=gi7nChaAT4Eu55xoTFKdqbZEZqn8rkAaC1KuU40WQtE=; b=P/y+uXKoB3ARI6sgDJV4dJ7HzJ
	uscIeWzAoKwuC+TqEMEmoP/VwBlYagz7IwpVS3r3XBI0dStHBwCPOiIP4MPvuLhvFFZkqe9sUgJMk
	8aCkhqhGG3FcEHayyRYzuSA0Eo3waKqOD0YqAxYH/l/w3UqSQOPF5meeiuC8g6i8dfpE/Cwsy+mDk
	s45+5oooZttzQXccqVSG9EKUmau1h4Do2dhzBwNnDG3Ysnwgh2KzClSC9qU/uEckW1Al0Q0hv5E8U
	lWwbIGAeTqTdtu9/qI0SIoonTPS6fSjLWAqDVWU8AcAsjSro5MD6MbEPcrzG//r1ZAXRhRMIihmbf
	E/koevEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpVje-0000000FqBk-1G9l;
	Mon, 09 Feb 2026 18:11:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpVjb-0000000Fq8l-16P1
	for barebox@lists.infradead.org;
	Mon, 09 Feb 2026 18:11:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vpVjZ-0005qB-Ej; Mon, 09 Feb 2026 19:11:41 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vpVjZ-004vnd-30;
	Mon, 09 Feb 2026 19:11:41 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vpVjZ-00000008UJ4-0iTo;
	Mon, 09 Feb 2026 19:11:41 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  9 Feb 2026 19:10:39 +0100
Message-ID: <20260209181138.2023065-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260209_101143_308060_78D2EBC4 
X-CRM114-Status: GOOD (  13.13  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 00/13] bootm: prepare loadable abstraction rework
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

v1 -> v2:
  - Dropped "efi: payload: bootm: fix memory corruption on initrd load error":
    Sent out separately
  - Dropped "bootm: cache os_file for appendroot purposes"
    Preparatory patch that has been superseded for the second part of
    this rework
  - Move memory_bank_lookup_region() closer to the bootm_load()
    functions, and make sure same argument are used for both.
  - Switch over efi_loader_bootm as well by using bootm_load_os
  - In fit_open, propagate error for short reads correctly
  - add kernel-doc for open_fdt, resize_region,
    file_read_and_detect_boot_image_type
  - export file_read_and_detect_boot_image_type for future use
  - fix intermittent regression for initrd loading
  - resize_region: return error on resizing to 0 size (Sascha)
  - resize_region: check that there is no conflict with child resources
    (Sascha)

Despite previous work to move out uImage and FIT-specific parts out of
the bootm code, common/boot.c still has a number of places where code
checks if it's a FIT image, a uImage or a plain file.

This series lays the groundwork for a second series that will:
- Introduce the concept of a loadable for deferred boot component loading
- Switch all code to generate loadables once at the start and then
  extracting them later on, irrespective of their origin
- Implement a more robust and powerful override mechanim, where
  individual loadables can be switched against each other

Before we can do that, we however need to refactor the code a bit and
add some helpers that are going to be used.

Ahmad Fatoum (13):
  FIT: implement fit_count_images
  FIT: add image index argument to fit_open_image
  resource: implement gap-aware lookup_region
  bootm: give bootm_load_ functions an end address
  bootm: store separate image_type and kernel_type
  bootm: fit: move length calculation into fit_open
  libfile: factor out zero-page resistant read_file as
    __read_full_anywhere
  resource: implement resize_region
  bootm: rename image_data::os/initrd with _uimage suffix
  uimage: record original file name in uimage_handle
  bootm: factor out file detection into helper
  efi: payload: bootm: add dry run support
  efi: initrd: make efi_initrd_register initrd pointer param const

 arch/arm/lib32/bootm.c              |  26 +++--
 arch/arm/lib64/armlinux.c           |  14 +--
 arch/arm/mach-at91/bootm-barebox.c  |   7 +-
 arch/arm/mach-imx/imx-v3-image.c    |   7 +-
 arch/arm/mach-layerscape/pblimage.c |   7 +-
 arch/arm/mach-rockchip/bootm.c      |  13 ++-
 arch/arm/mach-zynq/bootm-zynqimg.c  |   7 +-
 arch/kvx/lib/bootm.c                |  17 ++-
 arch/powerpc/lib/ppclinux.c         |  15 ++-
 common/booti.c                      |  33 +++---
 common/bootm-fit.c                  |  30 +++--
 common/bootm-uimage.c               |  38 +++---
 common/bootm.c                      | 173 ++++++++++++++++++----------
 common/image-fit.c                  | 108 ++++++++++-------
 common/memory.c                     |  25 ++++
 common/resource.c                   |  95 +++++++++++++++
 common/uimage.c                     |   2 +
 drivers/of/overlay.c                |   8 +-
 efi/initrd.c                        |   4 +-
 efi/loader/bootm.c                  |  41 ++++---
 efi/payload/bootm.c                 |  15 +--
 include/bootm.h                     |  25 ++--
 include/efi/initrd.h                |   2 +-
 include/image-fit.h                 |  33 +++++-
 include/image.h                     |   1 +
 include/libfile.h                   |   3 +
 include/linux/ioport.h              |  13 ++-
 include/memory.h                    |   2 +
 lib/libfile.c                       |  79 +++++++++++++
 29 files changed, 596 insertions(+), 247 deletions(-)

-- 
2.47.3



