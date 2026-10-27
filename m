Delivery-date: Tue, 27 Oct 2026 08:53:08 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xLbzY-003pf8-0y
	for lore@lore.pengutronix.de;
	Tue, 27 Oct 2026 08:53:08 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 771C0201CE0
	for <lore@pengutronix.de>; Tue, 27 Oct 2026 08:53:08 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=NHj9lwAj;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=LfdgbfOs;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793087588; a=rsa-sha256;
	cv=none;
	b=S4tX/aLWakAATyfBjVGxfhskR5JZfpZh8zpvPPqtExlWfmQMUxU8tL6xJt2s95QRghM6f7
	f2hA87yU9kXGcXsSMQTioOOISgt/aqEXP/Qwj4crzgQJL/YrXHaEGT0ZqVgnyDvjiDCgxN
	wBzDWZn5hCzSylIIeLjmjwopJsRsHL8FPCOh5/Ey59+oqadfNqWWybULorB0RVbftgF7w9
	oWReirGNv4UZcp7kygurzS0QcADtiUKKbmqZAZeJr/oEE4pFb57cFFh0fvf45fcBsrA0tM
	9GKr4QKvj3PKxU5fEKT2pz+1QPYCismtYQyoeC1k57cYhf3zAJuAx/CsuvMlaA==
ARC-Authentication-Results: i=1;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=NHj9lwAj;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=LfdgbfOs;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793087588;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=VivUmhjOcfPI3Dn/+BR+DBGH5sjJfKUnFwzJwzgtPCo=;
	b=hHCY32RQf6FI40RfO3CPw8KeIJUk25qw1vuj/wtyATh1rrsOaw+3Pt1xyWm6ase1a7FlxS
	7Hzq5UH3gF9Ik1TIxXaAzveFAQJ6O0Gqw7Si9gdMAv1Ss77H2cfjatW6DVUyS1MoHNyFM4
	RG38NsMyEjMK752kFmXbnk1NvpyCd2z+NdjS0X3aZsRoJQ2ppYI4OAjUGuCuOznrNFt33w
	ic9Etp4yKU+vTFXu/WWqeTWrU7QLomVwbnl9L2mVcx/Zq9GZffct8xhf+3joKJkadaSWv/
	5QtLOYVXftsrw3jHsc1W8UYORksdgBBB49wh51E5pyJXnO6p5demEAtjkI8/kw==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=VivUmhjOcfPI3Dn/+BR+DBGH5sjJfKUnFwzJwzgtPCo=; b=NHj9lwAjFqDalJ
	eOMrkzW19Mj0Jc9dYi9eIOfDU3BXb7ZNq1V+bHazfePb+Zu3SpW0D5thUh2H2YnO954WpX13BUGRC
	Qqh3g1mwBolkBGNw/S49qlvspiGw5Wvv37D5seDCZj0bqGKAFRF9jCUyc6yYdoe3Yqu5jn7ixzrxF
	kqq78j2Ic7ZENsb4SmGLwgLcynGQHBtyS4M2SjKPKhGeAxnIH31EYjUyUZILZyn050tbtuCKBao8Y
	WWZh3ed0yWjaWo3Fp698S+WBzXzi0uufUmUQWsWd3N6tq8ptyfY0ZUu6WjJmUidDdWRr+LvXxMWuI
	FBBC+Q/a913kUt2lek0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLbnS-00000003vHJ-33Di;
	Tue, 27 Oct 2026 07:40:38 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLbnR-00000003vEj-1rxm
	for barebox@bombadil.infradead.org;
	Tue, 27 Oct 2026 07:40:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=VivUmhjOcfPI3Dn/+BR+DBGH5sjJfKUnFwzJwzgtPCo=; b=LfdgbfOs4DEh10v2itVlS2eyGx
	jyBt/ZbThd80t3GeJ4ohKYp2Ki7pxKTdng34VUMePdFbKf91YG6YyYa5EwA183UdnBqMcKSLA99XP
	BJpc3bw/qpZrXe4Q67FG9N06Meeh+0HqeeFfX/uqDQ08cgAJ7v5aJAGJCqv03OxcDsn9cLLJGzpe/
	HtEgxp+ZCvvwblNpgFAg1XVfzjL4i5jGPC24L+E6jd7m8Rnh09G0KIoXXFxLVhTQud5Ig/qmT4FO0
	G+cAHvcLp8lzTBcpZMiWsZvt8V7GhWa4YWvbZLQl/kJjqZWmtMHeH605D1TXb5fZcMXGglic+CzsR
	kmdsjNiw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLbnI-0000000Ea1I-2mHR
	for barebox@lists.infradead.org;
	Tue, 27 Oct 2026 07:40:33 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1xLbnA-0003zV-1T; Tue, 27 Oct 2026 08:40:20 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: mfe@pengutronix.de,
	mtr@pengutronix.de,
	Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [RFC PATCH 15/17] RISC-V: erizo: migrate to board info entry point
