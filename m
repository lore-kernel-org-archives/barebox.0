Delivery-date: Thu, 08 Jan 2026 16:51:17 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vdsI9-002fVJ-1U
	for lore@lore.pengutronix.de;
	Thu, 08 Jan 2026 16:51:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vdsI8-0007Rc-Ec
	for lore@pengutronix.de; Thu, 08 Jan 2026 16:51:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lfBB1NgdJNveaPd5tqni+RdJKahqBycv2pmPAqOndj0=; b=aheN6i7JLnf2fD
	YNFlIQ5jhAHmHDvrPVb8NPcQHZa4VSHdEcJlUoD55dt6vrJNrNtRXclnBvW+WU6uNP++tEKhE/co5
	h3qg9DwK6h67NdnrQxCaXdQbEI2GHsdRlLUozSwTuNcbvzYIIpcngG+HCEMLZjxmVKuPBlA29WNYI
	ale/c2Ll4ElyldDmIebTFAduHyeQmo2tpiGcZvvl/7ekMQp9YG9DpxnNSa6/I4jsD/+NVUr2MUf+w
	pbwmXdCto06jPD/m5yEfB+eWer9BBx0mmu6wmROdh9CfCvAj7yoOjC/MMBy3ygW3O3W5pFXb2j0Vi
	65tj2MUMfNEqUCZZDSrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdsHZ-0000000HadS-1JeY;
	Thu, 08 Jan 2026 15:50:41 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdsHV-0000000HabC-1X7g
	for barebox@bombadil.infradead.org;
	Thu, 08 Jan 2026 15:50:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:From:Sender:Reply-To:
	Content-ID:Content-Description:In-Reply-To:References;
	bh=lfBB1NgdJNveaPd5tqni+RdJKahqBycv2pmPAqOndj0=; b=Xt3LPC1fzC+QCOmTQGSLD7M5mE
	c0EXoZDWOumEN1+PGAJ9Kv0xm/pBinhrIipo5L1jCAK0Oy1GW1kw5xkT8qoGYxgkpPJksh1dkY2HG
	gDxBLNVPMx8DzcSmSImO/H91uI3sEOfgTyz8jsEand6xaTcipG/s9jbn4XEIZNyzsjQo/TiGIVTaa
	Lo0c6wpk/9AvNRIFKfUPaRgoxPCk1CxIAY7WcBuCILfxrb5BKfXHlK1ICTRrEDIRqjrhoBAUR+QDi
	7dNAUZ1MXPne5S6uY9LaJhXfXKMInIjsbdByXfcWcIf3AH56olA0oAhfe9kUdZ9Pv42FoZPdUGboc
	1T93K+lg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdsHS-0000000DYkF-1vuY
	for barebox@lists.infradead.org;
	Thu, 08 Jan 2026 15:50:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vdsGv-0006hG-S9; Thu, 08 Jan 2026 16:50:01 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vdsGv-009hV6-1G;
	Thu, 08 Jan 2026 16:50:01 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vdsGv-0000000AN2q-1H9b;
	Thu, 08 Jan 2026 16:50:01 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 08 Jan 2026 16:49:57 +0100
Message-Id: <20260108-pbl-load-elf-v3-0-e28c931fc179@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIACXSX2kC/2XMTQ6DIBhF0a0YxqUBFKEddR9NBwIfSmLAgCU2x
 r0XHfVneF/yzooSRAcJXasVRcguueBL1KcK6aHzPWBnSiNGGKeMCTypEY+hMxhGi7VqtCIalDA
 SlcsUwbrl4O6P0oNLc4ivQ890X3eoJZTwbyhTTDBchOS1vUhWs9sEvn/OMXi3nA2gXcvsU2h/B
 FaERgqlRUssafifsG3bG5D5U+jvAAAA
X-Change-ID: 20251227-pbl-load-elf-cb4cb0ceb7d8
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767887401; l=5070;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=EV/7qkkvEXXOvgNvpXWFpAnOJ2XM7ZhpkKtulUP7mJs=;
 b=BJ99gpRhEx/4XInMWb49jD75oLrogwWiQn6ILAilKkAAUKsNiXaV206+2AYrclwI6SA8fYC9S
 pXWSTvpdtuZDHpzpmkIZZaCGfrz/42QnEXV8sw/tkvR7oPcU+wqQNLX
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260108_155034_571703_9D515306 
X-CRM114-Status: GOOD (  16.43  )
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
Cc: "Claude Sonnet 4.5" <noreply@anthropic.com>, Ahmad Fatoum <a.fatoum@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v3 00/23] PBL: Add PBL ELF loading support with dynamic
 relocations
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Until now we linked the raw barebox proper binary into the PBL which
comes with a number of disadvantages. We rely on self-modifying code
to in barebox proper (relocate_to_current_adr()) and have no initialized
bss segment (setup_c()). Also we can only mark the .text and .rodata as
readonly during runtime of barebox proper.

