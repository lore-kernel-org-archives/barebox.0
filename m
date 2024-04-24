Delivery-date: Wed, 24 Apr 2024 09:09:15 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rzWkl-00ER6Z-0S
	for lore@lore.pengutronix.de;
	Wed, 24 Apr 2024 09:09:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rzWke-0006Pe-VR
	for lore@pengutronix.de; Wed, 24 Apr 2024 09:09:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jHLYNO1OrQfbt4Qc0jewEsBkqsnhs3VO1krjl7zr5w8=; b=kAvS6IG/CZJfYwmMGx+bCp1nQ0
	R/B1ZvPWy+OCD2QT19JK9tCnJ30QkGYP/aIapzjir5/tuuxTTFUnrPJhmagTFQJkehhxuP9Flsm6/
	k6puonKxNDKDiH6skWlOnW1ZXVepOgL6j1Jje0df9CxmqwiboKwmalBp1i6U85IQrRTfjag+3Yqka
	hTsvhkKZSpzYWZh+pM16g2QAQJ87JJy1otyT55qDWpoBs7tQPDe15TxEa9k7Q2SSKXiHbHsmTP6K9
	m2QCZc/f8dpPaW24c0IhvM82wNtdS5F5CcwxMUIezAXvVd1XID/Y2uDQ+QMCUdDenBnVgrXyZRi72
	x9MJ0R4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzWk5-0000000320a-0nmI;
	Wed, 24 Apr 2024 07:08:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzWjw-000000031t2-49Gr
	for barebox@lists.infradead.org;
	Wed, 24 Apr 2024 07:08:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rzWjv-0005c4-Gg; Wed, 24 Apr 2024 09:08:23 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rzWjv-00E24P-3v; Wed, 24 Apr 2024 09:08:23 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rzWJT-00F8kt-1U;
	Wed, 24 Apr 2024 08:41:03 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 24 Apr 2024 08:40:46 +0200
Message-Id: <20240424064058.3608016-12-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240424064058.3608016-1-a.fatoum@pengutronix.de>
References: <20240424064058.3608016-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240424_000825_126221_708F89CE 
X-CRM114-Status: GOOD (  11.23  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 11/23] include: linux/slab: use dma_alloc for kmalloc
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Linux kmalloc() family of function is suitable for use with streaming
DMA. barebox malloc() isn't though and changing that would increase the
alignment of all allocations.

Let's leave barebox malloc() as-is for now and have kmalloc/kcalloc and
friends allocate memory suitable for DMA as in Linux.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/linux/slab.h | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/include/linux/slab.h b/include/linux/slab.h
index 36b93bdd2f1b..47b0aec7e3b8 100644
--- a/include/linux/slab.h
+++ b/include/linux/slab.h
@@ -3,7 +3,7 @@
 #ifndef _LINUX_SLAB_H
 #define _LINUX_SLAB_H
 
-#include <malloc.h>
+#include <dma.h>
 #include <linux/overflow.h>
 #include <linux/string.h>
 
@@ -33,7 +33,7 @@
 
 static inline void *kmalloc(size_t size, gfp_t flags)
 {
-	return malloc(size);
+	return dma_alloc(size);
 }
 
 struct kmem_cache {
@@ -59,12 +59,12 @@ struct kmem_cache *kmem_cache_create(const char *name, unsigned int size,
 
 static inline void kmem_cache_destroy(struct kmem_cache *cache)
 {
-	free(cache);
+	dma_free(cache);
 }
 
 static inline void kfree(const void *mem)
 {
-	free((void *)mem);
+	dma_free((void *)mem);
 }
 
 static inline void *kmem_cache_alloc(struct kmem_cache *cache, gfp_t flags)
@@ -88,7 +88,7 @@ static inline void kmem_cache_free(struct kmem_cache *cache, void *mem)
 
 static inline void *kzalloc(size_t size, gfp_t flags)
 {
-	return calloc(size, 1);
+	return dma_zalloc(size);
 }
 
 /**
@@ -104,7 +104,7 @@ static inline void *kmalloc_array(size_t n, size_t size, gfp_t flags)
 
 static inline void *kcalloc(size_t n, size_t size, gfp_t flags)
 {
-	return calloc(n, size);
+	return dma_zalloc(size_mul(n, size));
 }
 
 static inline void *krealloc(void *ptr, size_t size, gfp_t flags)
-- 
2.39.2



