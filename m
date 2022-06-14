Delivery-date: Tue, 14 Jun 2022 11:24:53 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o12n6-0024i3-Gi
	for lore@lore.pengutronix.de; Tue, 14 Jun 2022 11:24:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o12n6-0006w6-4p
	for lore@pengutronix.de; Tue, 14 Jun 2022 11:24:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6UWHZdBj1rb/KUGAOjMuAx+M3Dna+Go7/AmIBvXUuM8=; b=qGnBWOfulANAT3
	41qgdg0n/8EKHxuzsInOeJ4xxtyyUHYWx9QsbAYmk4n9XGI8kWx7w73D9N/375UJWS5hYuNcDfZMf
	dIAoJA5QfU5cAgNRlHwyYCl+j+sY+DxVd5gEMeJ0FACKXQuNvUhzvs98hbaGuwavucfWHaoUUNKGx
	Ro/2cR5ElmyNTYmzFgnVr8aUI0uxXBE6dvtfnYK+0rUcnG/8RzXT0LovvVJ/irlm6ilbVWEYjTycp
	xcX2JC9oYYoJH0xEQ9GdkjFrMRqJ7MjK0Ps8/D7KyS4EdVFE/q1uBGh8iVRfIrw7U6QGZ6G0weZqX
	8zN2vMBBcIZdnNOLtPZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o12lg-008gaa-Cr; Tue, 14 Jun 2022 09:23:24 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o12eZ-008ctk-U7
	for barebox@lists.infradead.org; Tue, 14 Jun 2022 09:16:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1o12eW-0005K7-MB; Tue, 14 Jun 2022 11:16:00 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1o12eU-000SaV-Ig; Tue, 14 Jun 2022 11:15:59 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1o12eV-004HFk-7R; Tue, 14 Jun 2022 11:15:59 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 14 Jun 2022 11:15:55 +0200
Message-Id: <20220614091556.1018102-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220614_021604_190887_56611D72 
X-CRM114-Status: GOOD (  10.41  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master 1/2] dma: avoid clash between static inline and extern dma_alloc declarations
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

dma_alloc/dma_sync/dma_free can be either either static inline definitions
usually supplied per arch or extern definitions that can be either
generic or supplied per arch.

To avoid clashes, expect static inline definitions to define a
preprocessor symbol for now. There is much duplication in the static
inline helpers, which we can remove in future.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
New patch, please apply to master.
---
 arch/arm/include/asm/dma.h          |  5 +++++
 arch/kvx/include/asm/dma.h          |  2 ++
 arch/mips/include/asm/dma-mapping.h |  2 ++
 arch/sandbox/include/asm/dma.h      |  5 +++++
 arch/x86/include/asm/dma.h          |  4 ++++
 include/dma.h                       | 12 ++++++++++++
 6 files changed, 30 insertions(+)

diff --git a/arch/arm/include/asm/dma.h b/arch/arm/include/asm/dma.h
index 226b1c146479..75a6c1ad86b2 100644
--- a/arch/arm/include/asm/dma.h
+++ b/arch/arm/include/asm/dma.h
@@ -10,6 +10,7 @@ static inline void *dma_alloc(size_t size)
 }
 
 #ifndef CONFIG_MMU
+#define dma_alloc_coherent dma_alloc_coherent
 static inline void *dma_alloc_coherent(size_t size, dma_addr_t *dma_handle)
 {
 	void *ret = xmemalign(4096, size);
@@ -21,22 +22,26 @@ static inline void *dma_alloc_coherent(size_t size, dma_addr_t *dma_handle)
 	return ret;
 }
 
+#define dma_alloc_writecombine dma_alloc_writecombine
 static inline void *dma_alloc_writecombine(size_t size, dma_addr_t *dma_handle)
 {
 	return dma_alloc_coherent(size, dma_handle);
 }
 
+#define dma_free_coherent dma_free_coherent
 static inline void dma_free_coherent(void *mem, dma_addr_t dma_handle,
 				     size_t size)
 {
 	free(mem);
 }
 
+#define dma_sync_single_for_cpu dma_sync_single_for_cpu
 static inline void dma_sync_single_for_cpu(dma_addr_t address, size_t size,
 					   enum dma_data_direction dir)
 {
 }
 
+#define dma_sync_single_for_device dma_sync_single_for_device
 static inline void dma_sync_single_for_device(dma_addr_t address, size_t size,
 					      enum dma_data_direction dir)
 {
diff --git a/arch/kvx/include/asm/dma.h b/arch/kvx/include/asm/dma.h
index a7ecf279a982..5bf601307e61 100644
--- a/arch/kvx/include/asm/dma.h
+++ b/arch/kvx/include/asm/dma.h
@@ -16,6 +16,7 @@ static inline void *dma_alloc(size_t size)
 	return xmemalign(64, ALIGN(size, 64));
 }
 
