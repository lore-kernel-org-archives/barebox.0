Delivery-date: Fri, 29 Aug 2025 18:23:14 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1us1sh-005sKh-1T
	for lore@lore.pengutronix.de;
	Fri, 29 Aug 2025 18:23:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1us1sg-0004dk-7r
	for lore@pengutronix.de; Fri, 29 Aug 2025 18:23:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6zL1cirIeySSGeMwVpUs7NZIR9QZwn2AAUZ2z8dlY4s=; b=n6ZsaHbaGlrO0Z
	ZyQgiEDos48+pJ/5zUb6nKHUMlteytkUhcf6yTND9dPo2X29Nax3A748vzAPE6wPlSvs85nxmyrb3
	7qU3+igim/E/R22qSvJZvoIcgzyFg6VvuL3qVw9xKMjMKql+p3EtsEXH1EGsvuk2NWnx5+dbbXPdy
	9D0DLodIhZVwv72Cm8T2YGN/cqXaB3q8vVkALevsNWRWmJvPClQeLu+kqk7lRSSvuomC8M83mjlDt
	6DGYDets2SJAXpNFC1BAl88wS9jibuUGbyNQC7Ndw0d3Weqc8rVUVrLdkZuMVb2fyemP//y0gory9
	RtDRmg0T0LKgQ5Kh9yGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1us1s1-00000006NYV-3AZU;
	Fri, 29 Aug 2025 16:22:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uryrD-00000005l8L-0j2I
	for barebox@lists.infradead.org;
	Fri, 29 Aug 2025 13:09:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uryrA-0008J2-EI; Fri, 29 Aug 2025 15:09:28 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uryrA-002jgd-0p;
	Fri, 29 Aug 2025 15:09:28 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uryrA-00000001jzF-0YRD;
	Fri, 29 Aug 2025 15:09:28 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 29 Aug 2025 15:09:26 +0200
Message-ID: <20250829130926.415094-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250829_060931_208881_0C309582 
X-CRM114-Status: GOOD (  17.25  )
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
Cc: Marco Felsch <mfe@pengutronix.de>, Ahmad Fatoum <afa@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: mmu64: simplify early mapping
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We initially map the whole DRAM using sections. Later in barebox proper
we want to change the XN/RO attributes of the area where barebox is
located. As sections are too coarse for that and we can't change to
pagewise mapping in barebox proper while executing code from that same
region, we setup a pagewise mapping in the PBL already.

For this we distignuish two cases:

1) OP-TEE is located at its standard location end_mem - OPTEE_SIZE
2) OP-TEE is located at a location specified in the OP-TEE header

For 1) we setup a pagewise mapping beginning where barebox starts up to
the start of OP-TEE. For 2) we setup a pagewise mapping beginning where
barebox starts up to the end of DRAM.

There is no reason to distinguish between these two cases: We only need
to map up to the location we originally reserved for OP-TEE, no matter
if OP-TEE is actually located at the reserved space or somewhere else.
The space we originally reserved for OP-TEE will be unused later anyway.

For this reason just always map pagewise up to the OP-TEE reserved
space.

OPTEE_SIZE has the default value of 32MiB. mapping 32MiB pagewise
requires 32MiB / 4096 = 8192 pages which need 8192 / (4096/sizeof(u64))
= 16 pages for page table entries. We only reserved 16 pages for page
table entries, so together with the pages we need for other stuff this
became too small. This was fixed in ea4adae23e ("ARM: mmu: increase early
page table size to 256K for now"), but the reason why this happened was
not clear. This commit explains and fixes this.

While at it add some more comments expaining what is happening.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/mmu_64.c | 22 ++++++++++++----------
 1 file changed, 12 insertions(+), 10 deletions(-)

diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index f32cd9a0ac..f22fcb5f8e 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -413,19 +413,21 @@ void mmu_early_enable(unsigned long membase, unsigned long memsize, unsigned lon
 
 	early_remap_range(membase, memsize, ARCH_MAP_CACHED_RWX);
 
-	if (optee_get_membase(&optee_membase)) {
-                optee_membase = membase + memsize - OPTEE_SIZE;
+	/* Default location for OP-TEE: end of DRAM, leave OPTEE_SIZE space for it */
+	optee_membase = membase + memsize - OPTEE_SIZE;
 
-		barebox_size = optee_membase - barebox_start;
+	barebox_size = optee_membase - barebox_start;
 
-		early_remap_range(optee_membase - barebox_size, barebox_size,
-			     ARCH_MAP_CACHED_RWX | ARCH_MAP_FLAG_PAGEWISE);
-	} else {
-		barebox_size = membase + memsize - barebox_start;
+	/*
+	 * map barebox area using pagewise mapping. We want to modify the XN/RO
+	 * attributes later, but can't switch from sections to pages later when
+	 * executing code from it
+	 */
+	early_remap_range(barebox_start, barebox_size,
+		     ARCH_MAP_CACHED_RWX | ARCH_MAP_FLAG_PAGEWISE);
 
-		early_remap_range(membase + memsize - barebox_size, barebox_size,
-			     ARCH_MAP_CACHED_RWX | ARCH_MAP_FLAG_PAGEWISE);
-	}
+	/* OP-TEE might be at location specified in OP-TEE header */
+	optee_get_membase(&optee_membase);
 
 	early_remap_range(optee_membase, OPTEE_SIZE, MAP_FAULT);
 
-- 
2.47.2



