Delivery-date: Tue, 06 Jan 2026 13:53:48 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd6ZI-001tSY-0v
	for lore@lore.pengutronix.de;
	Tue, 06 Jan 2026 13:53:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd6ZG-0001OR-Rc
	for lore@pengutronix.de; Tue, 06 Jan 2026 13:53:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=L/qX1D6B1ErGY5jGUnCHSXP5fE9p6zTQN81+gzCyKGo=; b=J0+7vbseimPui5
	QywMJim2GEjHJAx0DszFIcq3V8zbM6LBQ7Qwf9pG+I9IKxKbbrQbMJoTHl/K7dY9xVi+tZAens0yT
	+ktTL6pIIcGPmyZWTdAFGSr2SLqdYGwrjNRU6qA43dsef6yIE3n6puXfdK+ZWYLEZ4/n+QQVvapr0
	PNQMC3yOT9JsKPV7g4EMpADJE4fPJgrH4KYbrgtYYkFHvNN7hC+Wr36KqxGk4MOHdpJqVUYicf8Gr
	04Hry9/qKuAut/kh3L3+bXnHJOC+ajK4OUOQA6aVBuBgzqV1sCdPPnggWCU6c3r67QV1SoG72V1MO
	BWVlMFyLn6ixkWYgxgig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd6Ym-0000000D1Ya-1d3a;
	Tue, 06 Jan 2026 12:53:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd6Yi-0000000D1XA-1afV
	for barebox@lists.infradead.org;
	Tue, 06 Jan 2026 12:53:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vd6Yf-00012v-BY; Tue, 06 Jan 2026 13:53:09 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vd6Ye-009Lce-2p;
	Tue, 06 Jan 2026 13:53:08 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vd6Ye-000000078QE-38lA;
	Tue, 06 Jan 2026 13:53:08 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 06 Jan 2026 13:53:03 +0100
Message-Id: <20260106-pbl-load-elf-v2-0-487bc760f045@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAK8FXWkC/1XMywqDMBCF4VeRWXdKMtZ6WfU9iguTjBqQRBIrF
 vHdG911+R843w6Rg+UITbZD4NVG610KumWgx84NjNakBhJUSKISZzXh5DuDPPWo1UMroVmVpoJ
 0mQP3dru4d5t6tHHx4XvpqzzXE3oKKYp/aJUokOuyKvK+riin18xu+CzBO7vdDUN7HMcP7xJs/
 q0AAAA=
X-Change-ID: 20251227-pbl-load-elf-cb4cb0ceb7d8
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767703988; l=5043;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=xr567VJUT/fdCJYuiKseNV7Qu3+Q8N9w3G43FiJP+lk=;
 b=c+2FlJXV6c2GUYsfabaTCOi1LstDpmJW/yZx2OlkJWrWbdezcQZn8etmQydP/i9BBuoRM59NN
 LDGEcAHaDTRAg+2QBL4MjLCvACSS4owqfSXjJo2LhH7gi3iDyIr3tk8
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260106_045312_425615_C6DA321F 
X-CRM114-Status: GOOD (  15.56  )
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
Cc: "Claude Sonnet 4.5" <noreply@anthropic.com>
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
Subject: [PATCH v2 00/21] PBL: Add PBL ELF loading support with dynamic
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
Changes in v2:
- rebased on Ahmads patches and with it reused existing relocate_image()
- hopefully integrated all feedback for v1
- Link to v1: https://lore.barebox.org/20260105-pbl-load-elf-v1-0-e97853f98232@pengutronix.de

---
Sascha Hauer (21):
      elf: only accept images matching the native ELF_CLASS
      elf: build for PBL as well
      elf: add dynamic relocation support
      ARM: implement elf_apply_relocations() for ELF relocation support
      riscv: define generic relocate_image
      riscv: implement elf_apply_relocations() for ELF relocation support
      elf: implement elf_load_inplace()
      elf: create elf_open_binary_into()
      Makefile: add barebox.elf build target
      PBL: allow to link ELF image into PBL
      mmu: add MAP_CACHED_RO mapping type
      mmu: introduce pbl_remap_range()
      ARM: use relative jumps in exception table
      ARM: exceptions: make in-binary exception table const
      ARM: linker script: create separate PT_LOAD segments for text, rodata, and data
      ARM: link ELF image into PBL
      ARM: PBL: setup MMU with proper permissions from ELF segments
      riscv: link ELF image into PBL
      riscv: linker script: create separate PT_LOAD segments for text, rodata, and data
      riscv: Allwinner D1: Drop M-Mode
      riscv: add ELF segment-based memory protection with MMU

 Makefile                           |  17 +-
 arch/arm/Kconfig                   |   2 +
 arch/arm/cpu/exceptions_32.S       |  54 ++---
 arch/arm/cpu/interrupts_32.c       |  45 +++-
 arch/arm/cpu/mmu-common.c          |  14 +-
 arch/arm/cpu/mmu-common.h          |   3 +-
 arch/arm/cpu/mmu_32.c              |  14 +-
 arch/arm/cpu/mmu_64.c              |  10 +-
 arch/arm/cpu/no-mmu.c              |  11 +-
 arch/arm/cpu/start.c               |  11 +-
 arch/arm/cpu/uncompress.c          |  40 +++-
 arch/arm/include/asm/barebox-arm.h |   4 +-
 arch/arm/include/asm/barebox.lds.h |   2 +-
 arch/arm/include/asm/elf.h         |   7 +
 arch/arm/include/asm/sections.h    |   1 +
 arch/arm/lib/pbl.lds.S             |   6 +-
 arch/arm/lib32/barebox.lds.S       |  38 ++-
 arch/arm/lib32/reloc.c             |  23 ++
 arch/arm/lib64/barebox.lds.S       |  29 ++-
 arch/arm/lib64/reloc.c             |  25 +-
 arch/riscv/Kconfig                 |  18 ++
 arch/riscv/Kconfig.socs            |   1 -
 arch/riscv/boot/start.c            |   6 -
 arch/riscv/boot/uncompress.c       |  43 +++-
 arch/riscv/cpu/Makefile            |   1 +
 arch/riscv/cpu/mmu.c               | 386 +++++++++++++++++++++++++++++++
 arch/riscv/cpu/mmu.h               | 144 ++++++++++++
 arch/riscv/include/asm/asm.h       |   3 +-
 arch/riscv/include/asm/mmu.h       |  44 ++++
 arch/riscv/lib/barebox.lds.S       |  38 +--
 arch/riscv/lib/reloc.c             |  82 +++++--
 common/Makefile                    |   2 +-
 common/elf.c                       | 461 ++++++++++++++++++++++++++++++++++++-
 images/Makefile                    |   2 +-
 include/elf.h                      |  73 ++++++
 include/mmu.h                      |  14 +-
 include/pbl/mmu.h                  |  29 +++
 lib/Makefile                       |   1 +
 lib/elf_reloc.c                    |  15 ++
 pbl/Kconfig                        |   9 +
 pbl/Makefile                       |   1 +
 pbl/mmu.c                          | 111 +++++++++
 scripts/prelink-riscv.inc          |   9 +-
 43 files changed, 1685 insertions(+), 164 deletions(-)
---
base-commit: fd86e9d4215bc4cd6a84af2a8de22f1bb9738faf
change-id: 20251227-pbl-load-elf-cb4cb0ceb7d8

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



