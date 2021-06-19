Delivery-date: Sat, 19 Jun 2021 05:46:51 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1luRwZ-0003ND-A9
	for lore@lore.pengutronix.de; Sat, 19 Jun 2021 05:46:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1luRwX-0002aK-By
	for lore@pengutronix.de; Sat, 19 Jun 2021 05:46:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vyCK2mgztreJuBBKreSjA5y88NvCtD/L6VhgLNvDufE=; b=QwpYE4BOPkOqnG
	7eqaxyygYzQFIxaEoQI1HhIfJ6RuRHBg0fdVqVRG0HsIer2F/FWgaRHQ6vOrDP6Au6z4LrUC1SEMP
	xQM8+jsvPec7KB9QPEy7boDHA2OddSlt9ip2AZpVdaC18LuXnIRE4SQG4e3FbgH5RrqvlNT37tp5a
	vqSRK4TFBZIzuUAQLqgoEt0y/fYBPQlQkbv63Vv20iqzN1Zb6OokCgohhA3PyPS0W2uH1idOVz93h
	eSEma3emaOtNRZzSIsHEf64ay/Kcu3qDu7cIDGTwCnvY7hVMT34L4yonGVSt5i98flr/c8dMzpw/f
	sgEADmZT5OqFuwUpFtvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1luRvG-00GC1K-7M; Sat, 19 Jun 2021 03:45:30 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1luRv7-00GBxn-8R
 for barebox@lists.infradead.org; Sat, 19 Jun 2021 03:45:22 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1luRv5-0001v0-Jr
 for barebox@lists.infradead.org; Sat, 19 Jun 2021 05:45:19 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1luRv4-00029O-RZ
 for barebox@lists.infradead.org; Sat, 19 Jun 2021 05:45:18 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Sat, 19 Jun 2021 05:45:03 +0200
Message-Id: <20210619034516.6737-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210618_204521_416428_1EEA72E3 
X-CRM114-Status: GOOD (  15.00  )
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
Subject: [PATCH 00/13] nvmem: misc enhancements
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Series implements some of the new NVMEM bindings:

- New providers:
  - nvmem-cells (for MTD partitions)
  - nvmem-rmem (memory regions passed by previous boot stages)

- New consumers:
  - Network devices: Unlike Linux, we do that for all drivers
    in generic code. This is done postenvironment, so network drivers,
    board code and other (OTP) drivers are not overridden.
  - nvmem-reboot-mode: To go along with syscon-reboot-mode
  - nvmem command: This one only prints registered devices for now

And changes sandbox to make use of it.

Ahmad Fatoum (13):
  nvmem: bsec: remove unused, left-over, struct member
  nvmem: treat devices without nvmem_bus::write as read only
  nvmem: add support for new read-only memory (rmem) binding
  nvmem: add support for nvmem-cells binding
  sandbox: use nvmem on top of stickypage for reset reason
  power: reset: port Linux generic NVMEM reboot mode driver
  sandbox: use nvmem-reboot-mode instead of syscon-reboot-mode
  sandbox: dts: fix unit-address for state partition
  nvmem: add command to list nvmem devices
  sandbox: hostfile: move initcall to earlier postcore level
  of: of_net: sync of_get_mac_address with Linux for NVMEM support
  net: consult device tree for ethernet address in NVMEM as fall-back
  sandbox: ship sample environment

 .gitignore                                    |   1 +
 Makefile                                      |   2 +-
 arch/sandbox/Makefile                         |   8 ++
 arch/sandbox/board/env/init/state             |  13 ---
 arch/sandbox/board/hostfile.c                 |  21 +++--
 arch/sandbox/board/power.c                    |  33 +++----
 arch/sandbox/board/stickypage.bin             | Bin 0 -> 4097 bytes
 arch/sandbox/board/watchdog.c                 |  20 ++---
 arch/sandbox/configs/sandbox_defconfig        |   2 +-
 arch/sandbox/dts/sandbox.dts                  |  36 ++++++--
 .../sandbox/mach-sandbox/include/mach/linux.h |   1 +
 arch/sandbox/os/common.c                      |  83 ++++++++----------
 commands/Kconfig                              |   7 ++
 commands/Makefile                             |   1 +
 commands/nvmem.c                              |  24 +++++
 drivers/nvmem/Kconfig                         |   6 ++
 drivers/nvmem/Makefile                        |   4 +-
 drivers/nvmem/bsec.c                          |   1 -
 drivers/nvmem/core.c                          |  25 ++++--
 drivers/nvmem/partition.c                     |  40 +++++++++
 drivers/nvmem/rmem.c                          |  67 ++++++++++++++
 drivers/of/base.c                             |  21 ++++-
 drivers/of/of_net.c                           |  78 +++++++++++++---
 drivers/of/partition.c                        |   7 ++
 drivers/power/reset/Kconfig                   |  10 +++
 drivers/power/reset/Makefile                  |   1 +
 drivers/power/reset/nvmem-reboot-mode.c       |  83 ++++++++++++++++++
 fs/devfs-core.c                               |   2 +-
 include/driver.h                              |   3 +
 include/linux/nvmem-consumer.h                |   2 +
 include/linux/nvmem-provider.h                |   8 ++
 include/of_net.h                              |  21 ++++-
 net/eth.c                                     |  24 +++++
 33 files changed, 521 insertions(+), 134 deletions(-)
 delete mode 100644 arch/sandbox/board/env/init/state
 create mode 100644 arch/sandbox/board/stickypage.bin
 create mode 100644 commands/nvmem.c
 create mode 100644 drivers/nvmem/partition.c
 create mode 100644 drivers/nvmem/rmem.c
 create mode 100644 drivers/power/reset/nvmem-reboot-mode.c

-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

