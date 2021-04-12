Delivery-date: Mon, 12 Apr 2021 09:19:01 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lVqqb-0003g6-3H
	for lore@lore.pengutronix.de; Mon, 12 Apr 2021 09:19:01 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lVqqZ-0004wH-CZ
	for lore@pengutronix.de; Mon, 12 Apr 2021 09:19:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=qSCY+pzgfqGhisyq5m4wK9SonjnMb2Re6IBqllgykss=; b=U6uP6FGbiputlIV9LHW8keGaew
	tZq5IIAFSqBmt1nnNmSF7lvLF3xXk2bHAtTO/5J6fbCpZYLhtSDFe4q5wsRUxZ14KHK+/sXUadfPY
	c3v/ZTVscRwj79vGc1aeFxN+Xu6T1kxC2ILr1L4oV2gcM30tuKfcQSTWlGh4tx4R+kys+Osn0K/w6
	0/J1P4cGKDAYtv9ryLfIx6QYwpafssHADkG7afr01mr3aiadOUnMQNhmb3p2LrtUW8vS/e6iDGYAY
	ldBrHG9Hkcrd76H9b/UZH0/XMi9jQbsRQSSCK4Wtm7Hm9pgYmmomUOsggEljeloUqQQGwB9uV7G5p
	LFR8xDng==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lVqpO-005w5w-C9; Mon, 12 Apr 2021 07:17:46 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVqoj-005vua-1b
 for barebox@desiato.infradead.org; Mon, 12 Apr 2021 07:17:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=4sFghlXBXxzvKbGT+uyS2xQc+aKA4HvkPpCtFLVkkyQ=; b=R4S4jxxXLdzq12ZJqmZcugDxWx
 tQA9zMh6Zlj+9b/Qz1wIO5+eVNFZFIx3O36AoeXKLCBs/9NBcIqsHWi68asWgmprzGmjMXpNfaWlq
 5BxvBS6V2pufbJN6sH2AdVxWFZlRB4WndhSxDLvsjq9s2WbDv607JOLGa48ZKWGjEuk32QXL8bjdd
 H3fSpmy3hUmUSdIwRMeY69zAjHuwTURDAUxv0KpPf5v9ZgaL+GjjP5OIny4o6yVZqSZakncqcbXLh
 dDQppQ6JusK4kORManmW+WzHsTC/0hYh6Lgyojl5hhpnqh47MfkaPMIpxnKuJ7Jls7XgmePERECp8
 /NFCqsjw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVqod-005vEj-Po
 for barebox@lists.infradead.org; Mon, 12 Apr 2021 07:17:03 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lVqoa-0004HC-6D; Mon, 12 Apr 2021 09:16:56 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lVqoZ-0002fK-66; Mon, 12 Apr 2021 09:16:55 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon, 12 Apr 2021 09:16:34 +0200
