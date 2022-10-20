Delivery-date: Thu, 20 Oct 2022 15:35:02 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1olVhQ-001oOU-6c
	for lore@lore.pengutronix.de; Thu, 20 Oct 2022 15:35:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1olVhN-0003xe-0C
	for lore@pengutronix.de; Thu, 20 Oct 2022 15:35:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Q/h0x01CwezYmkNfkJlfsNaqCZM6XUeRVStAmqKGCcI=; b=CZQDW0KVxtILpiBzsMtXWimD+Q
	H1oCrsO4OWYTYhJMYoTuSo/+tu2ycsbKgaTU8KLDpCSkLlcyh9iiU0RkMheHioQOfWkfenQFcv56M
	tvbgDFG//dDbWUtenIKicnrjN8/oZVRA7U1byLlMDuIFCR7R9bpK3Yys4DKxcKA3dsq1qxmama4x7
	LMwQrKcCnv+lcHWN7kt2vYLz4Ppjml3ewYjL309Htqe3rORl7hQGM1DONoTBJCqYq+QrUpQMooFN0
	zDuNx/lM2NG5IKBKgVJBigIjmIR0eQQZ46VO6HdvGXwXLeconrB4V6ErvfoLlprTc16SAGqP67ikR
	8m3ZW2JQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olVfl-00FVUG-6M; Thu, 20 Oct 2022 13:33:21 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olVOF-00FKg8-PR
	for barebox@lists.infradead.org; Thu, 20 Oct 2022 13:15:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1olVOC-0000lM-RA; Thu, 20 Oct 2022 15:15:12 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1olVO9-000KdN-Sm; Thu, 20 Oct 2022 15:15:12 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1olVOB-00Ffbv-7N; Thu, 20 Oct 2022 15:15:11 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 20 Oct 2022 15:15:08 +0200
Message-Id: <20221020131510.3734338-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221020131510.3734338-1-a.fatoum@pengutronix.de>
References: <20221020131510.3734338-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221020_061515_889172_AEAB71C6 
X-CRM114-Status: GOOD (  23.76  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master v2 1/3] include: asm-generic: reloc: implement runtime_address()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This introduces runtime_address(__linker_defined_symbol) as an
alternative to error-prone __linker_defined_symbol +
get_runtime_offset()/global_variable_offset().

While most code is better served by doing a

  relocate_to_current_adr(); setup_c();

and jumping to a noinline function for anything remotely complicated,
we can't do that always:

  - In relocation code, PBL uncompressing preparatory code, we _must_
    access linker defined symbols before relocation unless we
    reimplement them in assembly.

  - I believe GCC doesn't guarantee that an external object referenced
    in a noinline function has its address computed in the same
    function. Compiler may see occasion to pc-relative read e.g. two
    addresses located after function return into registers, believing
    that relocation must have happened before C code first runs.
    We then do the relocation, but the addresses are never touched
    again, so we dereference an unrelocated address later on.

For these situation we introduce a new runtime_address() macro that
hides behind assembly the origin of the address it returns and so the
compiler can not assume that it may move it around across calls to
functions like relocate_to_current_adr() or the relocation loop in
relocate_to_current_adr() itself.

This has one major shortcoming that exists with the opencoded
addition as well: Compiler will generate PC-relative access to data
defined in the same translation unit, so we end up adding the offset
twice. We employ some GCC builtin magic to catch most of this at
compile-time. If we just did RELOC_HIDE() with a cast, we may lull
board code authors into false security when they use it for non
linker defined symbols.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/asm-generic/reloc.h | 69 +++++++++++++++++++++++++++++++++++++
 1 file changed, 69 insertions(+)

diff --git a/include/asm-generic/reloc.h b/include/asm-generic/reloc.h
index 90459371ebe8..06fccbd6f367 100644
--- a/include/asm-generic/reloc.h
+++ b/include/asm-generic/reloc.h
@@ -3,8 +3,77 @@
 #ifndef _ASM_GENERIC_RELOC_H_
 #define _ASM_GENERIC_RELOC_H_
 
+#include <linux/build_bug.h>
+#include <linux/compiler.h>
+
 #ifndef global_variable_offset
 #define global_variable_offset() get_runtime_offset()
 #endif
 
+/*
+ * Using sizeof() on incomplete types always fails, so we use GCC's
+ * __builtin_object_size() instead. This is the mechanism underlying
+ * FORTIFY_SOURCE. &symbol should always be something GCC can compute
+ * a size for, even without annotations, unless it's incomplete.
+ * The second argument ensures we get 0 for failure.
+ */
+#define __has_type_complete(sym) __builtin_object_size(&(sym), 2)
+
+#define __has_type_byte_array(sym) (sizeof(*sym) == 1 + __must_be_array(sym))
+
+/*
+ * runtime_address() defined below is supposed to be used exclusively
+ * with linker defined symbols, e.g. unsigned char input_end[].
+ *
+ * We can't completely ensure that, but this gets us close enough
+ * to avoid most abuse of runtime_address().
+ */
+#define __is_incomplete_byte_array(sym) \
+	(!__has_type_complete(sym) && __has_type_byte_array(sym))
+
+/*
+ * While accessing global variables before C environment is setup is
+ * questionable, we can't avoid it when we decide to write our
+ * relocation routines in C. This invites a tricky problem with
+ * this naive code:
+ *
+ *   var = &variable + global_variable_offset(); relocate_to_current_adr();
+ *
+ * Compiler is within rights to rematerialize &variable after
+ * relocate_to_current_adr(), which is unfortunate because we
+ * then end up adding a relocated &variable with the relocation
+ * offset once more. We avoid this here by hiding address with
+ * RELOC_HIDE. This is required as a simple compiler barrier()
+ * with "memory" clobber is not immune to compiler proving that
+ * &sym fits in a register and as such is unaffected by the memory
+ * clobber. barrier_data(&sym) would work too, but that comes with
+ * aforementioned compiler "memory" barrier, that we don't care for.
+ *
+ * We don't necessarily need the volatile variable assignment when
+ * using the compiler-gcc.h RELOC_HIDE implementation as __asm__
+ * __volatile__ takes care of it, but the generic RELOC_HIDE
+ * implementation has GCC misscompile runtime_address() when not passing
+ * in a volatile object. Volatile casts instead of variable assignments
+ * also led to miscompilations with GCC v11.1.1 for THUMB2.
+ */
+
+#define runtime_address(sym) ({					\
+	void *volatile __addrof_sym = (sym);			\
+	if (!__is_incomplete_byte_array(sym))			\
+		__unsafe_runtime_address();			\
+	RELOC_HIDE(__addrof_sym, global_variable_offset());	\
+})
+
+/*
+ * Above will fail for "near" objects, e.g. data in the same
+ * translation unit or with LTO, as the compiler can be smart
+ * enough to omit relocation entry and just generate PC relative
+ * accesses leading to base address being added twice. We try to
+ * catch most of these here by triggering an error when runtime_address()
+ * is used with anything that is not a byte array of unknown size.
+ */
+extern void *__compiletime_error(
+	"runtime_address() may only be called on linker defined symbols."
+) __unsafe_runtime_address(void);
+
 #endif
-- 
2.30.2



