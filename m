Delivery-date: Thu, 20 Feb 2025 21:31:10 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tlDCR-004qJR-1i
	for lore@lore.pengutronix.de;
	Thu, 20 Feb 2025 21:31:10 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tlDCQ-0004LX-CK
	for lore@pengutronix.de; Thu, 20 Feb 2025 21:31:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5OlHpHWXmHqXxSyCAD2Mgo0YwAq3euTB3+JBGQiDGTA=; b=l3GF8pz4j/oPlXZLIXlB/DzMjN
	1HwBXdpNc5rOY3MovqgZG3Em4OHFB9S1MQ4Erc65BMoNKx7npoPHcbV183nMnvw5bWuxWzpqpteiK
	n/ibxzisUjaKyvE9OCIMC+KmyDChkdPWI7FLTV1KWcASEDCY7OW+nyWNGZNH1WBWgth6SO8//j817
	Szp0JQ7pfdmTJ7F1v4QobYEe68LiF2WDlWnL9xBdNwteAAfNe0sqMkwAMVCnkTy/zClFEsD5WgbNr
	TDFxLTqT85tWyVMGeXbN6sWzdnjT3L3k2tQMM7WoKk+XP43znSB2ACle05bQyD/WAnEfUyygKteQe
	2w9GKcFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tlDBx-00000002nKK-2dxg;
	Thu, 20 Feb 2025 20:30:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tlDBr-00000002nFp-46eG
	for barebox@lists.infradead.org;
	Thu, 20 Feb 2025 20:30:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tlDBq-0003xK-Jo; Thu, 20 Feb 2025 21:30:34 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tlDBq-001zS5-1D;
	Thu, 20 Feb 2025 21:30:34 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tlDBq-00E3gH-0w;
	Thu, 20 Feb 2025 21:30:34 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 20 Feb 2025 21:30:29 +0100
Message-Id: <20250220203032.3350247-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250220203032.3350247-1-a.fatoum@pengutronix.de>
References: <20250220203032.3350247-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250220_123036_043579_083B1E75 
X-CRM114-Status: GOOD (  11.10  )
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
Subject: [PATCH 3/6] dlmalloc: fail allocations exceeding MALLOC_MAX_SIZE
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We already enforce a maximum allocation size of LONG_MAX in dlmalloc,
but this is larger than any reasonable allocation size we would have.

Let's reduce it to the new common maximum of SZ_1G.

While at it, enforce this limit for all size and alignment
parameters.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/dlmalloc.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/common/dlmalloc.c b/common/dlmalloc.c
index 731c46b584b0..2b5723e127c4 100644
--- a/common/dlmalloc.c
+++ b/common/dlmalloc.c
@@ -1162,7 +1162,7 @@ void *dlmalloc(size_t bytes)
 
 	INTERNAL_SIZE_T nb;
 
-	if ((long) bytes < 0) {
+	if (bytes > MALLOC_MAX_SIZE) {
 		errno = ENOMEM;
 		return NULL;
 	}
@@ -1499,7 +1499,7 @@ void *dlrealloc(void *oldmem, size_t bytes)
 	}
 #endif
 
-	if ((long)bytes < 0) {
+	if (bytes > MALLOC_MAX_SIZE) {
 		errno = ENOMEM;
 		return NULL;
 	}
@@ -1668,7 +1668,7 @@ void *dlmemalign(size_t alignment, size_t bytes)
 	mchunkptr remainder;	/* spare room at end to split off */
 	long remainder_size;	/* its size */
 
-	if ((long) bytes < 0) {
+	if (bytes > MALLOC_MAX_SIZE || alignment > MALLOC_MAX_SIZE) {
 		errno = ENOMEM;
 		return NULL;
 	}
@@ -1753,7 +1753,7 @@ void *dlcalloc(size_t n, size_t elem_size)
 	mchunkptr oldtop = top;
 	INTERNAL_SIZE_T oldtopsize = chunksize(top);
 
-	if ((long)n < 0) {
+	if (sz > MALLOC_MAX_SIZE) {
 		errno = ENOMEM;
 		return NULL;
 	}
-- 
2.39.5