Date: Tue, 27 Oct 2026 08:24:48 +0100
Message-ID: <20261027074014.3280396-16-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261027074014.3280396-1-a.fatoum@barebox.org>
References: <20261027074014.3280396-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: a.fatoum@barebox.org
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261027_074031_249468_FC82E13E 
X-CRM114-Status: GOOD (  13.71  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software, running on the system "desiato.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Erizo starts barebox from read-only memory on POR, which can
    be the boot ROM, the SPI flash or QEMU's BIOS ROM, so the old code copied
    the PBL to the start of SDRAM when it wasn't running from there. [...] 
 
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
X-Rspamd-Queue-Id: 771C0201CE0
X-Spamd-Result: default: False [-6.31 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_IN_DNSWL_MED(-0.60)[2607:7c80:54:3::133:from,2001:8b0:10b:1:d65d:64ff:fe57:4e05:received,2a0a:edc0:0:900:1d::77:received];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	ARC_NA(0.00)[];
	DMARC_NA(0.00)[barebox.org];
	FORGED_SENDER(0.00)[a.fatoum@barebox.org,barebox-bounces@lists.infradead.org];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@barebox.org,barebox-bounces@lists.infradead.org];
	FORWARDED(0.00)[barebox@bombadil.infradead.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=1];
	FROM_HAS_DN(0.00)[];
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
X-Stat-Signature: umixefgrg7eecb9repc58ghaxcgsbrhs

Erizo starts barebox from read-only memory on POR, which can be the
boot ROM, the SPI flash or QEMU's BIOS ROM, so the old code copied the
PBL to the start of SDRAM when it wasn't running from there. The stage
names that as relocaddr instead, which is skipped when the image was
loaded there.

DEBUG_LL initialization and nmon go into the CPU init callback, which
runs before relocation, so nmon still runs from where the image was
started and can load a new one into SDRAM. The '>' now comes from the
stage dispatch.

Assisted-by: Claude:opus-5.5
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/riscv/boards/erizo/lowlevel.c | 32 ++++++++++++++++++++----------
 1 file changed, 21 insertions(+), 11 deletions(-)

diff --git a/arch/riscv/boards/erizo/lowlevel.c b/arch/riscv/boards/erizo/lowlevel.c
index ab06634bdb8d..ff588b56ee4b 100644
--- a/arch/riscv/boards/erizo/lowlevel.c
+++ b/arch/riscv/boards/erizo/lowlevel.c
@@ -1,22 +1,32 @@
 // SPDX-License-Identifier: GPL-2.0-only
 
 #include <common.h>
+#include <pbl/entry.h>
 #include <asm/barebox-riscv.h>
 #include <debug_ll.h>
 #include <asm/riscv_nmon.h>
 
-ENTRY_FUNCTION(start_erizo_generic, a0, a1, a2)
-{
-	extern char __dtb_z_erizo_generic_start[];
-	void *fdt;
+#define ERIZO_SDRAM_BASE	0x80000000
 
+extern char __dtb_z_erizo_generic_start[];
+
+static void __prereloc erizo_cpu_init(void)
+{
 	debug_ll_init();
 	barebox_nmon_entry();
-	putc_ll('>');
-
-	/* On POR, we are running from read-only memory here. */
-
-	fdt = __dtb_z_erizo_generic_start + get_runtime_offset();
-
-	barebox_riscv_machine_entry(0x80000000, SZ_8M, fdt);
 }
+
+/*
+ * On POR, we are running from read-only memory, so the PBL relocates to
+ * the start of SDRAM. It stays in place if it was loaded there.
+ */
+ENTRY_POINT_HEAD(start_erizo_generic, __barebox_pbl_head_v1_machine)
+	.soc_type = SOC_TYPE_ERIZO,
+	.second_stage.stacktop = ERIZO_SDRAM_BASE + SZ_8M,
+	.second_stage.relocaddr = ERIZO_SDRAM_BASE,
+	.second_stage.mem_start = ERIZO_SDRAM_BASE,
+	.second_stage.mem_minsz = SZ_8M,
+	.second_stage.board_data = __dtb_z_erizo_generic_start,
+	.second_stage.prereloc_cpu_init = erizo_cpu_init,
+	.second_stage.soc_chainload = pbl_stage_barebox_entry,
+ENTRY_POINT_END
-- 
2.47.3



