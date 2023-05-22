Delivery-date: Mon, 22 May 2023 07:29:57 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q0y7L-009JAi-6S
	for lore@lore.pengutronix.de; Mon, 22 May 2023 07:29:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q0y7I-0002py-6z
	for lore@pengutronix.de; Mon, 22 May 2023 07:29:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UHyQM1rznChrV5wSEqLKyL3pmJXoP5ZxVz8gHyO+YnQ=; b=A0FsadXGimjknr
	9YhuXZL4gVSbsJ0qphEER4hlhdCxJMYfEggv8Uiq7vmUuOO9DsMqOQLdQJIzDUSNHRdGut+RAxsie
	BUEA5ZI7Bl+Ri/MGJH9NlHPccLIMfno0+4GxgnBqTJdp9bl1wxvRK4S8lZdK1eWsWR1KUa1UisAdx
	ZuKgJ0FTRTO4d5+TQ+edsgNCUo2fP+lFec72X1OAfCNDPXR81/pICMWPZ3CAf3N3tudNTgsjOqKkU
	RLxzr1Ox3JfNhA1Xw5zMAJavdyYt3lue58eL4XLnXbblz59gTTOaChxWyXQnqYrdw/1DoAZ6pDgit
	0aSjlTpe7+EMjoHPJyxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q0y6D-005OXa-01;
	Mon, 22 May 2023 05:28:49 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q0y67-005OUo-05
	for barebox@lists.infradead.org;
	Mon, 22 May 2023 05:28:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q0y64-0002Mo-4X; Mon, 22 May 2023 07:28:40 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q0y63-001vvv-99; Mon, 22 May 2023 07:28:39 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q0y60-004ML3-JP; Mon, 22 May 2023 07:28:36 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon, 22 May 2023 07:28:24 +0200
Message-Id: <20230522052835.1039143-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230521_222845_441649_2238C134 
X-CRM114-Status: GOOD (  14.67  )
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
Cc: lst@pengutronix.de, rcz@pengutronix.de
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 00/11] ARM: qemu-virt: remap cfi-flash from 0 to 0x1000
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

When MMU is enabled, barebox maintains a single address space with
1:1 physical to virtual mapping by default. Furthermore, the zero
page is marked inaccessible to trap NULL pointer dereferences.

This is problematic on the Qemu ARM Virt platform, because the
cfi-flash is memory mapped starting with address zero, so users need
to decide whether they want the cfi-flash or the MMU. The decision
so far, was to disable CONFIG_MMU in the Qemu Virt configs, but this
holds us back from removing these configs in favor of the new
multi_v7_defconfig/multi_v8_defconfig.

Make everyone happy by shifting the virtual cfi-flash mapping by 4K:

    virt   ->    phys

    0x0000 ->    0x0000 [faulting]
    0x1000 ->    0x0000 [(uncached) alias]
    0x2000 ->    0x1000
           .
           .
           .
 0x7fff000 -> 0x7ffe000
 0x8000000 -> 0x7fff000

This eats one page into the memory region starting at 0x8000000.
That's ok though, because that's where the GIC is located on both
ARM32 and ARM64 and we don't do interrupts in barebox.

This applies on top of Sascha's MMU rempping rework in next and
has been tested on both 32-bit and 64-bit QEMU ARM.

Ahmad Fatoum (11):
  treewide: use remap_range instead of arch_remap_range
  mmu: add physical address parameter to arch_remap_range
  ARM: mmu32: support non-1:1 mappings in arch_remap_range
  ARM: mmu64: support non-1:1 mappings in arch_remap_range
  of: platform: remap memory when encountering virtual-reg property
  common: boards: qemu-virt: remap cfi-flash from 0 to 0x1000
  ARM: prepare extending mmuinfo beyond ARMv7
  ARM64: mmu: implement ARMv8 mmuinfo command
  common: memtest: prepare for reuse in self test
  test: self: add MMU remapping self test
  ARM: mmuinfo: add options for enabling/disabling zero page trapping

 .../bindings/barebox/virtual-reg.rst          |  29 +++
 arch/arm/configs/multi_v8_defconfig           |   1 +
 arch/arm/cpu/Makefile                         |   2 +-
 arch/arm/cpu/mmu-common.c                     |   8 +-
 arch/arm/cpu/mmu_32.c                         |  54 ++--
 arch/arm/cpu/mmu_64.c                         |  18 +-
 arch/arm/cpu/mmuinfo.c                        | 128 +++++-----
 arch/arm/cpu/mmuinfo_32.c                     |  80 ++++++
 arch/arm/cpu/mmuinfo_64.c                     | 215 ++++++++++++++++
 arch/arm/include/asm/mmu.h                    |   2 +-
 arch/arm/include/asm/mmuinfo.h                |   9 +
 arch/arm/include/asm/sysreg.h                 |  76 ++++++
 arch/powerpc/cpu-85xx/mmu.c                   |   7 +-
 arch/powerpc/include/asm/mmu.h                |   2 +-
 commands/Kconfig                              |   8 +-
 commands/memtest.c                            |   5 +-
 common/Kconfig                                |   6 +
 common/Makefile                               |   2 +-
 common/boards/qemu-virt/Makefile              |   3 +
 common/boards/qemu-virt/overlay-of-flash.dts  |   5 +-
 common/memtest.c                              |  44 ++--
 drivers/hab/habv4.c                           |   2 +-
 drivers/mtd/nor/cfi_flash.c                   |   5 +-
 drivers/of/platform.c                         |  20 ++
 include/memtest.h                             |   7 +-
 include/mmu.h                                 |  19 +-
 include/zero_page.h                           |  12 +
 test/self/Kconfig                             |   6 +
 test/self/Makefile                            |   1 +
 test/self/mmu.c                               | 233 ++++++++++++++++++
 30 files changed, 865 insertions(+), 144 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/barebox/virtual-reg.rst
 create mode 100644 arch/arm/cpu/mmuinfo_32.c
 create mode 100644 arch/arm/cpu/mmuinfo_64.c
 create mode 100644 arch/arm/include/asm/mmuinfo.h
 create mode 100644 arch/arm/include/asm/sysreg.h
 create mode 100644 test/self/mmu.c

-- 
2.39.2



