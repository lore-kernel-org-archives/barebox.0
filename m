Delivery-date: Tue, 14 Nov 2023 09:17:54 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r2ocM-00B5w8-0q
	for lore@lore.pengutronix.de;
	Tue, 14 Nov 2023 09:17:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r2ocM-0001Z5-AB
	for lore@pengutronix.de; Tue, 14 Nov 2023 09:17:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Lwq1WZLQZhxXip/JSUukVNhf+prsEpfqnAIjtUP6/zw=; b=sG/a9S0/1wDWg+
	ImJKVJ5NbxkRP2or7v1ZwPiUN8NLHUrP0CcPklW+5FttqyNGyY+LiWHRtm65PS61QWPZZE+YmfDAL
	ZPi5rlo73grcVt237wR4GlbvuaOwR+zfTJg9jz9s4dEOVk/Dw6WSG/VFgtzkgnG6zYlMMYMLDl0uW
	jRrnS91b3LY1DFG8zUjLaFze+nRBjnVsh+4va/VJE0cuyWCy6zjOJTnxgZp8D9wIXVzT/2h4qd6MG
	YyJEGuYWKLZXvuZJSi4SPWNmt8yiEkeJxUY6lZLCLJ2HEmoGD8UZppqzd/AZ8+9r74EbNk3YoYeC5
	P/qKWMCGVEjNrFpKCWHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r2oak-00FN37-1C;
	Tue, 14 Nov 2023 08:16:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r2oaf-00FN2M-2t
	for barebox@lists.infradead.org;
	Tue, 14 Nov 2023 08:16:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r2oaY-0001OL-5J; Tue, 14 Nov 2023 09:16:02 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1r2oaX-008wvi-PC; Tue, 14 Nov 2023 09:16:01 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1r2oaX-003dhI-2K;
	Tue, 14 Nov 2023 09:16:01 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 14 Nov 2023 09:16:00 +0100
Message-Id: <20231114081600.867531-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231114_001609_968775_A5DAE624 
X-CRM114-Status: GOOD (  11.82  )
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
Cc: afa@pengutronix.de
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] dlmalloc: hide out of bounds accesses from compiler
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Once we add __alloc_size attributes to allocations, GCC will complain
about violation of memory safety in dlmalloc.c.

dlmalloc uses this macro to convert a pointer returned by malloc()
to its own data structures:

 #define mem2chunk(mem) ((mchunkptr)((char*)(mem) - 2*SIZE_SZ))

As dlmalloc internally uses malloc itself and uses mem2chunk afterwards
on this pointer gcc rightfully complains about illegal accesses. Silence
these warnings by converting mem2chunk to a static inline function.

I would have expected that we need a OPTIMIZER_HIDE_VAR() in
mem2chunk(), but that doesn't seem to be necessary right now. Maybe it
will in later gcc versions.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/dlmalloc.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/common/dlmalloc.c b/common/dlmalloc.c
index 16ea3cafb6..d420e8bd9d 100644
--- a/common/dlmalloc.c
+++ b/common/dlmalloc.c
@@ -628,7 +628,11 @@ nextchunk-> +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
 /* conversion from malloc headers to user pointers, and back */
 
 #define chunk2mem(p)   ((void*)((char*)(p) + 2*SIZE_SZ))
-#define mem2chunk(mem) ((mchunkptr)((char*)(mem) - 2*SIZE_SZ))
+
+static inline mchunkptr mem2chunk(void *mem)
+{
+	return mem - 2 * SIZE_SZ;
+}
 
 /* pad request bytes into a usable size */
 
@@ -1683,8 +1687,8 @@ void *memalign(size_t alignment, size_t bytes)
 		   this is always possible.
 		 */
 
-		brk = (char*) mem2chunk(((unsigned long) (m + alignment - 1)) &
-					  -((signed) alignment));
+		brk = (char*) mem2chunk((void *)(((unsigned long) (m + alignment - 1)) &
+					  -((signed) alignment)));
 		if ((long)(brk - (char*)(p)) < MINSIZE)
 			brk = brk + alignment;
 
-- 
2.39.2



