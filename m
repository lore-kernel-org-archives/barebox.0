Delivery-date: Mon, 25 Nov 2024 16:32:43 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFb4s-000G1q-2k
	for lore@lore.pengutronix.de;
	Mon, 25 Nov 2024 16:32:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFb4s-0003x4-M3
	for lore@pengutronix.de; Mon, 25 Nov 2024 16:32:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=igIBM4W8aHsTjsRjociwvro/47xi3HnDFUaUTxrAAL0=; b=dC5lAf4fNNLajlWyq0EZAVnL93
	vGNnUCerbWYJnPINuEmCvTizlpb5Ip+3Lh7xZQ0893HAPxRrLWRrn9GWqJu7xrHZYsqU3OQmlINOc
	5uumJfhsT7kpguInEjSDXRHNMJTWTn2Tq0Z3qRVTN5sa6gMOcvQbSu7oNgrm6N6jq60Xow+K1N0RJ
	RA3hzsoyOE4WFQiYXeBjEamlZ70g4eKzdNK0kxfpHqDGgX3db6c4EreVLxggd3Z8/t0ek0hzgaPml
	Dnp/2M9SncGIHz4ye6FcK64BoegSD06d+cHk9cY54gxeoIWdyvP4ZvHdqCx0lJp2Av/07DRxEc8Tb
	cqsWByAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tFb4Q-00000008UvW-1RTf;
	Mon, 25 Nov 2024 15:32:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tFb1m-00000008UGX-17Xv
	for barebox@lists.infradead.org;
	Mon, 25 Nov 2024 15:29:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFb1l-00036H-44
	for barebox@lists.infradead.org; Mon, 25 Nov 2024 16:29:29 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFb1k-0006QH-0V
	for barebox@lists.infradead.org;
	Mon, 25 Nov 2024 16:29:28 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFb1k-002dWd-0g
	for barebox@lists.infradead.org;
	Mon, 25 Nov 2024 16:29:28 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon, 25 Nov 2024 16:29:20 +0100
Message-Id: <20241125152927.546493-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241125_072930_307782_85BF3467 
X-CRM114-Status: UNSURE (   9.78  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/7] add proper strdup_const support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We currently implement strdup_const as strdup, which is correct, but
leaves the benefits of a proper implementation on the table:
Reducing allocations for .rodata strings, which have static storage
duration anyway.

This series implements a proper strdup_const that avoids allocations in
that case.

Ahmad Fatoum (7):
  sandbox: hostfile: strdup device tree node names
  lds: implement is_barebox_rodata
  string: implement proper strdup_const/free_const
  treewide: replace basename with kbasename
  treewide: use strdup_const where appropriate
  fs: efi: replace allocation with local buffer
  cdev: fix string leaks in devfs links

 arch/arm/lib/pbl.lds.S                   |  4 ++-
 arch/arm/lib32/barebox.lds.S             |  4 ++-
 arch/arm/lib64/barebox.lds.S             |  4 ++-
 arch/kvx/cpu/barebox.lds.S               |  5 +++-
 arch/mips/lib/barebox.lds.S              |  4 ++-
 arch/mips/lib/pbl.lds.S                  |  4 ++-
 arch/mips/pbl/zbarebox.lds.S             |  4 ++-
 arch/openrisc/cpu/barebox.lds.S          |  4 ++-
 arch/powerpc/boards/pcm030/barebox.lds.S |  2 ++
 arch/powerpc/mach-mpc85xx/barebox.lds.S  |  2 ++
 arch/riscv/lib/barebox.lds.S             |  4 ++-
 arch/riscv/lib/pbl.lds.S                 |  4 ++-
 arch/sandbox/board/barebox.lds.S         |  2 ++
 arch/sandbox/board/hostfile.c            |  4 +--
 arch/x86/mach-efi/elf_ia32_efi.lds.S     |  2 ++
 arch/x86/mach-efi/elf_x86_64_efi.lds.S   |  2 ++
 commands/magicvar.c                      | 12 ++++----
 commands/menu.c                          |  6 ++--
 commands/nand.c                          |  4 +--
 commands/of_property.c                   | 12 ++++----
 commands/partition.c                     |  6 ++--
 commands/tftp.c                          |  5 ++--
 common/blspec.c                          |  8 ++---
 common/boot.c                            | 24 +++++++--------
 common/bootchooser.c                     |  6 ++--
 common/complete.c                        |  8 ++---
 common/elf.c                             |  2 +-
 common/env.c                             | 28 ++++++++---------
 common/file-list.c                       | 14 +++++----
 common/globalvar.c                       |  4 +--
 common/menu.c                            | 38 +++++++++++++-----------
 common/menutree.c                        |  4 +--
 common/poller.c                          |  4 +--
 common/resource.c                        |  8 ++---
 common/restart.c                         |  2 +-
 common/slice.c                           |  4 +--
 common/state/backend_storage.c           |  4 +--
 common/state/state.h                     |  2 +-
 common/state/state_variables.c           |  4 +--
 drivers/led/led-gpio.c                   |  6 ++--
 drivers/led/led-pwm.c                    |  2 +-
 drivers/nvmem/core.c                     |  4 +--
 drivers/of/base.c                        | 12 ++++----
 drivers/of/of_net.c                      |  2 +-
 drivers/regulator/core.c                 |  4 +--
 drivers/soc/kvx/kvx_socinfo.c            |  2 +-
 fs/bpkfs.c                               |  8 ++---
 fs/devfs-core.c                          |  5 +++-
 fs/efi.c                                 | 18 ++++++-----
 include/asm-generic/sections.h           | 18 +++++++++++
 include/blspec.h                         |  4 +--
 include/boot.h                           |  2 +-
 include/console.h                        |  2 +-
 include/digest.h                         |  4 +--
 include/dma.h                            |  5 ++++
 include/elf.h                            |  2 +-
 include/environment.h                    |  8 ++---
 include/file-list.h                      |  4 +--
 include/led.h                            |  2 +-
 include/linux/clk.h                      |  4 ++-
 include/linux/slab.h                     |  7 +++--
 include/linux/string.h                   |  5 ++++
 include/mci.h                            |  2 +-
 include/menu.h                           | 20 ++++++++-----
 include/net.h                            |  2 +-
 include/of.h                             |  6 ++--
 include/param.h                          |  2 +-
 include/poller.h                         |  2 +-
 include/slice.h                          |  2 +-
 include/stringlist.h                     |  4 +--
 lib/glob.c                               | 19 +++++++-----
 lib/parameter.c                          |  6 ++--
 lib/string.c                             | 28 +++++++++++++++++
 lib/stringlist.c                         |  6 ++--
 net/eth.c                                |  4 +--
 net/nfs.c                                |  8 ++---
 scripts/checkpatch.pl                    |  2 +-
 77 files changed, 309 insertions(+), 198 deletions(-)

-- 
2.39.5



