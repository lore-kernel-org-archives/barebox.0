Delivery-date: Wed, 10 Mar 2021 14:30:34 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lJyv4-0001Tv-Ql
	for lore@lore.pengutronix.de; Wed, 10 Mar 2021 14:30:34 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lJyv1-0004Uu-MG
	for lore@pengutronix.de; Wed, 10 Mar 2021 14:30:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9Stjtbv1hknwlN/u1/xH7NCAZsT2T6e7Dt4hATzAMoQ=; b=Hjez2fQQC+icSZ
	Nalp3c6beRWM5IKxJONkvzH8kopgiJFkqwPw04SUWL+ZJvrmIGe7fpGsfaHW7iN0v0iY5/tA8E2qs
	ULe3J5WMImtavn+tb5ngJiNsHkwjLq4y3kJbI9khTmDZjfv03vrc7VUFy3B6TOlswHP3qC54N4+LF
	4PBgYtyc4HL+aA99HxHrjkW4G1LihJbL++OnIcUCifLhkegYWDWzZHjjRTFHUWRL0E7BbdtalQzOw
	wRJuhXCD6RQjjqnDqKv+fCCUo/3NQYMX3mm2Gfj3kAc3hKH3pO2/m/qYejbPm+ppBc+N9Oan6FFlM
	6SkJ7brddyl3mhBiLLrw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lJyts-006v9f-8M; Wed, 10 Mar 2021 13:29:20 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lJyt9-006unK-Us
 for barebox@lists.infradead.org; Wed, 10 Mar 2021 13:28:41 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lJyt7-0003fh-IK; Wed, 10 Mar 2021 14:28:33 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lJyt6-0006bl-HZ; Wed, 10 Mar 2021 14:28:32 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 10 Mar 2021 14:28:12 +0100
Message-Id: <20210310132829.7662-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210310_132836_203581_89CF5465 
X-CRM114-Status: GOOD (  12.96  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 00/17] Apply device tree overlays to kernel tree
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

With this series barebox gains the capability to apply device tree
overlays to the kernel device tree before starting the kernel with it.
Which overlays are applied can be controlled with a set of globavars,
for details see the documentation patch in this series.

The particular usecase we have in mind with this series is that the
rootfs has a bunch of device tree overlays in it which shall be applied
based on bootloader knowledge. For example information of the exact
board type might be stored in an EEPROM. Based on that information barebox
can now pick the right overlays for that board from the rootfs.
Interpreting the EEPROM content is board specific and not part of this
series, for now the the globalvars must be set manually.

Sascha

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
 arch/arm/boards/highbank/init.c           |   2 +-
 arch/arm/boards/qemu-virt/board.c         |   4 +-
 arch/arm/boards/raspberry-pi/rpi-common.c |   2 +-
 arch/arm/boards/webasto-ccbv2/board.c     |   2 +-
 arch/arm/lib32/bootm.c                    |   2 +-
 commands/of_diff.c                        |   2 +-
 commands/of_display_timings.c             |   2 +-
 commands/of_dump.c                        |   4 +-
 commands/of_overlay.c                     |  16 +--
 commands/oftree.c                         |   2 +-
 common/blspec.c                           |  99 ++++++---------
 common/bootm.c                            |   4 +-
 common/efi/efi.c                          |   2 +-
 common/firmware.c                         |  59 ++++++++-
 common/image-fit.c                        |   2 +-
 common/state/backend_format_dtb.c         |   2 +-
 drivers/firmware/altera_serial.c          |   1 +
 drivers/firmware/socfpga.c                |   2 +
 drivers/firmware/zynqmp-fpga.c            |   2 +
 drivers/of/base.c                         |   2 +-
 drivers/of/fdt.c                          |  17 ++-
 drivers/of/of_firmware.c                  |  56 ++-------
 drivers/of/overlay.c                      | 146 ++++++++++++++++++++++
 include/firmware.h                        |  26 ++--
 include/libbb.h                           |   4 +-
 include/of.h                              |  33 ++++-
 lib/libbb.c                               |  58 ++++++---
 28 files changed, 413 insertions(+), 179 deletions(-)

-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

