Delivery-date: Wed, 23 Jun 2021 07:18:39 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvvHb-0005GZ-7W
	for lore@lore.pengutronix.de; Wed, 23 Jun 2021 07:18:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvvHZ-0007Ya-N3
	for lore@pengutronix.de; Wed, 23 Jun 2021 07:18:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BlW0DNCNIgd1EN5ce9jOV90+cQaQwFYHfibEznBGFxE=; b=u0w7hJv3O+tg2c
	bvUUBfJ+FY5ZHwimT68KWCLPg/qj2eF8FiW0WO5LdXBzGz8dnuft0UUS9oCr5uRd17BR3uvyQwZDi
	E81SGsps4ImNnr6pNnXz9HAyc4UmAxOYWyH0mr70fP+Yzf29GggccFHHWgbfElAfWwoVfrOSsdj5a
	c8eFwFVxPi4hKKlXBsXS+mNBkImCCDTFttmmrM/7Q3tsHXR3GY66S1q/05jX1rH35chKRjkTHZ1fv
	OGXTmg1tPVR9HH/T8Zm8DERsNnvkXDGSrbwG/lN+MOl7W5VjdzcjnljrILqH39yQ+54FUN5lkKplo
	p5S9lZcCLps/5M+Eefcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvvGI-009Mlv-2z; Wed, 23 Jun 2021 05:17:18 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvvFd-009MQ3-E4
 for barebox@lists.infradead.org; Wed, 23 Jun 2021 05:16:42 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lvvFb-0006rB-JL; Wed, 23 Jun 2021 07:16:35 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lvvFa-0000MS-Nt; Wed, 23 Jun 2021 07:16:34 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 23 Jun 2021 07:16:15 +0200
Message-Id: <20210623051632.30253-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210622_221637_628042_87511CBE 
X-CRM114-Status: GOOD (  15.29  )
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
Subject: [PATCH v2 00/17] Apply device tree overlays to kernel tree
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

With this series barebox gains the capability to apply device tree
overlays to the kernel device tree before starting the kernel with it.
Which overlays are applied can be controlled with a set of globavars,
for details see the documentation patch in this series.

The particular usecase we have in mind with this series is that the
rootfs has a bunch of device tree overlays in it which shall be applied
based on bootloader knowledge. For example information of the exact
board type might be stored in an EEPROM. Based on that information
barebox can now pick the right overlays for that board from the rootfs.
Interpreting the EEPROM content is board specific and not part of this
series, for now the the globalvars must be set manually.

The previous series had the problem that each time a of_fix_tree() was
executed all firmwares were reloaded. This is solved in this series.
Instead of loading the firmware files directly when applying an overlay,
they are collected to a list. Only when we are booting the Kernel we
explicitly load the firmwares we have previously collected.

Changes since v1:

- Do not (re-)load firmware on each of_fix_tree()
- handle empty strings returned from strsep gracefully
- Drop -S option from of_overlay command instead of ignoring it

Sascha Hauer (17):
  fdt: Check blob size during unflattening
  firmware: make device_node argument non const
  libbb: Add find_path function
  firmware: consolidate ifdefs
  firmware: Add search path
  firmware: Fix device_node matching
  firmware: recognize by reproducible name
  blspec: Set firmware searchpath
  overlay: only apply compatible trees
  overlay: Add of_overlay_apply_file()
  firmware: Load from global search path
  blspec: Rework firmware load
  of_overlay: apply overlays during booting
  blspec: Apply overlays from rootfs
  doc: devicetree: Refer to internal device tree also as live tree
  Documentation: Add documentation for device tree overlays
  of_firmware: Fix handling of firmware-name property

 Documentation/user/devicetree.rst         |  39 +++++-
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
 commands/of_diff.c                        |   2 +-
 commands/of_display_timings.c             |   2 +-
 commands/of_dump.c                        |   4 +-
 commands/of_overlay.c                     |  34 +----
 commands/oftree.c                         |   2 +-
 common/blspec.c                           | 102 ++++++---------
 common/bootm.c                            |   4 +-
 common/efi/efi.c                          |   2 +-
 common/firmware.c                         |  59 ++++++++-
 common/image-fit.c                        |   2 +-
 common/oftree.c                           |   2 +
 common/state/backend_format_dtb.c         |   2 +-
 drivers/firmware/altera_serial.c          |   1 +
 drivers/firmware/socfpga.c                |   2 +
 drivers/firmware/zynqmp-fpga.c            |   2 +
 drivers/of/base.c                         |   2 +-
 drivers/of/fdt.c                          |  17 ++-
 drivers/of/of_firmware.c                  | 137 ++++++++++++-------
 drivers/of/overlay.c                      | 152 ++++++++++++++++++++++
 include/firmware.h                        |  26 ++--
 include/libbb.h                           |   4 +-
 include/of.h                              |  45 ++++++-
 lib/libbb.c                               |  58 ++++++---
 35 files changed, 552 insertions(+), 195 deletions(-)

-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

