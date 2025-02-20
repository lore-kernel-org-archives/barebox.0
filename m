Delivery-date: Thu, 20 Feb 2025 21:31:04 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tlDCL-004qIB-0c
	for lore@lore.pengutronix.de;
	Thu, 20 Feb 2025 21:31:04 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tlDCJ-0004HX-V3
	for lore@pengutronix.de; Thu, 20 Feb 2025 21:31:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=o7U1CauKDgw1XNYKfw1BfUvUbtWTEyoUiMVGsPUnh8Y=; b=PW68hxIxpVHodrPtEJlSZIji3Y
	DronUS6oWvh5o7n9IfJOjKX1Ao5jinOfOVTzUydH6pKA93ml+o0QLoCGXuJJvACBawlh9rb5RstQu
	IaOaNS/FImagrzOBlIFIVxWaPk3YKEuzZT0b/GjKEA7JjkSWPg7AFkyDk8oxZdQ4vVPoR6/YZLkBX
	JOaiJBrZuUfbsY7nPaY1IEqIFbGmbMJRYWyrhq/h/8eCbtOUEXfRwLtbHAr0csXyhGcg7mjYIvHHe
	oq/0dKrZPQEC0un8iAXD3Fsruvl5SS9ab0Io8CfF6L4q5aNmfhhJRUFj6wYlkS1/Fi9HSqwiV6FlC
	iZN/2jvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tlDBu-00000002nHu-3sVU;
	Thu, 20 Feb 2025 20:30:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tlDBr-00000002nFs-46jq
	for barebox@lists.infradead.org;
	Thu, 20 Feb 2025 20:30:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tlDBq-0003xL-Kl; Thu, 20 Feb 2025 21:30:34 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tlDBq-001zS9-1M;
	Thu, 20 Feb 2025 21:30:34 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tlDBq-00E3gH-15;
	Thu, 20 Feb 2025 21:30:34 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 20 Feb 2025 21:30:30 +0100
Message-Id: <20250220203032.3350247-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250220203032.3350247-1-a.fatoum@pengutronix.de>
References: <20250220203032.3350247-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250220_123036_027293_21A47B3C 
X-CRM114-Status: GOOD (  10.36  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 4/6] sandbox: libc_malloc: fail allocations exceeding MALLOC_MAX_SIZE
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The libc allocator is a bit unpredictable, because overcommit can
mean that big allocations succeed initially, only to OOM later.

Let's thus enforce a maximum allocation limit on the barebox side in
alignment with the bare metal allocators.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/sandbox/os/libc_malloc.c | 24 ++++++++++++++++++++----
 1 file changed, 20 insertions(+), 4 deletions(-)

diff --git a/arch/sandbox/os/libc_malloc.c b/arch/sandbox/os/libc_malloc.c
index e34156cd49e7..ac97fc37eee5 100644
--- a/arch/sandbox/os/libc_malloc.c
+++ b/arch/sandbox/os/libc_malloc.c
@@ -7,6 +7,8 @@
 #include <malloc.h>
 
 #define BAREBOX_ENOMEM 12
+#define BAREBOX_MALLOC_MAX_SIZE 0x40000000
+
 extern int barebox_errno;
 
 void barebox_malloc_stats(void)
@@ -15,7 +17,10 @@ void barebox_malloc_stats(void)
 
 void *barebox_memalign(size_t alignment, size_t bytes)
 {
-	void *mem = memalign(alignment, bytes);
+	void *mem = NULL;
+
+	if (alignment <= BAREBOX_MALLOC_MAX_SIZE && bytes <= BAREBOX_MALLOC_MAX_SIZE)
+		mem = memalign(alignment, bytes);
 	if (!mem)
 		barebox_errno = BAREBOX_ENOMEM;
 
@@ -25,7 +30,10 @@ void *barebox_memalign(size_t alignment, size_t bytes)
 void *barebox_malloc(size_t size)
 {
 
-	void *mem = malloc(size);
+	void *mem = NULL;
+
+	if (size <= BAREBOX_MALLOC_MAX_SIZE)
+		mem = malloc(size);
 	if (!mem)
 		barebox_errno = BAREBOX_ENOMEM;
 
@@ -44,7 +52,10 @@ void barebox_free(void *ptr)
 
 void *barebox_realloc(void *ptr, size_t size)
 {
-	void *mem = realloc(ptr, size);
+	void *mem = NULL;
+
+	if (size <= BAREBOX_MALLOC_MAX_SIZE)
+		mem = realloc(ptr, size);
 	if (!mem)
 		barebox_errno = BAREBOX_ENOMEM;
 
@@ -53,7 +64,12 @@ void *barebox_realloc(void *ptr, size_t size)
 
 void *barebox_calloc(size_t n, size_t elem_size)
 {
-	void *mem = calloc(n, elem_size);
+	size_t product;
+	void *mem = NULL;
+
+	if (!__builtin_add_overflow(n, elem_size, &product) &&
+	    product <= BAREBOX_MALLOC_MAX_SIZE)
+		mem = calloc(n, elem_size);
 	if (!mem)
 		barebox_errno = BAREBOX_ENOMEM;
 
-- 
2.39.5



