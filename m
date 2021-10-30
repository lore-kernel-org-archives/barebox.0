Delivery-date: Sat, 30 Oct 2021 16:19:03 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mgpCJ-0002X6-OG
	for lore@lore.pengutronix.de; Sat, 30 Oct 2021 16:19:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mgpCI-0007yH-Mh
	for lore@pengutronix.de; Sat, 30 Oct 2021 16:19:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Fq7SI5/hP3TM59mSLE8z4k/W8paDFohpihRli9NnM3s=; b=U0G1GOrrqCZLNa
	JN51irXUPzieyChmtrTaNAMcPYs6tnMUMqr0C9fCpuzvKC7mSQRITpLlo72eRLloe204fEGDRHs8q
	39i8X3k5DtNzMrDJYJp3btSRGUwbPAFu7K1q8yxU/bNqkJAOHHyrrC07a4sgGCOZRnyZxWsqDEDq/
	RWgaYdeqAx1U+PJGJBAvKIZE9xgrBVYWRSdwBpM8vrtQ6d8J694ammrtuv7YlVWDT+NiLQC3Py9XO
	gh6ZUqKQv/6O+1NfkekWzhY9O8sdynh7puCyrjuKygSGyHlIGSqCiEBEfZFXW7ZkMKnD2bvT9TScH
	aWFEgr9ntufO5qVqTGpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mgpB5-00D8jH-Mm; Sat, 30 Oct 2021 14:17:47 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mgpB0-00D8hP-AO
 for barebox@lists.infradead.org; Sat, 30 Oct 2021 14:17:43 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mgpAz-0007kS-3P; Sat, 30 Oct 2021 16:17:41 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1mgpAy-009GGe-JG; Sat, 30 Oct 2021 16:17:40 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sat, 30 Oct 2021 16:17:35 +0200
Message-Id: <20211030141739.2207431-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211030_071742_387763_07D80236 
X-CRM114-Status: GOOD (  11.74  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/5] include: <linux/bitops.h>: discard left-over hweight code
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

There are no definitions for __sw_hweight*, so no point in keeping the
prototypes around. The scripts version of the header also ultimately
tries to access non-existing normal headers, so fix that up as well.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/linux/bitops.h                             | 5 -----
 scripts/include/asm-generic/bitops/arch_hweight.h  | 1 -
 scripts/include/asm-generic/bitops/const_hweight.h | 1 -
 scripts/include/asm-generic/bitops/hweight.h       | 3 +--
 scripts/include/linux/bitops.h                     | 4 ----
 5 files changed, 1 insertion(+), 13 deletions(-)
 delete mode 100644 scripts/include/asm-generic/bitops/arch_hweight.h
 delete mode 100644 scripts/include/asm-generic/bitops/const_hweight.h

diff --git a/include/linux/bitops.h b/include/linux/bitops.h
index 31345c219d33..dd13bf93118c 100644
--- a/include/linux/bitops.h
+++ b/include/linux/bitops.h
@@ -24,11 +24,6 @@
 #define GENMASK_ULL(h, l) \
 	(((~0ULL) << (l)) & (~0ULL >> (BITS_PER_LONG_LONG - 1 - (h))))
 
-extern unsigned int __sw_hweight8(unsigned int w);
-extern unsigned int __sw_hweight16(unsigned int w);
-extern unsigned int __sw_hweight32(unsigned int w);
-extern unsigned long __sw_hweight64(__u64 w);
-
 /*
  * Include this here because some architectures need generic_ffs/fls in
  * scope
diff --git a/scripts/include/asm-generic/bitops/arch_hweight.h b/scripts/include/asm-generic/bitops/arch_hweight.h
deleted file mode 100644
index 318bb2b202b0..000000000000
--- a/scripts/include/asm-generic/bitops/arch_hweight.h
+++ /dev/null
@@ -1 +0,0 @@
-#include "../../../../include/asm-generic/bitops/arch_hweight.h"
diff --git a/scripts/include/asm-generic/bitops/const_hweight.h b/scripts/include/asm-generic/bitops/const_hweight.h
deleted file mode 100644
index 0afd644aff83..000000000000
--- a/scripts/include/asm-generic/bitops/const_hweight.h
+++ /dev/null
@@ -1 +0,0 @@
-#include "../../../../include/asm-generic/bitops/const_hweight.h"
diff --git a/scripts/include/asm-generic/bitops/hweight.h b/scripts/include/asm-generic/bitops/hweight.h
index 290120c01a8e..eb95ca33d5c0 100644
--- a/scripts/include/asm-generic/bitops/hweight.h
+++ b/scripts/include/asm-generic/bitops/hweight.h
@@ -1,7 +1,6 @@
 #ifndef _TOOLS_LINUX_ASM_GENERIC_BITOPS_HWEIGHT_H_
 #define _TOOLS_LINUX_ASM_GENERIC_BITOPS_HWEIGHT_H_
 
-#include <asm-generic/bitops/arch_hweight.h>
-#include <asm-generic/bitops/const_hweight.h>
+#include "../../../../include/asm-generic/bitops/hweight.h"
 
 #endif /* _TOOLS_LINUX_ASM_GENERIC_BITOPS_HWEIGHT_H_ */
diff --git a/scripts/include/linux/bitops.h b/scripts/include/linux/bitops.h
index 5ad9ee1dd7f6..c9ec614e0db6 100644
--- a/scripts/include/linux/bitops.h
+++ b/scripts/include/linux/bitops.h
@@ -19,10 +19,6 @@
 #define BITS_TO_U32(nr)		DIV_ROUND_UP(nr, BITS_PER_BYTE * sizeof(u32))
 #define BITS_TO_BYTES(nr)	DIV_ROUND_UP(nr, BITS_PER_BYTE)
 
-extern unsigned int __sw_hweight8(unsigned int w);
-extern unsigned int __sw_hweight16(unsigned int w);
-extern unsigned int __sw_hweight32(unsigned int w);
-extern unsigned long __sw_hweight64(__u64 w);
 
 /*
  * Include this here because some architectures need generic_ffs/fls in
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

