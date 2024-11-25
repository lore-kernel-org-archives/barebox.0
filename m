Delivery-date: Mon, 25 Nov 2024 16:13:09 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFalx-000FY8-05
	for lore@lore.pengutronix.de;
	Mon, 25 Nov 2024 16:13:09 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFalv-0007kB-S8
	for lore@pengutronix.de; Mon, 25 Nov 2024 16:13:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6jj9pV3gOEO/XoxG8TqLM6icMzx+5SnTzFiunaZzdVk=; b=mEKowIHVVnah4JV9lZrZ9OvKJz
	MCQwogQgLawRebvrfUXkHjTwDvxmRpP+XawtA5ke68cpENJKqSfxbh5e88PFyIAFnAXsYaImHVHTm
	tGtEqyQ52TZIH3Z5lyGRyrKSenfffDlXA9+SC9p3HWN//iaNV1xwNtzOIxVTr4WpkAK8SHEtnkYcJ
	4HNscI90qtPIyhoQNlc4VYsRotuJAP07BdBc9B+e+8COn5HZ24OgVCAcepAgTXSjOY7Zd7RpBEe4i
	q98DxfLiWg3teTYCC5fz8YvvLgKxefe7itJVFXunXz0Kd6kH0JHLmp2IJMaS19DbiwUzkelmqSRCu
	CjOYhZXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tFalQ-00000008Pg3-32jo;
	Mon, 25 Nov 2024 15:12:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tFalM-00000008Pb7-1gZq
	for barebox@lists.infradead.org;
	Mon, 25 Nov 2024 15:12:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFalL-0007CZ-4H; Mon, 25 Nov 2024 16:12:31 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFalK-0006Md-0T;
	Mon, 25 Nov 2024 16:12:30 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFalK-001lGb-0g;
	Mon, 25 Nov 2024 16:12:30 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 25 Nov 2024 16:12:17 +0100
Message-Id: <20241125151228.341441-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241125151228.341441-1-a.fatoum@pengutronix.de>
References: <20241125151228.341441-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241125_071232_447448_701753A9 
X-CRM114-Status: GOOD (  12.04  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 05/16] lib: random: add stubs for PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

To optimize out calls to undefined functions in PBL at compile-time
instead of link time, let's define stubs for the functions that
are referenced in obj-pbl-y files, but inside function sections
that are ultimately unreferenced.

We don't use IS_PROPER here as we want to fail the build in barebox
proper as before, when HWRNG support is missing.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/stdlib.h | 19 ++++++++++++++++++-
 1 file changed, 18 insertions(+), 1 deletion(-)

diff --git a/include/stdlib.h b/include/stdlib.h
index c427cbc87f6e..20bdc0491e3c 100644
--- a/include/stdlib.h
+++ b/include/stdlib.h
@@ -2,6 +2,7 @@
 #ifndef __STDLIB_H
 #define __STDLIB_H
 
+#include <linux/bug.h>
 #include <types.h>
 #include <malloc.h>
 
@@ -13,11 +14,27 @@ unsigned int rand(void);
 /* set the seed for rand () */
 void srand(unsigned int seed);
 
+struct hwrng;
+
 /* fill a buffer with pseudo-random data */
+#if IN_PROPER
 void get_random_bytes(void *buf, int len);
 int get_crypto_bytes(void *buf, int len);
-struct hwrng;
 int hwrng_get_crypto_bytes(struct hwrng *rng, void *buf, int len);
+#else
+static inline void get_random_bytes(void *buf, int len)
+{
+	BUG();
+}
+static inline int get_crypto_bytes(void *buf, int len)
+{
+	return -ENOSYS;
+}
+static inline int hwrng_get_crypto_bytes(struct hwrng *rng, void *buf, int len)
+{
+	return -ENOSYS;
+}
+#endif
 
 static inline u32 random32(void)
 {
-- 
2.39.5



