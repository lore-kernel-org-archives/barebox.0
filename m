Delivery-date: Fri, 12 May 2023 13:11:51 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pxQgg-00F2SU-Hb
	for lore@lore.pengutronix.de; Fri, 12 May 2023 13:11:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pxQge-00051c-NC
	for lore@pengutronix.de; Fri, 12 May 2023 13:11:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5YOwxVG4qEl9LpkexGWlizlh6eH+9JdX9IDPFMzSMy8=; b=Wnz5Yf9BQsmN4omTgXEHxEDGxC
	4CF4cKHeXVlBm1GGxbpmy9lPmau7NYjdfQPpwsrf9mbJpBj6x1xNBDXYgBVvJ2N0H4qdoh9nEtM2K
	Bf7RRQipaFczqSk3Atug4SezK2t3wC9jyCNMt4jx4vtu8Eph7EeSHiI1SzsVUDKUL9xj3mVJlxhv0
	RhEq4uIoMz6AgyhmwdYAzkBmcpBipPH0uR4MJEbgaGl7MyIK9yvMHrsH2hl8RcE6PCn8rWsXooidN
	L9LCg7/LjfHGq/5T7YYA1nBMbUkjrnMghWhKq4mn7PjuBaMZ4UFKr2/3lHZbOHYSL0H3bQJANaxWI
	AERthg/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pxQfV-00BkAl-1N;
	Fri, 12 May 2023 11:10:37 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pxQfJ-00Bjzh-1P
	for barebox@bombadil.infradead.org;
	Fri, 12 May 2023 11:10:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=5YOwxVG4qEl9LpkexGWlizlh6eH+9JdX9IDPFMzSMy8=; b=lC7+JA0JVbstRWu+h8HYGvKPw4
	Bw90mx/SSKV1q6u7cxJMo195HIulp3wqsxswnl7SUg5xrGNt5RKThouU8/V6B7NxrU/jI22EWgTcT
	HnMEBSVM0Tc8PnVPOsRPQsSRrqzdrNlRNWm4SZ5zDMJyGnFFo3ADbkINUDKfDK7+WTaEQ4lfZ1kK9
	sfzgpKwLnpA1CHyosuFKsiIrA2i6+khT6If93HvnTxRkARJ/TP3V4PLCvFGj16JCfb7nrKXQjtHKM
	4+iqnzsaNTK/Fg2buHpLXZD5R65IMMn/w5IUPN95A55FVpxusDrqA13hpYeqTITX3Rw3pIUixhN+g
	xHSXiDCQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pxQfF-00982y-0m
	for barebox@lists.infradead.org;
	Fri, 12 May 2023 11:10:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pxQf8-0003eC-MV; Fri, 12 May 2023 13:10:14 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pxQf7-002wjl-Tg; Fri, 12 May 2023 13:10:13 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pxQf4-0055F4-Hg; Fri, 12 May 2023 13:10:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 12 May 2023 13:10:07 +0200
Message-Id: <20230512111008.1120833-27-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230512111008.1120833-1-s.hauer@pengutronix.de>
References: <20230512111008.1120833-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230512_121021_385800_2BC4E0C2 
X-CRM114-Status: GOOD (  11.19  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 26/27] ARM: mmu32: Skip reserved ranges during initialization
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The early MMU code now uses pages to map the OP-TEE area non executable.
This mapping is overwritten with sections in barebox proper. Refrain
from doing so by using arch_remap_range() and bypassing reserved areas.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/mmu_32.c | 14 +++++++++++---
 1 file changed, 11 insertions(+), 3 deletions(-)

diff --git a/arch/arm/cpu/mmu_32.c b/arch/arm/cpu/mmu_32.c
index c52b6d3a8b..dc4b0e414d 100644
--- a/arch/arm/cpu/mmu_32.c
+++ b/arch/arm/cpu/mmu_32.c
@@ -528,9 +528,17 @@ void __mmu_init(bool mmu_on)
 	vectors_init();
 
 	for_each_memory_bank(bank) {
-		create_sections(bank->start, bank->start + bank->size - 1,
-				PMD_SECT_DEF_CACHED);
-		__mmu_cache_flush();
+		struct resource *rsv;
+		resource_size_t pos;
+
+		pos = bank->start;
+
+		for_each_reserved_region(bank, rsv) {
+			arch_remap_range((void *)pos, rsv->start - pos, MAP_CACHED);
+			pos = rsv->end + 1;
+		}
+
+		arch_remap_range((void *)pos, bank->start + bank->size - pos, MAP_CACHED);
 	}
 }
 
-- 
2.39.2



