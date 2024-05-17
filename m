Delivery-date: Fri, 17 May 2024 08:11:29 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7qoT-000t0P-0x
	for lore@lore.pengutronix.de;
	Fri, 17 May 2024 08:11:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7qoS-00020W-LE
	for lore@pengutronix.de; Fri, 17 May 2024 08:11:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=NYMdZX4W+R2xiSLSdh9ox96SvQMs0m+wwM4o0F1Npzk=; b=vKdbtSDQUuvJFE4YU6gbTomlxU
	36PghMtib7AgNRZrSDmdHNARZXy6gdgviFfaeaSneiPrAMXEJnkIivVya0QM6RyJ1i0HOH7W7dfGr
	EWETwmuMOOyjXF0LU197uuPVD5fYtnXtV4utoL9tAyC0WBY8rcgcv8gSfp6iJk1ZPE6yByKKtzWFO
	G76OdG3zJyTTsQDy1cIZegTESP1eGM6hGZhJR74PJ/RURvxX43I+EPuoZLj7CMBYP8v413YNuzfH7
	iPo9GeWdC6vfoh0fD9iKw40DFdDg9Zd35GcgMPNytzlyUEWoeBCu0nkK1TKbSqczbQ+lMR4M16Dse
	FfEGWBWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7qo4-00000006uxO-3QUC;
	Fri, 17 May 2024 06:11:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7qnz-00000006uwV-3z11
	for barebox@lists.infradead.org;
	Fri, 17 May 2024 06:11:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7qny-0001sG-K1; Fri, 17 May 2024 08:10:58 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7qny-001pYS-7l; Fri, 17 May 2024 08:10:58 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7qny-00DqRn-0U;
	Fri, 17 May 2024 08:10:58 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 17 May 2024 08:10:56 +0200
Message-Id: <20240517061057.3299857-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240516_231100_424598_C8BB41A7 
X-CRM114-Status: UNSURE (   8.56  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 1/2] ARM: document PBL barebox memory layout
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Apparently, we have an overlap between ramoops/barebox proper
and the early malloc area. Before fixing that, let's add a diagram
explaining the current state of affairs.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/include/asm/barebox-arm.h | 36 ++++++++++++++++++++++++++++++
 1 file changed, 36 insertions(+)

diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
index 4d70360b9121..30834233fb96 100644
--- a/arch/arm/include/asm/barebox-arm.h
+++ b/arch/arm/include/asm/barebox-arm.h
@@ -52,6 +52,42 @@ static inline void arm_fixup_vectors(void)
 
 void *barebox_arm_boot_dtb(void);
 
+/*
+ *  ----------------------------- endmem ------------------------------
+ *                                   ↑
+ *	        OPTEE_SIZE (depends on CONFIG_OPTEE_SIZE)
+ *                                   ↓
+ *  ------------------------- arm_mem_optee() -------------------------
+ *                                   ↑
+ *                                 SZ_32K
+ *                                   ↓
+ *  ------------------------ arm_mem_scratch() ------------------------
+ *                                   ↑
+ *                               STACK_SIZE
+ *                                   ↓
+ *  ------------------------- arm_mem_stack() -------------------------
+ *                                   ↑
+ *            PAGE_SIZE (depends on CONFIG_STACK_GUARD_PAGE)
+ *                                   ↓
+ *  ----------------------- arm_mem_guard_page() ----------------------
+ *                                   ↑
+ *                       ARM_EARLY_PAGETABLE_SIZE
+ *                                   ↓
+ *  ------------ arm_mem_ttb() / arm_mem_early_malloc_end() ------------
+ *                                   ↑                          ↑
+ *                     CONFIG_FS_PSTORE_RAMOOPS_SIZE         SZ_128K
+ *                     (depends on FS_PSTORE_RAMOOPS)           |
+ *                                   |                          ↓
+ *                                   | ------ arm_mem_early_malloc() ---
+ *                                   ↓
+ *  ------------------------- arm_mem_ramoops() ------------------------
+ *                                   ↑
+ *                   (barebox uncompressed image size
+ *                       + BSS) rounded to SZ_1M
+ *                                   ↓
+ *  ---------------------- arm_mem_barebox_image() ---------------------
+ */
+
 static inline unsigned long arm_mem_optee(unsigned long endmem)
 {
 	return endmem - OPTEE_SIZE;
-- 
2.39.2



