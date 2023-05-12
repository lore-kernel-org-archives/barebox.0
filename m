Delivery-date: Fri, 12 May 2023 13:11:39 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pxQgW-00F2OP-FJ
	for lore@lore.pengutronix.de; Fri, 12 May 2023 13:11:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pxQgU-0004qO-GQ
	for lore@pengutronix.de; Fri, 12 May 2023 13:11:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EEOhFPiBAqNw9Yy26eFGDceArp06d0mXCXe/6YXn02Q=; b=dqq4LOFOQKK+fZFqh1ZKgx8Fln
	TpQngiR2xw6cSS17vLKvAMJxTAlXSf1MmLrZLQwg+VYdMJyt+Xip1uR7TBDze/XM8aDwSki/303Bc
	g9UUp0Fp+4xwmrZV6QgrCrjvYMcmhYJa+TXxb8B8k90sXI8w18oeOFCSadiCrk3xDzT6vtmrpBHKf
	ZVY1+5p6EUAsD9/oL1m0t+zQ68UlxI+Dk+h62fGmKsKLLT1WFZ+mnKXsWTmwVTAsdmuH3EBos5/MH
	L5N26ZeW3AlndtHHcwKB90DVeppj9Kr4rlYpZNQBgETzyG606pRizcz7tVkSjUzluttb4CjTgz4Vp
	egU0NJQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pxQfM-00Bk25-1b;
	Fri, 12 May 2023 11:10:28 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pxQfE-00BjtY-2C
	for barebox@lists.infradead.org;
	Fri, 12 May 2023 11:10:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pxQf7-0003d7-Rw; Fri, 12 May 2023 13:10:13 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pxQf7-002wjL-1u; Fri, 12 May 2023 13:10:13 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pxQf4-0055Dq-4I; Fri, 12 May 2023 13:10:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 12 May 2023 13:09:48 +0200
Message-Id: <20230512111008.1120833-8-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230512111008.1120833-1-s.hauer@pengutronix.de>
References: <20230512111008.1120833-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230512_041020_715242_74D271A3 
X-CRM114-Status: GOOD (  12.02  )
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
Subject: [PATCH 07/27] ARM: mmu: implement MAP_FAULT
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

MAP_FAULT can be used for the zero page to make it faulting.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/mmu_32.c | 4 ++++
 arch/arm/cpu/mmu_64.c | 3 +++
 include/mmu.h         | 1 +
 3 files changed, 8 insertions(+)

diff --git a/arch/arm/cpu/mmu_32.c b/arch/arm/cpu/mmu_32.c
index 8ec21ee1d2..a1ecc49f03 100644
--- a/arch/arm/cpu/mmu_32.c
+++ b/arch/arm/cpu/mmu_32.c
@@ -178,6 +178,10 @@ int arch_remap_range(void *start, size_t size, unsigned flags)
 		pte_flags = pte_flags_uncached;
 		pgd_flags = pgd_flags_uncached;
 		break;
+	case MAP_FAULT:
+		pte_flags = 0x0;
+		pgd_flags = 0x0;
+		break;
 	case ARCH_MAP_WRITECOMBINE:
 		pte_flags = pte_flags_wc;
 		pgd_flags = pgd_flags_wc;
diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index f43ac9a121..a22e0c81ab 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -154,6 +154,9 @@ int arch_remap_range(void *_start, size_t size, unsigned flags)
 	case MAP_UNCACHED:
 		attrs = attrs_uncached_mem();
 		break;
+	case MAP_FAULT:
+		attrs = 0x0;
+		break;
 	default:
 		return -EINVAL;
 	}
diff --git a/include/mmu.h b/include/mmu.h
index 2e23853df3..2326cb215a 100644
--- a/include/mmu.h
+++ b/include/mmu.h
@@ -4,6 +4,7 @@
 
 #define MAP_UNCACHED	0
 #define MAP_CACHED	1
+#define MAP_FAULT	2
 
 /*
  * Depending on the architecture the default mapping can be
-- 
2.39.2



