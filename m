Delivery-date: Wed, 22 Nov 2023 18:01:59 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r5qbu-004bLA-1e
	for lore@lore.pengutronix.de;
	Wed, 22 Nov 2023 18:01:59 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r5qbu-00016g-I0
	for lore@pengutronix.de; Wed, 22 Nov 2023 18:01:59 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=mpYd7DndTzNGdOkS7L64AspdU2hcDcSjfWWe3V2+enQ=; b=olkiibJxmORhFEiFpg880VSOFn
	QmaJmi1fRMJY9dyUNCSE0rXFxJrSO81lTqICyLLpRMRo/egUjz3jK0FZ+hNHe0qb9bR+FhDPsrVuF
	c3U8M8N7ciU15N9YqR9xnwcFsRryZhosGemh4189lE4u+dxNdV3goP+8ZXbTkEQc8fnSR9YzmA0Zk
	pIkWKsOH6XrBDicqO0hT6JfB169TN+3TFqkcEpeEIzFiFrMDfnIWJIzfv10LLGD+NUy/48MHWTqYn
	szVope7GM6c+JLQhfwYChUJAeUxRgYeQuNqbBiXYQYGWTH+WuJXliG564Zu5YHtZ4ZM0f6tK0gs0E
	BO4Od+ng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5qaK-002b6T-1G;
	Wed, 22 Nov 2023 17:00:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5qaH-002b4G-2E
	for barebox@lists.infradead.org;
	Wed, 22 Nov 2023 17:00:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r5qaE-0000Gs-2t; Wed, 22 Nov 2023 18:00:14 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r5qaD-00Aqz2-MY; Wed, 22 Nov 2023 18:00:13 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r5qaD-00GFMW-1v;
	Wed, 22 Nov 2023 18:00:13 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 22 Nov 2023 18:00:06 +0100
Message-Id: <20231122170007.3849506-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231122_090017_724533_7027C83E 
X-CRM114-Status: GOOD (  10.10  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/2] sandbox: libc_malloc: populate barebox errno on error
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

TLSF already populates errno on errors, so do likewise for the
allocators that don't.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/sandbox/os/libc_malloc.c | 28 ++++++++++++++++++++++++----
 1 file changed, 24 insertions(+), 4 deletions(-)

diff --git a/arch/sandbox/os/libc_malloc.c b/arch/sandbox/os/libc_malloc.c
index 74e3e2680585..975c41b0ec49 100644
--- a/arch/sandbox/os/libc_malloc.c
+++ b/arch/sandbox/os/libc_malloc.c
@@ -6,18 +6,30 @@
 #include <stdlib.h>
 #include <malloc.h>
 
+#define BAREBOX_ENOMEM 12
+extern int barebox_errno;
+
 void barebox_malloc_stats(void)
 {
 }
 
 void *barebox_memalign(size_t alignment, size_t bytes)
 {
-	return memalign(alignment, bytes);
+	void *mem = memalign(alignment, bytes);
+	if (!mem)
+		barebox_errno = BAREBOX_ENOMEM;
+
+	return mem;
 }
 
 void *barebox_malloc(size_t size)
 {
-	return malloc(size);
+
+	void *mem = malloc(size);
+	if (!mem)
+		barebox_errno = BAREBOX_ENOMEM;
+
+	return mem;
 }
 
 void barebox_free(void *ptr)
@@ -27,10 +39,18 @@ void barebox_free(void *ptr)
 
 void *barebox_realloc(void *ptr, size_t size)
 {
-	return realloc(ptr, size);
+	void *mem = realloc(ptr, size);
+	if (!mem)
+		barebox_errno = BAREBOX_ENOMEM;
+
+	return mem;
 }
 
 void *barebox_calloc(size_t n, size_t elem_size)
 {
-	return calloc(n, elem_size);
+	void *mem = calloc(n, elem_size);
+	if (!mem)
+		barebox_errno = BAREBOX_ENOMEM;
+
+	return mem;
 }
-- 
2.39.2