+#define dma_alloc_coherent dma_alloc_coherent
 static inline void *dma_alloc_coherent(size_t size, dma_addr_t *dma_handle)
 {
 	BUILD_BUG_ON_MSG(1, "dma_alloc_coherent not supported: "
@@ -23,6 +24,7 @@ static inline void *dma_alloc_coherent(size_t size, dma_addr_t *dma_handle)
 	return NULL;
 }
 
+#define dma_free_coherent dma_free_coherent
 static inline void dma_free_coherent(void *mem, dma_addr_t dma_handle,
 				     size_t size)
 {
diff --git a/arch/mips/include/asm/dma-mapping.h b/arch/mips/include/asm/dma-mapping.h
index 19d5b3f7bc4d..8e6ea0816828 100644
--- a/arch/mips/include/asm/dma-mapping.h
+++ b/arch/mips/include/asm/dma-mapping.h
@@ -10,6 +10,7 @@
 #include <malloc.h>
 #include <asm/io.h>
 
+#define dma_alloc_coherent dma_alloc_coherent
 static inline void *dma_alloc_coherent(size_t size, dma_addr_t *dma_handle)
 {
 	void *ret;
@@ -26,6 +27,7 @@ static inline void *dma_alloc_coherent(size_t size, dma_addr_t *dma_handle)
 	return (void *)CKSEG1ADDR(ret);
 }
 
+#define dma_free_coherent dma_free_coherent
 static inline void dma_free_coherent(void *vaddr, dma_addr_t dma_handle,
 				     size_t size)
 {
diff --git a/arch/sandbox/include/asm/dma.h b/arch/sandbox/include/asm/dma.h
index 34c0fc5190f8..958d10e2a199 100644
--- a/arch/sandbox/include/asm/dma.h
+++ b/arch/sandbox/include/asm/dma.h
@@ -18,6 +18,7 @@ static inline void *dma_alloc(size_t size)
 	return xmemalign(64, ALIGN(size, 64));
 }
 
+#define dma_alloc_coherent dma_alloc_coherent
 static inline void *dma_alloc_coherent(size_t size, dma_addr_t *dma_handle)
 {
 	void *ret = xmemalign(4096, size);
@@ -29,22 +30,26 @@ static inline void *dma_alloc_coherent(size_t size, dma_addr_t *dma_handle)
 	return ret;
 }
 
+#define dma_alloc_writecombine dma_alloc_writecombine
 static inline void *dma_alloc_writecombine(size_t size, dma_addr_t *dma_handle)
 {
 	return dma_alloc_coherent(size, dma_handle);
 }
 
+#define dma_free_coherent dma_free_coherent
 static inline void dma_free_coherent(void *mem, dma_addr_t dma_handle,
 				     size_t size)
 {
 	free(mem);
 }
 
+#define dma_sync_single_for_cpu dma_sync_single_for_cpu
 static inline void dma_sync_single_for_cpu(dma_addr_t address, size_t size,
 					   enum dma_data_direction dir)
 {
 }
 
+#define dma_sync_single_for_device dma_sync_single_for_device
 static inline void dma_sync_single_for_device(dma_addr_t address, size_t size,
 					      enum dma_data_direction dir)
 {
diff --git a/arch/x86/include/asm/dma.h b/arch/x86/include/asm/dma.h
index 8a3b044f3a9c..90791ecf3e07 100644
--- a/arch/x86/include/asm/dma.h
+++ b/arch/x86/include/asm/dma.h
@@ -13,6 +13,7 @@
  * x86 is cache coherent, so we need not do anything special here
  */
 
+#define dma_alloc_coherent dma_alloc_coherent
 static inline void *dma_alloc_coherent(size_t size, dma_addr_t *dma_handle)
 {
 	void *ret = xmemalign(4096, size);
@@ -24,17 +25,20 @@ static inline void *dma_alloc_coherent(size_t size, dma_addr_t *dma_handle)
 	return ret;
 }
 
+#define dma_free_coherent dma_free_coherent
 static inline void dma_free_coherent(void *mem, dma_addr_t dma_handle,
 				     size_t size)
 {
 	free(mem);
 }
 
+#define dma_sync_single_for_cpu dma_sync_single_for_cpu
 static inline void dma_sync_single_for_cpu(dma_addr_t address, size_t size,
 					   enum dma_data_direction dir)
 {
 }
 
+#define dma_sync_single_for_device dma_sync_single_for_device
 static inline void dma_sync_single_for_device(dma_addr_t address, size_t size,
 					      enum dma_data_direction dir)
 {
diff --git a/include/dma.h b/include/dma.h
index 90f9254ea80f..2a271044f61c 100644
--- a/include/dma.h
+++ b/include/dma.h
@@ -57,14 +57,26 @@ static inline int dma_mapping_error(struct device_d *dev, dma_addr_t dma_addr)
 }
 
 /* streaming DMA - implement the below calls to support HAS_DMA */
+#ifndef dma_sync_single_for_cpu
 void dma_sync_single_for_cpu(dma_addr_t address, size_t size,
 			     enum dma_data_direction dir);
+#endif
 
+#ifndef dma_sync_single_for_device
 void dma_sync_single_for_device(dma_addr_t address, size_t size,
 				enum dma_data_direction dir);
+#endif
 
+#ifndef dma_alloc_coherent
 void *dma_alloc_coherent(size_t size, dma_addr_t *dma_handle);
+#endif
+
+#ifndef dma_free_coherent
 void dma_free_coherent(void *mem, dma_addr_t dma_handle, size_t size);
+#endif
+
+#ifndef dma_alloc_writecombine
 void *dma_alloc_writecombine(size_t size, dma_addr_t *dma_handle);
+#endif
 
 #endif /* __DMA_H */
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

