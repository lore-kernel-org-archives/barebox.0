Delivery-date: Tue, 10 Sep 2024 10:53:27 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1snwcp-0036Nf-1V
	for lore@lore.pengutronix.de;
	Tue, 10 Sep 2024 10:53:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1snwco-0000WJ-5i
	for lore@pengutronix.de; Tue, 10 Sep 2024 10:53:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=90ELo3MjYpDPMw7BDMS56aBd556tisEJlu/ImLsQzCI=; b=o1VcgyjYghsK8rsyGy51GCCYmR
	C7MbKT9Ph6ipyzBz126Q7GPuwwETx9cwj2n+f906aVZy9oc7ICX+fFnGYBq5r/I6d3PcJq6g8O1DK
	etedH4io2iikzSbM/cPvLsqqEckmeZ2BfgIdiAZtzbTHGGial6cXnZBsEAQyDbrOfKH6odq3IvwS9
	YXD0PrD0KXrRgeb7jUwwDaJfdQVhB8mcwsx1s5rCazuemO78YfdtXHmPfzYioTj6eyvNyOJygV4Qo
	mY/k6dlPpKo+95vfE876t9BqsGxpAf4fEZcwnH9t7cOpt4YRAFiCGAbKksK5C8SsuJuGm2RlnHEBL
	YYRMTO/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snwcN-00000004tCp-2eAr;
	Tue, 10 Sep 2024 08:52:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snwcJ-00000004t9w-3Aoo
	for barebox@lists.infradead.org;
	Tue, 10 Sep 2024 08:52:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1snwcI-0000FE-Bv; Tue, 10 Sep 2024 10:52:54 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1snwcH-006r7S-VU; Tue, 10 Sep 2024 10:52:53 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1snwcH-000CGs-1N;
	Tue, 10 Sep 2024 10:52:53 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 10 Sep 2024 10:52:52 +0200
Message-Id: <20240910085253.46286-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240910_015255_830778_D810A0DA 
X-CRM114-Status: GOOD (  12.83  )
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
Subject: [PATCH 1/2] lib: drop separate int_sqrt.h header
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Linux defines int_sqrt in linux/math.h and has the implementations in
lib/math. We have both these locations, so move the existing code over
to simplify future sync of math functions.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/fbtest.c         | 2 +-
 include/int_sqrt.h        | 8 --------
 include/linux/math.h      | 2 ++
 lib/Makefile              | 1 -
 lib/math/Makefile         | 1 +
 lib/{ => math}/int_sqrt.c | 4 ++--
 6 files changed, 6 insertions(+), 12 deletions(-)
 delete mode 100644 include/int_sqrt.h
 rename lib/{ => math}/int_sqrt.c (94%)

diff --git a/commands/fbtest.c b/commands/fbtest.c
index be1540d3d170..cee72b039371 100644
--- a/commands/fbtest.c
+++ b/commands/fbtest.c
@@ -9,7 +9,7 @@
 #include <gui/graphic_utils.h>
 #include <gui/2d-primitives.h>
 #include <linux/gcd.h>
-#include <int_sqrt.h>
+#include <linux/math.h>
 
 static void fbtest_pattern_solid(struct screen *sc, u32 color)
 {
diff --git a/include/int_sqrt.h b/include/int_sqrt.h
deleted file mode 100644
index d5dfd29ca088..000000000000
--- a/include/int_sqrt.h
+++ /dev/null
@@ -1,8 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-or-later */
-
-#ifndef __INT_SQRT__
-#define __INT_SQRT__
-
-unsigned long int_sqrt(unsigned long x);
-
-#endif
diff --git a/include/linux/math.h b/include/linux/math.h
index f5d5cc714c4e..48417aca7635 100644
--- a/include/linux/math.h
+++ b/include/linux/math.h
@@ -81,4 +81,6 @@
 		(__x < 0) ? -__x : __x;         \
 	})
 
+unsigned long int_sqrt(unsigned long);
+
 #endif
diff --git a/lib/Makefile b/lib/Makefile
index 19d3a235dda5..41aed121267c 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -76,7 +76,6 @@ obj-$(CONFIG_RATP)	+= ratp.o
 obj-$(CONFIG_DEBUG_LIST) += list_debug.o
 obj-y			+= list_sort.o
 obj-y			+= refcount.o
-obj-y			+= int_sqrt.o
 obj-y			+= parseopt.o
 obj-y			+= clz_ctz.o
 obj-$(CONFIG_CRC_CCITT) += crc-ccitt.o
diff --git a/lib/math/Makefile b/lib/math/Makefile
index 2830dedb2ff9..71ab2b108689 100644
--- a/lib/math/Makefile
+++ b/lib/math/Makefile
@@ -3,3 +3,4 @@
 obj-y += div64.o
 pbl-y += div64.o
 obj-y += rational.o
+obj-y += int_sqrt.o
diff --git a/lib/int_sqrt.c b/lib/math/int_sqrt.c
similarity index 94%
rename from lib/int_sqrt.c
rename to lib/math/int_sqrt.c
index 24b3d5078299..105656d04661 100644
--- a/lib/int_sqrt.c
+++ b/lib/math/int_sqrt.c
@@ -11,8 +11,8 @@
  *
  */
 
-#include <common.h>
-#include <int_sqrt.h>
+#include <linux/math.h>
+#include <linux/export.h>
 
 /**
  * int_sqrt - rough approximation to sqrt
-- 
2.39.2



