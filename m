Delivery-date: Fri, 12 May 2023 13:11:54 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pxQgl-00F2US-8h
	for lore@lore.pengutronix.de; Fri, 12 May 2023 13:11:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pxQgi-00055V-Sl
	for lore@pengutronix.de; Fri, 12 May 2023 13:11:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iIkRj8GOFRw25PPTUrSY3vFCEtu2RgY0bg5fvPu3Y98=; b=NqKSktVlr/MA5iP+EtR7V6ZCO2
	+pJR3Pc4iybiPTyUlO9IkSB3X14paviHQlW6SDCSc2OJ9C4WBIQFZ4n+O2Sj3/TrZCnrU7gLmNj2/
	iMDLCenQ4B6viSH6sw2H3slR6FDh7O9b6ktwHp8KEd1h0ChFFuSLALjOyLmDAccMSr8whoZowZ3Ef
	oizDE6x6dsi+KA9VJx4fKmMZ6liRuwbTssHKRw/zjDsAr2UniRN+WuSdaqzl57db63ipbOB29zLzY
	Fu/Bap8D0aDRsZpUFktx08/+a/FKNJQXMHqQFSOWWRVoZDwHZkYr1osApsWuaiZVqT7PpsCRcP6oc
	U1hsyBkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pxQfb-00BkGb-0F;
	Fri, 12 May 2023 11:10:43 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pxQfK-00Bk0s-2j
	for barebox@bombadil.infradead.org;
	Fri, 12 May 2023 11:10:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=iIkRj8GOFRw25PPTUrSY3vFCEtu2RgY0bg5fvPu3Y98=; b=D4ajBojPEW49KfWrUlafB/jZii
	24gi1kHkyYSoIUVMQJPIQ/SlK3iB3s/NimyALz22HjEG9Ds/pTYEObRRX9bUZ2GPvCyAgXReRTpJ4
	Hye2C1phoH8muRJkR9XxMZ2roDX4P2Um8x+RigKASwL2k+3EMhcuoqJa1pm+N4jwzt68N/ty7FENd
	c6C5mf7aeseettQlPxYf5ZcUuBMqRdpM5553oaT8SP60ZP4maPPDAXNeLTz43QfFMxGFKwUWq/qEc
	0/tS8wGvt4N5DlBnJxsRRbwj9TlvZOs7EHjAAgrbzkZ1THRrPLSPQVBeZsp9z9F0CE2dKUts4sh1g
	+Ut+Q/0A==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pxQfF-00982w-0W
	for barebox@lists.infradead.org;
	Fri, 12 May 2023 11:10:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pxQf8-0003eO-Lg; Fri, 12 May 2023 13:10:14 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pxQf7-002wjm-V5; Fri, 12 May 2023 13:10:13 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pxQf4-0055Et-FI; Fri, 12 May 2023 13:10:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 12 May 2023 13:10:04 +0200
Message-Id: <20230512111008.1120833-24-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230512111008.1120833-1-s.hauer@pengutronix.de>
References: <20230512111008.1120833-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230512_121021_438491_98039B91 
X-CRM114-Status: GOOD (  13.66  )
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
Subject: [PATCH 23/27] ARM: mmu32: move functions into c file
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
index 01c168e8c8..2b2013a8b5 100644
--- a/arch/arm/cpu/mmu_32.c
+++ b/arch/arm/cpu/mmu_32.c
@@ -324,6 +324,25 @@ int arch_remap_range(void *start, size_t size, unsigned map_type)
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



