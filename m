Delivery-date: Tue, 27 Oct 2026 09:07:26 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xLcDN-003ptK-39
	for lore@lore.pengutronix.de;
	Tue, 27 Oct 2026 09:07:26 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 97B02201F14
	for <lore@pengutronix.de>; Tue, 27 Oct 2026 09:07:25 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=y7Bw70jC;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=rhHCSEE4;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793088445; a=rsa-sha256;
	cv=none;
	b=LXfB6/Chaxoc3BDjY2ifId4YUO65kbZTsYiAW+dwtyeXtBLE3E8dWw3a2djAfDL7qfw7WZ
	qhgQgD3/U3+WZXW8PPuoWCqD+vSEuTMWbDW/H8W9Zd228detWORHhQbyjXl/eVwq0NBroM
	WvzOPoIBUuo4Tyhk7GUnx/cB8SMSn3fSwbs3IPCg7G7dDmGdD1zH6cDfnLPIMHNihFIPlD
	6NWQOi8QlJ/lOgs65lSeeHhxTIyB0R22Gy6H5F37Hp2nBtlZrTEh5jyz5LKVzL5Lumy6q/
	ttevHyQa/gYAnpeNgVlXttojBhczw+LsYKcSlQr2jG0CEMKJtPyXySYTBERELw==
ARC-Authentication-Results: i=1;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=y7Bw70jC;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=rhHCSEE4;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793088445;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=LJowUSMVUIfY83iVwWcUDVvJAGS08vXkJJRSQgYQ3XQ=;
	b=cU+JiihkOUtoWExE5ajvKn3j+ryMsLl09DVoa/P35pSjRzOk7jZgOn5DCqdPbL1qf9pUYs
	XO/S6QtECodyFrlLqOdsWnSFiKteuoxoZhcgaFJYsIo2nGPfGJPWnKAC7MnCzLWuLkXWhF
	TykW2IY1Eusn/RmSxSJpcoc02n4beMv6hhRUsgojHbJQoV7KpwsYqbmC7n3j/M4Z/SSr6V
	pOU00UMP15l6Tz4T4IhjEcoluYeyDEoT3syuV42IajJGJxdFmUVsRMiCBtIBzsgTO1ZJMm
	T13UmZsmlAuMhEpfGxyNqL7TSQN14B6otAS4iAMQeMy1a31OCltXzCeoWy0xFw==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=LJowUSMVUIfY83iVwWcUDVvJAGS08vXkJJRSQgYQ3XQ=; b=y7Bw70jCU5gI6l
	BjBX684sX39rEhkSUI5outStM9k9aMaJv7Bdx+zQ2rRo/LiIbX0+5/z0UnLnQpYvWo2fZdTVJCSwV
	6CL0HQIwhf+xmUtiEzoWJmf02IcouX3IwXCzEqLU5w150RDiA/qFKcIbCgmAxx/SATErC3+wJ8ol+
	zHBZqNmcbNyyXAdBg6EU1pgITHc3KAOXwUZzU50WtLw/iIvd7l2aT1QUK8dMBk6zbXjP7EQcyKC2u
	ozb+a4wN8q6WXDiegk0qgjwmvONWed9T6bKehCcRvyPedOFOUp2RAoEFcMSbRMkqlQMve2KQKmhmT
	ZGvjf2FYrYOmemFwvwaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLbnT-00000003vHj-08FF;
	Tue, 27 Oct 2026 07:40:39 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLbnR-00000003vEk-1rVH
	for barebox@bombadil.infradead.org;
	Tue, 27 Oct 2026 07:40:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=LJowUSMVUIfY83iVwWcUDVvJAGS08vXkJJRSQgYQ3XQ=; b=rhHCSEE4cNdtJQI602QZz43TxX
	FEBcBB3odyu3bvOR19/bakKskcLF6yBFyM7tVWesq8pBZXVOMV4O+xL1z2kJz4WBev2CWnI5rtPsb
	gxHc2DGAkQUkvdCyK4LWWZ5z5GVHd2ZyT5yh0fUPjq6kGzviDxUog5Fko7TqlmPvT3gvcYzcXa8w3
	KnTtUKDaOBXrOCcVxnQUusyO9LFlDcBC8RyrldhHXThc0XG/PzKrtJA0W+U3OLdea8b97H7WwJb74
	yPBtAILWHisi/fP05oO511kTQcmLS9J6aymJoD1VueeKR/e+ThCnQ/CNZkVyHpJn84CJxhx90FtCc
	zRa3AM2A==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLbnH-0000000Ea1K-2j5A
	for barebox@lists.infradead.org;
	Tue, 27 Oct 2026 07:40:34 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1xLbnA-0003zV-Ka; Tue, 27 Oct 2026 08:40:20 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: mfe@pengutronix.de,
	mtr@pengutronix.de,
	Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [RFC PATCH 17/17] Documentation: porting: describe the board info entry point
