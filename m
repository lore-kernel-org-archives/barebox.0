Delivery-date: Tue, 27 Oct 2026 08:49:21 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xLbvt-003pZS-1F
	for lore@lore.pengutronix.de;
	Tue, 27 Oct 2026 08:49:21 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 81EA1202922
	for <lore@pengutronix.de>; Tue, 27 Oct 2026 08:49:21 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="JAHus/zG";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793087361; a=rsa-sha256;
	cv=none;
	b=W9UyU3no62zLwslnSaVUiYa0Ts5/PV0YuEoXqdXGi/9J5vYYpDrBng5jWVRFyuStn2XZEP
	Ch6toxtyFALM5YvLrbfXQUjLfa8JbZjAstfLBF/Wf+11l68wq8vMfxGzoPEfLFA8xU0kbU
	USEz8Pbya9d34Q82Se0WUpb+GwqnF169xUnX2J2KtvGvVhxppEksAS96T2FL/f51tbm7vP
	//0GMefj/yQwy3cwGG5NRB5hbI2O+3bvyraVTZ0h8OK1gHZ460fpcID8Gzl+EXmJl5ezns
	Tdk6ZV1HfIWt5YffzL7LSXUngHTY92wzh5vJ1vtp7RoxwQysPMdA+mpwT/4DrQ==
ARC-Authentication-Results: i=1;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="JAHus/zG";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793087361;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=qDurCjOMAtEP0cCZCwQbXn/LOnXdJ0aLq5tbjgfmBeo=;
	b=SgqUy2Cf6H5k1uZPYrZR42N5HezCnpUpRc7Kt64Mp97XmkFUqpIfh3Zf5nxBYBozO4emAD
	Mkk85ERTEw7NaZWAtUsPMjshHBc0OSrXST3E7TsLmhbX7J3baMRbm9dE6JaXHuJYFoTIFU
	dUCVQ48xW2Fy4shi1yr3gI215TkLGxF/Jk1PjHDjWAZR87UV/I3cgog085iohB90FBJTJM
	eCE0epXlXFlMHp8pJmFRmz1+FzA6XLwbBKj+O69Wfp5fVlO7llhAww8z/cgNkWzLAyyAeI
	IGW6pDv2TpaVmoaRriD+/iBcQn76xgt9NYpxdmOZlKMXbq02HKY9HhGynYOCuw==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=qDurCjOMAtEP0cCZCwQbXn/LOnXdJ0aLq5tbjgfmBeo=; b=JAHus/zGOqn6Ga
	TLa5uSx5w1AK+mG4iR6GHEEjIXOfEiF3mrFEr+uFmSRyl78m/U7jJGVwCDK/CX4ECDXxt/rszml1E
	RXLpRaqYWasm4iT6jBqW5qRfffhphOjnlxJiw1+4m3rBxHuhgZXJvlp0XPzGL3XIJRHnsDdVBa1Zd
	lxjEM4hCmtrZNgKsreegGUs5CwOvzWhkxzlrJlFG0xU2s4rKGzPpQ+7DgwBCItc5eqdT/3+EJ6xUB
	Qoow5cqggfbMi1FbW7vyNNeoksPmrsg/rsvUpIkUbhMqiyns2kFtETgWlcvKus+xXLZFKVk1ieKJf
	8Cm8oH4Qvv4T2PaFIT+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLbnL-00000003v5w-2b6E;
	Tue, 27 Oct 2026 07:40:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLbnB-00000003uvM-2R6M
	for barebox@lists.infradead.org;
	Tue, 27 Oct 2026 07:40:26 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1xLbn9-0003zV-Fj; Tue, 27 Oct 2026 08:40:19 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: mfe@pengutronix.de,
	mtr@pengutronix.de,
	Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [RFC PATCH 13/17] RISC-V: beaglev: migrate to board info entry point
Date: Tue, 27 Oct 2026 08:24:46 +0100
Message-ID: <20261027074014.3280396-14-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261027074014.3280396-1-a.fatoum@barebox.org>
References: <20261027074014.3280396-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: a.fatoum@barebox.org
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261027_004021_621880_4F4DCCA9 
X-CRM114-Status: UNSURE (   9.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  OpenSBI starts the BeagleV image below the 512M at 0x84000000
    that barebox gets. Instead of relocating in place and having barebox_pbl_start()
    copy the PBL again, the stage names the region as relocad [...] 
 
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
X-Rspamd-Queue-Id: 81EA1202922
X-Spamd-Result: default: False [-6.11 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:900:1d::77:received,2607:7c80:54:3::133:from];
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
X-Stat-Signature: mg9a6hktx5nxbp78rqdcxircxpj9wsge

OpenSBI starts the BeagleV image below the 512M at 0x84000000 that
barebox gets. Instead of relocating in place and having
barebox_pbl_start() copy the PBL again, the stage names the region as
relocaddr, so the PBL is relocated once, directly into it.

DEBUG_LL init and nmon go into the CPU init callback, which runs before
relocation like the old entry point did. The '>' is now printed by the
stage dispatch.

Assisted-by: Claude:opus-5.5
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/riscv/boards/beaglev/lowlevel.c | 30 +++++++++++++++++++---------
 1 file changed, 21 insertions(+), 9 deletions(-)

diff --git a/arch/riscv/boards/beaglev/lowlevel.c b/arch/riscv/boards/beaglev/lowlevel.c
index db884dc762ce..b2eab26c3ca5 100644
--- a/arch/riscv/boards/beaglev/lowlevel.c
+++ b/arch/riscv/boards/beaglev/lowlevel.c
@@ -2,19 +2,31 @@
 
 #include <common.h>
 #include <debug_ll.h>
+#include <pbl/entry.h>
 #include <asm/barebox-riscv.h>
 #include <asm/riscv_nmon.h>
 
-ENTRY_FUNCTION(start_beaglev_starlight, a0, a1, a2)
-{
-	extern char __dtb_z_jh7100_beaglev_starlight_start[];
-	void *fdt;
+#define BEAGLEV_MEM_BASE	0x84000000
 
+extern char __dtb_z_jh7100_beaglev_starlight_start[];
+
+static void __prereloc beaglev_cpu_init(void)
+{
 	debug_ll_init();
 	barebox_nmon_entry();
-	putc_ll('>');
-
-	fdt = __dtb_z_jh7100_beaglev_starlight_start + get_runtime_offset();
-
-	barebox_riscv_supervisor_entry(0x84000000, SZ_512M, a0, fdt);
 }
+
+/*
+ * OpenSBI starts its payload below the memory handed to barebox, so the
+ * PBL relocates there first.
+ */
+ENTRY_POINT_HEAD(start_beaglev_starlight, __barebox_pbl_head_v1_supervisor)
+	.soc_type = SOC_TYPE_JH7100,
+	.second_stage.stacktop = BEAGLEV_MEM_BASE + SZ_512M,
+	.second_stage.relocaddr = BEAGLEV_MEM_BASE,
+	.second_stage.mem_start = BEAGLEV_MEM_BASE,
+	.second_stage.mem_minsz = SZ_512M,
+	.second_stage.board_data = __dtb_z_jh7100_beaglev_starlight_start,
+	.second_stage.prereloc_cpu_init = beaglev_cpu_init,
+	.second_stage.soc_chainload = pbl_stage_barebox_entry,
+ENTRY_POINT_END
-- 
2.47.3



