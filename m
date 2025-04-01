Delivery-date: Tue, 01 Apr 2025 13:05:21 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzZQn-006xtr-0K
	for lore@lore.pengutronix.de;
	Tue, 01 Apr 2025 13:05:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzZQl-00039D-NO
	for lore@pengutronix.de; Tue, 01 Apr 2025 13:05:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=G8q5b8D74EJDB6s2LMWC5I6yey3xhYT6pjonnMY2VtA=; b=k3QcTgqbq+8jfK0cdE7yjGF1O1
	0UoBkbNu88uhD4U1m7T+80/os8XxrNz6tO53bdGUhi/Cukw41eBZQB3ky8Qg218y1FPofluhdL4JZ
	3f4jNeeYPcdpm6D11ElKnFJcEXBLggQd9Hfa1CKR34fQxlc5jozQJZP5LUzopZN+XjvjUe8brUnX/
	a6mLOYKZAeFzJVy3y0lNCics7EXG0rzKPp4dZ0XoM0j+pLFsNW9dc2ldcZfvw8gz+ItFvCpZrjBNL
	xifcKMd81xilJMBhW2V9YUwP9a2q/7dm5zk365m6t4G/YYs/HMFfZuGSO3/kOaiWbJ8vbNGQ6X9LC
	YJVUjIKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzZQC-00000002iiu-44cD;
	Tue, 01 Apr 2025 11:04:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzZA8-00000002foW-2ekc
	for barebox@lists.infradead.org;
	Tue, 01 Apr 2025 10:48:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tzZA7-0000Mh-Ea
	for barebox@lists.infradead.org; Tue, 01 Apr 2025 12:48:07 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tzZA7-002kWV-0o
	for barebox@lists.infradead.org;
	Tue, 01 Apr 2025 12:48:07 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tzZA7-00GcAa-0X
	for barebox@lists.infradead.org;
	Tue, 01 Apr 2025 12:48:07 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue,  1 Apr 2025 12:47:50 +0200
Message-Id: <20250401104806.3959859-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250401_034808_671907_37306F03 
X-CRM114-Status: GOOD (  17.64  )
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
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 00/16] boot: implement generic bootsource target
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The default net boot target is suboptimal in that it usually fails for
a new board. A better default would be to try booting from the same boot
medium, barebox itself was booted from, which so far was only possible
via scripts.

This series adds a new way to achieve this through a bootsource alias.

`boot bootsource` will then be resolved to e.g. `boot mmc0`, which will
walk all partitions in search of bootloader spec entries.
In that system, `boot bootsource.1` would be resolved to `boot mmc0.1`.

A key aspect of the cdev resolution is that it happens at use time.
This makes it easier for dynamic aliases and even allows for having
aliases that resolve to multiple cdevs.

In the future with EFI support, this same mechanism can be used to
identify the correct ESP by its partition type and boot the EFI payload
contained within. To make that future easier, the blspec code is
reworked for better reuse in future before adding support to boot a
specific cdev by name without expecting that device name and cdev name
are identical.

In addition, I have patches that would follow to make cdev aliases
usable from the device tree as well: A barebox,bootsource node for
example would resolve to the correct cdev and can thus be used together
with barebox state to allow for images that behave identically on SD and
eMMC without having to resort to scripting or board code.

Ahmad Fatoum (16):
  boot: change bootentry_register_provider to take struct argument
  boot: move nfs:// parsing out of bootloader spec code
  blspec: remove unused blspec_scan_devices
  blspec: don't export blspec functions
  blspec: factor out generic parts into bootscan helper
  common: bootscan: add scan_disk callback
  blspec: support boot /dev/virtioblkX
  bootm: associate bootm overrides with struct bootentry
  boot: split off bootarg API into new bootargs.h header
  block: add get_rootarg block op into block_device_ops
  block: fixup rootwait argument when needed by default
  of: implement stub for of_cdev_find
  bootsource: implement bootsource_of_cdev_find
  common: bootdef: add new boot entry provider
  kconfig: implement IF_ENABLED helper
  boot: make bootsource the default boot target if enabled

 arch/arm/boards/protonic-imx6/board.c |  10 +-
 commands/boot.c                       |  11 +-
 common/Kconfig                        |  25 ++
 common/Makefile                       |   4 +-
 common/block.c                        |  27 ++
 common/blspec.c                       | 403 ++++++--------------------
 common/boot.c                         | 144 ++++++++-
 common/bootargs.c                     |  12 +
 common/bootchooser.c                  |   6 +-
 common/bootdef.c                      |  40 +++
 common/bootm.c                        |   9 +-
 common/bootscan.c                     | 187 ++++++++++++
 common/bootsource.c                   |  17 ++
 common/cdev-alias.c                   |  79 +++++
 drivers/block/efi-block-io.c          |  10 +-
 drivers/mci/mci-core.c                |  46 ++-
 drivers/usb/storage/usb.c             |   1 +
 fs/fs.c                               |  56 ----
 fs/nfs.c                              |   4 +
 include/block.h                       |   7 +
 include/blspec.h                      |  29 --
 include/boot.h                        |  26 +-
 include/bootargs.h                    |  29 ++
 include/bootm-overrides.h             |  30 ++
 include/bootm.h                       |  18 --
 include/bootscan.h                    |  34 +++
 include/bootsource.h                  |   1 +
 include/driver.h                      |  19 +-
 include/fs.h                          |   1 -
 include/linux/kconfig.h               |   6 +
 include/of.h                          |   5 +
 31 files changed, 814 insertions(+), 482 deletions(-)
 create mode 100644 common/bootdef.c
 create mode 100644 common/bootscan.c
 create mode 100644 common/cdev-alias.c
 delete mode 100644 include/blspec.h
 create mode 100644 include/bootargs.h
 create mode 100644 include/bootm-overrides.h
 create mode 100644 include/bootscan.h

-- 
2.39.5