Date: Tue, 27 Oct 2026 08:24:50 +0100
Message-ID: <20261027074014.3280396-18-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261027074014.3280396-1-a.fatoum@barebox.org>
References: <20261027074014.3280396-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: a.fatoum@barebox.org
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261027_074032_660762_5BABA6D9 
X-CRM114-Status: GOOD (  31.05  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software, running on the system "desiato.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Describe ENTRY_POINT() and the stage dispatch as the way to
    write a board's PBL entry point. The description of the entry point written
    by hand moves into a section of its own below it and the section [...] 
 
 Content analysis details:   (0.0 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2a0a:edc0:2:b01:1d:0:0:104 listed in]
                             [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
X-Rspamd-Queue-Id: 97B02201F14
X-Spamd-Result: default: False [-6.31 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_IN_DNSWL_MED(-0.60)[2607:7c80:54:3::133:from,2a0a:edc0:0:900:1d::77:received,2001:8b0:10b:1:d65d:64ff:fe57:4e05:received];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[barebox.org];
	ARC_NA(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@barebox.org,barebox-bounces@lists.infradead.org];
	FORWARDED(0.00)[barebox@bombadil.infradead.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=1];
	FORGED_SENDER(0.00)[a.fatoum@barebox.org,barebox-bounces@lists.infradead.org];
	NEURAL_HAM(-0.00)[-1.000];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_MIXED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,infradead.org:-];
	RCPT_COUNT_THREE(0.00)[4];
	RCVD_COUNT_THREE(0.00)[4];
	R_DKIM_REJECT(0.00)[infradead.org:s=desiato.20200630];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_IN_DNSWL_NONE(0.00)[2a0a:edc0:2:b01:1d::104:received];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: s4s8sfe1afzkne3ff91hms5t8xj6raks

Describe ENTRY_POINT() and the stage dispatch as the way to write a
board's PBL entry point. The description of the entry point written by
hand moves into a section of its own below it and the section on image
heads gains the stage dispatch a head branches to.

Assisted-by: Claude:fable-5.1
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 Documentation/devel/porting.rst | 124 ++++++++++++++++++++++++++++++--
 1 file changed, 119 insertions(+), 5 deletions(-)

diff --git a/Documentation/devel/porting.rst b/Documentation/devel/porting.rst
index 3676e85d181c..d5f0f955085a 100644
--- a/Documentation/devel/porting.rst
+++ b/Documentation/devel/porting.rst
@@ -40,9 +40,91 @@ Entry point
 ===========
 
 The PBL's entry point is the first of your code that's run. What happens
-there depends on the previously running code. If a previous stage has already
-initialized the DRAM, the only thing you need to do is to set up a stack and
-call the common PBL code with a memory region and your device tree blob::
+there depends on the previously running code. Boards describe it with
+``ENTRY_POINT()`` and leave setting up stack, relocation and BSS to common
+code. If a previous stage has already initialized the DRAM, the only thing
+you need to do is to describe the memory region, your console and your
+device tree blob::
+
+  #include <pbl/entry.h>
+  #include <mach/mysoc/entry.h>
+
+  extern char __dtb_z_my_board_start[];
+
+  ENTRY_POINT(MYSOC, start_my_board)
+  	.console.arg = IOMEM(MY_UART_BASE),
+  	.second_stage.mem_start = 0x80000000,
+  	.second_stage.mem_minsz = SZ_256M,
+  	.second_stage.board_data = __dtb_z_my_board_start,
+  ENTRY_POINT_END
+
+Let's look at this line by line:
+
+``ENTRY_POINT(MYSOC, start_my_board)``
+   Defines the entry point ``start_my_board`` and a board info, which
+   starts out with the defaults from ``<mach/mysoc/entry.h>``, see
+   :ref:`entry_point_defaults`. Fields set by the board override them.
+   For a SoC without defaults, use ``ENTRY_POINT_HEAD(name, head)`` and
+   set ``.soc_type`` yourself.
+
+``.console.arg = IOMEM(MY_UART_BASE)``
+   The SoC defaults usually provide the console driver and, if the UART
+   isn't usable on entry, a setup callback, so the board only needs to
+   name its UART. Without a console, the PBL prints through ``DEBUG_LL``.
+
+``.second_stage``
+   A board info has up to three stages: ``rom_stage`` for executing in
+   place from ROM, ``first_stage`` for SRAM and ``second_stage`` for DRAM.
+   On entry, the stage whose memory contains the program counter is
+   selected, or the earliest stage with callbacks if there is none.
+
+``.second_stage.mem_start = 0x80000000``
+   ``mem_start`` and ``mem_minsz`` describe the memory the stage runs from.
+   barebox proper starts out with this memory and may add more later on.
+   If the memory can be larger than ``mem_minsz``, set ``mem_maxsz``, so
+   the stage is still found by program counter.
+
+``.second_stage.board_data = __dtb_z_my_board_start``
+   The device tree passed to barebox proper, see ``__dtb_z_*`` below.
+   Boards that select their device tree at runtime call
+   ``handoff_data_add_dt()`` from their board init callback instead.
+
+A stage can also have a stack top (``stacktop``), an address to relocate
+to (``relocaddr``) and callbacks, which run in this order:
+
+``prereloc_cpu_init``
+   Runs before relocation and before BSS is cleared, so it must be
+   ``__prereloc`` and may not access global variables.
+
+``soc_init``
+   SoC lowlevel initialization.
+
+``board_init``
+   Board setup like DRAM initialization. Its ``entry_data`` argument is
+   a register the image head saved, e.g. the device tree on RISC-V.
+
+``soc_chainload``
+   Doesn't return. Usually enters barebox proper, e.g. with
+   ``pbl_stage_barebox_entry()``, which passes it the stage's memory and
+   ``board_data``.
+
+The SoC defaults usually provide the SoC callbacks, so a board typically
+only sets ``board_init``. If the PBL runs from SRAM first, because the
+whole image doesn't fit, ``first_stage.board_init`` sets up DRAM and
+``first_stage.soc_chainload`` loads the full image, which is then entered
+through ``second_stage``.
+
+The console is brought up before ``soc_init`` if it needs no setup, else
+after it and failing that after ``board_init``. Then the number of the
+stage is printed followed by ``>``, e.g. ``2>``, see :ref:`troubleshooting`.
+
+Unrelocated ENTRY_FUNCTION
+--------------------------
+
+Boards not using ``ENTRY_POINT()`` write the entry point as a C function
+that does the above by hand. If a previous stage has already initialized
+the DRAM, the only thing you need to do is to set up a stack and call the
+common PBL code with a memory region and your device tree blob::
 
   #include <asm/barebox-arm.h>
   #include <console.h>
@@ -127,7 +209,8 @@ Looking at other boards you might see some different patterns:
    stack beforehand. If either a barebox assembly entry point,
    ``ENTRY_FUNCTION_WITHSTACK`` or earlier firmware has set up the stack, there is
    no reason to use ``__naked``, just use ``ENTRY_FUNCTION_WITHSTACK`` with a zero
-   stack top.
+   stack top. Functions that run before the stack is set up are additionally
+   marked ``__unsafe_prestack`` for documentation.
 
 ``noinline``
    Compiler code inlining is oblivious to stack manipulation in
@@ -337,17 +420,46 @@ and the entry point should be written in a dedicated assembly file.
 This is the case with ARM64, see for example ``__barebox_arm64_head`` and the
 ``ENTRY_PROC`` macro.
 
+For ``ENTRY_POINT()``, the image head does what the boot protocol
+requires, like recording the privilege mode on RISC-V, and branches to
+the stage dispatch ``pbl_head_start_v1()`` with a boot argument register
+as ``entry_data``, see ``arch/riscv/boot/head.S``. ``pbl_head_start_v1()``
+runs before there is a stack, so architectures should implement it in
+assembly and select ``ARCH_HAS_PBL_HEAD_START_ASM``. The C version in
+``pbl/entry.c`` is only a fallback, because even in a naked function,
+the compiler may spill to the stack.
+
 Another way, which is often used for non-executable headers with extra
 meta-information like a checksum, is adding a new tool to ``scripts/``
 and have it run as part of the image build process. ``images/`` contains
 various examples.
 
+.. _entry_point_defaults:
+
+Entry point defaults
+====================
+
+Boards of the same SoC share its boot flow, so it's described once in
+``include/mach/$platform/entry.h``, e.g. ``include/mach/sifive/entry.h``:
+
+``PBL_SOC_<SOC>_HEAD``
+   The image head. Usually one the architecture provides for the boot
+   protocol, unless the BootROM requires a special header.
+
+``PBL_SOC_<SOC>_DEFAULTS``
+   The board info fields ``ENTRY_POINT(<SOC>, ...)`` starts out with,
+   at least ``.soc_type``, the SoC's entry in ``include/pbl/soc-type.h``.
+   barebox proper can query it with ``barebox_soc_type()``.
+
+Functions written for the defaults carry the ``PBL_SOC_<SOC>_`` prefix,
+so they aren't mistaken for the lowlevel API older boards call.
+
 Memory controller setup
 =======================
 
 If you've an external DRAM controller, you will need to configure it.
 This may involve enabling clocks and PLLs. This should all happen
-in the PBL entry point.
+in the PBL entry point, i.e. the first stage's board init callback.
 
 Chainloading
 ============
@@ -360,6 +472,8 @@ One good way to go about it is to check whether the program counter
 is in DRAM or SRAM. If in DRAM, we can assume that the image was loaded
 in full and we can just go into the common PBL entry and extract barebox
 proper. If in SRAM, we'll need to load the remainder from the boot medium.
+This is the distinction between the first and second stage of a board
+info entry point.
 
 This loading requires the PBL to have a driver for the boot medium as
 well as its prerequisites like clocks, resets or pin multiplexers.
-- 
2.47.3



