Delivery-date: Tue, 27 Oct 2026 08:45:20 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xLbs0-003pUP-03
	for lore@lore.pengutronix.de;
	Tue, 27 Oct 2026 08:45:20 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 3CF56201CE0
	for <lore@pengutronix.de>; Tue, 27 Oct 2026 08:45:20 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=zNwqvZ5I;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=jIRP6EFj;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793087120; a=rsa-sha256;
	cv=none;
	b=WPgzpaQnHg9Nqq+PMXgYSRjE4PK9XYjJ5Plf/2njxBl8F9dTLdnyzGwUaaOxjE0UGy3Msm
	2f+tokTtTBf34BvEs+XbOOOZ9iv3st3w/ARWFBPJrJtWnF8HWNE9biD6y7/3FZ+GQXpdHr
	sCIVny0MJiUNYxCBewdAg2kAmdAy3x0naXPCDpnZvtm8uvXUfwBDss/SmMwgnRTlQg+PfD
	7/CPAHWN8mT6BDxN9fQ+TGY/PCtqzdZe8mBKDmIWuSw7feePvgsZbwZQOGsnBOMBq69lwT
	gp6YMkUq1Uzhg5uKX15TvjTnTLETHmpmNOMOUWs+z1wXkR+z/65F10HP5zg6Aw==
ARC-Authentication-Results: i=1;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=zNwqvZ5I;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=jIRP6EFj;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793087120;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=TnnquOuT+WV9pybh1Xq6fiSDsXFjZ+9pvcfyecaJmEM=;
	b=HdWMISjMcad34Gv3j3u612bxnQK+2890GlQ0IeIyIVb6hPpes6Rb8u/qywKeP/sQ7xQBCl
	8oieOK95/Z0uUoICUwA8u73DtLF3YC5K33ucDDEjJcPxxUqpxhPQ02ujlOu5GcTX+wgjN+
	90v1kx9G804aAgBPE07iNPJAHexx56ra3YtxX5XKbt7hSJW0diit1ScJpLYIH70R6wWo0E
	mbUGd/KVaYX6ZlClODsdISU3YbvBtY0YOXh/P8lWZW1WaQRkpEVsElBJtrnv9qEbs9lr2S
	+489sGwiUPrp6qFVFv+0rPaYYX8gtexV80IyTRvemS1/Dfg0TORo96ZI6SgeBQ==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=TnnquOuT+WV9pybh1Xq6fiSDsXFjZ+9pvcfyecaJmEM=; b=zNwqvZ5IXSKjB7
	mfk9fglrt6yWDGj4T3JvJDp2SPgftzrACFG0psR1U2XTm4fh2NR1XBhp/r4cPVaxabkMr26yTrBhv
	uHuFj7FD3ofhIZl2CYchIyhWpv2WDWP2WtiUnSOvAeHN1PTb8Rmy3+5bf7ptqb4EBjYIne8lRR4e+
	Ffv4DBaDgRhTzLwEJlO/cuofjMRDkwzwhHYW4nGnPaPls9KEq7HWpBpM8tXu74sf34fkWCPrEm9Oz
	Hnj/wbLkLLSLhyT8gpzDKiHzg6l4Wgkmae+JyAwB9UEOUz5cmiJKNKfLiNansqltNbiOPJwmRVkjp
	T67wTnZTARw1BNiEjNjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLbnS-00000003vGT-2SO2;
	Tue, 27 Oct 2026 07:40:38 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLbnR-00000003vET-0kvQ
	for barebox@bombadil.infradead.org;
	Tue, 27 Oct 2026 07:40:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=TnnquOuT+WV9pybh1Xq6fiSDsXFjZ+9pvcfyecaJmEM=; b=jIRP6EFjWY2LDRoK73z6A4sxH2
	vx2713u5cksEmSoKsxaprUjL7f6A7cASsfINig9C7IaBU5rlbz7fwYt9QMB+haRDS+/PwwYLdMQac
	SQVHFG8FSjJBCasFr7C7B8Xs7+m+U5tvQ30B2QtPl61ZrRMiaN2ZzJRyAKE7o8tQyKYue+iWwvHMr
	K7cRottZywl3C8uSTiuu1V/cdIPb/ue1yXgPLrpZnVguPkYZarbvpZnraDert0ZooBdKH2bwADfzB
	7Uck7yROouZ6//pd6XirN++VDSHAaeESETPjPWbPrpuyXweV6+PvMLDOVwWnjPk6xi8E8fH5oihZL
	u/Xq+A9A==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLbnI-0000000Ea1J-18X5
	for barebox@lists.infradead.org;
	Tue, 27 Oct 2026 07:40:32 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1xLbnA-0003zV-AP; Tue, 27 Oct 2026 08:40:20 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: mfe@pengutronix.de,
	mtr@pengutronix.de,
	Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [RFC PATCH 16/17] RISC-V: litex-linux: migrate to board info entry point