This series overcomes this by linking a ELF image into the PBL. This
image is properly layed out, linked and initialized in the PBL. With
this barebox proper has a proper C environment and text/rodata
protection from the start.

As a bonus this series also adds initial MMU support for RISCV, also
based on loading the ELF image and configuring the MMU from the PBL.

I lost track about the review feedback for v1, partly because I asked
Claude to integrate the review feedback for me, which it did, but not
completely. Nevertheless I think this series has enough changes for now
so that it deserves a second look.

What I didn't care about yet is that we found out that neither ARM nor
RiscV use any absolute relocations, so we might be able to remove
support for them, make sure these are not emitted during compile time,
or properly test/fix them when we discover that they are indeed needed.

Co-Authored-By: Claude Sonnet 4.5 <noreply@anthropic.com>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
Changes in v3:
- integrate Ahmads feedback
- cleanup barebox proper entry
- add missing "ax" flag to ARM exception table, and let linker do the
  fixup
- Link to v2: https://lore.barebox.org/20260106-pbl-load-elf-v2-0-487bc760f045@pengutronix.de

Changes in v2:
- rebased on Ahmads patches and with it reused existing relocate_image()
- hopefully integrated all feedback for v1
- Link to v1: https://lore.barebox.org/20260105-pbl-load-elf-v1-0-e97853f98232@pengutronix.de

---
Sascha Hauer (23):
      Makefile.compiler: add objcopy-option
      elf: only accept images matching the native ELF_CLASS
      elf: build for PBL as well
      elf: add dynamic relocation support
      ARM: implement elf_apply_relocations() for ELF relocation support
      riscv: define generic relocate_image
      riscv: implement elf_apply_relocations() for ELF relocation support
      elf: implement elf_load_inplace()
      elf: create elf_open_binary_into()
      Makefile: add vmbarebox build target
      PBL: allow to link ELF image into PBL
      mmu: add MAP_CACHED_RO mapping type
      mmu: introduce pbl_remap_range()
      ARM: drop arm_fixup_vectors()
      ARM: linker script: create separate PT_LOAD segments for text, rodata, and data
      ARM: link ELF image into PBL
      ARM: PBL: setup MMU with proper permissions from ELF segments
      riscv: linker script: create separate PT_LOAD segments for text, rodata, and data
      riscv: link ELF image into PBL
      riscv: Allwinner D1: Drop M-Mode
      riscv: add ELF segment-based memory protection with MMU
      ARM: cleanup barebox proper entry
      riscv: cleanup barebox proper entry

 Makefile                           |  15 +-
 arch/arm/Kconfig                   |   1 +
 arch/arm/cpu/exceptions_32.S       |  54 +----
 arch/arm/cpu/interrupts_32.c       |   5 +-
 arch/arm/cpu/mmu-common.c          |  29 ++-
 arch/arm/cpu/mmu-common.h          |   3 +-
 arch/arm/cpu/mmu_32.c              |  12 +-
 arch/arm/cpu/mmu_64.c              |   9 +-
 arch/arm/cpu/no-mmu.c              |   2 -
 arch/arm/cpu/start.c               |  22 +-
 arch/arm/cpu/uncompress.c          |  40 +++-
 arch/arm/include/asm/barebox-arm.h |   4 -
 arch/arm/include/asm/elf.h         |   7 +
 arch/arm/lib32/barebox.lds.S       |  41 ++--
 arch/arm/lib32/reloc.c             |  19 ++
 arch/arm/lib64/barebox.lds.S       |  36 +--
 arch/arm/lib64/reloc.c             |  21 +-
 arch/riscv/Kconfig                 |  18 ++
 arch/riscv/Kconfig.socs            |   1 -
 arch/riscv/boot/start.c            |  19 +-
 arch/riscv/boot/uncompress.c       |  36 ++-
 arch/riscv/cpu/Makefile            |   1 +
 arch/riscv/cpu/mmu.c               | 387 ++++++++++++++++++++++++++++++++
 arch/riscv/cpu/mmu.h               | 120 ++++++++++
 arch/riscv/include/asm/asm.h       |   3 +-
 arch/riscv/include/asm/mmu.h       |  44 ++++
 arch/riscv/lib/barebox.lds.S       |  45 ++--
 arch/riscv/lib/reloc.c             |  43 ++--
 common/Makefile                    |   2 +-
 common/elf.c                       | 446 ++++++++++++++++++++++++++++++++++++-
 include/elf.h                      |  73 ++++++
 include/mmu.h                      |   6 +-
 include/pbl/mmu.h                  |  29 +++
 pbl/Kconfig                        |   9 +
 pbl/Makefile                       |   1 +
 pbl/mmu.c                          | 111 +++++++++
 scripts/Makefile.compiler          |   5 +
 37 files changed, 1508 insertions(+), 211 deletions(-)
---
base-commit: 7649b642aaa43c1b7dca44f0f9596fbc9d0f7caa
change-id: 20251227-pbl-load-elf-cb4cb0ceb7d8

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



