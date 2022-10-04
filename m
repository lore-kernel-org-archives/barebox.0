Delivery-date: Tue, 04 Oct 2022 17:56:45 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ofkHl-005iEB-Mb
	for lore@lore.pengutronix.de; Tue, 04 Oct 2022 17:56:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ofkHk-0006WY-ID
	for lore@pengutronix.de; Tue, 04 Oct 2022 17:56:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QypHnn2+FO+Oumscu1p9AV8eg4W/LHmviDFYa4R/zZU=; b=KXgcwHO300CbN1owSmXzD1qW6s
	LRjyFC3V2vvgbNXP4kUfPSFu4Rcvt8FMjrwvMGOI+dqyG8dpO0j4DgujTMRXV5BXcYUphXhueBTko
	BY34QJT2TL3Z0OCrGix2CdpVAk9DYFJs0bmkMKnLu4xMFhhxAFvqnLcxUJ/sdOJ7CXM6xIOwukf4R
	UrBsAfIb9N5n5e3j9LqmnJLMx0OPX3lCBgCQqTrUkq7OWf7Y0cjaI7qymnep56LZtkWahFs0sttpa
	nssZmT8z7YX4mX4zjkqGb5Opd/yvmrogSw26AtiClRK2BZ9HLd7Xd7lrCbBDx5sqCiubMZ6kLRwcL
	5rahTc+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofkGS-00A7ue-SL; Tue, 04 Oct 2022 15:55:24 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofkG7-00A7mI-6Q
	for barebox@lists.infradead.org; Tue, 04 Oct 2022 15:55:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1ofkG5-0005gg-3y; Tue, 04 Oct 2022 17:55:01 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1ofkG5-004aly-Sm; Tue, 04 Oct 2022 17:55:00 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1ofkG2-00EW8M-Bj; Tue, 04 Oct 2022 17:54:58 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  4 Oct 2022 17:54:05 +0200
Message-Id: <20221004155405.3458479-8-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221004155405.3458479-1-a.fatoum@pengutronix.de>
References: <20221004155405.3458479-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221004_085503_344486_67528B55 
X-CRM114-Status: GOOD (  13.83  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 7/9] common: malloc: ensure alignment is always at least 8 byte
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We used to have following alignments:
		32-bit CPU	64-bit CPU
   dummy	8 bytes		 8 bytes
   dlmalloc	8 bytes		16 bytes
   tlsf		4 bytes		 8 bytes

With recent change to TLSF, we now always have at least 8 bytes as
alignment. To make this clearer, define a new CONFIG_MALLOC_ALIGNMENT
and either use it as the alignment (as done for dummy) or add static
asserts to ensure we have at least this alignment.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/Kconfig        | 5 +++++
 common/dlmalloc.c     | 3 +++
 common/dummy_malloc.c | 2 +-
 common/tlsf.c         | 2 ++
 4 files changed, 11 insertions(+), 1 deletion(-)

diff --git a/common/Kconfig b/common/Kconfig
index 43dd92b08a3d..758f3c29286f 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -276,6 +276,11 @@ config MALLOC_SIZE
 	hex
 	default 0x400000
 	prompt "malloc area size"
+
+config MALLOC_ALIGNMENT
+	hex
+	default 8
+
 endmenu
 
 config BROKEN
diff --git a/common/dlmalloc.c b/common/dlmalloc.c
index ae10c9ae30dd..16ea3cafb624 100644
--- a/common/dlmalloc.c
+++ b/common/dlmalloc.c
@@ -3,6 +3,7 @@
 #include <malloc.h>
 #include <string.h>
 #include <memory.h>
+#include <linux/build_bug.h>
 
 #include <stdio.h>
 #include <module.h>
@@ -884,6 +885,8 @@ static mbinptr av_[NAV * 2 + 2] = {
 
 /*  Other static bookkeeping data */
 
+static_assert(MALLOC_ALIGNMENT >= CONFIG_MALLOC_ALIGNMENT);
+
 /* variables holding tunable values */
 #ifndef __BAREBOX__
 static unsigned long trim_threshold = DEFAULT_TRIM_THRESHOLD;
diff --git a/common/dummy_malloc.c b/common/dummy_malloc.c
index d99b5059cf91..7a96afec76e0 100644
--- a/common/dummy_malloc.c
+++ b/common/dummy_malloc.c
@@ -23,7 +23,7 @@ void *memalign(size_t alignment, size_t bytes)
 
 void *malloc(size_t size)
 {
-	return memalign(8, size);
+	return memalign(CONFIG_MALLOC_ALIGNMENT, size);
 }
 
 void free(void *ptr)
diff --git a/common/tlsf.c b/common/tlsf.c
index 561635dfd3f3..d5debbc2a3da 100644
--- a/common/tlsf.c
+++ b/common/tlsf.c
@@ -103,6 +103,8 @@ tlsf_static_assert(sizeof(unsigned int) * CHAR_BIT >= SL_INDEX_COUNT);
 /* Ensure we've properly tuned our sizes. */
 tlsf_static_assert(ALIGN_SIZE == SMALL_BLOCK_SIZE / SL_INDEX_COUNT);
 
+tlsf_static_assert(ALIGN_SIZE >= CONFIG_MALLOC_ALIGNMENT);
+
 /*
 ** Data structures and associated constants.
 */
-- 
2.30.2



