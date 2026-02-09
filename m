Delivery-date: Mon, 09 Feb 2026 10:15:45 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vpNMv-00AVIJ-26
	for lore@lore.pengutronix.de;
	Mon, 09 Feb 2026 10:15:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vpNMu-00069F-GU
	for lore@pengutronix.de; Mon, 09 Feb 2026 10:15:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=J+quwBydWeQ3WwLBqS+0f76FIummt4quHv001IQ0Nl4=; b=0g9Gbu9WCwYaYf0ALkXwGUzy4l
	zQ/FfiKJ/6qaJybb3RM/wUcvI2EVoOYoIM/EY84y3cAE/3yrbPw3rZha3O2dtpo9Oa7SBrrbxytc9
	Gl8Uded9ekRSC1DUu1pAljZWKigmoapIqo32y4zxT5MRc6tKzxcLulVhvW2jhuOlwaYLIdqdY3YPR
	fYDzwPZPs0uATWLm7LuFADewIFs6MB5ZkrBnIQKtAzyechdwWc4FKq1KzNKh4VmGPlCfOshxE9h17
	DCOCBHUIYUlan0Tk40ypF5BWh15Q2qwnMGvmCKGKi50dF0mdQ7fntbepebUwa3wUE0l6ekQUjxZN5
	rCWllbkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpNMW-0000000F6di-3PzK;
	Mon, 09 Feb 2026 09:15:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpNMS-0000000F6b8-2IWj
	for barebox@lists.infradead.org;
	Mon, 09 Feb 2026 09:15:18 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=localhost.localdomain)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vpNMQ-0005oY-T2
	for barebox@lists.infradead.org; Mon, 09 Feb 2026 10:15:15 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Date: Mon,  9 Feb 2026 10:10:25 +0100
Message-ID: <20260209091513.3563412-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260209_011516_756823_40387E44 
X-CRM114-Status: GOOD (  11.21  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 0/6] ppc: add QEMU ppce500 test in CI
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add support for running barebox on the QEMU ppce500 virtual machine.
This enables automated testing of PowerPC e500 support in CI.

The PowerPC support for this virtual machine has been AI generated.
I have no interest in learning the PowerPC ISA, but it's beneficial
to remaining users for CI to be able to catch some runtime regressions
as we only did compile tests so far.

With this, kvx is the only remaining architecture that is not tested in
CI, but that's on the TODO list as well.

Ahmad Fatoum (6):
  include: array_size.h: make header self-contained
  serial: ns16550: add "ns16550" compatible string
  lib: stackprot: omit HAVE_STACKPROTECTOR for powerpc
  gpio: mpc8xxx: allow build on MPC85xx platforms
  mach-mpc85xx: speed: add fsl_set_timebase_clock() override
  powerpc: add QEMU ppce500 board support with CI test infrastructure

 .github/workflows/test-labgrid-pytest.yml     |   4 +
 arch/Kconfig                                  |   6 +
 arch/arm/Kconfig                              |   1 +
 arch/kvx/Kconfig                              |   1 +
 arch/mips/Kconfig                             |   1 +
 arch/openrisc/Kconfig                         |   1 +
 arch/powerpc/Makefile                         |   1 +
 arch/powerpc/boards/qemu-e500/Makefile        |   5 +
 arch/powerpc/boards/qemu-e500/law.c           |  17 ++
 arch/powerpc/boards/qemu-e500/qemu-e500.c     |  92 ++++++++
 arch/powerpc/boards/qemu-e500/tlb.c           |  17 ++
 arch/powerpc/configs/qemu-ppce500_defconfig   |  69 ++++++
 arch/powerpc/cpu-85xx/Makefile                |   3 +
 arch/powerpc/cpu-85xx/start-qemu.S            | 211 ++++++++++++++++++
 arch/powerpc/include/asm/board-qemu-e500.h    |  39 ++++
 arch/powerpc/include/asm/config.h             |   2 +
 arch/powerpc/include/asm/debug_ll.h           |  52 +++++
 arch/powerpc/lib/board.c                      |   6 +
 arch/powerpc/mach-mpc85xx/Kconfig             |  13 ++
 arch/powerpc/mach-mpc85xx/barebox.lds.S       |  12 +
 .../powerpc/mach-mpc85xx/include/mach/clock.h |   1 +
 .../include/mach/config_mpc85xx.h             |   6 +
 arch/powerpc/mach-mpc85xx/speed.c             |  10 +
 arch/riscv/Kconfig                            |   1 +
 arch/sandbox/Kconfig                          |   1 +
 arch/x86/Kconfig                              |   1 +
 common/Kconfig.debug_ll                       |   7 +-
 drivers/gpio/Kconfig                          |   2 +-
 drivers/serial/serial_ns16550.c               |   2 +
 include/linux/array_size.h                    |   3 +-
 lib/Kconfig.hardening                         |   2 +
 test/powerpc/qemu-ppce500_defconfig.yaml      |  17 ++
 32 files changed, 603 insertions(+), 3 deletions(-)
 create mode 100644 arch/powerpc/boards/qemu-e500/Makefile
 create mode 100644 arch/powerpc/boards/qemu-e500/law.c
 create mode 100644 arch/powerpc/boards/qemu-e500/qemu-e500.c
 create mode 100644 arch/powerpc/boards/qemu-e500/tlb.c
 create mode 100644 arch/powerpc/configs/qemu-ppce500_defconfig
 create mode 100644 arch/powerpc/cpu-85xx/start-qemu.S
 create mode 100644 arch/powerpc/include/asm/board-qemu-e500.h
 create mode 100644 arch/powerpc/include/asm/debug_ll.h
 create mode 100644 test/powerpc/qemu-ppce500_defconfig.yaml

-- 
2.47.3



