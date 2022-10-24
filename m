Delivery-date: Mon, 24 Oct 2022 08:58:55 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1omrQF-000Mqa-6H
	for lore@lore.pengutronix.de; Mon, 24 Oct 2022 08:58:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1omrQE-0008FD-1J
	for lore@pengutronix.de; Mon, 24 Oct 2022 08:58:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lDZsFcFsMIS1kPfPgDxHEM+oW3VExjOUd+AV0Yq0dSg=; b=iPvwkLg5pAm1yLmuN5LJHnNEGW
	wMDLDem4Lf+5EgJvsef2tKi/CA49ZElp5RyoIyAn8n32zXfmZsFOvq8xJGxzhPv8LetQGAWNk9F80
	LIoMplxgSZVDSb+/jsO4CrfJsskotL2HAqxE7tP+QyBm90H5AdYtv4f9/WX1sqV4tuXQnI9DfEkf/
	69vyNjWblPesD1SRwv0sWohOm7mDT+QAezZVkxXic3YN0RuDry+VbVNWU0FiarVj8b7Yfya7RdFPp
	pfuWGu4t6leOHwJYW9gyUywPd2pqHXqAcj6X2G8XmMhrxcw6BxKKR/NycfAT1T2e3Cg67Dqfpu9hP
	sa3K1Ang==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omrOs-00HMmR-Ff; Mon, 24 Oct 2022 06:57:30 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omrOk-00HMiZ-Si
	for barebox@lists.infradead.org; Mon, 24 Oct 2022 06:57:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1omrOh-0007qd-Os; Mon, 24 Oct 2022 08:57:19 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1omrOi-0003rt-2G; Mon, 24 Oct 2022 08:57:19 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1omrOf-00567Q-It; Mon, 24 Oct 2022 08:57:17 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 24 Oct 2022 08:57:12 +0200
Message-Id: <20221024065716.1215046-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221024065716.1215046-1-a.fatoum@pengutronix.de>
References: <20221024065716.1215046-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221023_235722_953107_3D0A04DA 
X-CRM114-Status: GOOD (  15.27  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 4/8] asm-generic: memory_layout: define __keep_symbolref()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

When multiple PBL entry points are built as part of a multi-image build,
the link process will be conducted multiple times, each with a different
entry point and then linker garbage collection will take care to remove
any unreferenced sections. Sometimes, we want to keep sections around,
even if they are unreferenced in code, because the linker will place
them at a location, where they can fulfill their purpose without being
referenced explicitly.

Examples are the barebox IMD entries, which attach image meta-data to
barebox or the stack setup prologue which is inserted at the start of
the image to work around lack of __attribute__((naked)) support on
ARM64.

So far, these sections were kept around by either a call to an external
function, which worked because we don't employ LTO or via
barrier_data(ptr), which in its <linux/compiler-gcc.h> implementation
generates a load from the supplied ptr. Improve readability, by defining
a new __keep_symbolref() that describes what it is supposed to do and
does just that: Keep a symbol reference alive as long as the code
surrounding it is not eliminated as dead code.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/include/asm/barebox-arm.h  | 2 +-
 include/asm-generic/memory_layout.h | 7 +++++++
 2 files changed, 8 insertions(+), 1 deletion(-)

diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
index 47d20b6b04ea..68a9610398cc 100644
--- a/arch/arm/include/asm/barebox-arm.h
+++ b/arch/arm/include/asm/barebox-arm.h
@@ -141,7 +141,7 @@ static inline unsigned long arm_mem_barebox_image(unsigned long membase,
 #define ____emit_entry_prologue(name, instr, ...) do { \
 	static __attribute__ ((unused,section(".text_head_prologue_" __stringify(name)))) \
 		const u32 __entry_prologue[] = {(instr), ##__VA_ARGS__}; \
-	barrier_data(__entry_prologue); \
+	__keep_symbolref(__entry_prologue); \
 } while(0)
 
 #define __emit_entry_prologue(name, instr1, instr2, instr3, instr4, instr5) \
diff --git a/include/asm-generic/memory_layout.h b/include/asm-generic/memory_layout.h
index 5cfd2a43a056..7593e18da151 100644
--- a/include/asm-generic/memory_layout.h
+++ b/include/asm-generic/memory_layout.h
@@ -23,4 +23,11 @@
 #define MALLOC_SIZE CONFIG_MALLOC_SIZE
 #define STACK_SIZE  CONFIG_STACK_SIZE
 
+/*
+ * This generates a useless load from the specified symbol
+ * to ensure linker garbage collection doesn't delete it
+ */
+#define __keep_symbolref(sym)	\
+	__asm__ __volatile__("": :"r"(&sym) :)
+
 #endif /* __ASM_GENERIC_MEMORY_LAYOUT_H */
-- 
2.30.2