Message-Id: <20210412071651.8769-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210412_001700_104388_6F23DD68 
X-CRM114-Status: GOOD (  18.54  )
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
Cc: rcz@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 00/17] add barebox in-tree testing infrastructure
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Commit 10948f86a3c5 ("watchdog: fix watchdog_set_timeout breakage for
drivers like imxwd") fixes an issue caught by a labgrid test suite
exercising functionality of a barebox release.

This could've been caught sooner if these tests were to run as part
of an automated _continuous_ testing process while sitting in next.

This series lays the ground work for that:

  - It commits to tree, machine readable YAML specification on how to
    build, emulate and test a number of defconfigs

  - It adds the glue required to configure tuxmake to build according
    to these configuration files

  - It extends the build system to allow calling labgrid-pytest
    on these files from within the tree

  - It adds a very basic self-test framework to allow for unit-testing
    barebox functionality

  - It adds a command line interface to tie this all together. Examples:
    ./test/emulate.pl virtio@efi_defconfig --emulate -- -device ?
    ./test/emulate.pl virtio@efi_defconfig --test -- --lg-log

The use of labgrid-pytest QEMUDriver's allows us in future the flexibility
to share tests between virtualized and physical targets. For now only
QEMUDriver-enabled targets are considered.

To demonstrate usage, this series imports the Linux printf selftest, which
is compiled into barebox and verified to run without errors by pytest.

Unless there are major issues, I'd appreciate if this series could get
merged first with changes happening gradually. This would allow writing
unit tests for new functionality in parallel.

Ahmad Fatoum (17):
  kbuild: add install target
  kbuild: add ARCH={i386, x86_64} as aliases for x86
  kbuild: add ARCH=um alias for sandbox
  MIPS: qemu-malta: generate swapped image as part of multi-image build
  MIPS: qemu-malta: replace board code with syscon-reboot
  MIPS: configs: qemu-malta: enable Virt I/O
  openrisc: set default KBUILD_IMAGE
  Documentation: boards: RISC-V: update TinyEMU support
  test: add basic barebox self-test infrastructure
  test: self: port Linux printf kselftest
  test: add labgrid configs for some emulated targets
  test: add first sample tests
  test: support running labgrid-pytest from out-of-tree build directory
  test: add emulate.pl, a runner for barebox on emulated targets
  test: self: run selftests as part of the pytest suite
  test: add bthread test
  [RFC] test: run ./test/emulate.pl in Github action

 .github/workflows/build-configs.yaml          |  41 ++
 .github/workflows/vm-tests.yaml               |  71 +++
 .gitignore                                    |   2 +
 Documentation/boards/emulated.rst             |  70 +++
 Documentation/boards/mips/qemu-malta.rst      |  16 +-
 Documentation/boards/riscv.rst                |  20 +-
 Documentation/boards/riscv/barebox-virt32.cfg |   7 +
 Documentation/boards/riscv/barebox-virt64.cfg |   7 +
 Kconfig                                       |   1 +
 Makefile                                      |  52 +-
 arch/mips/configs/qemu-malta_defconfig        |  12 +-
 arch/mips/dts/qemu-malta.dts                  |  13 +
 arch/mips/mach-malta/Kconfig                  |   1 +
 arch/mips/mach-malta/Makefile                 |   1 -
 arch/mips/mach-malta/include/mach/hardware.h  |   6 -
 arch/mips/mach-malta/reset.c                  |  31 --
 arch/openrisc/Makefile                        |   2 +
 commands/Makefile                             |   1 +
 commands/selftest.c                           |  88 ++++
 images/.gitignore                             |   1 +
 images/Makefile                               |   7 +-
 images/Makefile.malta                         |   8 +-
 include/bselftest.h                           |  70 +++
 include/stdlib.h                              |   5 +
 scripts/Makefile                              |   1 +
 scripts/bswap.c                               |  83 +++
 test/.gitignore                               |   1 +
 test/Kconfig                                  |   8 +
 test/Makefile                                 |   1 +
 test/__init__.py                              |   0
 test/arm/a15@vexpress_defconfig.yaml          |  25 +
 test/arm/a9@vexpress_defconfig.yaml           |  25 +
 test/arm/qemu_virt64_defconfig.yaml           |  28 +
 test/arm/vexpress_defconfig.yaml              |   1 +
 test/arm/virt@vexpress_defconfig.yaml         |  26 +
 test/conftest.py                              |  21 +
 test/emulate.pl                               | 483 ++++++++++++++++++
 test/kconfig/base.cfg                         |   4 +
 test/kconfig/full.cfg                         |   2 +
 test/kconfig/no-deps.cfg                      |   3 +
 test/kconfig/virtio-pci.cfg                   |   6 +
 test/mips/be@qemu-malta_defconfig.yaml        |  26 +
 test/mips/le@qemu-malta_defconfig.yaml        |  29 ++
 test/mips/qemu-malta_defconfig.yaml           |   1 +
 test/openrisc/generic_defconfig.yaml          |  25 +
 test/py/__init__.py                           |   0
 test/py/helper.py                             |  33 ++
 test/py/test_bselftests.py                    |   8 +
 test/py/test_bthread.py                       |  23 +
 test/py/test_shell.py                         |  16 +
 test/riscv/qemu@virt32_defconfig.yaml         |  29 ++
 test/riscv/qemu@virt64_defconfig.yaml         |  29 ++
 test/riscv/tinyemu@virt32_defconfig.yaml      |  26 +
 test/riscv/tinyemu@virt64_defconfig.yaml      |  26 +
 test/riscv/virt32_defconfig.yaml              |   1 +
 test/riscv/virt64_defconfig.yaml              |   1 +
 test/sandbox/sandbox_defconfig.yaml           |  14 +
 test/self/Kconfig                             |  39 ++
 test/self/Makefile                            |   4 +
 test/self/core.c                              |  39 ++
 test/self/printf.c                            | 302 +++++++++++
 test/x86/efi_defconfig.yaml                   |   1 +
 test/x86/pc@efi_defconfig.yaml                |  33 ++
 test/x86/q35@efi_defconfig.yaml               |  34 ++
 test/x86/virtio@efi_defconfig.yaml            |  34 ++
 65 files changed, 1960 insertions(+), 64 deletions(-)
 create mode 100644 .github/workflows/build-configs.yaml
 create mode 100644 .github/workflows/vm-tests.yaml
 create mode 100644 Documentation/boards/emulated.rst
 create mode 100644 Documentation/boards/riscv/barebox-virt32.cfg
 create mode 100644 Documentation/boards/riscv/barebox-virt64.cfg
 delete mode 100644 arch/mips/mach-malta/reset.c
 create mode 100644 commands/selftest.c
 create mode 100644 include/bselftest.h
 create mode 100644 scripts/bswap.c
 create mode 100644 test/.gitignore
 create mode 100644 test/Kconfig
 create mode 100644 test/Makefile
 create mode 100644 test/__init__.py
 create mode 100644 test/arm/a15@vexpress_defconfig.yaml
 create mode 100644 test/arm/a9@vexpress_defconfig.yaml
 create mode 100644 test/arm/qemu_virt64_defconfig.yaml
 create mode 120000 test/arm/vexpress_defconfig.yaml
 create mode 100644 test/arm/virt@vexpress_defconfig.yaml
 create mode 100644 test/conftest.py
 create mode 100755 test/emulate.pl
 create mode 100644 test/kconfig/base.cfg
 create mode 100644 test/kconfig/full.cfg
 create mode 100644 test/kconfig/no-deps.cfg
 create mode 100644 test/kconfig/virtio-pci.cfg
 create mode 100644 test/mips/be@qemu-malta_defconfig.yaml
 create mode 100644 test/mips/le@qemu-malta_defconfig.yaml
 create mode 120000 test/mips/qemu-malta_defconfig.yaml
 create mode 100644 test/openrisc/generic_defconfig.yaml
 create mode 100644 test/py/__init__.py
 create mode 100644 test/py/helper.py
 create mode 100644 test/py/test_bselftests.py
 create mode 100644 test/py/test_bthread.py
 create mode 100644 test/py/test_shell.py
 create mode 100644 test/riscv/qemu@virt32_defconfig.yaml
 create mode 100644 test/riscv/qemu@virt64_defconfig.yaml
 create mode 100644 test/riscv/tinyemu@virt32_defconfig.yaml
 create mode 100644 test/riscv/tinyemu@virt64_defconfig.yaml
 create mode 120000 test/riscv/virt32_defconfig.yaml
 create mode 120000 test/riscv/virt64_defconfig.yaml
 create mode 100644 test/sandbox/sandbox_defconfig.yaml
 create mode 100644 test/self/Kconfig
 create mode 100644 test/self/Makefile
 create mode 100644 test/self/core.c
 create mode 100644 test/self/printf.c
 create mode 120000 test/x86/efi_defconfig.yaml
 create mode 100644 test/x86/pc@efi_defconfig.yaml
 create mode 100644 test/x86/q35@efi_defconfig.yaml
 create mode 100644 test/x86/virtio@efi_defconfig.yaml

-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

