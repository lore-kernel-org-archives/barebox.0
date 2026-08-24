Delivery-date: Mon, 24 Aug 2026 09:31:20 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wyP9L-006cjN-2g
	for lore@lore.pengutronix.de;
	Mon, 24 Aug 2026 09:31:20 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 01B4E200444
	for <lore@pengutronix.de>; Mon, 24 Aug 2026 09:31:18 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=0ubwSBQ+;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Dru5i68eo/vrliixlCKuyO6lIUYODU4SGqfmMjmfD9k=; b=0ubwSBQ+o+5A3gu4xegBnlX60R
	GcrUnwzl81/CFdGmOyNEh1RdgET2KnB1LTtzx4mhgJTYP52alcoAioXXhFVdvN2hlyR4jBLRufw+/
	kr83BKEYsy13OlfYHkaC9gzETqpfEmL1wODj+/LNm7prOUIpVFFQqiSY0CTmcNV0DHdlRuaQpiMCA
	V3ewS8vAGthiRzYuZIaYVjc83v4uAzvDltUh8iU9n92t26W3yymIswRQNnBdzuX8F8CejtEhlgIyt
	3t61N6PyUK96D2sTJ9uuyqoJiw3qGezZ9YKmdQH8k173hYteUMHlmHsf+YvM1vaDgxlsHE4TNSQXf
	jyb0Rdvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyP8I-0000000G55n-2DN9;
	Mon, 24 Aug 2026 07:30:14 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyP8E-0000000G53n-2PPq
	for barebox@lists.infradead.org;
	Mon, 24 Aug 2026 07:30:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id DF86820190E;
	Mon, 24 Aug 2026 09:30:08 +0200 (CEST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wyP8C-00346V-2L;
	Mon, 24 Aug 2026 09:30:08 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wyP8C-0000000Di4D-2dpD;
	Mon, 24 Aug 2026 09:30:08 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH 1/4] ARM: lds: place EFI runtime code and data in separate PT_LOAD segments
Date: Mon, 24 Aug 2026 09:29:51 +0200
Message-ID: <20260824073005.3267576-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260824_003010_788228_83E3BC3D 
X-CRM114-Status: GOOD (  10.60  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  From: Ahmad Fatoum <a.fatoum@barebox.org> EFI runtime services
    support was added before barebox proper was made an ELF and back then it
   proved too cumbersome to have two non-adjacent text areas for each of the
   boot-time and run-time portions. 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: frhygjr9uzguwyszc9osfmgna3jafc63
X-Spamd-Result: default: False [-6.21 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:1101:1d::54:received,2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[pengutronix.de];
	TO_DN_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: 01B4E200444

From: Ahmad Fatoum <a.fatoum@barebox.org>

EFI runtime services support was added before barebox proper was made an
ELF and back then it proved too cumbersome to have two non-adjacent text
areas for each of the boot-time and run-time portions.

Now that barebox proper is an ELF, let's move the EFI runtime data and
text each into its own segment with the appropriate segment flags, so
pbl_mmu_setup_from_elf() can apply the correct protections.

The runtime sections are also moved between rodata and data rather than
at the end of the image: sections in a PT_LOAD must be contiguous, so in
the old position .bss would have had to move into the efirt_data
segment, inflating its p_memsz by all of barebox's bss, which would make
a BSS worth of memory unusable by the running kernel.

This does not yet introduce a functional change:
without ARM_MMU_PERMISSIONS, all cached mappings remain RWX.

Assisted-by: Claude:fable-5
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/arm/lib32/barebox.lds.S      | 12 +++++++++---
 arch/arm/lib64/barebox.lds.S      | 12 +++++++++---
 include/asm-generic/barebox.lds.h |  6 ++++--
 3 files changed, 22 insertions(+), 8 deletions(-)

diff --git a/arch/arm/lib32/barebox.lds.S b/arch/arm/lib32/barebox.lds.S
index 02db3b9790b7..e5ef2d045218 100644
--- a/arch/arm/lib32/barebox.lds.S
+++ b/arch/arm/lib32/barebox.lds.S
@@ -13,6 +13,10 @@ PHDRS
 	text PT_LOAD FLAGS(5);		/* PF_R | PF_X */
 	rodata PT_LOAD FLAGS(4);	/* PF_R */
 	dynamic PT_DYNAMIC FLAGS(4);	/* PF_R */
+#ifdef CONFIG_EFI_RUNTIME
+	efirt_text PT_LOAD FLAGS(5);	/* PF_R | PF_X */
+	efirt_data PT_LOAD FLAGS(6);	/* PF_R | PF_W */
+#endif
 	data PT_LOAD FLAGS(6);		/* PF_R | PF_W */
 }
 
@@ -63,6 +67,9 @@ SECTIONS
 
 	__end_rodata = .;
 	_etext = .;
+
+	BAREBOX_EFI_RUNTIME
+
 	_sdata = .;
 
 	.data : { *(.data*) } :data
@@ -73,8 +80,6 @@ SECTIONS
 
 	_edata = .;
 
-	BAREBOX_EFI_RUNTIME
-
 	.image_end : { *(.__image_end) } :data
 
 	. = ALIGN(4);
@@ -94,4 +99,5 @@ SECTIONS
 	_barebox_image_size = __bss_start;
 }
 
