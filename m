Delivery-date: Thu, 13 Jan 2022 17:06:10 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n82c6-001GNx-U2
	for lore@lore.pengutronix.de; Thu, 13 Jan 2022 17:06:10 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n82c5-0001kz-HA
	for lore@pengutronix.de; Thu, 13 Jan 2022 17:06:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4UunK8yERqLUF7UmlprpmXOq3f3DOKSaLH0paa3cix8=; b=PSqw83Ik1ZteQn
	vahwAf04PCEoQ14fc828FX5o6oyFLVv/9T2PY0B1l9ax9qU2ucG/qh3ZxYvxnFFRxHNAM7pQUc3VY
	ErsvtvWcySQpnpzetCn3kox2IjG2uYKdqN6IbloYSZsv2zia0auLKsRu0AjTHIJV9AAUcqElgNZoT
	J3u/0A7FQFtb44ega1t9AJUppVEHGplFyc6XbcJON/d3kZJmoWDBkEP3cxh8tSfKntu206LVZsKtN
	yqVQFcnF4kPtkR2AEf3UB9n/I6zlPmVP6DwwwKwAqMo27b/piaLJfOoPJH1Sf9WAIHGEAc3MUf5LA
	sBM4cJl42sq2nQZ04FHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n82aV-006SbU-Iz; Thu, 13 Jan 2022 16:04:31 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n82aO-006SaL-VB
 for barebox@lists.infradead.org; Thu, 13 Jan 2022 16:04:26 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1n82aF-0001Ct-Or; Thu, 13 Jan 2022 17:04:15 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1n82aF-00GaP2-9h; Thu, 13 Jan 2022 17:04:15 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 13 Jan 2022 17:04:12 +0100
Message-Id: <20220113160414.3943151-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220113_080425_027411_54ECC40B 
X-CRM114-Status: UNSURE (   8.84  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 1/3] tlsf: dump stack on assertion failure
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We only support AddressSanitizer on ARM, ARM64 and sandbox. For other
platforms TLSF assertions may detect some nconsistency, like some double
frees. Make the reports more useful by dumping stack in that case.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2: no change
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

