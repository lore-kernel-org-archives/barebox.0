Delivery-date: Wed, 02 Jun 2021 16:39:49 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1loS29-00041C-PU
	for lore@lore.pengutronix.de; Wed, 02 Jun 2021 16:39:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1loS21-0008F2-OB
	for lore@pengutronix.de; Wed, 02 Jun 2021 16:39:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qshDVL8rOEHdeBscecUMQMuwFyzHEeIuaP0i047jM6k=; b=bQOkztLGVwH/F1
	RiQoaqwKiaQ1keINtqhpvw+7sekcf5Nn6V3WcaYEAlX3zjO7FsjgCHX7xG0rUTG77W2BPqQemCkm4
	dT5rUrnj2K6Loc24YsEKFwWnrq5ohgMPrXj/3oC/8o4fcLJXVkLEIzgghFyaNqa802kYqjs44Fujy
	qzc+yWgg8B7xuZR9REUSwu5c5HXUZVNJE6QPIlgY+1OVWWuTdRAX3nPqiNNwVba4xqOHNNeE750oo
	9afzXifEAPIeck48MZThG1smZ9pLeS49qweh51S9K6zxWIE5ixYoEugHmzu31FUI6ato5FZMpZ/tv
	moYwY2iDEx4d53mBD6RQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1loS09-004cFS-Le; Wed, 02 Jun 2021 14:37:46 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1loRxY-004ayA-V5
 for barebox@lists.infradead.org; Wed, 02 Jun 2021 14:35:11 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1loRxW-0006tL-9X
 for barebox@lists.infradead.org; Wed, 02 Jun 2021 16:35:02 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1loRxV-0006hI-KY
 for barebox@lists.infradead.org; Wed, 02 Jun 2021 16:35:01 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed,  2 Jun 2021 16:34:40 +0200
Message-Id: <20210602143453.23097-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210602_073505_099978_D927CD1E 
X-CRM114-Status: GOOD (  13.11  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v3 00/13] add barebox in-tree testing infrastructure
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

v2 -> v3:
  - Added own BareboxTestStrategy instead of reusing labgrid's.
    This affords us flexibility in future and lets us get rid
    of unused ShellDriver boilerplate in YAML/conftest (Rouven)
  - Make selftest timeout of 30 seconds explicit (Rouven)
    This can be increased as needed in future.
  - Print out barebox output when selftest assertion fails (Rouven)
  - Collected Rouven's off-list Acked-by's

v1 -> v2:
  - drop already merged patches
  - use objcopy to swap image byte order instead of writing something new (Jules)
  - always run tests from source directory, not build directory when
    building out-of-tree (honour KBUILD_OUTPUT, build symlink in that case)
  - add some more sample tests
  - add test/riscv/sifive_defconfig.yaml

Ahmad Fatoum (13):
  kbuild: add install target
  kbuild: add ARCH={i386, x86_64} as aliases for x86
  kbuild: add ARCH=um alias for sandbox
  MIPS: qemu-malta: generate swapped image as part of multi-image build
  openrisc: set default KBUILD_IMAGE
  Documentation: boards: RISC-V: update TinyEMU support
  test: add basic barebox self-test infrastructure
  test: self: port Linux printf kselftest
  test: add labgrid configs for some emulated targets
  test: add first sample tests
  test: add emulate.pl, a runner for barebox on emulated targets
  test: self: run selftests as part of the pytest suite
  test: add bthread test

 Documentation/boards/emulated.rst             |  70 +++
 Documentation/boards/mips/qemu-malta.rst      |  16 +-
 Documentation/boards/riscv.rst                |  20 +-
 Documentation/boards/riscv/barebox-virt32.cfg |   7 +
 Documentation/boards/riscv/barebox-virt64.cfg |   7 +
 Kconfig                                       |   1 +
 Makefile                                      |  28 +-
 arch/openrisc/Makefile                        |   2 +
 commands/Makefile                             |   1 +
 commands/selftest.c                           |  88 +++
 common/startup.c                              |   4 +
 images/.gitignore                             |   1 +
 images/Makefile                               |   7 +-
 images/Makefile.malta                         |  10 +-
 include/bselftest.h                           |  74 +++
 include/stdlib.h                              |   5 +
 test/.gitignore                               |   1 +
 test/Kconfig                                  |   8 +
 test/Makefile                                 |   1 +
 test/__init__.py                              |   0
 test/arm/a15@vexpress_defconfig.yaml          |  20 +
 test/arm/a9@vexpress_defconfig.yaml           |  20 +
 test/arm/qemu_virt64_defconfig.yaml           |  24 +
 test/arm/vexpress_defconfig.yaml              |   1 +
 test/arm/virt@vexpress_defconfig.yaml         |  22 +
 test/conftest.py                              |  27 +
 test/emulate.pl                               | 509 ++++++++++++++++++
 test/kconfig/base.cfg                         |   4 +
 test/kconfig/full.cfg                         |   2 +
 test/kconfig/virtio-pci.cfg                   |   6 +
 test/mips/be@qemu-malta_defconfig.yaml        |  22 +
 test/mips/le@qemu-malta_defconfig.yaml        |  25 +
 test/mips/qemu-malta_defconfig.yaml           |   1 +
 test/openrisc/generic_defconfig.yaml          |  20 +
 test/py/__init__.py                           |   0
 test/py/helper.py                             |  38 ++
 test/py/test_bselftests.py                    |   8 +
 test/py/test_bthread.py                       |  23 +
 test/py/test_shell.py                         |  36 ++
 test/riscv/qemu@virt32_defconfig.yaml         |  27 +
 test/riscv/qemu@virt64_defconfig.yaml         |  27 +
 test/riscv/sifive_defconfig.yaml              |  25 +
 test/riscv/tinyemu@virt32_defconfig.yaml      |  22 +
 test/riscv/tinyemu@virt64_defconfig.yaml      |  22 +
 test/riscv/virt32_defconfig.yaml              |   1 +
 test/riscv/virt64_defconfig.yaml              |   1 +
 test/sandbox/sandbox_defconfig.yaml           |  12 +
 test/self/Kconfig                             |  39 ++
 test/self/Makefile                            |   4 +
 test/self/core.c                              |  22 +
 test/self/printf.c                            | 302 +++++++++++
 test/strategy.py                              |  53 ++
 test/x86/efi_defconfig.yaml                   |   1 +
 test/x86/pc@efi_defconfig.yaml                |  31 ++
 test/x86/q35@efi_defconfig.yaml               |  31 ++
 test/x86/virtio@efi_defconfig.yaml            |  32 ++
 56 files changed, 1786 insertions(+), 25 deletions(-)
 create mode 100644 Documentation/boards/emulated.rst
 create mode 100644 Documentation/boards/riscv/barebox-virt32.cfg
 create mode 100644 Documentation/boards/riscv/barebox-virt64.cfg
 create mode 100644 commands/selftest.c
 create mode 100644 include/bselftest.h
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
 create mode 100644 test/riscv/sifive_defconfig.yaml
 create mode 100644 test/riscv/tinyemu@virt32_defconfig.yaml
 create mode 100644 test/riscv/tinyemu@virt64_defconfig.yaml
 create mode 120000 test/riscv/virt32_defconfig.yaml
 create mode 120000 test/riscv/virt64_defconfig.yaml
 create mode 100644 test/sandbox/sandbox_defconfig.yaml
 create mode 100644 test/self/Kconfig
 create mode 100644 test/self/Makefile
 create mode 100644 test/self/core.c
 create mode 100644 test/self/printf.c
 create mode 100644 test/strategy.py
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