-NOCROSSREFS_FROM(.efi_runtime)
+NOCROSSREFS_FROM(.efi_runtime.text)
+NOCROSSREFS_FROM(.efi_runtime.data)
diff --git a/arch/arm/lib64/barebox.lds.S b/arch/arm/lib64/barebox.lds.S
index 1dddd6d1a942..a06a078d4142 100644
--- a/arch/arm/lib64/barebox.lds.S
+++ b/arch/arm/lib64/barebox.lds.S
@@ -12,6 +12,10 @@ PHDRS
 	text PT_LOAD FLAGS(5);		/* PF_R | PF_X */
 	rodata PT_LOAD FLAGS(4);	/* PF_R */
 	dynamic PT_DYNAMIC FLAGS(4);	/* PF_R */
+#ifdef CONFIG_EFI_RUNTIME
+	efirt_text PT_LOAD FLAGS(5);	/* PF_R | PF_X */
+	efirt_data PT_LOAD FLAGS(6);	/* PF_R | PF_W */
+#endif
 	data PT_LOAD FLAGS(6);		/* PF_R | PF_W */
 }
 
@@ -43,14 +47,15 @@ SECTIONS
 
 	__end_rodata = .;
 	_etext = .;
+
+	BAREBOX_EFI_RUNTIME
+
 	_sdata = .;
 
 	.data : { *(.data*) } :data
 
 	_edata = .;
 
-	BAREBOX_EFI_RUNTIME
-
 	.image_end : { *(.__image_end) } :data
 
 	. = ALIGN(4);
@@ -61,4 +66,5 @@ SECTIONS
 	_barebox_image_size = __bss_start;
 }
 
-NOCROSSREFS_FROM(.efi_runtime)
+NOCROSSREFS_FROM(.efi_runtime.text)
+NOCROSSREFS_FROM(.efi_runtime.data)
diff --git a/include/asm-generic/barebox.lds.h b/include/asm-generic/barebox.lds.h
index 008217e808cb..c672894ad502 100644
--- a/include/asm-generic/barebox.lds.h
+++ b/include/asm-generic/barebox.lds.h
@@ -157,7 +157,7 @@
 #ifdef CONFIG_EFI_RUNTIME
 #define BAREBOX_EFI_RUNTIME			\
 	. = ALIGN(4096);			\
-	.efi_runtime : {			\
+	.efi_runtime.text : {			\
 		__efi_runtime_start = .;	\
 		__efi_runtime_text_start = .;	\
 		*(.efi_runtime.text*)		\
@@ -166,12 +166,14 @@
 		*(.efi_runtime.rodata*)		\
 		__efi_runtime_rodata_stop = .;	\
 		. = ALIGN(4096);		\
+	} :efirt_text				\
+	.efi_runtime.data : {			\
 		__efi_runtime_data_start = .;	\
 		*(.efi_runtime.data*)		\
 		*(.efi_runtime.bss*)		\
 		__efi_runtime_data_stop = .;	\
 		__efi_runtime_stop = .;		\
-	}					\
+	} :efirt_data				\
 	. = ALIGN(4096);
 #else
 #define BAREBOX_EFI_RUNTIME
-- 
2.47.3



