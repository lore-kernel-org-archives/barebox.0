Delivery-date: Wed, 28 Oct 2026 10:26:06 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xLzv3-004H1x-1p
	for lore@lore.pengutronix.de;
	Wed, 28 Oct 2026 10:26:05 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 78141202285
	for <lore@pengutronix.de>; Wed, 28 Oct 2026 10:26:05 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=0reyvvBr;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=F+QczEcb;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1793179565; a=rsa-sha256;
	cv=pass;
	b=Z9kSiz3Lbapm4dAvBYnz17xe/LOl0c8XaLdhkIm1FofanPwJuoN1TCh5J1UEa06tGQjNCD
	oxdGlisCyIwDIFvTP1cM1CDjpifmkzvZ/lU2LdWZb3mHA8jHeBH5hLie3Qs+qyOKUr1xUK
	xgKbgY7S6Nqr7tESGLzBpqWA/043JoYwzKIZnEbLpN28EGkY01PZkbJ9rWpduaY2Pffsiy
	cPDtR6V3L1nTyNTnWjrfOwe6l6WxkL9Y08cwvrcYWj+Z0G/3QccN4v1B+ucWFW18KM7vBI
	0lzxqpa6DGlO0oVfZZCjMY9G2kn0jhvTS/kiqxkvC2KjFv+r+5d842pBJjgajQ==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=0reyvvBr;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=F+QczEcb;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793179565;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=j+pwc4wAgwrpuv3JtxPYqUB4IdaqE1BMGa2vzNXYL1A=;
	b=YpcSq3Gv3Q0ywQNdR5FFa7E0kiZqYn6YL4n+OAYpZkPFbMJHWkNQWd75DfUtngHAjoX7+K
	vxbG8OYKSdSRlKCiNUYz/a6pg/HxWMkZauQC2FpBRzReVqfpQ+IGDeKbHF2gl+fCBIzo7y
	AfqP4Oxs6sqq1h1p9upU/cxrn3fBQ1RJ9lprmh9DFY0F9LeHRrraXKL1hhWQtVLVats5TT
	JFL/0ABjoGZ0MKqVJyzfVw2q1uJXWP+cfQgsvqnmi95y3ADrPslNWavW9DZ4D9yf6ZLEbV
	nG5sgaqVApeWugNahdjCXczcSL+N1NkDK77NGR9mIPL4c83As87o45LxNrHOng==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=j+pwc4wAgwrpuv3JtxPYqUB4IdaqE1BMGa2vzNXYL1A=; b=0reyvvBr5owB3c
	R624pRmUIaeJPcDMLkaQDzFHDWI/QurrutpppNWArN5GDqBRx4j1R/YExUxLRa8X5yTdF49to07EZ
	lLB00wh4jhmAPhN6n5e3NYxp9Fdx08KUAjhllKm0w4pfrAPsZMbLEJr+m3snXqNAgXf9fdVfJBMiF
	AG9uUdox/MJGfHvuoUdTqpZ3TXbwRnuzu+T/VdWiJvXqOt7g3UIJ8/bfJkgdsZ/lk0diOZ4XV14u2
	D4T/dDAt7dgxElwUusQq6KGjmXjTX3akikKf4CspjHqfScPU1T8KAjy43rtVIuZ2e7A9P3ACo4l58
	SjayszfCagKRDKbYZ+Dw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLzty-00000006eN3-1sjM;
	Wed, 28 Oct 2026 09:24:58 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLztt-00000006eFb-2hsa
	for barebox@lists.infradead.org;
	Wed, 28 Oct 2026 09:24:56 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.pengutronix.de [IPv6:2a0a:edc0:0:1101:1d::54])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 9B6A1202928;
	Wed, 28 Oct 2026 10:24:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793179485;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=j+pwc4wAgwrpuv3JtxPYqUB4IdaqE1BMGa2vzNXYL1A=;
	b=F+QczEcbf+nf2Zas+e97adH7UYao3rKNymVjk1cZBCPlT27YwpGRinGK744MlLelz99Uz/
	Ne17TO2Maq4/OiRm2ZfHa65hapvRzrHy62rzsmIV/pV+a2jlWwcLz3IgQhimbfF1dC458q
	evdaOopwh+k0JmAN+JxKNjwZTofRUJHY52C9XdFnKFeYLVj2T64T30/KxGV/9bh9J9yB3a
	kYB1YpbWmMAvqYNrJv0DzOGWvpgDn/R3dNPL3Yamu5HZ7cxuHBf4ecuRkIn0OxPdHa970n
	05UlPbJsZQjG4fMuGMHnL66f55yqjweW6lY2C4Yh9OY9AjbFJTN/1RHGAUlXDg==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793179485; a=rsa-sha256;
	cv=none;
	b=EqUIxcQf30Wbmzv6bSdc8amkkKF7z9w8S67D6isy0UtdSyR+Mt8A/WZ9Vd7NTvFA1EULUH
	KJomtHxfMXeA5kUzpL61t+HKjdyjSQO1QYfy/PqefxjhF2P1eHEemICGLXsHgN6Ch/bugr
	d9FHYONINBo+50JqTye5fhMr2Qy9XCcHArxJ34zAoAtybbjign04TC5fSRweTD4xazH2mp
	oBWmxYWNX6W0cZEqzF/BrM4QjpVDzfO43Z+3ZebhW8gqSE6Y/cYo3kZyrl2NvygEHOmRCw
	zi6ArEcuJt70iSr0ipAh/RTP+4FI835MEJlG7MaCdGxTnbtI69T/aPr7GEHP/w==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793179485;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=j+pwc4wAgwrpuv3JtxPYqUB4IdaqE1BMGa2vzNXYL1A=;
	b=Z4zd7X0JQGJhG8CUzXvD800mDpGQg+VlPREIsHgbtpORpQVUX1L2/SPiMJCeiu1MtMtOK4
	UXNZYOBS4hXbjXHgmghBT7mxgiWyihiIbLLUGPhtp4kddeH5762zk9Xb6pAbvTwBZ2c2xV
	5aK7maf24WYAYB3/iZJugTJfUEBzZ4wJGKtJFlaehyERWBtysNUtXXlUA41lJDRf/nmjOT
	Xqibe+0j/Zp9MmLM28P63tFyrNlCoYHv88v7zNb17L4uatIOT0fGAIOuEUkXGD8a/V5b5w
	lOWzoEV9GtGPS24A87wkF3/o1UUQsEfKcW/MeMHLmav3R0oUx227OkrM4s8GgQ==
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id 7FA9B7427BC;
	Wed, 28 Oct 2026 10:24:45 +0100 (CET)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH 05/19] talloc: add support for destructors
