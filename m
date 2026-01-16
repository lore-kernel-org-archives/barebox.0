Delivery-date: Fri, 16 Jan 2026 17:07:45 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgmMT-002159-1J
	for lore@lore.pengutronix.de;
	Fri, 16 Jan 2026 17:07:44 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgmMR-0005ZC-6w
	for lore@pengutronix.de; Fri, 16 Jan 2026 17:07:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=E2VCOp6lSKlKiO9xiDXofVEY59xb1ohRYAAgiovAKIo=; b=JuAzAMoLuJad7wZAI9d2xrhYxn
	97Isqw0KMHfsWklDad6xxbQBk7ENPurr1ZeO3+bQ9EClO52uncvG1NT4htxoS+hIaNMjr3chhf65a
	PJ+FVgECNs+uYd8jcRKntQgDpOlgZE9mIcfB7ow0JiWmkb87r71BzC6B4hjvPOFWnU1HsGrhbGxJF
	GRMI3TBPXve3OHfInIn5elBUesZ3MPOcMYXurWVqryE9qCuFVsNhBJplD3v6CW5xaVxfLTEGcIyV9
	oJ8JFNOPtjKGDAfHFxlEQR8qGUG0e4nXm9I20iGDKNyUO11siEwgWrRKvmyiJNqvFmKqDHZrCWvvQ
	ltmA1RzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgmLj-0000000EPtl-3DKH;
	Fri, 16 Jan 2026 16:06:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgmLh-0000000EPso-0TJH
	for barebox@lists.infradead.org;
	Fri, 16 Jan 2026 16:06:58 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vgmLf-0004sd-FU; Fri, 16 Jan 2026 17:06:55 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: David Dgien <dgienda125@gmail.com>
Date: Fri, 16 Jan 2026 17:06:23 +0100
Message-ID: <20260116160654.3981425-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260116_080657_175106_A0BD87D4 
X-CRM114-Status: GOOD (  13.99  )
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
Subject: [PATCH 00/13] ARM32: modules: fix bitrot and add test
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

v1 -> v2:
  - drop <fdt.h> include in <compressed-dtb.h> in favor of
    https://lore.barebox.org/barebox/20260114120221.941836-3-a.fatoum@pengutronix.de/T/#m191aec342beb0a80468f5c18a7cdd58dedad08ad
  - patch 01/13 is new to allow deleting the .tmp_barebox_modules_env
    directory
  - renamed virt-el2@multi_v8_defconfig.yaml to dt-2nd@multi_v8_defconfig.yaml
  - added YAML configs for ARM32 as well (Sascha)
  - changed printf in lowlevel.c to pr_info (Sascha)

---

We have had experimental module support in barebox for quite a while,
but AFAIK it doesn't see much real world usage and thus bitrots over time.

One use case I see for modules though is systems, where we want to fit
barebox prebootloader + compressed barebox proper into SRAM to avoid
the need for a PBL-only eMMC driver for example.

In these cases, it would be quite useful if we could strip barebox to
the bare minimum amount of drivers and just load e.g. network driver on
demand. There's a number of things we need before that though: At least
support for W^X (CONFIG_ARM_MMU_PERMISSIONS), ARM64 support and support
for module signature verification.

But for now, let's ensure the support we already have doesn't
deteriorate further and fix some bitrot accumulated so far and add a
test to the test suite to verify module loading continues to work in
future as well. The test is also wired into CI, so it runs on every push
(and Github pull request).


