Delivery-date: Mon, 07 Nov 2022 12:16:10 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1os06s-000N79-2x
	for lore@lore.pengutronix.de; Mon, 07 Nov 2022 12:16:10 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1os06q-0005TA-T2
	for lore@pengutronix.de; Mon, 07 Nov 2022 12:16:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=np8TpQxy64UhgppfUuAFIBHZd8pFwqHCBwGjawhOdCY=; b=f1PrByP166Ki9BshaYx+Fdq9dj
	aUqhSDiuCoUAs3gfnv3rWItLlD5urkJjeY92fW+tJwrqE5vGAKFICGtMEUijHdWOipUmVwlvQ+YYT
	K90t7GmoEZzyt+PLxUGIRu4NGuIVzdSrkvLFl0bJ8GNJQWjMGjE2FeHRilUQJJEZygIHJ/t+lCo4g
	aBN2qf/WL7R6JUWyO9feSth/Mtzrhz/vFKPP0FyCIQ8DQL/2GMn5mt7/UcXf8yZ35Upgd77xUvwj+
	q2p5wzVk8sIYOemW7e7pH1gE8mU5iSZgkIf9tgzcSonWIkWWcKMmDYqyQdT6iarns/qdv5mmwqmBL
	D+6Ry+nw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1os05G-00E4C2-TR; Mon, 07 Nov 2022 11:14:30 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1os05B-00E4AX-Jc
	for barebox@lists.infradead.org; Mon, 07 Nov 2022 11:14:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1os057-00052t-Dp; Mon, 07 Nov 2022 12:14:21 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1os055-002qHV-QQ; Mon, 07 Nov 2022 12:14:20 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1os055-00339N-Kb; Mon, 07 Nov 2022 12:14:19 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon,  7 Nov 2022 12:14:19 +0100
Message-Id: <20221107111419.722978-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221107_031425_847605_7B55E07D 
X-CRM114-Status: GOOD (  25.26  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: fix unwinding for XIP kernels
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Newer gcc versions generate a warning about accessing an array out of
bounds:

In function 'search_index',
    inlined from 'unwind_find_idx' at arch/arm/lib32/unwind.c:109: ,
    inlined from 'unwind_frame' at arch/arm/lib32/unwind.c:248:8:
arch/arm/lib32/unwind.c:86:32: warning: array subscript -1 is outside array bounds of 'struct unwind_idx[268435455]' [-Warray-bounds]
   86 |         } else if (addr >= last->addr)
      |                            ~~~~^~~~~~
arch/arm/lib32/unwind.c: In function 'unwind_frame':
arch/arm/lib32/unwind.c:46:26: note: at offset -8 into object '__stop_unwind_idx' of size [0, 2147483647]
   46 | extern struct unwind_idx __stop_unwind_idx[];
      |                          ^~~~~~~~~~~~~~~~~

This was fixed by accident in the Kernel back in 2011 in
de66a979012d ("ARM: 7187/1: fix unwinding for XIP kernels") . Adopt that
commit for barebox.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/include/asm/unwind.h |   7 +-
 arch/arm/lib32/unwind.c       | 116 +++++++++++++++++++++++-----------
 2 files changed, 84 insertions(+), 39 deletions(-)

diff --git a/arch/arm/include/asm/unwind.h b/arch/arm/include/asm/unwind.h
index 319527ec9b..37aba2aa4c 100644
--- a/arch/arm/include/asm/unwind.h
+++ b/arch/arm/include/asm/unwind.h
@@ -16,14 +16,15 @@ enum unwind_reason_code {
 };
 
 struct unwind_idx {
-	unsigned long addr;
+	unsigned long addr_offset;
 	unsigned long insn;
 };
 
 struct unwind_table {
 	struct list_head list;
-	struct unwind_idx *start;
-	struct unwind_idx *stop;
+	const struct unwind_idx *start;
+	const struct unwind_idx *origin;
+	const struct unwind_idx *stop;
 	unsigned long begin_addr;
 	unsigned long end_addr;
 };
diff --git a/arch/arm/lib32/unwind.c b/arch/arm/lib32/unwind.c
index 79bf7420d7..6f73cb1b73 100644
--- a/arch/arm/lib32/unwind.c
+++ b/arch/arm/lib32/unwind.c
@@ -28,7 +28,7 @@ EXPORT_SYMBOL(__aeabi_unwind_cpp_pr2);
 
 struct unwind_ctrl_block {
 	unsigned long vrs[16];		/* virtual register set */
-	unsigned long *insn;		/* pointer to the current instructions word */
+	const unsigned long *insn;	/* pointer to the current instructions word */
 	int entries;			/* number of entries left to interpret */
 	int byte;			/* current byte number in the instructions word */
 };
