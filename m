Delivery-date: Tue, 05 Aug 2025 20:37:47 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujMXh-007Nl8-1E
	for lore@lore.pengutronix.de;
	Tue, 05 Aug 2025 20:37:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujMXg-0001IY-Iv
	for lore@pengutronix.de; Tue, 05 Aug 2025 20:37:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hsVDfZEueGFJ1eN+Ye8NsYCJFxMLP8n6lVjzbHbcI6c=; b=XRtmYclz+UInkV3yUjZONp9Lo1
	qd8zSgRa7ruDk9LmieN5DaOHkGEDxgbAb2nSbGLva7UsDhDWDCD4hn64FqVHaA9vFDDdKkm5n7GQx
	t5T50s8VbKLEEGemRtB/+SoHe4swLughXKmcQ1Q2yGYZSYEzwsq64NT0/5sFzTHnWAxh3ZNPHl/dT
	vznmT2Amlmm3b6KemTQ16IFr3tU0AxYF6wKgqCfJdR+WXac3XQKaLvq2csv8367jeJPluB40+SfvQ
	rKWpQooQ47Pp4HDMxC3R7OnQ0pixI3RUk5HuaBtxIqnMzAQJuDTSRDmPTnvMr8VEMbDnmZOd7xiHN
	pdevVymQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujMX2-0000000DYWk-47W1;
	Tue, 05 Aug 2025 18:37:04 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujLjV-0000000DSkz-0NZ0
	for barebox@bombadil.infradead.org;
	Tue, 05 Aug 2025 17:45:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=hsVDfZEueGFJ1eN+Ye8NsYCJFxMLP8n6lVjzbHbcI6c=; b=rPHwwaz9C7iMoDqRymBTo+tszo
	qK1Lx3Kxe/ae0YUQRDP24fepQXTs9e+F2aHDxBRr1lvlkeb9zk94X7XoI96OEIuSrd5QDD6AIYJZp
	3s6lFwfH1nFEtUVAPU0BUI0JICCtdSUJShMYFjDaufShPg6qzQbZyfy8TK1uUu5vinTStIchnBF2z
	uSDHiYaOxdk2BgHlocTEQ8qnDoCFhB2AgR94DVN0OBbiWFi/LU2POnhv7hA+CPrD6W2HFXqvo/xJJ
	WjUjRXIaqk01Lu/exBebYf5BP880OmxhQiX2geWg3hXfewUYrmTgbIMfpt09zfgr0Qkckt8sNeZJ/
	pSAxLwVA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujLjR-0000000E8Wd-3ngB
	for barebox@lists.infradead.org;
	Tue, 05 Aug 2025 17:45:51 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1ujLjO-0003rm-Ut; Tue, 05 Aug 2025 19:45:47 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Tue,  5 Aug 2025 19:45:41 +0200
Message-Id: <20250805174541.2606267-9-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250805174541.2606267-1-a.fatoum@barebox.org>
References: <20250805174541.2606267-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250805_184550_087562_72287C36 
X-CRM114-Status: GOOD (  14.39  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 8/8] ARM: mmu: fix hang reserving memory after text area
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The loop in mmu_remap_memory_banks first looks at reserved memory
regions and then maps everything eXecute Never up to the start of the
region. If the region happens to be in the same bank as the text area
and it comes after it, this means the text area is temporarily mapped
eXecute Never, while barebox is running from it, which results in a
hang.

Fix this by remapping only after both reserved memory regions and text
area have been considered.

Fixes: 5916385fae83 ("ARM: MMU: map text segment ro and data segments execute never")
Fixes: 03dfb3f142fb ("ARM: MMU64: map text segment ro and data segments execute never")
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/arm/cpu/mmu-common.c | 51 ++++++++++++++++++++++++++++-----------
 1 file changed, 37 insertions(+), 14 deletions(-)

diff --git a/arch/arm/cpu/mmu-common.c b/arch/arm/cpu/mmu-common.c
index 575fb32282d1..1de20d931876 100644
--- a/arch/arm/cpu/mmu-common.c
+++ b/arch/arm/cpu/mmu-common.c
@@ -70,21 +70,50 @@ void zero_page_faulting(void)
 	remap_range(0x0, PAGE_SIZE, MAP_FAULT);
 }
 
+/**
+ * remap_range_end - remap a range identified by [start, end)
+ *
+ * @start:    start of the range
+ * @end:      end of the first range (exclusive)
+ * @map_type: mapping type to apply
+ */
+static inline void remap_range_end(unsigned long start, unsigned long end,
+				   unsigned map_type)
+{
+	remap_range((void *)start, end - start, map_type);
+}
+
+static inline void remap_range_end_sans_text(unsigned long start, unsigned long end,
+					     unsigned map_type)
+{
+	unsigned long text_start = (unsigned long)&_stext;
+	unsigned long text_end = (unsigned long)&_etext;
+
+	if (region_overlap_end_exclusive(start, end, text_start, text_end)) {
+		remap_range_end(start, text_start, MAP_CACHED);
+		/* skip barebox segments here, will be mapped later */
+		start = text_end;
+	}
+
+	remap_range_end(start, end, MAP_CACHED);
+}
+
 static void mmu_remap_memory_banks(void)
 {
 	struct memory_bank *bank;
-	unsigned long text_start = (unsigned long)&_stext;
-	unsigned long code_start = text_start;
+	unsigned long code_start = (unsigned long)&_stext;
 	unsigned long code_size = (unsigned long)&__start_rodata - (unsigned long)&_stext;
-	unsigned long text_size = (unsigned long)&_etext - text_start;
 	unsigned long rodata_start = (unsigned long)&__start_rodata;
 	unsigned long rodata_size = (unsigned long)&__end_rodata - rodata_start;
 
 	/*
 	 * Early mmu init will have mapped everything but the initial memory area
 	 * (excluding final OPTEE_SIZE bytes) uncached. We have now discovered
-	 * all memory banks, so let's map all pages, excluding reserved memory areas,
-	 * cacheable and executable.
+	 * all memory banks, so let's map all pages, excluding reserved memory areas
+	 * and barebox text area cacheable.
+	 *
+	 * This code will become much less complex once we switch over to using
+	 * CONFIG_MEMORY_ATTRIBUTES for MMU as well.
 	 */
 	for_each_memory_bank(bank) {
 		struct resource *rsv;
@@ -94,20 +123,14 @@ static void mmu_remap_memory_banks(void)
 
 		/* Skip reserved regions */
 		for_each_reserved_region(bank, rsv) {
-			remap_range((void *)pos, rsv->start - pos, MAP_CACHED);
+			remap_range_end_sans_text(pos, rsv->start, MAP_CACHED);
 			pos = rsv->end + 1;
 		}
 
-		if (region_overlap_size(pos, bank->start + bank->size - pos,
-		    text_start, text_size)) {
-			remap_range((void *)pos, text_start - pos, MAP_CACHED);
-			/* skip barebox segments here, will be mapped below */
-			pos = text_start + text_size;
-		}
-
-		remap_range((void *)pos, bank->start + bank->size - pos, MAP_CACHED);
+		remap_range_end_sans_text(pos, bank->start + bank->size, MAP_CACHED);
 	}
 
+	/* Do this while interrupt vectors are still writable */
 	setup_trap_pages();
 
 	remap_range((void *)code_start, code_size, MAP_CODE);
-- 
2.39.5



