Delivery-date: Thu, 13 Oct 2022 11:05:41 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oiu9u-007BSe-BJ
	for lore@lore.pengutronix.de; Thu, 13 Oct 2022 11:05:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oiu9s-000345-C4
	for lore@pengutronix.de; Thu, 13 Oct 2022 11:05:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=L3Aq7qmV/884/wYZJ5HtzQkWf1pp6W/GIBFYTI72f1M=; b=sKkeJJdk8SzVe7j4oquryHgRh7
	QDh+nqs0+tUiAdwTyFCBz3Y7RhozfE8xUjcS+wpo6TWuqWPKsHaNWnwauht/eNLKbtx5wgdjtd9C4
	ss5eAZEbMqkQFqMNi24azROWlpY0/Ei8ro2x97sBO5wJeqg3HGFBRubshvxtOU+wHWbZx3HiATuzL
	6JxJNDqowJeCAmjVrK+hjr3UH0ZdS7uvmsYO7/SH9t1A+e6c1/kiXtrHvkvw6ltqzeAMJ3nEHPSE2
	ymTTbJ9zt6EymgIsF+VXUpaXgB3t8MB31BQaDlqaVaz5+tDpBB1p/1bOqUzLNRpXIuxqif7KSbtIW
	mmUZ24Xw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiu8N-00BCYm-86; Thu, 13 Oct 2022 09:04:07 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiu8E-00BCWN-Mt
	for barebox@lists.infradead.org; Thu, 13 Oct 2022 09:04:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oiu8B-0002Z5-Qs; Thu, 13 Oct 2022 11:03:55 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oiu8B-001FrK-3l; Thu, 13 Oct 2022 11:03:55 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oiu89-002X0F-VK; Thu, 13 Oct 2022 11:03:53 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 13 Oct 2022 11:03:52 +0200
Message-Id: <20221013090352.562170-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221013090352.562170-1-a.fatoum@pengutronix.de>
References: <20221013090352.562170-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221013_020358_760359_4B5B4237 
X-CRM114-Status: GOOD (  12.16  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 3/3] RISC-V: add compiler barriers around unrelocated accesses
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We observed on ARM miscompilation because get_runtime_offset() was
cached before relocation, while address computation of symbol happened
after, effectively adding the base address twice to the symbol offset.

New get_unrelocated() hides origin of the symbol going into the address
calculation and thereby thwarts this optimization. Employ it in RISC-V
code as well to avoid such issues as experienced on ARM.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/riscv/boot/uncompress.c      | 4 ++--
 arch/riscv/include/asm/sections.h | 2 +-
 arch/riscv/lib/reloc.c            | 6 +++---
 3 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/riscv/boot/uncompress.c b/arch/riscv/boot/uncompress.c
index ee24f81e0159..eab51c8d52bc 100644
--- a/arch/riscv/boot/uncompress.c
+++ b/arch/riscv/boot/uncompress.c
@@ -36,8 +36,8 @@ void __noreturn barebox_pbl_start(unsigned long membase, unsigned long memsize,
 	irq_init_vector(riscv_mode());
 
 	/* piggy data is not relocated, so determine the bounds now */
-	pg_start = input_data + get_runtime_offset();
-	pg_end = input_data_end + get_runtime_offset();
+	pg_start = get_unrelocated(input_data);
+	pg_end = get_unrelocated(input_data_end);
 	pg_len = pg_end - pg_start;
 	uncompressed_len = input_data_len();
 
diff --git a/arch/riscv/include/asm/sections.h b/arch/riscv/include/asm/sections.h
index 6673648bcd58..b90f4d6d2ad5 100644
--- a/arch/riscv/include/asm/sections.h
+++ b/arch/riscv/include/asm/sections.h
@@ -19,7 +19,7 @@ unsigned long get_runtime_offset(void);
 
 static inline unsigned int input_data_len(void)
 {
-	return get_unaligned((const u32 *)(input_data_end + get_runtime_offset() - 4));
+	return get_unaligned((const u32 *)get_unrelocated(input_data_end) - 1);
 }
 
 #endif
diff --git a/arch/riscv/lib/reloc.c b/arch/riscv/lib/reloc.c
index 13118a9ac54f..1dddf627d0b9 100644
--- a/arch/riscv/lib/reloc.c
+++ b/arch/riscv/lib/reloc.c
@@ -42,9 +42,9 @@ void relocate_to_current_adr(void)
 	if (!offset)
 		return;
 
-	dstart = __rel_dyn_start + offset;
-	dend = __rel_dyn_end + offset;
-	dynsym = (void *)__dynsym_start + offset;
+	dstart = get_unrelocated(__rel_dyn_start);
+	dend = get_unrelocated(__rel_dyn_end);
+	dynsym = get_unrelocated(__dynsym_start) + offset;
 
 	for (rela = dstart; (void *)rela < dend; rela++) {
 		unsigned long *fixup;
-- 
2.30.2



