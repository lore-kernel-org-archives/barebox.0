Delivery-date: Thu, 24 Jun 2021 10:54:08 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lwL7g-0007EO-LG
	for lore@lore.pengutronix.de; Thu, 24 Jun 2021 10:54:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lwL7f-0001T0-1x
	for lore@pengutronix.de; Thu, 24 Jun 2021 10:54:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7cC4wkMbFAzb2izxvPyw8W3jlL/5pW285qpPwNZQF8Q=; b=XBVRdl5q+Jh4nV
	QU8sJnNV6nPMx4b4xHS0DnGE4hyhNuw4DfZoo1CjUEEI/CcLQids6ExpZIqC30PZFD4mKLnQO9Xnu
	ET8yKXHhziNaaL8ryMZpJQ0uvrBtMWnkjyULcFJv+9pKF1MAAJXB35QVM6w4rOI2+afYKdzPHibmP
	Q6NX25QrlIF69eporsadYokk+glur7Prl/oLKSdtUFRJOsWh0CME9IBfZS5U8AWU8+UuRwvIwcN5O
	fc37g6LdNbcW3dAxEmP2B90j6MU4AF7nzpeC8D2scrUHjsG10X73xGoZV+A1pO9GwYHTPqU+Akxzf
	4W1cGBJwAIIP735NFQRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lwL6Q-00DXRT-BM; Thu, 24 Jun 2021 08:52:50 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lwL63-00DXFA-8W
 for barebox@lists.infradead.org; Thu, 24 Jun 2021 08:52:29 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lwL60-0000sE-V4; Thu, 24 Jun 2021 10:52:24 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lwL60-0000aa-6H; Thu, 24 Jun 2021 10:52:24 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 24 Jun 2021 10:52:05 +0200
Message-Id: <20210624085223.14616-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210624_015227_433058_E477F605 
X-CRM114-Status: GOOD (  11.28  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v3 00/18] Apply device tree overlays to kernel tree
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Third round. This time I implemented the filepattern and compatible
matching as an extensible list of filters.

Changes since v2:

- rename globalvars, use dots instead of underscores
- Add filter mechanism to allow to add board or SoC specific filters

Changes since v1:

- Do not (re-)load firmware on each of_fix_tree()
- handle empty strings returned from strsep gracefully
- Drop -S option from of_overlay command instead of ignoring it

Sascha Hauer (18):
  of: of_copy_node(): Copy phandles as well
  of: Add function to duplicate a device tree
  fdt: Check blob size during unflattening
  firmware: make device_node argument non const
  libbb: Add find_path function
  firmware: consolidate ifdefs
  firmware: Add search path
  firmware: Fix device_node matching
  firmware: recognize by reproducible name
  blspec: Set firmware searchpath
  overlay: Add of_overlay_apply_file()
  firmware: Load from global search path
  blspec: Rework firmware load
  overlay: Add filters to choose which overlays to apply
  blspec: Apply overlays from rootfs
  doc: devicetree: Refer to internal device tree also as live tree
  Documentation: Add documentation for device tree overlays
  of_firmware: Fix handling of firmware-name property

 Documentation/user/devicetree.rst         |  45 ++-
 arch/arm/boards/qemu-virt/board.c         |   4 +-
 arch/arm/boards/raspberry-pi/rpi-common.c |   2 +-
 arch/arm/boards/webasto-ccbv2/board.c     |   2 +-
 arch/arm/lib32/bootm.c                    |   6 +-
 arch/arm/lib32/bootu.c                    |   5 +-
 arch/arm/lib32/bootz.c                    |   3 +
 arch/arm/lib64/armlinux.c                 |   4 +
 arch/kvx/lib/bootm.c                      |   6 +
 arch/mips/lib/bootm.c                     |   4 +
 arch/powerpc/lib/ppclinux.c               |   4 +
 arch/riscv/lib/bootm.c                    |   5 +
 commands/of_diff.c                        |   6 +-
 commands/of_display_timings.c             |   2 +-
 commands/of_dump.c                        |   4 +-
 commands/of_overlay.c                     |  34 +--
 commands/oftree.c                         |   2 +-
 common/blspec.c                           |  99 +++---
 common/bootm.c                            |   4 +-
 common/efi/efi.c                          |   2 +-
 common/firmware.c                         |  59 +++-
 common/image-fit.c                        |   2 +-
 common/oftree.c                           |   4 +-
 common/state/backend_format_dtb.c         |   2 +-
 drivers/firmware/altera_serial.c          |   1 +
 drivers/firmware/socfpga.c                |   2 +
 drivers/firmware/zynqmp-fpga.c            |   2 +
 drivers/of/base.c                         |   8 +-
 drivers/of/fdt.c                          |  17 +-
 drivers/of/of_firmware.c                  | 137 ++++++---
 drivers/of/overlay.c                      | 355 ++++++++++++++++++++++
 include/firmware.h                        |  26 +-
 include/libbb.h                           |   4 +-
 include/of.h                              |  43 ++-
 lib/libbb.c                               |  58 ++--
 35 files changed, 765 insertions(+), 198 deletions(-)

-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

