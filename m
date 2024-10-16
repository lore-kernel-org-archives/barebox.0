Delivery-date: Wed, 16 Oct 2024 11:02:40 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0zvU-004zzB-29
	for lore@lore.pengutronix.de;
	Wed, 16 Oct 2024 11:02:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0zvT-0005mr-ON
	for lore@pengutronix.de; Wed, 16 Oct 2024 11:02:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ApmgNNizVG/2Kd83qfWeE6+dxu1dnQhnBoHRsWHzfjw=; b=a51Q99SIsrlStUNRPs/5tNDgQ/
	hVpFWNVksqFlBrqqyaw+lqQiz7Lz0bN206wdUuz722JG3HOpWTG4CKzycUGuz+PISqy7t2ZoKCDx9
	RkiowERmaKrp4ldQtu1jLyNcmKhOgPJQI2+iPZzgsU52uttG0DDPD/rO53aQ19a3/sH1kvmpr7yxK
	cgvIP+xrluTlE/7KXMlH2QKh2J+ojn0+6k5sIefL/uYrOGVPplidHArBaIsuMxOW+GIjjcYHKCymt
	7zzF3i9oeGOyvAAfk673GHNPKfw095SLF2vkft1cVq1/dUFxX/IASkhq48hqFudJcyqMSoK5cl8Um
	NZo8PGgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0zuu-0000000B9H9-01UI;
	Wed, 16 Oct 2024 09:02:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0zui-0000000B9At-2Glf
	for barebox@lists.infradead.org;
	Wed, 16 Oct 2024 09:01:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0zuh-0005Lb-By
	for barebox@lists.infradead.org; Wed, 16 Oct 2024 11:01:51 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0zug-002EMI-Pn
	for barebox@lists.infradead.org; Wed, 16 Oct 2024 11:01:50 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0zug-00GdhR-2J
	for barebox@lists.infradead.org;
	Wed, 16 Oct 2024 11:01:50 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed, 16 Oct 2024 11:01:39 +0200
Message-Id: <20241016090150.3963002-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241016090150.3963002-1-a.fatoum@pengutronix.de>
References: <20241016090150.3963002-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241016_020152_716522_A5909DC4 
X-CRM114-Status: GOOD (  11.46  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 02/13] lib: random: add stubs for PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <ahmad@a3f.at>

To optimize out calls to undefined functions in PBL at compile-time
instead of link time, let's define stubs for the functions that
are referenced in obj-pbl-y files, but inside function sections
that are ultimately unreferenced.

We don't use IS_PROPER here as we want to fail the build in barebox
proper as before, when HWRNG support is missing.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 include/stdlib.h | 19 ++++++++++++++++++-
 1 file changed, 18 insertions(+), 1 deletion(-)

diff --git a/include/stdlib.h b/include/stdlib.h
index c427cbc87f6e..9d54241cf45d 100644
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
+#ifndef __PBL__
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



