Delivery-date: Tue, 27 Oct 2026 08:45:16 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xLbrv-003pSv-2b
	for lore@lore.pengutronix.de;
	Tue, 27 Oct 2026 08:45:16 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 096DC201EF3
	for <lore@pengutronix.de>; Tue, 27 Oct 2026 08:45:16 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=QnwPM3p9;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793087116; a=rsa-sha256;
	cv=none;
	b=MzbBEDKgt10PIh4KldvmfL7JPPd/y8ONBLNXqGfNOzN+rPHTgHsQ5HZdmYi2Efo7MASIkp
	g5PKDXfR6uxWR8TV7Cq7rP7Ugx4XmtiOKDVEeVdt1hV2NJ1uQTWLikdxlvReCAcli5EKs8
	Y2h0ukUbjTX2w4Su+RS4BNwH6S/9enhZmaHlhtHPqYAjOEWLBCCct6Ii2EMBsVIZsE+aW9
	KJ7SEkS1g2BgfnPcKQQGrxRNXEtXgyjelpQD3Iz9HLIkHj8vP7aOmjW9MGHhUwz0pyjbVz
	O86jquDfT3a2lSFzWGI831hyJEq+SKrFfuhd8MynolRsdl3vNdAR2MqvRFJVMg==
ARC-Authentication-Results: i=1;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=QnwPM3p9;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793087116;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=+4pjC5kdGZqfGrDfQGSYwJSnvL/+9/ijKTCfS3+fNmo=;
	b=Nmuz3tGWTZRZYhXfqPgDQDZf413oF1uJMmLd0P+kdykABwCGHe0L1GluqBp4hsKGzObSy4
	Lv1PExcaG0mXgKaottxcCZIUemCyIzSl8+bXZVX7vLxXFU/3iPfu4fuMQUICmpyX1Nm6yg
	6hpLA5Z8Vdl/y05mfzGjbt+a+3/YrnxFrdghyu31ZLGevKhWZqbPFVGzH/K5RInEyXctYw
	YvN6iKylWr4rEwK5znjQOoLwXkV662QHmP9acBEUkuzZZiYvvozZzmiAVI4f1Decl4PTiC
	RYbmuoKdNTfoLBYPFtKqKmJlh/6YVnrcbd7wz7iZCIbDCivIsP5h9qBFV9GHEQ==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=+4pjC5kdGZqfGrDfQGSYwJSnvL/+9/ijKTCfS3+fNmo=; b=QnwPM3p9sEHdhU
	4ADpvJI6GJqcxNOE59QOEb8W+C9O0dwSYl7Ii96K7nE6aNK8RIjVoTweUHw49tqyKlSbZE1Kkr38C
	UjrBJ2aCHcfSVXGTAMEv2w2gkB0vFL+qObKsxT792pSvWYGhjsfouDKYzsX+0FbEWryZ+I7WwzLaN
	r3fdqgzvtPT+9CaLX/Ey+cj4GZeCHumMBSobyhlZJb6rLJ5mhkYt50IyF4xaOmY8ftGFt/RuLLQ5T
	YQsZ0TCQ1wSRlCPDEG7Nqf22tJiLJJZbo6R6Q4x0RkJMweeA7g3EYxTnUp0dw01Q5Z91W2Bxa9IGt
	5wvGy5sqncKbOOP4mD8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLbnL-00000003v6k-3tmv;
	Tue, 27 Oct 2026 07:40:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLbnB-00000003uwN-3hM7
	for barebox@lists.infradead.org;
	Tue, 27 Oct 2026 07:40:26 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1xLbn9-0003zV-Ok; Tue, 27 Oct 2026 08:40:19 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: mfe@pengutronix.de,
	mtr@pengutronix.de,
	Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [RFC PATCH 14/17] RISC-V: allwinner-d1: migrate to board info entry point
Date: Tue, 27 Oct 2026 08:24:47 +0100
Message-ID: <20261027074014.3280396-15-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261027074014.3280396-1-a.fatoum@barebox.org>
References: <20261027074014.3280396-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: a.fatoum@barebox.org
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261027_004021_918752_A74E766B 
X-CRM114-Status: UNSURE (   9.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  OpenSBI enters the D1 image like a kernel, so it uses the
   supervisor mode head, which stashes the hart ID in tp and records the device
    tree in a1 as entry data. The board init callback makes that the [...] 
 
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
X-Rspamd-Queue-Id: 096DC201EF3
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
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[barebox.org];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=1];
	NEURAL_HAM(-0.00)[-1.000];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@barebox.org,barebox-bounces@lists.infradead.org];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_IN_DNSWL_NONE(0.00)[2a0a:edc0:2:b01:1d::104:received];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: xkxbmomy4taaab4hkyb9kanitoahj5m5

OpenSBI enters the D1 image like a kernel, so it uses the supervisor mode
head, which stashes the hart ID in tp and records the device tree in a1
as entry data. The board init callback makes that the stage's board_data
for pbl_stage_barebox_entry() to pass on. Memory region and stack top are
unchanged.

Assisted-by: Claude:opus-5.5
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/riscv/boards/allwinner-d1/lowlevel.c | 18 ++++++++++++++----
 1 file changed, 14 insertions(+), 4 deletions(-)

diff --git a/arch/riscv/boards/allwinner-d1/lowlevel.c b/arch/riscv/boards/allwinner-d1/lowlevel.c
index 2b07a81edbfa..eb21662f5ea2 100644
--- a/arch/riscv/boards/allwinner-d1/lowlevel.c
+++ b/arch/riscv/boards/allwinner-d1/lowlevel.c
@@ -1,12 +1,22 @@
 // SPDX-License-Identifier: GPL-2.0-only
 
 #include <common.h>
-#include <debug_ll.h>
+#include <pbl/entry.h>
 #include <asm/barebox-riscv.h>
 
-#define DRAM_BASE	0x40000000
+#define DRAM_BASE	0x40000000UL
 
-ENTRY_FUNCTION(start_allwinner_d1, a0, a1, a2)
+/* OpenSBI passes on the device tree the SPL loaded */
+static void allwinner_d1_bdinit(unsigned long entry_data)
 {
-	barebox_riscv_supervisor_entry(DRAM_BASE, SZ_1G, a0, (void *)a1);
+	pbl_get_stage()->board_data = (void *)entry_data;
 }
+
+ENTRY_POINT_HEAD(start_allwinner_d1, __barebox_pbl_head_v1_supervisor)
+	.soc_type = SOC_TYPE_SUN20I_D1,
+	.second_stage.stacktop = DRAM_BASE + SZ_1G,
+	.second_stage.mem_start = DRAM_BASE,
+	.second_stage.mem_minsz = SZ_1G,
+	.second_stage.board_init = allwinner_d1_bdinit,
+	.second_stage.soc_chainload = pbl_stage_barebox_entry,
+ENTRY_POINT_END
-- 
2.47.3