Ahmad Fatoum (13):
  kbuild: fold rmdirs into rmfiles
  boards: qemu-virt: reserve BIOS device tree
  ARM: qemu-virt: add image for use as -bios
  kbuild: build *.mod.c with -std=gnu11
  ARM32: mark modules as incompatible with ARM_MMU_PERMISSIONS
  treewide: fix some missing EXPORT_SYMBOL
  pci: ecam: enable build as module
  kbuild: add support for installing and stripping modules
  ARM32: module: handle more relocations
  commands: pm_domain: make command tristate
  test: conftest: add support for describing FW_CFG environment in YAML
  defaultenv: add barebox_modules_env target
  test: arm: add simple driver/command module test

 .github/workflows/test-labgrid-pytest.yml |   4 +
 Makefile                                  |  44 ++---
 arch/arm/boards/Makefile                  |   1 +
 arch/arm/boards/qemu-virt/Makefile        |   2 +-
 arch/arm/boards/qemu-virt/lowlevel.c      |  80 ++++++++
 arch/arm/configs/modules32_defconfig      | 230 ++++++++++++++++++++++
 arch/arm/cpu/Kconfig                      |   2 +-
 arch/arm/include/asm/elf.h                |   2 +
 arch/arm/lib32/Makefile                   |   1 +
 arch/arm/lib32/module.c                   |  20 ++
 arch/arm/lib32/string.c                   |   7 +
 commands/Kconfig                          |   2 +-
 common/Kconfig                            |  14 ++
 common/bbu.c                              |   1 +
 common/block.c                            |   2 +
 common/boards/qemu-virt/board.c           |  32 +++
 common/firmware.c                         |   1 +
 common/globalvar.c                        |   1 +
 common/machine_id.c                       |   1 +
 common/memory.c                           |   1 +
 common/structio.c                         |   3 +
 conftest.py                               |  19 ++
 defaultenv/.gitignore                     |   1 +
 drivers/base/bus.c                        |   2 +
 drivers/base/class.c                      |   1 +
 drivers/base/driver.c                     |   1 +
 drivers/base/platform.c                   |   1 +
 drivers/base/power.c                      |   2 +
 drivers/clk/clk-bulk.c                    |   2 +-
 drivers/clk/clk.c                         |   1 +
 drivers/firmware/arm_scmi/driver.c        |   1 +
 drivers/gpio/gpiolib.c                    |   2 +-
 drivers/hw_random/core.c                  |   1 +
 drivers/mtd/core.c                        |   1 +
 drivers/net/dsa.c                         |   1 +
 drivers/nvmem/core.c                      |   1 +
 drivers/of/base.c                         |   3 +-
 drivers/pci/Kconfig                       |   2 +-
 drivers/pci/pci.c                         |   2 +
 drivers/pinctrl/pinctrl.c                 |   1 +
 drivers/video/fb.c                        |   1 +
 fs/pstore/platform.c                      |   1 +
 images/Makefile.vexpress                  |   5 +
 lib/parameter.c                           |   1 +
 lib/string.c                              |   2 +
 lib/stringlist.c                          |   3 +
 lib/ucs2_string.c                         |   2 +-
 net/eth.c                                 |   1 +
 net/net.c                                 |   1 +
 scripts/Makefile.modinst                  |  67 +++++++
 test/arm/dt-2nd@multi_v7_defconfig.yaml   |  22 +++
 test/arm/dt-2nd@multi_v8_defconfig.yaml   |  23 +++
 test/arm/modules32_defconfig.yaml         |  27 +++
 test/arm/virt@multi_v7_defconfig.yaml     |   4 +-
 test/arm/virt@multi_v8_defconfig.yaml     |   4 +-
 test/py/test_module.py                    |  54 +++++
 56 files changed, 679 insertions(+), 35 deletions(-)
 create mode 100644 arch/arm/boards/qemu-virt/lowlevel.c
 create mode 100644 arch/arm/configs/modules32_defconfig
 create mode 100644 arch/arm/lib32/string.c
 create mode 100644 scripts/Makefile.modinst
 create mode 100644 test/arm/dt-2nd@multi_v7_defconfig.yaml
 create mode 100644 test/arm/dt-2nd@multi_v8_defconfig.yaml
 create mode 100644 test/arm/modules32_defconfig.yaml
 create mode 100644 test/py/test_module.py

-- 
2.47.3



