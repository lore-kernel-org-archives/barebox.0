Delivery-date: Tue, 27 Oct 2026 08:41:36 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xLboO-003pKR-1D
	for lore@lore.pengutronix.de;
	Tue, 27 Oct 2026 08:41:36 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 9B5D3201CE0
	for <lore@pengutronix.de>; Tue, 27 Oct 2026 08:41:36 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=P5MGI5O3;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793086896; a=rsa-sha256;
	cv=none;
	b=FxaBJrIGXBob7SOdoiinpEspBLoi7gbT4Y6A9ag+j+EvhiAx1MY1OYGSSPJX1nlRJ0dZEk
	AkNUOq8WtA4VkjTS/ajjRplyx7AvxvJpmfpzoHNM73Tts67oEkciUG2k6SSwjEW1+pFC4r
	rVfNMqzt34wZV5gtK9ozPuXeO9sCPRwrMwIiNL5bg2CwPkAUQajFRbOmaljYILETnoHv+k
	3gytQJTW1SDtOr+xdamgwcPKJrVP0xhH6PCo1sXNhvxCatk4fleMEYgwfmYTRKeyi1ehSo
	TX0U70CEPQcnQzIwoLphYXKxT9VI6yJuMKVmOu3mW4YYWxfpOFHt4+mSu6r2rw==
ARC-Authentication-Results: i=1;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=P5MGI5O3;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793086896;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=64UdQVvHx+JbPnldcIlssiUPGNRn/ERez2F0PiCOs0o=;
	b=A9nfA2WrslXQsa7f6NXk8cS3P/0xylKAfCbLwRuj1TvWY2U0+yWls9n4D6kYToHab2+BcG
	SzshOvDxmCnEb5fr8ZQbZK4GX9CGAHHRouqUQ141kvnAYT18WeWWRTTBA80ewnsVNQ2X2X
	1j2w+x95N7kbv245rzOKO9VaeG0/hMvM4zjCqNaNsi7N/KId1jUXYGcFak2+VfYgzcIUlu
	xwAhC7xa5S0lAx6F1qpMNQeStq9NFV9QD621Gf8/e2DW4czzygprW0nuCC+z7MqibyukEG
	FpPRFDdePfYIxVbozcKzjh9l0jVBQifu0DY7DiWtyhGJ6xOx+IbVnOjhjhA8kQ==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=64UdQVvHx+JbPnldcIlssiUPGNRn/ERez2F0PiCOs0o=; b=P5MGI5O3lCvvgJ
	JH/f+XOXgz5rb3X86asPZHibxwQSrcQwZQJc1rYdzro/8XLoFN36351Pp3xZ6tYGdCUDcLyUbUair
	/MAf7tj4T0ilFqKx2f22Ux9C2TvWMZGmwys5WOowdshRUmXx4a3VTEnum5Bx5XgB++wZiAs72b/S6
	kso2OBd7QpK/eCllArPSNc9vIA07ngNYFgq/uO13cRgTlrOh2k0hDMsJt97lU1dWOhpuYovBjiKbS
	qNo8dLwdVhro9tkpsd9QBbYEkrM++8ZSzzbpRVleXtPTI04bZdb0aJjs4sZwKaJ/wuUn/NrIdFbx/
	0bGVO51JwvKr6Yzd4FUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLbnH-00000003v0D-38ow;
	Tue, 27 Oct 2026 07:40:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLbnA-00000003uu6-35tx
	for barebox@lists.infradead.org;
	Tue, 27 Oct 2026 07:40:24 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1xLbn8-0003zV-Ks; Tue, 27 Oct 2026 08:40:18 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: mfe@pengutronix.de,
	mtr@pengutronix.de,
	Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [RFC PATCH 10/17] RISC-V: hifive: migrate to board info entry point
Date: Tue, 27 Oct 2026 08:24:43 +0100
Message-ID: <20261027074014.3280396-11-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261027074014.3280396-1-a.fatoum@barebox.org>
References: <20261027074014.3280396-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: a.fatoum@barebox.org
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261027_004020_773387_7A345AE8 
X-CRM114-Status: GOOD (  13.13  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  OpenSBI starts the HiFive images like a kernel, so they use
    the supervisor mode head. Both boards hand the first 128M of DRAM to barebox
    proper, so that goes into the new SiFive SoC defaults and the b [...] 
 
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
X-Rspamd-Queue-Id: 9B5D3201CE0
X-Spamd-Result: default: False [-6.11 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:900:1d::77:received];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[barebox.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[2a0a:edc0:2:b01:1d::104:received];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=1];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@barebox.org,barebox-bounces@lists.infradead.org]
X-Rspamd-Action: no action
X-Stat-Signature: csc5gn79rrehir1rg5py3a1io1chkjsm

