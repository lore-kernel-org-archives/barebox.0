Delivery-date: Wed, 09 Jul 2025 14:03:48 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uZTWe-00Fh5z-0U
	for lore@lore.pengutronix.de;
	Wed, 09 Jul 2025 14:03:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uZTWd-0005g1-Ic
	for lore@pengutronix.de; Wed, 09 Jul 2025 14:03:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=cf6s6/H0kIe9/WSSjna/oIgicDheuy4tVxsiLGl+vJw=; b=Y4wwTaPlDNz2V0KWrJAjXKQjKH
	ZUjTec4e/G6hAhRLcekA4zgt4/asEh0EJP0zViKlmh4i7ajOn0Mm8I/e2qiqQ7K1J/Yq6H5GDrskf
	UoCjQMt+HRLNdkCToFDd42Ulzv7LL/TP2ZaRyAKU8OWz6l3w5G9HNe70jMAgmtmnDILxBPNYohO1L
	KO7BTJoIsMWAdV+ZicaOMmxHzaz9G9wrr8lOQQABvNJzikHWlDcCXgJ3+M8Xgf8YKGDPQ3zTkAzOg
	/H8VzsKxRQvPG0a6eecnnw2XAAyOc0S78+GoFdiQyqmmJ7dGwejmgGdC4H3FZHDiiof1olDdRyk6M
	4vw5B4Qw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZTW2-00000008Zlu-2jO1;
	Wed, 09 Jul 2025 12:03:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZRnM-00000008GqK-3c88
	for barebox@lists.infradead.org;
	Wed, 09 Jul 2025 10:12:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uZRnG-0007Yg-5n; Wed, 09 Jul 2025 12:12:50 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uZRnF-007Yyf-3D;
	Wed, 09 Jul 2025 12:12:50 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uZRnF-00GtEd-1F;
	Wed, 09 Jul 2025 12:12:49 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  9 Jul 2025 12:12:49 +0200
Message-Id: <20250709101249.4025552-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250709_031256_895952_B352210B 
X-CRM114-Status: GOOD (  12.64  )
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
Subject: [PATCH] fixup! ARM: add exception handling support for PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

ARM: interrupts: fix guard page linker error in PBL

We set up the stack guard page only in barebox proper. Attempting to
compile in support in barebox PBL leads to a compile error, because
arm_mem_guard_page_get() references arm_mem_endmem_get(), which is not
available.

Fix this by defining and using a new helper that always returns skips
referencing arm_mem_endmem_get when not IN_PROPER.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/cpu/interrupts_32.c       | 10 ++--------
 arch/arm/cpu/interrupts_64.c       | 10 ++--------
 arch/arm/include/asm/barebox-arm.h | 12 ++++++++++++
 3 files changed, 16 insertions(+), 16 deletions(-)

diff --git a/arch/arm/cpu/interrupts_32.c b/arch/arm/cpu/interrupts_32.c
index cd503b38eeea..b8b9210197ea 100644
--- a/arch/arm/cpu/interrupts_32.c
+++ b/arch/arm/cpu/interrupts_32.c
@@ -111,16 +111,10 @@ void do_prefetch_abort (struct pt_regs *pt_regs)
 
 static const char *data_abort_reason(ulong far)
 {
-	ulong guard_page;
-
 	if (far < PAGE_SIZE)
 		return "NULL pointer dereference";
-
-	if (IS_ENABLED(CONFIG_STACK_GUARD_PAGE)) {
-		guard_page = arm_mem_guard_page_get();
-		if (guard_page <= far && far < guard_page + PAGE_SIZE)
-			return "stack overflow";
-	}
+	if (inside_stack_guard_page(far))
+		return "stack overflow";
 
 	return "paging request";
 }
diff --git a/arch/arm/cpu/interrupts_64.c b/arch/arm/cpu/interrupts_64.c
index 574ab6a7ec22..b4787783978e 100644
--- a/arch/arm/cpu/interrupts_64.c
+++ b/arch/arm/cpu/interrupts_64.c
@@ -147,16 +147,10 @@ extern volatile int arm_data_abort_occurred;
 
 static const char *data_abort_reason(ulong far)
 {
-	ulong guard_page;
-
 	if (far < PAGE_SIZE)
 		return "NULL pointer dereference: ";
-
-	if (IS_ENABLED(CONFIG_STACK_GUARD_PAGE)) {
-		guard_page = arm_mem_guard_page_get();
-		if (guard_page <= far && far < guard_page + PAGE_SIZE)
-			return "Stack overflow: ";
-	}
+	if (inside_stack_guard_page(far))
+		return "Stack overflow: ";
 
 	return NULL;
 }
diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
index 0abdd297a2ce..da6f5d528338 100644
--- a/arch/arm/include/asm/barebox-arm.h
+++ b/arch/arm/include/asm/barebox-arm.h
@@ -167,6 +167,18 @@ static inline unsigned long arm_mem_guard_page_get(void)
 	return arm_mem_guard_page(arm_mem_endmem_get());
 }
 
+static inline bool inside_stack_guard_page(ulong addr)
+{
+	if (IS_ENABLED(CONFIG_STACK_GUARD_PAGE) && IN_PROPER) {
+		ulong guard_page = arm_mem_guard_page_get();
+
+		if (guard_page <= addr && addr < guard_page + PAGE_SIZE)
+			return true;
+	}
+
+	return false;
+}
+
 /*
  * When using compressed images in conjunction with relocatable images
  * the PBL code must pick a suitable place where to uncompress the barebox
-- 
2.39.5



