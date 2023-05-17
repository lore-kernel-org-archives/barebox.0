Delivery-date: Wed, 17 May 2023 11:42:01 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzDfW-0049wZ-KI
	for lore@lore.pengutronix.de; Wed, 17 May 2023 11:42:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzDfS-0002wV-QH
	for lore@pengutronix.de; Wed, 17 May 2023 11:42:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=214y+loIr6NHHSgSQSjn18C/VRb+XWfPqzz+lXSknLo=; b=uordFfaN8+JN1IV+R581bh9w8c
	fj4IybHSIKhJw4lSmRNUsiatoZZzwQrc2qbZfq1kN0YTDVweOXye14tqLaIqYBOMHPN/zFg2GULA1
	+WqDmq/AKUAvKtKKeDGfEeN7HCY5wJ9WzESPnFmjBmFQ/5wCt+SB9vCQf4r45rkXADvzdxhH9+X7m
	QaFirSl/YBwCNTafGe1nTkkaI9c32hS5Nrd/VWHCsKmSO+su98wgak0n3XCaAcc0dalL3nmj+94+R
	SzuoWE1CqXjapRzXu/fYaKirsYH4P8eVaiVj4kbbK52MZiPIm9b5JYmyukrSxb8ebj/P8MI4YhgyI
	EUWBZv4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pzDeO-0096nF-1o;
	Wed, 17 May 2023 09:40:52 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pzDeC-0096Z7-2P
	for barebox@bombadil.infradead.org;
	Wed, 17 May 2023 09:40:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=214y+loIr6NHHSgSQSjn18C/VRb+XWfPqzz+lXSknLo=; b=aWnMYgSNcxeQBpfx5gO3jCrted
	TIlsRm/j4uRYBScqI6k5Mwsh3xk0CH37PMF7nH7xk0EcfhDD/XO8dw+ZPCfAq0obJFEs5V4e/lzos
	gNoaNoFcYKqVOD7hyHyCwWFr6NsBVz1v8qTI9fwqXUoD/ey+Ga5uWuJyuA/4pXPLzTJihzxkY5dgx
	5A3AYbI6CucNhdNveLcNJw5xlvYZ6CnK5y+9/+7+MrU6m1rtNnqMvg0+kq3bi66L48Rh+3+rdGNbl
	ErvdZ313xqS3JdDSAX7IQiQvO5nByu5VCE5ZImwxHWjp0OWt7dDT7KJXJ1YBZdumZ2uU13zw1wXFA
	++zsuJvA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pzD4b-00DAy0-1c
	for barebox@lists.infradead.org;
	Wed, 17 May 2023 09:04:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pzD4V-00041F-EO; Wed, 17 May 2023 11:03:47 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pzD4U-000o7r-Qw; Wed, 17 May 2023 11:03:46 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pzD4P-00GasG-Vx; Wed, 17 May 2023 11:03:41 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 17 May 2023 11:03:28 +0200
Message-Id: <20230517090340.3954615-23-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230517090340.3954615-1-s.hauer@pengutronix.de>
References: <20230517090340.3954615-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230517_100353_779734_74F89D59 
X-CRM114-Status: GOOD (  13.24  )
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
Subject: [PATCH v2 22/34] ARM: mmu32: create alloc_pte()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This is a preparation for using two level page tables in the PBL.
To do that we need a way to allocate page tables in PBL. As malloc
is not available in PBL, implement a function to allocate a page table
from the area we also place the TTB.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/mmu_32.c | 24 ++++++++++++++++++++++--
 1 file changed, 22 insertions(+), 2 deletions(-)

diff --git a/arch/arm/cpu/mmu_32.c b/arch/arm/cpu/mmu_32.c
index 4050d96846..a82382ad1e 100644
--- a/arch/arm/cpu/mmu_32.c
+++ b/arch/arm/cpu/mmu_32.c
@@ -76,6 +76,27 @@ static bool pgd_type_table(u32 pgd)
 	return (pgd & PMD_TYPE_MASK) == PMD_TYPE_TABLE;
 }
 
+#define PTE_SIZE       (PTRS_PER_PTE * sizeof(u32))
+
+#ifdef __PBL__
+static uint32_t *alloc_pte(void)
+{
+	static unsigned int idx = 3;
+
+	idx++;
+
+	if (idx * PTE_SIZE >= ARM_EARLY_PAGETABLE_SIZE)
+		return NULL;
+
+	return (void *)ttb + idx * PTE_SIZE;
+}
+#else
+static uint32_t *alloc_pte(void)
+{
+	return xmemalign(PTE_SIZE, PTE_SIZE);
+}
+#endif
+
 static u32 *find_pte(unsigned long adr)
 {
 	u32 *table;
@@ -125,8 +146,7 @@ static u32 *arm_create_pte(unsigned long virt, uint32_t flags)
 
 	virt = ALIGN_DOWN(virt, PGDIR_SIZE);
 
-	table = xmemalign(PTRS_PER_PTE * sizeof(u32),
-			  PTRS_PER_PTE * sizeof(u32));
+	table = alloc_pte();
 
 	if (!ttb)
 		arm_mmu_not_initialized_error();
-- 
2.39.2