OpenSBI starts the HiFive images like a kernel, so they use the
supervisor mode head. Both boards hand the first 128M of DRAM to barebox
proper, so that goes into the new SiFive SoC defaults and the boards
only add their built-in device tree.

The '>' is now printed by the stage dispatch.

Assisted-by: Claude:fable-5.1
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/riscv/boards/hifive/lowlevel.c | 30 ++++++++-------------------
 include/mach/sifive/entry.h         | 32 +++++++++++++++++++++++++++++
 2 files changed, 41 insertions(+), 21 deletions(-)
 create mode 100644 include/mach/sifive/entry.h

diff --git a/arch/riscv/boards/hifive/lowlevel.c b/arch/riscv/boards/hifive/lowlevel.c
index 5e8969bef1da..ab60c7e96a78 100644
--- a/arch/riscv/boards/hifive/lowlevel.c
+++ b/arch/riscv/boards/hifive/lowlevel.c
@@ -1,26 +1,14 @@
 // SPDX-License-Identifier: GPL-2.0-only
 
-#include <common.h>
-#include <asm/barebox-riscv.h>
-#include <debug_ll.h>
+#include <mach/sifive/entry.h>
 
-static __always_inline void start_hifive(unsigned long hartid, void *fdt)
-{
-	putc_ll('>');
+extern char __dtb_z_hifive_unmatched_a00_start[];
+extern char __dtb_z_hifive_unleashed_a00_start[];
 
-	barebox_riscv_supervisor_entry(0x80000000, SZ_128M, hartid, fdt);
-}
+ENTRY_POINT(FU740, start_hifive_unmatched)
+	.second_stage.board_data = __dtb_z_hifive_unmatched_a00_start,
+ENTRY_POINT_END
 
-ENTRY_FUNCTION(start_hifive_unmatched, a0, a1, a2)
-{
-	extern char __dtb_z_hifive_unmatched_a00_start[];
-
-	start_hifive(a0, __dtb_z_hifive_unmatched_a00_start + get_runtime_offset());
-}
-
-ENTRY_FUNCTION(start_hifive_unleashed, a0, a1, a2)
-{
-	extern char __dtb_z_hifive_unleashed_a00_start[];
-
-	start_hifive(a0, __dtb_z_hifive_unleashed_a00_start + get_runtime_offset());
-}
+ENTRY_POINT(FU540, start_hifive_unleashed)
+	.second_stage.board_data = __dtb_z_hifive_unleashed_a00_start,
+ENTRY_POINT_END
diff --git a/include/mach/sifive/entry.h b/include/mach/sifive/entry.h
new file mode 100644
index 000000000000..04529099dcf4
--- /dev/null
+++ b/include/mach/sifive/entry.h
@@ -0,0 +1,32 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+#ifndef __MACH_SIFIVE_ENTRY_H
+#define __MACH_SIFIVE_ENTRY_H
+
+#include <linux/sizes.h>
+#include <pbl/entry.h>
+#include <asm/barebox-riscv.h>
+
+#define SIFIVE_DRAM_BASE	0x80000000
+
+/*
+ * OpenSBI starts the image in supervisor mode in DRAM. Every board has
+ * at least 128M, boards with more can raise mem_minsz. OpenSBI leaves
+ * the UART set up, so there's no console and the PBL uses DEBUG_LL.
+ */
+#define PBL_SOC_SIFIVE_DEFAULTS(soc)				\
+	.soc_type = SOC_TYPE_##soc,				\
+	.second_stage = {					\
+		.stacktop = SIFIVE_DRAM_BASE + SZ_128M,		\
+		.mem_start = SIFIVE_DRAM_BASE,			\
+		.mem_minsz = SZ_128M,				\
+		.soc_chainload = pbl_stage_barebox_entry,	\
+	}
+
+#define PBL_SOC_FU540_HEAD	__barebox_pbl_head_v1_supervisor
+#define PBL_SOC_FU540_DEFAULTS	PBL_SOC_SIFIVE_DEFAULTS(FU540)
+
+#define PBL_SOC_FU740_HEAD	__barebox_pbl_head_v1_supervisor
+#define PBL_SOC_FU740_DEFAULTS	PBL_SOC_SIFIVE_DEFAULTS(FU740)
+
+#endif
-- 
2.47.3



