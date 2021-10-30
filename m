Delivery-date: Sat, 30 Oct 2021 16:19:09 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mgpCP-0002Xy-DJ
	for lore@lore.pengutronix.de; Sat, 30 Oct 2021 16:19:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mgpCO-0007zc-EV
	for lore@pengutronix.de; Sat, 30 Oct 2021 16:19:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QZ+Ctm7MaTJF4pnFcQwurxVCR2RDTVZND7xx1rugbFo=; b=DlmeDHxLudcLID
	ACwpFLcXachLD/dolHhoIzwoayzKU9NW/ozH6M4kMXbH8kAyPEQJur3/MWhGdJcv5YOGL+fw69Ih8
	RBlwzNTXndxV/KJ8js0ZgRxBl1GSiqDK6I6BtIUhsSCylBakf4mcUsBaQ1eoSK0GwPimxTxqa1YW+
	9yQRkH9tpDok9aUyOylCfalgk6vf+NSoxwA4DzDGivW8kDwSc+YiQyubGMzbz2leAYHMiy+mVmnPH
	7egnYn7ryE1CqL6Au2EPA+MhhRrcFh1RDBbQrB/rV15CTqVhxI8JHLP2km/mWeqnJsBpGage5ulAQ
	bP7gGXWFoJfRA3IGrGVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mgpBB-00D8l1-76; Sat, 30 Oct 2021 14:17:53 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mgpB0-00D8hR-Bt
 for barebox@lists.infradead.org; Sat, 30 Oct 2021 14:17:45 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mgpAz-0007kT-5b; Sat, 30 Oct 2021 16:17:41 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1mgpAy-009GGg-Jm; Sat, 30 Oct 2021 16:17:40 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sat, 30 Oct 2021 16:17:36 +0200
Message-Id: <20211030141739.2207431-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211030141739.2207431-1-a.fatoum@pengutronix.de>
References: <20211030141739.2207431-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211030_071742_455486_648E68D9 
X-CRM114-Status: GOOD (  15.29  )
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
Subject: [PATCH 2/5] scripts: <linux/bitops.h>: fix references to undefined
 __BITS_PER_LONG
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

No where do we define __BITS_PER_LONG, but we know about BITS_PER_LONG.
Fix it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 scripts/include/asm-generic/bitops/__ffs.h  |  3 ++-
 scripts/include/asm-generic/bitops/atomic.h |  9 +++++----
 scripts/include/asm-generic/bitsperlong.h   | 12 ++++++++++++
 scripts/include/linux/bitops.h              |  7 +------
 4 files changed, 20 insertions(+), 11 deletions(-)
 create mode 100644 scripts/include/asm-generic/bitsperlong.h

diff --git a/scripts/include/asm-generic/bitops/__ffs.h b/scripts/include/asm-generic/bitops/__ffs.h
index c94175015a82..15ffaa12c592 100644
--- a/scripts/include/asm-generic/bitops/__ffs.h
+++ b/scripts/include/asm-generic/bitops/__ffs.h
@@ -2,6 +2,7 @@
 #define _TOOLS_LINUX_ASM_GENERIC_BITOPS___FFS_H_
 
 #include <asm/types.h>
+#include <asm-generic/bitsperlong.h>
 
 /**
  * __ffs - find first bit in word.
@@ -13,7 +14,7 @@ static __always_inline unsigned long __ffs(unsigned long word)
 {
 	int num = 0;
 
-#if __BITS_PER_LONG == 64
+#if BITS_PER_LONG == 64
 	if ((word & 0xffffffff) == 0) {
 		num += 32;
 		word >>= 32;
diff --git a/scripts/include/asm-generic/bitops/atomic.h b/scripts/include/asm-generic/bitops/atomic.h
index 4bccd7c3d5d6..03fe804024df 100644
--- a/scripts/include/asm-generic/bitops/atomic.h
+++ b/scripts/include/asm-generic/bitops/atomic.h
@@ -2,21 +2,22 @@
 #define _TOOLS_LINUX_ASM_GENERIC_BITOPS_ATOMIC_H_
 
 #include <asm/types.h>
+#include <asm-generic/bitsperlong.h>
 
 static inline void set_bit(int nr, unsigned long *addr)
 {
-	addr[nr / __BITS_PER_LONG] |= 1UL << (nr % __BITS_PER_LONG);
+	addr[nr / BITS_PER_LONG] |= 1UL << (nr % BITS_PER_LONG);
 }
 
 static inline void clear_bit(int nr, unsigned long *addr)
 {
-	addr[nr / __BITS_PER_LONG] &= ~(1UL << (nr % __BITS_PER_LONG));
+	addr[nr / BITS_PER_LONG] &= ~(1UL << (nr % BITS_PER_LONG));
 }
 
 static __always_inline int test_bit(unsigned int nr, const unsigned long *addr)
 {
-	return ((1UL << (nr % __BITS_PER_LONG)) &
-		(((unsigned long *)addr)[nr / __BITS_PER_LONG])) != 0;
+	return ((1UL << (nr % BITS_PER_LONG)) &
+		(((unsigned long *)addr)[nr / BITS_PER_LONG])) != 0;
 }
 
 #endif /* _TOOLS_LINUX_ASM_GENERIC_BITOPS_ATOMIC_H_ */
diff --git a/scripts/include/asm-generic/bitsperlong.h b/scripts/include/asm-generic/bitsperlong.h
new file mode 100644
index 000000000000..eb2dfd9065a7
--- /dev/null
+++ b/scripts/include/asm-generic/bitsperlong.h
@@ -0,0 +1,12 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+
+#ifndef __BITS_PER_LONG_H_
+#define __BITS_PER_LONG_H_
+
+#ifndef __WORDSIZE
+#define __WORDSIZE (__SIZEOF_LONG__ * 8)
+#endif
+
+#define BITS_PER_LONG __WORDSIZE
+
+#endif
diff --git a/scripts/include/linux/bitops.h b/scripts/include/linux/bitops.h
index c9ec614e0db6..60f5c5b4f927 100644
--- a/scripts/include/linux/bitops.h
+++ b/scripts/include/linux/bitops.h
@@ -4,12 +4,7 @@
 #include <asm/types.h>
 #include <linux/kernel.h>
 #include <linux/compiler.h>
-
-#ifndef __WORDSIZE
-#define __WORDSIZE (__SIZEOF_LONG__ * 8)
-#endif
-
-#define BITS_PER_LONG __WORDSIZE
+#include <asm-generic/bitsperlong.h>
 
 #define BIT_MASK(nr)		(1UL << ((nr) % BITS_PER_LONG))
 #define BIT_WORD(nr)		((nr) / BITS_PER_LONG)
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