Date: Wed, 28 Oct 2026 10:14:39 +0100
Message-ID: <20261028092442.3300753-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261028092442.3300753-1-a.fatoum@pengutronix.de>
References: <20261028092442.3300753-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261028_022453_854612_0923ADFD 
X-CRM114-Status: GOOD (  21.82  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  From: Ahmad Fatoum <a.fatoum@barebox.org> devm_ on top of
   talloc needs code to run when a chunk is freed. Samba has talloc_set_destructor()
    for that, but its destructor gets the chunk and can veto the free, while
   devm_add_action() needs any n [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
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
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 78141202285
X-Spamd-Result: default: False [-59.61 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	MID_CONTAINS_FROM(1.00)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::54:received];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[pengutronix.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: bd9p9xghqmkwe78xsftmy1z3ke7xt9be

From: Ahmad Fatoum <a.fatoum@barebox.org>

devm_ on top of talloc needs code to run when a chunk is freed. Samba
has talloc_set_destructor() for that, but its destructor gets the chunk
and can veto the free, while devm_add_action() needs any number of
callbacks with their own argument. Let's add talloc_add_destructor()
for that instead.

Destructors are leaf chunks marked through their child slot, so the
header stays at three pointers. They run in reverse order of adding,
interleaved with freeing the other children. A chunk is marked while
being freed, so destructors freeing it again do nothing.

Assisted-by: Claude:fable-5.1
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 include/talloc.h |  2 ++
 lib/talloc.c     | 72 ++++++++++++++++++++++++++++++++++++++++++++----
 2 files changed, 69 insertions(+), 5 deletions(-)

diff --git a/include/talloc.h b/include/talloc.h
index 1f2dd346a7c1..806921898b6c 100644
--- a/include/talloc.h
+++ b/include/talloc.h
@@ -30,6 +30,8 @@ void *talloc_zero_size(const void *parent, size_t size);
 void *talloc_realloc_size(const void *parent, void *mem, size_t size);
 void talloc_free(void *mem);
 
+int talloc_add_destructor(const void *parent, void (*fn)(void *), void *data);
+
 char *talloc_strdup(const void *parent, const char *str);
 const char *talloc_strdup_const(const void *parent, const char *str);
 void talloc_free_const(const void *ptr);
diff --git a/lib/talloc.c b/lib/talloc.c
index 6a0fe81b9762..97787b2d6503 100644
--- a/lib/talloc.c
+++ b/lib/talloc.c
@@ -12,6 +12,9 @@
  * |  child  | sibling | sibling | chunk
  * +---------+---------+---------+--------···
  *
+ * Destructors are leaf chunks below the chunk they belong to, marked by
+ * a child slot pointing at talloc_destructor_mark.
+ *
  * Thus, a talloc hierarchy tree would look like this:
  *
  *   NULL <-- chunk --> NULL
@@ -28,6 +31,7 @@
 
 #include <stdlib.h>
 #include <string.h>
+#include <errno.h>
 #include <linux/bug.h>
 #include <linux/export.h>
 #include <linux/container_of.h>
@@ -35,9 +39,20 @@
 #include "talloc.h"
 
 // TODO use a bit from TLSF for extra safety to differentiate talloc
-// TODO allow leaf nodes (that have no children to be destructors!!)
 #define  is_root(hdr) (!(hdr)->prev)
 #define is_first(hdr) ((hdr)->prev->next != (hdr))
+/* A chunk is unlinked while being freed, so next can mark it */
+#define is_freeing(hdr) ((hdr)->next == (hdr))
+
+struct talloc_destructor {
+	void (*fn)(void *);
+	void *data;
+};
+
+/* Leaves have no children, so this in the child slot marks a destructor */
+static struct talloc talloc_destructor_mark;
+
+#define is_destructor(hdr) ((hdr)->child == &talloc_destructor_mark)
 
 static inline void *hdr2mem(struct talloc *hdr)
 {
@@ -235,8 +250,19 @@ EXPORT_SYMBOL(talloc_realloc_size);
  */
 static void __talloc_free(struct talloc *hdr)
 {
-	/* Unlink first so cycles terminate */
+	if (is_destructor(hdr)) {
+		struct talloc_destructor *d = hdr2mem(hdr);
+
+		d->fn(d->data);
+
+		mem_set_parent(hdr, NULL);
+		free(hdr);
+		return;
+	}
+
+	/* Mark it, so destructors can't free it again */
 	mem_set_parent(hdr, NULL);
+	hdr->next = hdr;
 
 	while (hdr->child)
 		__talloc_free(hdr->child);
@@ -248,18 +274,52 @@ static void __talloc_free(struct talloc *hdr)
  * talloc_free() - Deallocate a talloc'ed memory chunk and all the chunks depending on it.
  *
  * @mem: pointer to previously talloc'ed memory chunk.
+ *
+ * Runs the destructors of the chunk and its descendants. Does nothing
+ * if the chunk is already being freed.
  */
 void talloc_free(void *mem)
 {
 	struct talloc *hdr = mem2hdr(mem);
 
-	if (ZERO_OR_NULL_PTR(mem))
+	if (ZERO_OR_NULL_PTR(mem) || is_freeing(hdr))
 		return;
 
 	__talloc_free(hdr);
 }
 EXPORT_SYMBOL(talloc_free);
 
+/**
+ * talloc_add_destructor() - Add function to run when memory chunk is freed
+ *
+ * @parent: pointer to previously talloc'ed memory chunk.
+ * @fn: function to call with @data as argument when @parent is freed.
+ * @data: argument to pass to @fn.
+ *
+ * Any number of these can be added. They run in reverse order of adding,
+ * interleaved with the freeing of @parent's children.
+ *
+ * Return: 0 on success or a negative error code.
+ */
+int talloc_add_destructor(const void *parent, void (*fn)(void *), void *data)
+{
+	struct talloc_destructor *d;
+
+	if (ZERO_OR_NULL_PTR(parent))
+		return -EINVAL;
+
+	d = talloc_size(parent, sizeof(*d));
+	if (!d)
+		return -ENOMEM;
+
+	mem2hdr(d)->child = &talloc_destructor_mark;
+	d->fn = fn;
+	d->data = data;
+
+	return 0;
+}
+EXPORT_SYMBOL(talloc_add_destructor);
+
 /**
  * talloc_free_const() - call talloc_free, unless read/only memory
  *
@@ -336,8 +396,10 @@ size_t talloc_total_blocks(const void *mem)
 
 	nblocks++;
 
-	for (hdr = hdr->child; hdr; hdr = hdr->next)
-		nblocks++;
+	for (hdr = hdr->child; hdr; hdr = hdr->next) {
+		if (!is_destructor(hdr))
+			nblocks++;
+	}
 
 	return nblocks;
 }
-- 
2.47.3



