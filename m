Delivery-date: Mon, 17 Aug 2026 16:02:41 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wvxvF-0049Nr-02
	for lore@lore.pengutronix.de;
	Mon, 17 Aug 2026 16:02:41 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 46709200444
	for <lore@pengutronix.de>; Mon, 17 Aug 2026 16:02:41 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=kzmK8wPN;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=e2tNk+JWth5EkUH4PNqmAeYwQvIYjd2b9uuYGyjXw5w=; b=kzmK8wPNhkL0KPA+65QlK+BpN1
	sxkIQqY8teGlBawwvUeY/RAsFf0T/zN8u8okeyav78C2Xa+ykO90py+iFhJbAAj4S6qtjy0Ppk2ch
	tIj5f4b4iXb4YARZFS/O/3D2ygVfFvOsuD649/HcI+LZ2kx+zvwsHSDO3UGpva6U4NPEwx9NwxCmx
	1OMHRDStDA9qV8ohRmPuJcKONo69AHXoKOu+QdGBORkU8PuOVI2Bwb8uQHokJedogz6UGrbdKHddG
	L+Fa9Qx7K4aeloCYAHxB/OTJfso0Hp8dpupheZqivcWmkqTMJZwDbIUa5r8RDNscPzU9YWkcuxJra
	s4HnKeZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvxu3-00000006G4G-0o1W;
	Mon, 17 Aug 2026 14:01:27 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvxty-00000006G1B-1qnr
	for barebox@lists.infradead.org;
	Mon, 17 Aug 2026 14:01:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id DBD1E2021FE;
	Mon, 17 Aug 2026 16:01:18 +0200 (CEST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1wvxtu-001xrr-2N;
	Mon, 17 Aug 2026 16:01:18 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1wvxtu-0000000F1aR-2UAP;
	Mon, 17 Aug 2026 16:01:18 +0200
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Date: Mon, 17 Aug 2026 16:01:13 +0200
Subject: [PATCH v3 2/8] ARM/ARM64/RISC-V: pbl: add constructor support
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260817-feature-pbl-get-time-ns-v3-2-9874c1438855@pengutronix.de>
References: <20260817-feature-pbl-get-time-ns-v3-0-9874c1438855@pengutronix.de>
In-Reply-To: <20260817-feature-pbl-get-time-ns-v3-0-9874c1438855@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 "open list:BAREBOX" <barebox@lists.infradead.org>
Cc: Stefan Kerkmann <s.kerkmann@pengutronix.de>
X-Mailer: b4 0.15.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260817_070122_664062_355F0419 
X-CRM114-Status: GOOD (  14.26  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  This commit allows running functions marked with __attribute__((constructor))[1]
    automatically after the C environment is setup in setup_c, which most likely
    will be early setup code shared across SoC [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
X-Stat-Signature: 3nnmot1goeinghcf78tgmb8noii7xttz
X-Spamd-Result: default: False [-7.71 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:1101:1d::54:received,2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER(0.00)[s.kerkmann@pengutronix.de,barebox-bounces@lists.infradead.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[s.kerkmann@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: 46709200444

This commit allows running functions marked with
__attribute__((constructor))[1] automatically after the C environment is
setup in setup_c, which most likely will be early setup code shared
across SoCs/Arches in the PBL.

[1]: https://gcc.gnu.org/onlinedocs/gcc-16.2.0/gcc/Common-Attributes.html#index-constructor

Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
---
 arch/arm/cpu/setupc_32.S       |  3 +++
 arch/arm/cpu/setupc_64.S       |  3 +++
 arch/arm/lib/pbl.lds.S         |  8 ++++++++
 arch/riscv/lib/pbl.lds.S       |  9 +++++++++
 arch/riscv/lib/setupc.S        |  3 +++
 include/asm-generic/sections.h |  2 ++
 pbl/Makefile                   |  1 +
 pbl/ctors.c                    | 13 +++++++++++++
 8 files changed, 42 insertions(+)

diff --git a/arch/arm/cpu/setupc_32.S b/arch/arm/cpu/setupc_32.S
index fadfc28ae1..f34b144556 100644
--- a/arch/arm/cpu/setupc_32.S
+++ b/arch/arm/cpu/setupc_32.S
@@ -23,6 +23,9 @@ ENTRY(setup_c)
 	ldr	r0, =bss_cleared
 	mov	r1, #1
 	str	r1, [r0]		/* mark bss cleared */
+#ifdef __PBL__
+	bl	pbl_do_ctors
+#endif
 1:	pop	{r4, pc}
 ENDPROC(setup_c)
 
diff --git a/arch/arm/cpu/setupc_64.S b/arch/arm/cpu/setupc_64.S
index a0767c5136..e3c6149e27 100644
--- a/arch/arm/cpu/setupc_64.S
+++ b/arch/arm/cpu/setupc_64.S
@@ -22,6 +22,9 @@ ENTRY(setup_c)
 	adr_l	x0, bss_cleared
 	mov	w1, #1
 	str	w1, [x0]		/* mark bss cleared */
+#ifdef __PBL__
+	bl	pbl_do_ctors
+#endif
 	mov	x30, x15
 1:	ret
 ENDPROC(setup_c)
diff --git a/arch/arm/lib/pbl.lds.S b/arch/arm/lib/pbl.lds.S
index 9c51f5eb3a..72aca83495 100644
--- a/arch/arm/lib/pbl.lds.S
+++ b/arch/arm/lib/pbl.lds.S
@@ -78,6 +78,14 @@ SECTIONS
 	. = ALIGN(4);
 	.rodata : { *(.rodata*) }
 
+	. = ALIGN(ASM_SZPTR);
+	__ctors_start = .;
+	.init_array : {
+		KEEP(*(SORT_BY_INIT_PRIORITY(.init_array.*)))
+		KEEP(*(.init_array))
+	}
+	__ctors_end = .;
+
 	.barebox_imd : { BAREBOX_IMD }
 
 	. = ALIGN(PBL_SEGMENT_ALIGN);
diff --git a/arch/riscv/lib/pbl.lds.S b/arch/riscv/lib/pbl.lds.S
index 3a37d01475..17cd61ff75 100644
--- a/arch/riscv/lib/pbl.lds.S
+++ b/arch/riscv/lib/pbl.lds.S
@@ -4,6 +4,7 @@
 #include <linux/sizes.h>
 #include <asm/barebox.lds.h>
 #include <asm-generic/memory_layout.h>
+#include <asm-generic/pointer.h>
 
 OUTPUT_ARCH(BAREBOX_OUTPUT_ARCH)
 OUTPUT_FORMAT(BAREBOX_OUTPUT_FORMAT)
@@ -32,6 +33,14 @@ SECTIONS
 	__start_rodata = .;
 	.rodata : { *(.rodata*) }
 
+	. = ALIGN(ASM_SZPTR);
+	__ctors_start = .;
+	.init_array : {
+		KEEP(*(SORT_BY_INIT_PRIORITY(.init_array.*)))
+		KEEP(*(.init_array))
+	}
+	__ctors_end = .;
+
 	.barebox_imd : { BAREBOX_IMD }
 
 	__end_rodata = .;
diff --git a/arch/riscv/lib/setupc.S b/arch/riscv/lib/setupc.S
index 5370e8a48e..938c78350c 100644
--- a/arch/riscv/lib/setupc.S
+++ b/arch/riscv/lib/setupc.S
@@ -23,6 +23,9 @@ ENTRY(setup_c)
 	lla	a0, bss_cleared
 	li	a1, 1
 	sw	a1, 0(a0)
+#ifdef __PBL__
+	jal	pbl_do_ctors
+#endif
 zeroed:
 	REG_L	ra, SZREG(sp)
 	addi	sp, sp, SZREG * 2
diff --git a/include/asm-generic/sections.h b/include/asm-generic/sections.h
index 816e30341d..c7c576970a 100644
--- a/include/asm-generic/sections.h
+++ b/include/asm-generic/sections.h
@@ -49,4 +49,6 @@ static inline bool in_barebox_efi_runtime(unsigned long addr)
 	       addr < (unsigned long)__efi_runtime_stop;
 }
 
+void pbl_do_ctors(void);
+
 #endif /* _ASM_GENERIC_SECTIONS_H_ */
diff --git a/pbl/Makefile b/pbl/Makefile
index 4506f192fe..7ce8cee077 100644
--- a/pbl/Makefile
+++ b/pbl/Makefile
@@ -3,6 +3,7 @@
 #
 # only unsed by the pbl
 #
+pbl-y += ctors.o
 pbl-y += misc.o
 pbl-y += string.o
 pbl-y += malloc.o
diff --git a/pbl/ctors.c b/pbl/ctors.c
new file mode 100644
index 0000000000..fcab599877
--- /dev/null
+++ b/pbl/ctors.c
@@ -0,0 +1,13 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#include <asm-generic/sections.h>
+
+typedef void (*ctor_fn_t)(void);
+
+void pbl_do_ctors(void)
+{
+	ctor_fn_t *fn = (ctor_fn_t *)__ctors_start;
+
+	for (; fn < (ctor_fn_t *)__ctors_end; fn++)
+		(*fn)();
+}

-- 
2.47.3



