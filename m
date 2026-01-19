Delivery-date: Mon, 19 Jan 2026 13:24:20 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vhoIu-0031mp-20
	for lore@lore.pengutronix.de;
	Mon, 19 Jan 2026 13:24:20 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vhoIt-0006Kh-GL
	for lore@pengutronix.de; Mon, 19 Jan 2026 13:24:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+ytZ/cMDRCd4op2XPDL0/Ylami31nxspUoWSkjQf9Ls=; b=mK3M6oBPGwujeI+C3KVw1Kn12k
	5B3URuovRPtI10ChuijqLmgC8pSmfUx5G8641+tsItZ9K39zeFGXq2gX/mh26CGcPw7DhnmazY8uL
	qqvoLu9qKIitZoP0Xb+oiA9wEGBdN2Eou2MRMrlWjFyGx6+NN/vjVchK0g5cV9v3I0KjOmyqV85aY
	MrIfdWxsb141pkcbHnSfTq8/6XPxY3ZVLOEHWL7fLMP6wizGOcPaMXF6TEWtq5QlNMuWN0jjbaqYT
	noME9GuRKtF5J/eVBxZx3QIWPcjMkkS4k/7GADlQFOdBommclSx59J4p6XnAxv7WhiK3p5Xfy3n5M
	aCTXu46w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhoIE-00000001zxk-1M7y;
	Mon, 19 Jan 2026 12:23:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhoI7-00000001zuT-2Qdh
	for barebox@lists.infradead.org;
	Mon, 19 Jan 2026 12:23:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vhoHy-00062t-09; Mon, 19 Jan 2026 13:23:22 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vhoHy-001PXg-0k;
	Mon, 19 Jan 2026 13:23:21 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vhoHx-00000003rX1-24FN;
	Mon, 19 Jan 2026 13:23:21 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: "Claude Sonnet 4.5" <noreply@anthropic.com>, 
 Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260108-pbl-load-elf-v3-0-e28c931fc179@pengutronix.de>
References: <20260108-pbl-load-elf-v3-0-e28c931fc179@pengutronix.de>
Message-Id: <176882540148.920695.17963918624044275732.b4-ty@pengutronix.de>
Date: Mon, 19 Jan 2026 13:23:21 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260119_042331_628321_EF839D8A 
X-CRM114-Status: GOOD (  10.05  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v3 00/23] PBL: Add PBL ELF loading support with dynamic
 relocations
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 08 Jan 2026 16:49:57 +0100, Sascha Hauer wrote:
> Until now we linked the raw barebox proper binary into the PBL which
> comes with a number of disadvantages. We rely on self-modifying code
> to in barebox proper (relocate_to_current_adr()) and have no initialized
> bss segment (setup_c()). Also we can only mark the .text and .rodata as
> readonly during runtime of barebox proper.
> 
> This series overcomes this by linking a ELF image into the PBL. This
> image is properly layed out, linked and initialized in the PBL. With
> this barebox proper has a proper C environment and text/rodata
> protection from the start.
> 
> [...]

Applied, thanks!

[01/23] Makefile.compiler: add objcopy-option
        https://git.pengutronix.de/cgit/barebox/commit/?id=19a380e98624 (link may not be stable)
[02/23] elf: only accept images matching the native ELF_CLASS
        https://git.pengutronix.de/cgit/barebox/commit/?id=b53168361c5a (link may not be stable)
[03/23] elf: build for PBL as well
        https://git.pengutronix.de/cgit/barebox/commit/?id=027452b87aa8 (link may not be stable)
[04/23] elf: add dynamic relocation support
        https://git.pengutronix.de/cgit/barebox/commit/?id=fbb6a6eec9c9 (link may not be stable)
[05/23] ARM: implement elf_apply_relocations() for ELF relocation support
        https://git.pengutronix.de/cgit/barebox/commit/?id=487027fd354d (link may not be stable)
[06/23] riscv: define generic relocate_image
        https://git.pengutronix.de/cgit/barebox/commit/?id=89d48cf83187 (link may not be stable)
[07/23] riscv: implement elf_apply_relocations() for ELF relocation support
        https://git.pengutronix.de/cgit/barebox/commit/?id=4a68784a2ce9 (link may not be stable)
[08/23] elf: implement elf_load_inplace()
        https://git.pengutronix.de/cgit/barebox/commit/?id=ee11f1624d20 (link may not be stable)
[09/23] elf: create elf_open_binary_into()
        https://git.pengutronix.de/cgit/barebox/commit/?id=6610142f48bf (link may not be stable)
[10/23] Makefile: add vmbarebox build target
        https://git.pengutronix.de/cgit/barebox/commit/?id=2337f2c3d413 (link may not be stable)
[11/23] PBL: allow to link ELF image into PBL
        https://git.pengutronix.de/cgit/barebox/commit/?id=008191cfab24 (link may not be stable)
[12/23] mmu: add MAP_CACHED_RO mapping type
        https://git.pengutronix.de/cgit/barebox/commit/?id=f28e767645dc (link may not be stable)
[13/23] mmu: introduce pbl_remap_range()
        (no commit info)
[14/23] ARM: drop arm_fixup_vectors()
        https://git.pengutronix.de/cgit/barebox/commit/?id=aeffa0386702 (link may not be stable)
[15/23] ARM: linker script: create separate PT_LOAD segments for text, rodata, and data
        https://git.pengutronix.de/cgit/barebox/commit/?id=93120ce68ced (link may not be stable)
[16/23] ARM: link ELF image into PBL
        https://git.pengutronix.de/cgit/barebox/commit/?id=dbbca16895f5 (link may not be stable)
[17/23] ARM: PBL: setup MMU with proper permissions from ELF segments
        https://git.pengutronix.de/cgit/barebox/commit/?id=6cb7fc2edbb6 (link may not be stable)
[18/23] riscv: linker script: create separate PT_LOAD segments for text, rodata, and data
        https://git.pengutronix.de/cgit/barebox/commit/?id=bfd483b0995f (link may not be stable)
[19/23] riscv: link ELF image into PBL
        https://git.pengutronix.de/cgit/barebox/commit/?id=ec8b2ce7c2ac (link may not be stable)
[20/23] riscv: Allwinner D1: Drop M-Mode
        https://git.pengutronix.de/cgit/barebox/commit/?id=29881d661727 (link may not be stable)
[21/23] riscv: add ELF segment-based memory protection with MMU
        https://git.pengutronix.de/cgit/barebox/commit/?id=384faa803e6b (link may not be stable)
[22/23] ARM: cleanup barebox proper entry
        https://git.pengutronix.de/cgit/barebox/commit/?id=e06e94ae2e3c (link may not be stable)
[23/23] riscv: cleanup barebox proper entry
        (no commit info)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



