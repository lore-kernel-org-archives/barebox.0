Delivery-date: Tue, 27 Oct 2026 08:47:50 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xLbuP-003pXA-1p
	for lore@lore.pengutronix.de;
	Tue, 27 Oct 2026 08:47:49 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 26FBB201BFB
	for <lore@pengutronix.de>; Tue, 27 Oct 2026 08:47:49 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=2DHB52VW;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793087269; a=rsa-sha256;
	cv=none;
	b=YwWjpjGQUcL2GRWqO4lFTXlFaFM8kiwfOdDGpoVZvtV6E1oGvv40MCp5weH4dB+t2jXPMX
	3V+JScFPxhtyZ0dGordygPJtnFehGjHnBkLs0qJdQ01gSWJUa1coSbxrp1k2DgLWnmnnG1
	6ycvdQ/7WwVRJQcH9Vawgfe6g1i45kir/DyOobvNVaBZbka8Mm2At1fAJO6wSsEVkFn5zh
	HffuG+V253FkUn9G7rmCtskZRSyZrp8yyOP9FTQGTXINKiX39MJ7uDxEBEgQ5WMtvmIc76
	kvKJXIximngECalRYkbTIevZg7TpVv4Uum76Txv/FkR7oHPbpXGo0IrlFDtxSg==
ARC-Authentication-Results: i=1;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=2DHB52VW;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793087269;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=da2f6KT/rAKWLD6AQjjAf6BxU4U64y1RYIE4Gi3q8v4=;
	b=HviXIX69wk/DskBfKRb+fczmL5Oy8F0ExHyjj0J7GJkfmlz0NkLPB2fKpQWSgyzwU18pZ0
	4uCd/8nHsKAiilSQ+iMP5kZVbPuCSps4bTK1ZQaoGwWdGTA/llm+wunu6ZuptHRfkAk3HT
	kXgV+vcnaG3X1SRhm+pBy16rko2ZLZYLVIVe22y3Aj+kL8pqLc44/RJjJWE6Cz1SRZB563
	EAfMo8K9PJrdFa45gICTd25WMWCX+3uuFm+uoKwP9SiVEv9n9OFGP3EjnnasoACHPV8jRp
	4KR3A0j3/G7GrCjmfw7vxHF5Cu+qc+dF4DdlVEilviBNtryO/yMdjlyt4lFGWg==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=da2f6KT/rAKWLD6AQjjAf6BxU4U64y1RYIE4Gi3q8v4=; b=2DHB52VW1PF0rRvH8ea9D969qD
	gfNb7XeoXN0BmAYifQNTquwUkH+iYysBdmzEV4pMc9GR+MecqvV2M5B6LJV6XYOZNRIU72xHy9swC
	QdBAOVXnePjK4nbmOKe5Sx4cM7vrUCOH9AU6fd9J3YNG79xwcAw1qMry2/X3fMDcsS070zyYU81c4
	meGlZyy8Myi1vI9ZyCfQnH/4rkQN0l/09OcUN5YSZNdoUZU+PjXWU/ZPHdsKVGaeV4XelY7MToLrP
	Kxtw206eBVwxcrQOGW40zdIzlRCYLVAM7oGq9KjkRaYif3w4yo1Gy9sg9DTx9JggIvwTM03lIqi49
	ieQaHjZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLbnE-00000003uyG-0QyB;
	Tue, 27 Oct 2026 07:40:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLbnA-00000003utt-1JWw
	for barebox@lists.infradead.org;
	Tue, 27 Oct 2026 07:40:22 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1xLbn5-0003zV-JA; Tue, 27 Oct 2026 08:40:15 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: mfe@pengutronix.de,
	mtr@pengutronix.de
