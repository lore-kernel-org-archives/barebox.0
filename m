Delivery-date: Sat, 08 Jan 2022 18:15:54 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n6FJq-00EcbA-RF
	for lore@lore.pengutronix.de; Sat, 08 Jan 2022 18:15:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n6FJp-0004Ja-Im
	for lore@pengutronix.de; Sat, 08 Jan 2022 18:15:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jrJq0RA2e7SpiNxH+8xJIaaUBZGGeXwM3g7MpjHA0uw=; b=RprgVu1mf/AcP4
	UpWktbMbI2e+JbnpCsO19tBpWT27OcJ0d1bgemonJ7j5lDIP4PuxCo9EGIpbhOA9x877bOSN7Rlxu
	ZcrYuzYEKIo7p7IPAz7kLEiHjZNJssRwoLN0Yvvg+63rq4i2zdkhRJjjsEixx3ktsnAtygK0hoByJ
	8dJhDcP5hUSSt2CBMaSrVY9hDD3VGA8gPQ8ScgrGzFOHKlCL3/06Fc/bUVsp24eUdNydxQFwrAL8m
	518bJ+xT8G++X69TT1UCMGHwVPUoSiP04z8S8IpzR1xPHaUvbKU5T5Mm0z4RNVdt08Epup1ejjHYR
	YRTQohXbh7wn/rNHgNbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n6FIY-006jFx-7y; Sat, 08 Jan 2022 17:14:34 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n6FIT-006jEu-P1
 for barebox@lists.infradead.org; Sat, 08 Jan 2022 17:14:30 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1n6FIS-0003rD-I1; Sat, 08 Jan 2022 18:14:28 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1n6FIS-002SXq-0V; Sat, 08 Jan 2022 18:14:28 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sat,  8 Jan 2022 18:14:24 +0100
Message-Id: <20220108171426.586330-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220108_091429_832540_EB413CE3 
X-CRM114-Status: UNSURE (   8.56  )
X-CRM114-Notice: Please train this message.
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/3] tlsf: dump stack on assertion failure
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We only support AddressSanitizer on ARM, ARM64 and sandbox. For other
platforms TLSF assertions may detect some nconsistency, like some double
frees. Make the reports more useful by dumping stack in that case.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/tlsf.h | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/include/tlsf.h b/include/tlsf.h
index 7015de0eb525..161176d5ac84 100644
--- a/include/tlsf.h
+++ b/include/tlsf.h
@@ -42,9 +42,12 @@
 extern "C" {
 #endif
 
+#include <printk.h>
+
 #define tlsf_assert(expr) do {                              \
         if (unlikely(!(expr))) {                            \
                 printf(#expr "%s %d\n", __FILE__, __LINE__); \
+                dump_stack();                               \
         }                                                   \
 } while (0)
 
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