@@ -42,8 +42,9 @@ enum regs {
 
 #define THREAD_SIZE               8192
 
-extern struct unwind_idx __start_unwind_idx[];
-extern struct unwind_idx __stop_unwind_idx[];
+extern const struct unwind_idx __start_unwind_idx[];
+static const struct unwind_idx *__origin_unwind_idx;
+extern const struct unwind_idx __stop_unwind_idx[];
 
 /* Convert a prel31 symbol to an absolute address */
 #define prel31_to_addr(ptr)				\
@@ -71,44 +72,99 @@ static void dump_backtrace_entry(unsigned long where, unsigned long from,
 }
 
 /*
- * Binary search in the unwind index. The entries entries are
+ * Binary search in the unwind index. The entries are
  * guaranteed to be sorted in ascending order by the linker.
+ *
+ * start = first entry
+ * origin = first entry with positive offset (or stop if there is no such entry)
+ * stop - 1 = last entry
  */
-static struct unwind_idx *search_index(unsigned long addr,
-				       struct unwind_idx *first,
-				       struct unwind_idx *last)
+static const struct unwind_idx *search_index(unsigned long addr,
+					const struct unwind_idx *start,
+					const struct unwind_idx *origin,
+					const struct unwind_idx *stop)
 {
-	pr_debug("%s(%08lx, %p, %p)\n", __func__, addr, first, last);
+	unsigned long addr_prel31;
+
+	pr_debug("%s(%08lx, %p, %p, %p)\n",
+			__func__, addr, start, origin, stop);
+
+	/*
+	 * only search in the section with the matching sign. This way the
+	 * prel31 numbers can be compared as unsigned longs.
+	 */
+	if (addr < (unsigned long)start)
+		/* negative offsets: [start; origin) */
+		stop = origin;
+	else
+		/* positive offsets: [origin; stop) */
+		start = origin;
+
+	/* prel31 for address relavive to start */
+	addr_prel31 = (addr - (unsigned long)start) & 0x7fffffff;
+
+	while (start < stop - 1) {
+		const struct unwind_idx *mid = start + ((stop - start) >> 1);
+
+		/*
+		 * As addr_prel31 is relative to start an offset is needed to
+		 * make it relative to mid.
+		 */
+		if (addr_prel31 - ((unsigned long)mid - (unsigned long)start) <
+				mid->addr_offset)
+			stop = mid;
+		else {
+			/* keep addr_prel31 relative to start */
+			addr_prel31 -= ((unsigned long)mid -
+					(unsigned long)start);
+			start = mid;
+		}
+	}
 
-	if (addr < first->addr) {
+	if (likely(start->addr_offset <= addr_prel31))
+		return start;
+	else {
 		pr_warning("unwind: Unknown symbol address %08lx\n", addr);
 		return NULL;
-	} else if (addr >= last->addr)
-		return last;
+	}
+}
 
-	while (first < last - 1) {
-		struct unwind_idx *mid = first + ((last - first + 1) >> 1);
+static const struct unwind_idx *unwind_find_origin(
+		const struct unwind_idx *start, const struct unwind_idx *stop)
+{
+	pr_debug("%s(%p, %p)\n", __func__, start, stop);
+	while (start < stop - 1) {
+		const struct unwind_idx *mid = start + ((stop - start) >> 1);
 
-		if (addr < mid->addr)
-			last = mid;
+		if (mid->addr_offset >= 0x40000000)
+			/* negative offset */
+			start = mid;
 		else
-			first = mid;
+			/* positive offset */
+			stop = mid;
 	}
 
-	return first;
-}
+	pr_debug("%s -> %p\n", __func__, stop);
+	return stop;
+ }
 
-static struct unwind_idx *unwind_find_idx(unsigned long addr)
+static const struct unwind_idx *unwind_find_idx(unsigned long addr)
 {
-	struct unwind_idx *idx = NULL;
+	const struct unwind_idx *idx = NULL;
 
 	pr_debug("%s(%08lx)\n", __func__, addr);
 
-	if (is_kernel_text(addr))
+	if (is_kernel_text(addr)) {
+		if (unlikely(!__origin_unwind_idx))
+			__origin_unwind_idx =
+				unwind_find_origin(__start_unwind_idx,
+						__stop_unwind_idx);
+
 		/* main unwind table */
 		idx = search_index(addr, __start_unwind_idx,
-				   __stop_unwind_idx - 1);
-	else {
+					__origin_unwind_idx,
+					__stop_unwind_idx);
+	} else {
 		/* module unwinding not supported */
 	}
 
@@ -232,7 +288,7 @@ static int unwind_exec_insn(struct unwind_ctrl_block *ctrl)
 int unwind_frame(struct stackframe *frame)
 {
 	unsigned long high, low;
-	struct unwind_idx *idx;
+	const struct unwind_idx *idx;
 	struct unwind_ctrl_block ctrl;
 
 	/* only go to a higher address on the stack */
@@ -342,15 +398,3 @@ void dump_stack(void)
 {
 	unwind_backtrace(NULL);
 }
-
-static int unwind_init(void)
-{
-	struct unwind_idx *idx;
-
-	/* Convert the symbol addresses to absolute values */
-	for (idx = __start_unwind_idx; idx < __stop_unwind_idx; idx++)
-		idx->addr = prel31_to_addr(&idx->addr);
-
-	return 0;
-}
-core_initcall(unwind_init);
-- 
2.30.2