Date: Tue, 27 Oct 2026 08:24:49 +0100
Message-ID: <20261027074014.3280396-17-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261027074014.3280396-1-a.fatoum@barebox.org>
References: <20261027074014.3280396-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: a.fatoum@barebox.org
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261027_074030_901744_31F6A5B9 
X-CRM114-Status: GOOD (  10.92  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software, running on the system "desiato.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  The LiteX BIOS loads barebox into RAM and starts it in machine
    mode, so the image uses the machine mode head and the stage describes the
    RAM the old entry point passed to barebox_riscv_machine_entry() [...] 
 
 Content analysis details:   (0.0 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2a0a:edc0:2:b01:1d:0:0:104 listed in]
                             [list.dnswl.org]
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
X-Rspamd-Queue-Id: 3CF56201CE0
X-Spamd-Result: default: False [-6.31 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_IN_DNSWL_MED(-0.60)[2a0a:edc0:0:900:1d::77:received,2001:8b0:10b:1:d65d:64ff:fe57:4e05:received,2607:7c80:54:3::133:from];
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
X-Stat-Signature: gipaycxbacmg4drdwh4on9wzf9cxwpcg

The LiteX BIOS loads barebox into RAM and starts it in machine mode, so
the image uses the machine mode head and the stage describes the RAM
the old entry point passed to barebox_riscv_machine_entry().

nmon goes into the CPU init callback, which runs before relocation like
the old entry point did. The '>' now comes from the stage dispatch.

Assisted-by: Claude:opus-5.5
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/riscv/boards/litex-linux/lowlevel.c | 30 ++++++++++++++----------
 1 file changed, 17 insertions(+), 13 deletions(-)

diff --git a/arch/riscv/boards/litex-linux/lowlevel.c b/arch/riscv/boards/litex-linux/lowlevel.c
index 6be3d62e64fb..2d7713cd48fc 100644
--- a/arch/riscv/boards/litex-linux/lowlevel.c
+++ b/arch/riscv/boards/litex-linux/lowlevel.c
@@ -1,22 +1,26 @@
 // SPDX-License-Identifier: GPL-2.0-only
 
 #include <common.h>
+#include <pbl/entry.h>
 #include <asm/barebox-riscv.h>
-#include <debug_ll.h>
 #include <asm/riscv_nmon.h>
 
-ENTRY_FUNCTION(start_litex_linux, a0, a1, a2)
+#define LITEX_RAM_BASE	0x40000000
+
+extern char __dtb_z_litex_linux_start[];
+
+static void __prereloc litex_cpu_init(void)
 {
-	extern char __dtb_z_litex_linux_start[];
-	void *fdt;
-
-	/* BIOS will have loaded us into RAM */
-
 	barebox_nmon_entry();
-
-	putc_ll('>');
-
-	fdt = __dtb_z_litex_linux_start + get_runtime_offset();
-
-	barebox_riscv_machine_entry(0x40000000, SZ_256M, fdt);
 }
+
+/* BIOS will have loaded us into RAM */
+ENTRY_POINT_HEAD(start_litex_linux, __barebox_pbl_head_v1_machine)
+	.soc_type = SOC_TYPE_LITEX,
+	.second_stage.stacktop = LITEX_RAM_BASE + SZ_256M,
+	.second_stage.mem_start = LITEX_RAM_BASE,
+	.second_stage.mem_minsz = SZ_256M,
+	.second_stage.board_data = __dtb_z_litex_linux_start,
+	.second_stage.prereloc_cpu_init = litex_cpu_init,
+	.second_stage.soc_chainload = pbl_stage_barebox_entry,
+ENTRY_POINT_END
-- 
2.47.3



