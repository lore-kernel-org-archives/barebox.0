Delivery-date: Thu, 16 Sep 2021 11:39:34 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mQnri-0006jA-8L
	for lore@lore.pengutronix.de; Thu, 16 Sep 2021 11:39:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mQnrh-0007kO-4Q
	for lore@pengutronix.de; Thu, 16 Sep 2021 11:39:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sDxtUbFPmyCqxh4sO/xmFUrcQf7s122oMIPUQ0arNK0=; b=F/NR2zPAog5s9y
	lZU0X8NBKYLy5yjbKnM5T9rwd4xwGz9pPi45N1Oc+Fa1W5rCsxWn7ZlxFKqIci2V1x5yosYgwsVmp
	cznPuhsBbvOySlc2autDibQg+u/gds0MjLkkCzYNbbklaSDHLQ0E4u8JYtezV0AytpShsaVn6/vDe
	lKrj0XIMkLBSjymz2jMVZ+H6QKrc4ZRS+wdwrzzM5tlUiwJ+CYcFfyKWiGppV+tGDE/3nh+q6zXR/
	OJhMk3+vX+zvQ3QX1j9RIP1I29Um4QeG97yuw2USNx8N4k8n8UNUCNkZDMN8AoPl9pYfKrVHEaP7Z
	Fl3x5+wMqHCemS6X1hPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mQnqU-00AjlR-2q; Thu, 16 Sep 2021 09:38:18 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mQnqA-00Ajdr-D9
 for barebox@lists.infradead.org; Thu, 16 Sep 2021 09:37:59 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mQnq9-0007Z5-5a; Thu, 16 Sep 2021 11:37:57 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mQnq8-00067Q-TU; Thu, 16 Sep 2021 11:37:56 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
 Jules Maselbas <jmaselbas@kalray.eu>
Date: Thu, 16 Sep 2021 11:37:53 +0200
Message-Id: <20210916093753.23433-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210916_023758_492873_A55AAD2C 
X-CRM114-Status: GOOD (  19.69  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2] ARM: document arm_setup_stack() pitfalls
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Many arm32 board entry points use arm_setup_stack() to set up
the stack from C code. This necessitates using __naked, which
probably has been our most frequent cause of misscompiled C code.

GCC is quite clear that:

  Only basic asm statements can safely be included in naked functions
  While using extended asm or a mixture of basic asm and C code may
  appear to work, they cannot be depended upon to work reliably and
  are not supported.

But some boards use it anyway, because it's nice to avoid writing
assembly. Reading generated assembly to spot compiler miscompilation
isn't that nice though, so add some documentation, comments
and compiler diagnostics to hopefully reduce future porting effort.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - fix commit message title

Cc: Jules Maselbas <jmaselbas@kalray.eu>
---
 Documentation/devel/porting.rst | 21 +++++++++++++++++++++
 arch/arm/include/asm/common.h   | 22 ++++++++++++++++++++++
 2 files changed, 43 insertions(+)

diff --git a/Documentation/devel/porting.rst b/Documentation/devel/porting.rst
index 97b787327c9a..699badbec672 100644
--- a/Documentation/devel/porting.rst
+++ b/Documentation/devel/porting.rst
@@ -169,6 +169,27 @@ Looking at other boards you might see some different patterns:
    needs to be done at start. If a board similar to yours does this, you probably
    want to do likewise.
 
+ - ``__naked``: All functions called before stack is correctly initialized must be
+   marked with this attribute. Otherwise, function prologue and epilogue may access
+   the uninitialized stack. If the compiler for the target architecture doesn't
+   support the attribute, stack must be set up in non-inline assembly:
+   either a barebox assembly entry point or in earlier firmware.
+   The compiler may still spill excess local C variables used in a naked function
+   to the stack before it was initialized.
+   A naked function should thus preferably only contain inline assembly, set up a
+   stack and jump directly after to a ``noinline`` non naked function where the
+   stack is then normally usable.
+
+ - ``noinline``: Compiler code inlining is oblivious to stack modification.
+   If you want to ensure a new function has its own stack frame (e.g. after setting
+   up the stack in a ``__naked`` function), you must jump to a ``__noreturn noinline``
+   function.
+
+ - ``arm_setup_stack``: For 32-bit ARM, ``arm_setup_stack`` initialized the stack
+   top when called from a naked C function, which allows to write the entry point
+   directly in C. The stack pointer will be decremented before pushing values.
+   Avoid interleaving with C-code. See ``__naked`` above for more details.
+
  - ``__dtb_z_my_board_start[];``: Because the PBL normally doesn't parse anything out
    of the device tree blob, boards can benefit from keeping the device tree blob
    compressed and only unpack it in barebox proper. Such LZO-compressed device trees
diff --git a/arch/arm/include/asm/common.h b/arch/arm/include/asm/common.h
index d03ee6273fe5..88e2991c9324 100644
--- a/arch/arm/include/asm/common.h
+++ b/arch/arm/include/asm/common.h
@@ -1,6 +1,8 @@
 #ifndef __ASM_ARM_COMMON_H
 #define __ASM_ARM_COMMON_H
 
+#include <linux/compiler.h>
+
 static inline unsigned long get_pc(void)
 {
 	unsigned long pc;
@@ -46,8 +48,28 @@ static inline unsigned long get_sp(void)
 	return sp;
 }
 
+extern void __compiletime_error(
+	"arm_setup_stack() called outside of naked function. On ARM64, "
+	"stack should be setup in non-inline assembly before branching to C entry point."
+) __unsafe_stack_setup(void);
+
+/*
+ * Sets up new stack growing down from top within a naked C function.
+ * The first stack word will be top - sizeof(word).
+ *
+ * Avoid interleaving with C code as much as possible and and jump
+ * ASAP to a noinline function.
+ */
 static inline void arm_setup_stack(unsigned long top)
 {
+	if (IS_ENABLED(CONFIG_CPU_V8)) {
+		/*
+		 * There are no naked functions on ARM64 and thus it's never
+		 * safe to call arm_setup_stack().
+		 */
+		__unsafe_stack_setup();
+	}
+
 	__asm__ __volatile__("mov sp, %0"
 			     :
 			     : "r"(top));
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

