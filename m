Delivery-date: Wed, 24 Jul 2024 11:48:29 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sWYbl-002Qmy-1V
	for lore@lore.pengutronix.de;
	Wed, 24 Jul 2024 11:48:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sWYbk-00063J-S7
	for lore@pengutronix.de; Wed, 24 Jul 2024 11:48:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=d/oQoSEjxK032K89SFDe9O54noXhaEQRx0ciFjJ8GMw=; b=Zf/AaSWbM7r5ruG/gzrngK1Lkf
	ZP8h9SfX2ySe3pgYCIXZQmAG+ditnpDVspfp9ezRaBnJnx05YI0CDXKUJQwsgB/xJdpFZLJrXVqNY
	aJsDNVGIp75ETFjuU/6ZPCp91K3cPFbpw7TY88JsIx3zAPgzK+29FBmjJaTcsKGcHnCX+bkc4Idsg
	r/dCqLDqzvp7Mgy3a1jQkbsGpqsFPSMmb+ioP1dv1o37/EPZ1NKE0yfdQOVaAxbNLBLg4SDKey90p
	0CiK6+ZJbr9O4m5YZmepCvc/RWXoMbPAvipnNFtUdJgXAQ6Q3ZHRXtwJHpfoj4pTg4CSpeL5a9NBH
	JASfOmjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWYbM-0000000Ez2L-0Bp9;
	Wed, 24 Jul 2024 09:48:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWYbJ-0000000Ez18-0wEO
	for barebox@lists.infradead.org;
	Wed, 24 Jul 2024 09:48:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sWYbH-0005tG-NK; Wed, 24 Jul 2024 11:47:59 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sWYbH-001pNR-Ag; Wed, 24 Jul 2024 11:47:59 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sWYbH-003og9-0j;
	Wed, 24 Jul 2024 11:47:59 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 24 Jul 2024 11:47:45 +0200
Message-Id: <20240724094744.894205-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240724_024801_280041_113A5062 
X-CRM114-Status: GOOD (  11.71  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] calloc: handle wrap around in total buffer size correctly
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

calloc() should allocate a memory buffer that fits the product of its
arguments or return NULL if this is not possible.

We violated this so far and a wraparound would result in allocating a
too small buffer leading to buffer overflows.

Fix this by using size_mull which saturates at SIZE_MAX, which malloc
should gracefully return NULL for.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/calloc.c   | 3 ++-
 common/dlmalloc.c | 3 ++-
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/common/calloc.c b/common/calloc.c
index 65e843350d47..12f18474a4c8 100644
--- a/common/calloc.c
+++ b/common/calloc.c
@@ -2,13 +2,14 @@
 
 #include <common.h>
 #include <malloc.h>
+#include <linux/overflow.h>
 
 /*
  * calloc calls malloc, then zeroes out the allocated chunk.
  */
 void *calloc(size_t n, size_t elem_size)
 {
-	size_t size = elem_size * n;
+	size_t size = size_mul(elem_size, n);
 	void *r = malloc(size);
 
 	if (!r)
diff --git a/common/dlmalloc.c b/common/dlmalloc.c
index c41487d54b4a..3a77a344576c 100644
--- a/common/dlmalloc.c
+++ b/common/dlmalloc.c
@@ -4,6 +4,7 @@
 #include <malloc.h>
 #include <string.h>
 #include <memory.h>
+#include <linux/overflow.h>
 #include <linux/build_bug.h>
 
 #include <stdio.h>
@@ -1739,7 +1740,7 @@ void *calloc(size_t n, size_t elem_size)
 {
 	mchunkptr p;
 	INTERNAL_SIZE_T csz;
-	INTERNAL_SIZE_T sz = n * elem_size;
+	INTERNAL_SIZE_T sz = size_mul(n, elem_size);
 	void *mem;
 
 	/* check if expand_top called, in which case don't need to clear */
-- 
2.39.2



