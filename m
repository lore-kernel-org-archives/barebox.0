Delivery-date: Wed, 17 Aug 2022 13:44:48 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oOHTd-001pYf-GO
	for lore@lore.pengutronix.de; Wed, 17 Aug 2022 13:44:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oOHTa-0001uZ-5a
	for lore@pengutronix.de; Wed, 17 Aug 2022 13:44:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Z5ZYQlyOxSJwSq7ne3+I3D1Gxh8H+oYjg+XtGM3NHr0=; b=Na0pvCctGzPcNCM6G1Zj4ZVmvT
	8cksrOm8de/Tc8bMo9oiiMOoi7ZNkpV7spUK5IEmm3QcZ/hWgWW5G/Lbd9GJnett9BPgxF5GrydWG
	2vpOkhuT/cS9vMSa7jkl72GGTFH3lYb1SD5xJsWBLGyeLwWhfagqeZ4d5Xt1xN80n+8KIRgLtILwg
	cVsd+zxwRlGts7izspgnW6PPfLTslqr7uERQrg+NKPwppVacUb4ajRcXIEA0nmOXiUStjwTta1GFf
	a+NdHahFPQUYNs86uI9EoWzs/t15VtkgIFDORTei3DV6Fxs5WtkilZ+UFoy0dZV6jTP/sajsfWfo5
	BilEa2Hg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOHSA-001ZMZ-Fz; Wed, 17 Aug 2022 11:43:18 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOHRp-001Z9w-U5
	for barebox@lists.infradead.org; Wed, 17 Aug 2022 11:43:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oOHRf-0001Na-NH; Wed, 17 Aug 2022 13:42:47 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oOHRe-000Iq6-UQ; Wed, 17 Aug 2022 13:42:46 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oOHRd-007dCm-Kp; Wed, 17 Aug 2022 13:42:45 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: uol@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 17 Aug 2022 13:42:37 +0200
Message-Id: <20220817114244.1810531-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220817114244.1810531-1-a.fatoum@pengutronix.de>
References: <20220817114244.1810531-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220817_044258_053659_F0F4CBF0 
X-CRM114-Status: GOOD (  10.61  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 03/10] memory: define reserve_sdram_region helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We use request_sdram_regions both for code that barebox wants to use for
itself (e.g. barebox stack or initrd) and to reserve regions for secure
firmware that barebox shouldn't overwrite. We need to differentiate
between them, so we can apply different caching flags depending on
region, so add a new reserve_sdram_region helper that may be used and
also add an for_each_reserved_region iterator for use in the MMU code
that applied the different caching flags later on.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/memory.h | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/include/memory.h b/include/memory.h
index 31da5d74d568..ffd66db02ba0 100644
--- a/include/memory.h
+++ b/include/memory.h
@@ -4,6 +4,7 @@
 
 #include <linux/types.h>
 #include <linux/list.h>
+#include <linux/ioport.h>
 
 void mem_malloc_init(void *start, void *end);
 ulong mem_malloc_start(void);
@@ -22,6 +23,9 @@ int barebox_add_memory_bank(const char *name, resource_size_t start,
 				    resource_size_t size);
 
 #define for_each_memory_bank(mem)	list_for_each_entry(mem, &memory_banks, list)
+#define for_each_reserved_region(mem, rsv) \
+	list_for_each_entry(rsv, &(mem)->res->children, sibling) \
+	if (((rsv)->flags & IORESOURCE_BUSY))
 
 struct resource *__request_sdram_region(const char *name, unsigned flags,
 					resource_size_t start, resource_size_t size);
@@ -34,6 +38,14 @@ static inline struct resource *request_sdram_region(const char *name,
 	return __request_sdram_region(name, 0, start, size);
 }
 
+/* use for secure firmware to inhibit speculation */
+static inline struct resource *reserve_sdram_region(const char *name,
+						    resource_size_t start,
+						    resource_size_t size)
+{
+	return __request_sdram_region(name, IORESOURCE_BUSY, start, size);
+}
+
 int release_sdram_region(struct resource *res);
 
 void memory_bank_find_space(struct memory_bank *bank, resource_size_t *retstart,
-- 
2.30.2



