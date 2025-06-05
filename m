Delivery-date: Thu, 05 Jun 2025 13:37:09 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uN8uD-003zhA-2Z
	for lore@lore.pengutronix.de;
	Thu, 05 Jun 2025 13:37:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uN8uA-0000S0-RQ
	for lore@pengutronix.de; Thu, 05 Jun 2025 13:37:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=kZ3oy+ApHs02A7VKbdhb51XKZXlDckIJyIqEpRE6ouw=; b=aoxq1vpBbKbK2QiZqmch135n5K
	YhXMVwMwOZfHSdTW4Hcn3kzc+oRdNcm73yD5aLjcjMDcYiB0+RW3IF8qkbOFrCgnXlXBNH8PWK1yN
	wNKQ/YdtfmPUsk+KjmN3G/4oXb39RsXSxozwLHDxX0z0aFbP6oMxILKJ3hk8fAoZoz+xer2lrhPrZ
	PaEHOyDn/nQjlNjVS6K2d3xu4ASZaUalhEMssBv6UhqhlkwBV/C9mxrk2xUGuixdYdQwEB3htC7LF
	VF2phzNmaGoMhzZy8icfzx8jTCRRFQ3oljxSfaRy9KRhBTkRKapBnlUwwJQTZ5fxjfzgiU43M6rH1
	6pg89LKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN8tX-0000000FNIA-3RRk;
	Thu, 05 Jun 2025 11:36:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN8sg-0000000FN7v-0lTW
	for barebox@lists.infradead.org;
	Thu, 05 Jun 2025 11:35:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uN8se-0007MQ-Uo
	for barebox@lists.infradead.org; Thu, 05 Jun 2025 13:35:32 +0200
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uN8se-001wzO-2S
	for barebox@lists.infradead.org;
	Thu, 05 Jun 2025 13:35:32 +0200
Received: from localhost ([::1] helo=dude06.red.stw.pengutronix.de)
	by dude06.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uN8sf-008mT4-0x
	for barebox@lists.infradead.org;
	Thu, 05 Jun 2025 13:35:32 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu,  5 Jun 2025 13:35:09 +0200
Message-Id: <20250605113530.2076990-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250605_043534_233020_9CDEC0CF 
X-CRM114-Status: GOOD (  11.04  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 00/21] sandbox: add libfuzzer-based fuzzing
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We have a number of security-sensitive parsers in barebox that process
untrusted input, even in secure boot systems, e.g. the FIT parser, but
also the partition parser.

This series adds fuzzing tests for a number of these parsers based on
libfuzzer.

Ahmad Fatoum (21):
  pbl: add provision for architectures without piggy loader
  firmware: make Layerscape FMan firmware proper-only
  mci: sdhci: support compiling common SDHCI code for sandbox PBL
  kbuild: define and use more generic symlink command
  kbuild: collect compatibility symlink creation in symlink-y
  kbuild: allow customizing barebox proper binary
  sandbox: make available all CONFIG_ symbols to OS glue code
  sandbox: switch to using PBL
  kbuild: populate non-host CXX variables
  string: add fortify source support
  sandbox: populate UNAME_M variable
  Add fuzzing infrastructure
  filetype: add fuzz target
  block: mark underlying cdev with DEVFS_IS_BLOCK_DEV
  block: add lightweight ramdisk support
  fuzz: add support for passing fuzz data as r/o ramdisk
  partitions: add partition table parser fuzz target
  fdt: add fuzz test
  fit: add fuzz test
  Documentation: add LLVM libfuzzer documentation
  sandbox: add support for coverage info generation

 .gitignore                                    |   6 +
 Documentation/devel/devel.rst                 |   1 +
 Documentation/devel/fuzzing.rst               | 136 +++
 Makefile                                      |  72 +-
 arch/Kconfig                                  |   6 +
 arch/sandbox/Kconfig                          |  10 +
 arch/sandbox/Kconfig.debug                    |   7 +
 arch/sandbox/Makefile                         |  91 +-
 arch/sandbox/board/.gitignore                 |   3 -
 arch/sandbox/board/Makefile                   |   2 -
 arch/sandbox/include/asm/barebox-sandbox.h    |  10 +
 arch/sandbox/lib/.gitignore                   |   3 +
 arch/sandbox/lib/Makefile                     |   2 +-
 .../{board/barebox.lds.S => lib/pbl.lds.S}    |   0
 arch/sandbox/os/Makefile                      |  24 +-
 arch/sandbox/os/common.c                      | 138 ++-
 arch/sandbox/{lib => os}/unwind.c             |   3 +-
 arch/x86/um/Makefile                          |   4 +-
 commands/Makefile                             |   1 +
 commands/fuzz.c                               | 118 +++
 commands/stacksmash.c                         |   6 +-
 common/Kconfig                                |   7 +-
 common/block.c                                |   9 +-
 common/boards/configs/libfuzzer.config        |  14 +
 common/filetype.c                             |  12 +
 common/image-fit.c                            |  76 +-
 common/partitions.c                           |  56 ++
 common/startup.c                              |   1 +
 drivers/block/Kconfig                         |   6 +
 drivers/block/Makefile                        |   1 +
 drivers/block/ramdisk.c                       | 178 ++++
 drivers/of/fdt.c                              |  39 +
 firmware/Makefile                             |   3 +-
 images/.gitignore                             |   2 +
 images/Makefile                               |  26 +-
 images/Makefile.sandbox                       |  33 +
 include/asm-generic/barebox.lds.h             |  13 +-
 include/block.h                               |  13 +-
 include/dma.h                                 |  22 +-
 include/driver.h                              |   1 +
 include/filetype.h                            |   4 +-
 include/fuzz.h                                |  87 ++
 include/linux/compiler_types.h                |  41 +
 include/linux/fortify-string.h                | 804 ++++++++++++++++++
 include/linux/string.h                        |  17 +
 include/mci.h                                 |   9 +
 include/ramdisk.h                             |  24 +
 lib/Kconfig.hardening                         |  15 +
 lib/Makefile                                  |   3 +-
 lib/fuzz.c                                    |  79 ++
 lib/string.c                                  |  16 +-
 lib/string_helpers.c                          |  30 +
 lib/vsprintf.c                                |  15 +
 pbl/Kconfig                                   |  10 +-
 pbl/string.c                                  |   1 +
 scripts/Kconfig.include                       |   1 +
 scripts/Makefile.lib                          |   6 +-
 scripts/clang-runtime-dir.sh                  |  19 +
 scripts/subarch.include                       |  12 +-
 test/Kconfig                                  |  39 +
 60 files changed, 2252 insertions(+), 135 deletions(-)
 create mode 100644 Documentation/devel/fuzzing.rst
 create mode 100644 arch/sandbox/include/asm/barebox-sandbox.h
 create mode 100644 arch/sandbox/lib/.gitignore
 rename arch/sandbox/{board/barebox.lds.S => lib/pbl.lds.S} (100%)
 rename arch/sandbox/{lib => os}/unwind.c (88%)
 create mode 100644 commands/fuzz.c
 create mode 100644 common/boards/configs/libfuzzer.config
 create mode 100644 drivers/block/ramdisk.c
 create mode 100644 images/Makefile.sandbox
 create mode 100644 include/fuzz.h
 create mode 100644 include/linux/fortify-string.h
 create mode 100644 include/ramdisk.h
 create mode 100644 lib/fuzz.c
 create mode 100644 lib/string_helpers.c
 create mode 100755 scripts/clang-runtime-dir.sh

-- 
2.39.5



