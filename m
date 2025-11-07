Delivery-date: Fri, 07 Nov 2025 19:28:31 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vHRCJ-00GNtW-27
	for lore@lore.pengutronix.de;
	Fri, 07 Nov 2025 19:28:31 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vHRCJ-0003pM-3a
	for lore@pengutronix.de; Fri, 07 Nov 2025 19:28:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=DPCkqk4DknRR7tk9pmRziBfhZxP90OPhy+GmQNj8PhQ=; b=4pfUcUrqYEaEaac6t9vOT2Yq/T
	UK+tDeMbAQ+2wx9y/DU5lIyJRjbLjHaecvwCfLAldOD0ZK5Tn1M7YpzZXdTIZVtnVM+5sI1NGT80V
	1iH1Nqj5CYj3tluPS4PenYQS5R5nQOmtT1OSNwyP/UxClERs105puE8BD6WIOOHGoAasCFQ1QbKOi
	1sEXti/dun2KdeymueiQ+9H2ISwYi1tc+F4WBdfGDnwejdtCjEGFvFfYP/2UArbKSvoOHhnscrV+6
	TM8OALELPMZUbP93gNHzCinENS5XGfbZQljcpw0yy+lMIjGWWwNE380tDBaRNGIWUklo50bCkjIn0
	5NjhJuvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHRBj-00000000UKN-3ift;
	Fri, 07 Nov 2025 18:27:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHRBh-00000000UJo-39fC
	for barebox@lists.infradead.org;
	Fri, 07 Nov 2025 18:27:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vHRBf-0003eQ-LC; Fri, 07 Nov 2025 19:27:51 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vHRBf-007ZWB-1W;
	Fri, 07 Nov 2025 19:27:51 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vHRBf-0000000E7wm-1ZIm;
	Fri, 07 Nov 2025 19:27:51 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  7 Nov 2025 19:27:41 +0100
Message-ID: <20251107182750.3367036-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251107_102753_791085_F88FA58E 
X-CRM114-Status: GOOD (  15.78  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH master] ARM: mmu: fix hang when reserved memory at start of RAM
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

If the memory bank starts at address 0 and the start of the SDRAM is a
reserved region, remap_range_end_sans_text() is called with start = 0,
end = 0, which is interpreted by the function to mean that it spans
the whole of RAM.

Fix the issue by not calling remap_range_end_sans_text() for empty
ranges. This fixes an early hang observed on the Raspberry Pi 3.

In the unlikely case, there is no reserved memory region and the first
bank is indeed 4G of size, we also end up with start = 0, end = 0, but
this is already being handled correctly.

Of course, this fix introduces a corner case in return: A reserved memory
entry spanning the whole lower 4G becomes unsupported on 32-bit, but
that should be a non-issue  as such a system would be fairly useless and
64-bit is not affected...

A wholesale replacement of this function is under way, so we'll
hopefully get rid of this error prone code altogether in v2026.01.0.

Fixes: 3e2d06afabe1 ("range: fix corner cases when exclusive end is zero")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/cpu/mmu-common.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/cpu/mmu-common.c b/arch/arm/cpu/mmu-common.c
index 92e06b06077f..b3d9e9579686 100644
--- a/arch/arm/cpu/mmu-common.c
+++ b/arch/arm/cpu/mmu-common.c
@@ -149,7 +149,8 @@ static void mmu_remap_memory_banks(void)
 
 		/* Skip reserved regions */
 		for_each_reserved_region(bank, rsv) {
-			remap_range_end_sans_text(pos, rsv->start, MAP_CACHED);
+			if (pos != rsv->start)
+				remap_range_end_sans_text(pos, rsv->start, MAP_CACHED);
 			pos = rsv->end + 1;
 		}
 
-- 
2.47.3