Subject: [RFC PATCH 00/17] Switch RISC-V to declarative entry points
Date: Tue, 27 Oct 2026 08:24:33 +0100
Message-ID: <20261027074014.3280396-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: a.fatoum@barebox.org
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261027_004020_417638_B601482F 
X-CRM114-Status: GOOD (  23.62  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Every board currently open-codes its PBL entry point: set
   up the stack, relocate, call setup_c(), do the lowlevel init and so on, all
    in C code that runs before the C environment is ready. This is error-prone,
    because board code authors need to be aware of some very subtle details:
   global_variable_offset vs get_runtime_offset, not accessing global variables
    before relocation, using noin [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2a0a:edc0:2:b01:1d:0:0:104 listed in]
                             [list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 26FBB201BFB
X-Spamd-Result: default: False [-6.11 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:900:1d::77:received];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[2a0a:edc0:2:b01:1d::104:received];
	DMARC_NA(0.00)[barebox.org];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@barebox.org,barebox-bounces@lists.infradead.org];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=1];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	RCPT_COUNT_THREE(0.00)[3];
	TO_DN_NONE(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: piw63fzjd18yqp4u6j8pa4jbm1k61jwp

Every board currently open-codes its PBL entry point: set up the stack,
relocate, call setup_c(), do the lowlevel init and so on, all in C code
that runs before the C environment is ready.

This is error-prone, because board code authors need to be aware of some
very subtle details: global_variable_offset vs get_runtime_offset,
not accessing global variables before relocation, using noinline
functions as compiler barriers, no spilling to stack when ENTRY_FUNCTION
is used with no stack set up...

For the last point, we already had a solution in the form of
ENTRY_FUNCTION_WITHSTACK, which takes a stack pointer and places it
into a well-known location that a generic assembly entry point can read
and use to set up the stack before branching into C code.

That approach is not generic enough however: It only accepts a single
stack pointer when we really want one per execution level and even on
ARM32, it's still implemented using __naked, which precludes use with
clang as clang doesn't allow arbitrary C code there.

Address all of this by generalizing the idea behind
ENTRY_FUNCTION_WITHSTACK into a new ENTRY_POINT macro:
Instead of a board having one board-specific entry point function and a
single stack, it now has a struct of different callbacks and metadata:

struct pbl_stage {
	unsigned long stacktop;		/* stack top or PBL_STACKTOP_* */
	unsigned long relocaddr;	/* 0: don't relocate to specific addr */

	/*
	 * Memory the stage runs from: barebox proper starts out with
	 * mem_minsz, mem_maxsz (default: mem_minsz) is only used to find
	 * the stage by PC.
	 */
	unsigned long mem_start;
	unsigned long mem_minsz;
	unsigned long mem_maxsz;

	void *board_data;

	pbl_board_fn_t prereloc_cpu_init;
	pbl_board_fn_t soc_init;
	void (*board_init)(unsigned long entry_data);
	void (*soc_chainload)(void *board_data);
};

struct pbl_board_info {
	unsigned int soc_type;		/* see pbl_set_soc_type() */

	/* Called without a stack, so it must not spill */
	pbl_locate_pc_fn_t assembly_locate_pc;

	struct pbl_stage rom_stage;	/* PBL_STAGE_ROM */
	struct pbl_stage first_stage;	/* PBL_STAGE_OCRAM */
	struct pbl_stage second_stage;	/* PBL_STAGE_DRAM */
};

A board can now fill this out, define its own callbacks. Common
functionality like the soc_chainload can be shared between boards of the
same SoC. The hairy parts that can not be robustly done in C can be
defined declaratively as data that will be acted upon by the assembly
code. Code that must be written in assembly or run pre-relocation is
explicitly marked as such.

This can get quite verbose, so the idea is that SoC support will define
a macro with DEFAULTS that fills out the common bits that can be
extended (and overridden if needed) by the board code. See the last few
patches for how this looks like.

To make discussion easier, I am switching over all of RISC-V first in
this series. If we reach consensus and this is merged, I will follow-up
by doing the same on ARM.

This applies on top of next (PR #93 is prerequisite)

Ahmad Fatoum (17):
  asm-generic: add registers.h with a pc_inside() helper
  RISC-V: add call_with_stack() helper
  RISC-V: implement relocate_to_adr_full()
  PBL: add SoC type declaration and handoff support
  PBL: introduce board info based entry point framework
  PBL: describe the console in the board info and report the stage
  RISC-V: make barebox_riscv_entry() non-naked
  RISC-V: add PBL heads for the board info stage dispatch
  RISC-V: board-dt-2nd: migrate to board info entry point
  RISC-V: hifive: migrate to board info entry point
  RISC-V: allow relocating the PBL more than once
  RISC-V: nmon: preserve s1-s3 for the caller
  RISC-V: beaglev: migrate to board info entry point
  RISC-V: allwinner-d1: migrate to board info entry point
  RISC-V: erizo: migrate to board info entry point
  RISC-V: litex-linux: migrate to board info entry point
  Documentation: porting: describe the board info entry point

 Documentation/devel/porting.rst           | 124 +++++++++++-
 Documentation/devel/troubleshooting.rst   |   6 +
 arch/Kconfig                              |  28 +++
 arch/riscv/Kconfig                        |   2 +
 arch/riscv/boards/allwinner-d1/lowlevel.c |  18 +-
 arch/riscv/boards/beaglev/lowlevel.c      |  30 ++-
 arch/riscv/boards/erizo/lowlevel.c        |  32 +--
 arch/riscv/boards/hifive/lowlevel.c       |  30 +--
 arch/riscv/boards/litex-linux/lowlevel.c  |  30 +--
 arch/riscv/boot/Makefile                  |   4 +-
 arch/riscv/boot/board-dt-2nd-head.S       |  36 ++++
 arch/riscv/boot/board-dt-2nd.c            |  89 ++++-----
 arch/riscv/boot/entry.c                   |  33 +---
 arch/riscv/boot/entry_ll.S                |  15 ++
 arch/riscv/boot/head.S                    | 198 +++++++++++++++++++
 arch/riscv/boot/nmon_entry.S              |   7 +
 arch/riscv/include/asm/barebox-riscv.h    |  36 +++-
 arch/riscv/include/asm/reloc.h            |   1 +
 arch/riscv/lib/Makefile                   |   1 +
 arch/riscv/lib/asm-offsets.c              |  27 +++
 arch/riscv/lib/call_with_stack.S          |  12 ++
 arch/riscv/lib/pbl.lds.S                  |  13 +-
 arch/riscv/lib/reloc.c                    |   6 +-
 arch/riscv/lib/setupc.S                   |  16 +-
 include/asm-generic/registers.h           |  33 ++++
 include/linux/compiler-clang.h            |  21 ++
 include/linux/compiler-gcc.h              |   3 +
 include/linux/compiler_types.h            |  10 +
 include/mach/sifive/entry.h               |  32 +++
 include/pbl.h                             |   6 +
 include/pbl/entry.h                       | 175 ++++++++++++++++
 include/pbl/handoff-data.h                |  15 ++
 include/pbl/soc-type.h                    | 170 ++++++++++++++++
 pbl/Makefile                              |   2 +
 pbl/entry.c                               | 230 ++++++++++++++++++++++
 pbl/handoff-data.c                        |   2 +
 pbl/soc-type.c                            |  71 +++++++
 37 files changed, 1418 insertions(+), 146 deletions(-)
 create mode 100644 arch/riscv/boot/board-dt-2nd-head.S
 create mode 100644 arch/riscv/boot/entry_ll.S
 create mode 100644 arch/riscv/boot/head.S
 create mode 100644 arch/riscv/lib/call_with_stack.S
 create mode 100644 include/asm-generic/registers.h
 create mode 100644 include/mach/sifive/entry.h
 create mode 100644 include/pbl/entry.h
 create mode 100644 include/pbl/soc-type.h
 create mode 100644 pbl/entry.c
 create mode 100644 pbl/soc-type.c

-- 
2.47.3



