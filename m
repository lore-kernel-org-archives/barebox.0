Delivery-date: Wed, 17 May 2023 11:41:44 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzDfG-0049r2-46
	for lore@lore.pengutronix.de; Wed, 17 May 2023 11:41:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzDfC-0002hR-Fi
	for lore@pengutronix.de; Wed, 17 May 2023 11:41:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YwrR6ESdkkVroqFqkXxgl+MsJrp57eKPvNPkf4R0NkY=; b=yU7V/DzoHsGZKO2ZSYQNulr2z+
	WAvok45K3lwm4HC1JF3pVf0DL0Q+CDJqWi29OU/toJdf70nm7hwXDnB8h3jjftrZqbIGM1jhFXciy
	a9fe79WzFz7UOvoKx06e4ZXMekhy5EsMHwPoPAF3rE1UsGVjAf1Ntj06H0pqXGXr0XcECLl8IXlpE
	2+RUP1Qn/F8iJIv63NT92Wf5vEChbFT2Qh9k3KczBrr3uvlzRnokFcAGFU0J/dTLuy00eYV/QB6Oq
	vM4bf9dCLa7GDe1fEY3AtPLYVq28WTq8b97KUFWQVWoOBEiOOXPi7yJFs9TMEXua2sax9XDdenW3Z
	rVl6QSAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pzDdw-0096Iu-0u;
	Wed, 17 May 2023 09:40:24 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pzDdt-0096Gj-1k
	for barebox@bombadil.infradead.org;
	Wed, 17 May 2023 09:40:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=YwrR6ESdkkVroqFqkXxgl+MsJrp57eKPvNPkf4R0NkY=; b=Qv1V1WBC5Uc58HcmqFLosBE+dK
	1ktkAphyEQnHVT+fUuR//OVt8ptqNDtBh+RUbHeBZ5ZXaEGfRGs7izKixINvuXKtXZOI5q7qm8CH7
	flZ1NStLGu3N916JystJ38o1HYyZtpZeA0a/nzBiGewvF0h9QckDbo3JYKEuOgHYYYagZS4WgvBYK
	NoWDhsfY0nPsqRo9Mfnw2BpLNS+ztkTXJAzlsL233NdT4hY2HocaIL72x/Y1laRqK4GZWgEMXdLg5
	NiaSveWRcqix3PPksNmRQ8NejpX85Gy/gReCXoG0MEVWP5oN1wNRm1wS3hMNTqk9Dv3avU4Hf6ALq
	ZNNrvhhQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pzD4Z-00DAy4-1V
	for barebox@lists.infradead.org;
	Wed, 17 May 2023 09:04:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pzD4W-00043j-RY; Wed, 17 May 2023 11:03:48 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pzD4W-000o8L-7D; Wed, 17 May 2023 11:03:48 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pzD4Q-00Gasm-5Q; Wed, 17 May 2023 11:03:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 17 May 2023 11:03:36 +0200
Message-Id: <20230517090340.3954615-31-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230517090340.3954615-1-s.hauer@pengutronix.de>
References: <20230517090340.3954615-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230517_100352_112503_6F397BE0 
X-CRM114-Status: GOOD (  14.17  )
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
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 30/34] ARM: mmu32: move functions into c file
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Move create_flat_mapping() and create_sections() into the c file
rather than having them as static inline functions in the header file.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/mmu_32.c | 19 +++++++++++++++++++
 arch/arm/cpu/mmu_32.h | 20 --------------------
 2 files changed, 19 insertions(+), 20 deletions(-)

diff --git a/arch/arm/cpu/mmu_32.c b/arch/arm/cpu/mmu_32.c
index 829139574c..0762bd55a3 100644
--- a/arch/arm/cpu/mmu_32.c
+++ b/arch/arm/cpu/mmu_32.c
@@ -318,6 +318,25 @@ int arch_remap_range(void *start, size_t size, unsigned map_type)
 	return 0;
 }
 
+static void create_sections(uint32_t *ttb, unsigned long first,
+			    unsigned long last, unsigned int flags)
+{
+	unsigned long ttb_start = pgd_index(first);
+	unsigned long ttb_end = pgd_index(last) + 1;
+	unsigned int i, addr = first;
+
+	for (i = ttb_start; i < ttb_end; i++) {
+		ttb[i] = addr | flags;
+		addr += PGDIR_SIZE;
+	}
+}
+
+static void create_flat_mapping(uint32_t *ttb)
+{
+	/* create a flat mapping using 1MiB sections */
+	create_sections(ttb, 0, 0xffffffff, attrs_uncached_mem());
+}
+
 void *map_io_sections(unsigned long phys, void *_start, size_t size)
 {
 	unsigned long start = (unsigned long)_start, sec;
diff --git a/arch/arm/cpu/mmu_32.h b/arch/arm/cpu/mmu_32.h
index 1499b70dd6..607d9e8608 100644
--- a/arch/arm/cpu/mmu_32.h
+++ b/arch/arm/cpu/mmu_32.h
@@ -56,20 +56,6 @@ static inline void set_domain(unsigned val)
 	asm volatile ("mcr  p15,0,%0,c3,c0,0" : : "r"(val) /*:*/);
 }
 
-static inline void
-create_sections(uint32_t *ttb, unsigned long first,
-		unsigned long last, unsigned int flags)
-{
-	unsigned long ttb_start = pgd_index(first);
-	unsigned long ttb_end = pgd_index(last) + 1;
-	unsigned int i, addr = first;
-
-	for (i = ttb_start; i < ttb_end; i++) {
-		ttb[i] = addr | flags;
-		addr += PGDIR_SIZE;
-	}
-}
-
 #define PMD_SECT_DEF_UNCACHED (PMD_SECT_AP_WRITE | PMD_SECT_AP_READ | PMD_TYPE_SECT)
 #define PMD_SECT_DEF_CACHED (PMD_SECT_WB | PMD_SECT_DEF_UNCACHED)
 
@@ -83,10 +69,4 @@ static inline unsigned long attrs_uncached_mem(void)
 	return flags;
 }
 
-static inline void create_flat_mapping(uint32_t *ttb)
-{
-	/* create a flat mapping using 1MiB sections */
-	create_sections(ttb, 0, 0xffffffff, attrs_uncached_mem());
-}
-
 #endif /* __ARM_MMU_H */
-- 
2.39.2



