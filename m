Delivery-date: Wed, 22 Nov 2023 18:01:45 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r5qbg-004bKD-1d
	for lore@lore.pengutronix.de;
	Wed, 22 Nov 2023 18:01:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r5qbg-0000zD-Ht
	for lore@pengutronix.de; Wed, 22 Nov 2023 18:01:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OA2yE3OoOtbkkjvKPn/1mRe54e0XgvVdwKw0AcG86B0=; b=hhBCT+AQ1M8sPLm8oAYicudcn2
	0M93fgh5PKXAYdddXL3KLn4lJwzFNL0VxrJ7oImjvn9aU0a2Uwn18VmDgMHbJj+vNuvMm4ng22zcC
	fvD7UIXJ9exB5KNLp8qYxCux3MeaeoMjnsZX2yRbWEgTh9810lAW9kE4eStSfQGzbMwHA1koUY+2X
	BxvfVXrrBGnrEbWvti/oiZxVvxNCBOLkULeAiz8GssAh1QjX0SpRz9FjIDoQi785nTGTsbeCSMC1/
	7pCjsfboTzFVpeDi7EnhCmr9Ru353DkTpFpVH8Qf8KZB3STEaMWMziZojqAqohaAehRT2s1GlTtAH
	NFiZHHcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5qaK-002b6c-3D;
	Wed, 22 Nov 2023 17:00:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5qaH-002b4I-2D
	for barebox@lists.infradead.org;
	Wed, 22 Nov 2023 17:00:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r5qaE-0000Gu-4R; Wed, 22 Nov 2023 18:00:14 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r5qaD-00Aqz3-O9; Wed, 22 Nov 2023 18:00:13 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r5qaD-00GFMW-26;
	Wed, 22 Nov 2023 18:00:13 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 22 Nov 2023 18:00:07 +0100
Message-Id: <20231122170007.3849506-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231122170007.3849506-1-a.fatoum@pengutronix.de>
References: <20231122170007.3849506-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231122_090017_723933_1560BBBB 
X-CRM114-Status: GOOD (  13.86  )
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
Subject: [PATCH 2/2] dlmalloc: populate errno on error
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

TLSF already populates errno on errors, so do likewise for the
allocators that don't.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/dlmalloc.c | 21 ++++++++++++++++-----
 1 file changed, 16 insertions(+), 5 deletions(-)

diff --git a/common/dlmalloc.c b/common/dlmalloc.c
index c634fb1997a5..c41487d54b4a 100644
--- a/common/dlmalloc.c
+++ b/common/dlmalloc.c
@@ -1,5 +1,6 @@
 
 #include <config.h>
+#include <errno.h>
 #include <malloc.h>
 #include <string.h>
 #include <memory.h>
@@ -1167,8 +1168,10 @@ void *malloc(size_t bytes)
 
 	INTERNAL_SIZE_T nb;
 
-	if ((long) bytes < 0)
+	if ((long) bytes < 0) {
+		errno = ENOMEM;
 		return NULL;
+	}
 
 	nb = request2size(bytes); /* padded request size; */
 
@@ -1322,8 +1325,10 @@ void *malloc(size_t bytes)
 	if ((remainder_size = chunksize (top) - nb) < (long) MINSIZE) {
 		/* Try to extend */
 		malloc_extend_top(nb);
-		if ((remainder_size = chunksize(top) - nb) < (long) MINSIZE)
+		if ((remainder_size = chunksize(top) - nb) < (long) MINSIZE) {
+			errno = ENOMEM;
 			return NULL;	/* propagate failure */
+		}
 	}
 
 	victim = top;
@@ -1487,8 +1492,10 @@ void *realloc(void *oldmem, size_t bytes)
 	}
 #endif
 
-	if ((long)bytes < 0)
+	if ((long)bytes < 0) {
+		errno = ENOMEM;
 		return NULL;
+	}
 
 	/* realloc of null is supposed to be same as malloc */
 	if (!oldmem)
@@ -1654,8 +1661,10 @@ void *memalign(size_t alignment, size_t bytes)
 	mchunkptr remainder;	/* spare room at end to split off */
 	long remainder_size;	/* its size */
 
-	if ((long) bytes < 0)
+	if ((long) bytes < 0) {
+		errno = ENOMEM;
 		return NULL;
+	}
 
 	/* If need less alignment than we give anyway, just relay to malloc */
 
@@ -1737,8 +1746,10 @@ void *calloc(size_t n, size_t elem_size)
 	mchunkptr oldtop = top;
 	INTERNAL_SIZE_T oldtopsize = chunksize(top);
 
-	if ((long)n < 0)
+	if ((long)n < 0) {
+		errno = ENOMEM;
 		return NULL;
+	}
 
 	mem = malloc(sz);
 
-- 
2.39.2



