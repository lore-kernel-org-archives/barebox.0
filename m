Delivery-date: Thu, 23 Jul 2026 15:58:26 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wmtwP-001z6j-1O
	for lore@lore.pengutronix.de;
	Thu, 23 Jul 2026 15:58:26 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id D688A202015
	for <lore@pengutronix.de>; Thu, 23 Jul 2026 15:58:25 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="Q/aPrBKN";
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=j7WvQNdM;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VBjDyjr5ddDzzwO5R0X/LatFkLeA5ujh9BO6H6tXDzc=; b=Q/aPrBKNhhAQfRACCcnqeGKjWh
	JnaS/SUoALRGvf9hia7GIa6/0brkB/PubY5kfqUTayLb7jV+TicBe/HtY1knZyqeScwsjrfyNO6rn
	UaGiWHdvrPHN1OUXACcFP2UnFV/xMn4Y+4JCQpX4OuJeWUar9fwFInrB4BIZd366ObFB3aGngZrcT
	5pVy6FUOW91zxBBe93A6ksK4HNMNANgRpkri5zVPx8r4y83nR1mJrnsgj2MviQJNmkK1CgpU22Lzr
	+scyrAGbCDORg2sP/Qsye8z2WMep32re0TUcwgWmjMIqk83Y6MCSS8adK5qUDf0q0LVP9y/e2S6RO
	Kii+IfuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmtvB-0000000EQNu-2zym;
	Thu, 23 Jul 2026 13:57:09 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmtv9-0000000EQLQ-3n7Z
	for barebox@lists.infradead.org;
	Thu, 23 Jul 2026 13:57:07 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 5BD6260A66;
	Thu, 23 Jul 2026 13:57:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 11892C2BCB8;
	Thu, 23 Jul 2026 13:57:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784815027;
	bh=9S5rv4sokmKMvpI/1BrKgqAXvs4bOc/+qu1IvRDivR0=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=j7WvQNdMwa4k8i3el7k75ApsVAuFZYk74NhZPiTYGm/paPVnwA6HDKy+NX0dJAAjH
	 GVaNU22KHIc94aeO93L1to8cgW0DoBifX+DsLXnQKrBkZrDyCK5DsOYuMJdxT32Mq0
	 u867YtbpGUnILHxQEvX83BpHSpsrJ2eJHx6urisHotxSQz54uJ6BE9M4aWVpXED1BN
	 lXMQGAC2Y9grXu4P34hqlgZQ+oIyhyv21StdoHWbsKQQvcbGmobA5oq+tLbOyQAVLa
	 p6fnfDulk3X10FfI4sSiM+vYlHwHcP/JD1TCMYD6Og+eZjQW480+Ys3KZlfBH0Q2/b
	 iQqQ9Bh4pFu2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ED864C531D2;
	Thu, 23 Jul 2026 13:57:06 +0000 (UTC)
From: Luca Lauro via B4 Relay <devnull+famlauro93l.gmail.com@kernel.org>
Date: Thu, 23 Jul 2026 15:57:40 +0200
Subject: [PATCH 02/19] ARM: mvebu: add lowlevel support for Netgear RN102
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260723-rn102-rn104-series-v1-2-7698d25df866@gmail.com>
References: <20260723-rn102-rn104-series-v1-0-7698d25df866@gmail.com>
In-Reply-To: <20260723-rn102-rn104-series-v1-0-7698d25df866@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 "open list:BAREBOX" <barebox@lists.infradead.org>
Cc: Luca Lauro <famlauro93l@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1784815061; l=1588;
 i=famlauro93l@gmail.com; s=20260723; h=from:subject:message-id;
 bh=ZqR+kBluZPixeTfsfJROnu+T58yKuEh1lvssMTsUMXE=;
 b=KaoNvGcVvxw67Ak+Z5IlQgcCJH3mFP5FP8s8Nnxks+X59Ia3EYz6FLLYLGCZ7fVGvD4+JLtvo
 j016SYa4tnhChZcakBO5BTxuYQXIxCXDT6uK+PD3f8CMGyN1AqeXRIy
