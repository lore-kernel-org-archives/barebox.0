Delivery-date: Tue, 27 Jan 2026 09:46:41 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vkeif-005q6k-2m
	for lore@lore.pengutronix.de;
	Tue, 27 Jan 2026 09:46:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vkeie-000135-MC
	for lore@pengutronix.de; Tue, 27 Jan 2026 09:46:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=zDjqJypT3GxBuCuYTF5YkiDWDkDrqeWnZeaj8/Ya8ZE=; b=SjBY9MhghMHlHvbLza7KnPLELW
	d8dnQK8QqNluDB/9fbTVIB1/msullRXZPJyqGweIUIeuwwlpZ9ASJvOm7XCUidpnS8Df34Zfp31gj
	JulQi3UxyEXfMfa9FSGrof8lgYzcffJM8GIu1SI6Ie/EjQgZvAPi1y6KPL1wLMMq+4BjKXRH/hFUm
	WIKNnT7JdIREaWQx58VXIIAf5d+aKZBOeommnfS3R2607YGmr8w1mbDx/a/ld1b5JxblgYQDEYs5i
	HcI251G04OS8QveDVKL+4VE9cd62P58N5Szo9NgkkVy4g7ofrvq1wSunKBdK8cTc6f40s2PA7RU5W
	JqCg/c8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkei1-0000000DrQ3-2rzO;
	Tue, 27 Jan 2026 08:46:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkehu-0000000DrDl-1M5h
	for barebox@lists.infradead.org;
	Tue, 27 Jan 2026 08:45:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vkehs-0000Vh-EI; Tue, 27 Jan 2026 09:45:52 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vkehs-002iff-2z;
	Tue, 27 Jan 2026 09:45:52 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vkehs-0000000FmwP-2pHh;
	Tue, 27 Jan 2026 09:45:52 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 27 Jan 2026 09:39:10 +0100
Message-ID: <20260127084546.3751357-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260127_004554_672346_126ADD71 
X-CRM114-Status: GOOD (  11.66  )
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
Subject: [PATCH 00/15] bootm: prepare loadable abstraction rework
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

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

Ahmad Fatoum (15):
  FIT: implement fit_count_images
  FIT: add image index argument to fit_open_image
  resource: implement gap-aware lookup_region
  bootm: give bootm_load_ functions an end address
  bootm: store separate image_type and kernel_type
  bootm: cache os_file for appendroot purposes
  bootm: fit: move length calculation into fit_open
  libfile: factor out zero-page resistant read_file as
    __read_full_anywhere
  resource: implement resize_region
  bootm: rename image_data::os/initrd with _uimage suffix
  uimage: record original file name in uimage_handle
  bootm: factor out file detection into helper
  efi: payload: bootm: add dry run support
  efi: payload: bootm: fix memory corruption on initrd load error
  efi: initrd: make efi_initrd_register initrd pointer param const

 arch/arm/lib32/bootm.c              |  26 +++--
 arch/arm/lib64/armlinux.c           |   7 +-
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
 common/bootm.c                      | 173 +++++++++++++++++-----------
 common/image-fit.c                  | 106 ++++++++++-------
 common/memory.c                     |  25 ++++
 common/resource.c                   |  78 +++++++++++++
 common/uimage.c                     |   2 +
 drivers/of/overlay.c                |   8 +-
 efi/initrd.c                        |   4 +-
 efi/loader/bootm.c                  |  13 ++-
 efi/payload/bootm.c                 |  17 +--
 include/bootm.h                     |  23 ++--
 include/efi/initrd.h                |   2 +-
 include/image-fit.h                 |  33 +++++-
 include/image.h                     |   1 +
 include/libfile.h                   |   3 +
 include/linux/ioport.h              |  13 ++-
 include/memory.h                    |   2 +
 lib/libfile.c                       |  69 +++++++++++
 29 files changed, 550 insertions(+), 229 deletions(-)

-- 
2.47.3



