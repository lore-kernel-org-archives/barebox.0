Delivery-date: Wed, 17 May 2023 11:41:44 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzDfF-0049r6-8M
	for lore@lore.pengutronix.de; Wed, 17 May 2023 11:41:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzDfC-0002hU-Jd
	for lore@pengutronix.de; Wed, 17 May 2023 11:41:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZZ1uevDc7Ox60SKunW9/YvZE9A9M9F1sGUFUSONIvKk=; b=FbYQOXBG62t/IIHjrrHr2FKzgv
	nopCLaLXcFNp2StiRDIKMEguLtk1TnusGXvPtXBnG8brSGoDQblf0t2E7j8SxyCRDGvKddwGeQ2uk
	+AnlaA7nuPQm4/OF2GroueLI6UG4gfyuwYsaaceWqoT5F2pa0fbnDiiq2vGy/f8o/23FghqFYLkCR
	661cz1V7wiRqfKk/6/UouPlmFNh/YETN/npKl23tA2/xkZNQv88gv+K7QeoynXxdImhFnBJhMNd/L
	MI9uCVYFA47dN0dz50KuD1PaFzTJgQJs51IAtDsd7r59iMn3mnBdOveGIr/0J1iE0odeN7MoUy37J
	sAa5csew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pzDdy-0096KZ-2y;
	Wed, 17 May 2023 09:40:26 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pzDdu-0096Gj-1f
	for barebox@bombadil.infradead.org;
	Wed, 17 May 2023 09:40:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=ZZ1uevDc7Ox60SKunW9/YvZE9A9M9F1sGUFUSONIvKk=; b=fgNvXuwfn6zPmTu7kqMZpBhCAp
	g8aJfZ/k2nYcH3TJVHLkKkeFvcbfnW13aqaeuUsGptGkNkrgDaCMW4AfCnaKrufP1Ezo86fFukqut
	QGzj+bVanVnXw79ouz6omVrnliz1eDgpPpV8rbodoT1jyovrBHlCJNoy+PtrrJX4TwT+hRJj2Bq3T
	E2mIue88AY21DKieXCxJVxMFpk0zTcgCnzC0LBs9WOU/ufouqXE0Lv6BRAthqG0YzEkZUmEKsAnzE
	f96PRl14C5KLBK4O+FlB6iKB0A63SSeqrTMmn3iNmRp7dXPe7Yl4Y9dROsNlejdzAPFr5B4JjSCRM
	0/DoO4/w==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pzD4Z-00DAxw-0e
	for barebox@lists.infradead.org;
	Wed, 17 May 2023 09:04:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pzD4V-00040l-6o; Wed, 17 May 2023 11:03:47 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pzD4U-000o7Z-GA; Wed, 17 May 2023 11:03:46 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pzD4P-00GasC-V6; Wed, 17 May 2023 11:03:41 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 17 May 2023 11:03:27 +0200
Message-Id: <20230517090340.3954615-22-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230517090340.3954615-1-s.hauer@pengutronix.de>
References: <20230517090340.3954615-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230517_100351_454269_25A03757 
X-CRM114-Status: GOOD (  14.75  )
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
Subject: [PATCH v2 21/34] ARM: mmu: alloc 64k for early page tables
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This is a preparation for using two level page tables in the PBL.
To do that we need a way to allocate page tables in PBL. As malloc
is not available in PBL, increase the area we use for the TTB to
make some space available for page tables.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/mmu_32.c              | 6 ++++++
 arch/arm/include/asm/barebox-arm.h | 8 ++------
 2 files changed, 8 insertions(+), 6 deletions(-)

diff --git a/arch/arm/cpu/mmu_32.c b/arch/arm/cpu/mmu_32.c
index 12fe892400..4050d96846 100644
--- a/arch/arm/cpu/mmu_32.c
+++ b/arch/arm/cpu/mmu_32.c
@@ -24,6 +24,12 @@
 #define PTRS_PER_PTE		(PGDIR_SIZE / PAGE_SIZE)
 #define ARCH_MAP_WRITECOMBINE	((unsigned)-1)
 
+/*
+ * We have a 4GiB address space split into 1MiB sections, with each
+ * section header taking 4 bytes
+ */
+#define ARM_TTB_SIZE	(SZ_4G / SZ_1M * sizeof(u32))
+
 static uint32_t *ttb;
 
 /*
diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
index f5a74b4746..eb31ca2788 100644
--- a/arch/arm/include/asm/barebox-arm.h
+++ b/arch/arm/include/asm/barebox-arm.h
@@ -23,11 +23,7 @@
 #include <asm/reloc.h>
 #include <linux/stringify.h>
 
-/*
- * We have a 4GiB address space split into 1MiB sections, with each
- * section header taking 4 bytes
- */
-#define ARM_TTB_SIZE	(SZ_4G / SZ_1M * sizeof(u32))
+#define ARM_EARLY_PAGETABLE_SIZE	SZ_64K
 
 void __noreturn barebox_arm_entry(unsigned long membase, unsigned long memsize, void *boarddata);
 
@@ -89,7 +85,7 @@ static inline unsigned long arm_mem_stack(unsigned long endmem)
 static inline unsigned long arm_mem_ttb(unsigned long endmem)
 {
 	endmem = arm_mem_stack(endmem);
-	endmem = ALIGN_DOWN(endmem, ARM_TTB_SIZE) - ARM_TTB_SIZE;
+	endmem = ALIGN_DOWN(endmem, ARM_EARLY_PAGETABLE_SIZE) - ARM_EARLY_PAGETABLE_SIZE;
 
 	return endmem;
 }
-- 
2.39.2