X-Developer-Key: i=famlauro93l@gmail.com; a=ed25519;
 pk=OAJlcD69ugQCl99Vy6w+Aeu+ZUb1IVGcz1Ijxo6Ch78=
X-Endpoint-Received: by B4 Relay for famlauro93l@gmail.com/20260723 with
 auth_id=892
X-Original-From: Luca Lauro <famlauro93l@gmail.com>
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
Reply-To: famlauro93l@gmail.com
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Spamd-Result: default: False [-6.91 / 15.00];
	DWL_DNSWL_MED(-4.00)[kernel.org:dkim,infradead.org:dkim];
	BAYES_HAM(-3.00)[100.00%];
	FREEMAIL_REPLYTO_NEQ_FROM(2.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	FORGED_SENDER(0.00)[devnull@kernel.org,barebox-bounces@lists.infradead.org];
	FREEMAIL_REPLYTO(0.00)[gmail.com];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	TO_DN_ALL(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[devnull@kernel.org,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de,famlauro93l.gmail.com];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,kernel.org:+];
	RCPT_COUNT_THREE(0.00)[3];
	HAS_REPLYTO(0.00)[famlauro93l@gmail.com]
X-Rspamd-Action: no action
X-Rspamd-Queue-Id: D688A202015
X-Rspamd-Server: mx1
X-Stat-Signature: 5irajjunof14qk4hn5csodqpij153jp3

From: Luca Lauro <famlauro93l@gmail.com>

---
 arch/arm/boards/netgear-rn102/lowlevel.c | 49 ++++++++++++++++++++++++++++++++
 1 file changed, 49 insertions(+)

diff --git a/arch/arm/boards/netgear-rn102/lowlevel.c b/arch/arm/boards/netgear-rn102/lowlevel.c
new file mode 100644
index 0000000000..11130eabbc
--- /dev/null
+++ b/arch/arm/boards/netgear-rn102/lowlevel.c
@@ -0,0 +1,49 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#include <common.h>
+#include <asm/barebox-arm.h>
+#include <mach/mvebu/lowlevel.h>
+#include <mach/mvebu/barebox-arm-head.h>
+#include <mach/mvebu/armada-370-xp-regs.h>
+
+extern char __dtb_armada_370_rn102_bb_start[];
+
+#define INTERNAL_REG_BASE_ADDR	0x20080
+
+static __always_inline void mvebu_remap_registers(void)
+{
+	void __iomem *base = mvebu_get_initial_int_reg_base();
+
+	writel(MVEBU_REMAP_INT_REG_BASE, base + INTERNAL_REG_BASE_ADDR);
+}
+
+static unsigned long armada_370_xp_memory_find(void)
+{
+	unsigned long mem_size = 0;
+
+	for (int cs = 0; cs < 4; cs++) {
+		u32 ctrl = readl(ARMADA_370_XP_SDRAM_BASE + DDR_SIZE_CSn(cs));
+
+		/* Skip non-enabled CS */
+		if ((ctrl & DDR_SIZE_ENABLED) != DDR_SIZE_ENABLED)
+			continue;
+
+		mem_size += (ctrl | ~DDR_SIZE_MASK) + 1;
+	}
+
+	return mem_size;
+}
+
+ENTRY_FUNCTION_MVEBU(start_netgear_rn102, r0, r1, r2)
+{
+    void *fdt;
+
+    arm_cpu_lowlevel_init();
+	
+	fdt = __dtb_armada_370_rn102_bb_start +
+		get_runtime_offset();
+
+	mvebu_remap_registers();
+	barebox_arm_entry(0, armada_370_xp_memory_find(), fdt);
+	// armada_370_xp_barebox_entry(fdt);
+}

-- 
2.47.3




