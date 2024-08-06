Delivery-date: Tue, 06 Aug 2024 12:55:07 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sbHqN-006nfS-1K
	for lore@lore.pengutronix.de;
	Tue, 06 Aug 2024 12:55:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sbHqM-0004EE-R4
	for lore@pengutronix.de; Tue, 06 Aug 2024 12:55:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=TXBkqRx2ftKG7kuCb1TVeWNb3MlYNhzuoNRacYVAC60=; b=ttxjOdrN06E5S2Pw8/pqQ2xf/K
	rMufLq/fcCzDCrEG/a9wUYJ0bZLCKYctXPr8JZIChUGuB0UgLdccwPyL5jhB8lB/Ut8ewYF9ITEQK
	iT1lFYs8XeDlWj93ueAEtZJnG/wD9amLCiRnbAF6cGaWRRczn53KxmePYAUReIbZqOCRwhsqEH8SZ
	N2yEmb2/D6dmsRqvKbFLm8dgbwOnu6GEB03yuGD8Tu+d/xMSYF8uDLGGSAHyU5PVr1p22aDXmSY4p
	MrYThQN1pfBne0o0bEr12HFXvfdsBLK3RMZEvg1JMMwNCfSP0TV+yi0jF2IAa2RfZSnWSPemaOtT2
	wa+udDvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbHpq-00000001HXU-3xDN;
	Tue, 06 Aug 2024 10:54:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbHpo-00000001HWl-2E9y
	for barebox@lists.infradead.org;
	Tue, 06 Aug 2024 10:54:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sbHpn-00049J-7g; Tue, 06 Aug 2024 12:54:31 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sbHpm-004w1h-Qq; Tue, 06 Aug 2024 12:54:30 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sbHpm-009Ytv-2K;
	Tue, 06 Aug 2024 12:54:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  6 Aug 2024 12:54:28 +0200
Message-Id: <20240806105429.2278660-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240806_035432_599001_89383AA7 
X-CRM114-Status: GOOD (  10.27  )
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
Subject: [PATCH 1/2] malloc: implement malloc_usable_size()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

malloc_usable_size() is a standard libc function. Implement it for the
barebox allocators, dlmalloc and tlsf_malloc.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/dlmalloc.c    | 12 ++++++++++++
 common/tlsf_malloc.c | 11 +++++++++++
 include/malloc.h     |  1 +
 3 files changed, 24 insertions(+)

diff --git a/common/dlmalloc.c b/common/dlmalloc.c
index c41487d54b..99f666aada 100644
--- a/common/dlmalloc.c
+++ b/common/dlmalloc.c
@@ -1431,6 +1431,18 @@ void free(void *mem)
 		frontlink(p, sz, idx, bck, fwd);
 }
 
+size_t malloc_usable_size(void *mem)
+{
+	mchunkptr p;
+	size_t size;
+
+	if (!mem)
+		return 0;
+
+	p = mem2chunk(mem);
+	return chunksize(p);
+}
+
 /*
   Realloc algorithm:
 
diff --git a/common/tlsf_malloc.c b/common/tlsf_malloc.c
index 981f09de41..f07ef5645b 100644
--- a/common/tlsf_malloc.c
+++ b/common/tlsf_malloc.c
@@ -38,6 +38,17 @@ void free(void *mem)
 }
 EXPORT_SYMBOL(free);
 
+size_t malloc_usable_size(void *mem)
+{
+	size_t size;
+
+	if (!mem)
+		return 0;
+
+	return tlsf_block_size(mem);
+}
+EXPORT_SYMBOL(malloc_usable_size);
+
 void *realloc(void *oldmem, size_t bytes)
 {
 	void *mem = tlsf_realloc(tlsf_mem_pool, oldmem, bytes);
diff --git a/include/malloc.h b/include/malloc.h
index d63853b91e..5cdff0a4f9 100644
--- a/include/malloc.h
+++ b/include/malloc.h
@@ -6,6 +6,7 @@
 #include <types.h>
 
 void *malloc(size_t) __alloc_size(1);
+size_t malloc_usable_size(void *);
 void free(void *);
 void *realloc(void *, size_t) __realloc_size(2);
 void *memalign(size_t, size_t) __alloc_size(2);
-- 
2.39.2



