Delivery-date: Fri, 22 May 2026 09:24:30 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wQKFC-002WP4-1B
	for lore@lore.pengutronix.de;
	Fri, 22 May 2026 09:24:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wQKFB-0002Qd-PR
	for lore@pengutronix.de; Fri, 22 May 2026 09:24:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=JRrW1ofu1Rr0wZuuI/vhKOvRu8nYESBgFPomB6rqvkE=; b=ZMVEfxX9d0dGRMkWaUNcXhlhe/
	1coaC1I/LqtJvGFuDGyVEKhn47BYA8JlGz0uFXFQv9Bu4oSvX9Tme+4Iechj1eJLrJhze9gkAuHPJ
	o7RMCzUnL2mAL+Ovc/wlF6aXYOm+pllZ3OXuu1HzqA6w99NsbadcAks+YU1no8blZSALzi5xI8PqF
	MKBDmtXvLzyQgnuumk3pYyngxhyf2IHxA0ZUw7cQoRuShwoLWv6w32uWhKW2B+T7fkijqh2Pn7+W4
	AN114JxRp9kLl51jaga7BrQpBuZOIycAwlRQVHrkTnKm3cIpQWLRSZNXBf3ZpyOMEffkPD5JEyyTS
	eA4mVLOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQKDp-0000000A4Yr-1q09;
	Fri, 22 May 2026 07:23:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQKDm-0000000A4Y8-3p81
	for barebox@lists.infradead.org;
	Fri, 22 May 2026 07:23:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wQKDl-0002AW-8a; Fri, 22 May 2026 09:23:01 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wQKDk-001EOv-25;
	Fri, 22 May 2026 09:23:01 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wQKDl-00000009W2B-0V2G;
	Fri, 22 May 2026 09:23:01 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 22 May 2026 09:22:30 +0200
Message-ID: <20260522072247.2267979-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260522_002302_952314_FC1159B4 
X-CRM114-Status: GOOD (  10.10  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master] ARM: uncompress: keep handoff data aligned
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

A pointer to the handoff data is passed from PBL to barebox proper
as argument, but it may end up unaligned depending on uncompressed_len.

Round that up to 8 bytes to make sure, it doesn't end up misaligned.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/cpu/uncompress.c          | 2 +-
 arch/arm/include/asm/barebox-arm.h | 3 ++-
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/arm/cpu/uncompress.c b/arch/arm/cpu/uncompress.c
index db6cd7fa11d7..61bcba6e8549 100644
--- a/arch/arm/cpu/uncompress.c
+++ b/arch/arm/cpu/uncompress.c
@@ -73,7 +73,7 @@ void __noreturn barebox_pbl_start(unsigned long membase, unsigned long memsize,
 	barebox_base = arm_mem_barebox_image(membase, endmem,
 					     uncompressed_len, NULL);
 
-	handoff_data = (void *)barebox_base + uncompressed_len + MAX_BSS_SIZE;
+	handoff_data = (void *)barebox_base + ALIGN(uncompressed_len, 8) + MAX_BSS_SIZE;
 
 	pbl_malloc_init(barebox_base - PBL_MALLOC_SIZE, PBL_MALLOC_SIZE);
 
diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
index 9349e62fdec6..38cceba010ed 100644
--- a/arch/arm/include/asm/barebox-arm.h
+++ b/arch/arm/include/asm/barebox-arm.h
@@ -193,7 +193,8 @@ static inline unsigned long arm_mem_barebox_image(unsigned long membase,
 						  const struct handoff_data *handoff_data)
 {
 #ifdef __PBL__
-	unsigned long size = uncompressed_len + MAX_BSS_SIZE + __handoff_data_size(handoff_data);
+	unsigned long size = ALIGN(uncompressed_len, 8) +
+		MAX_BSS_SIZE + __handoff_data_size(handoff_data);
 
 	endmem = arm_mem_ramoops(endmem);
 
-- 
2.47.3



