Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY2l5-00005a-MT
 for barebox@lists.infradead.org; Mon, 11 May 2020 07:21:53 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 11 May 2020 09:21:20 +0200
Message-Id: <20200511072140.29610-4-a.fatoum@pengutronix.de>
In-Reply-To: <20200511072140.29610-1-a.fatoum@pengutronix.de>
References: <20200511072140.29610-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 03/23] sandbox: asm: bitsperlong.h: detect bitness according
 to 64BIT symbol
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>, Ahmad Fatoum <a.fatoum@pengutronix.de>

From: Ahmad Fatoum <ahmad@a3f.at>

Now that we have an accurate CONFIG_64BIT describing sandbox bitness,
we don't need to assume everything except __x86_64__ as 32-bit.

This assumes that sizeof(long) == sizeof(void *), which is assumed
anyway throughout the code base.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/sandbox/include/asm/bitsperlong.h | 11 +----------
 1 file changed, 1 insertion(+), 10 deletions(-)

diff --git a/arch/sandbox/include/asm/bitsperlong.h b/arch/sandbox/include/asm/bitsperlong.h
index 00c1fc2625b2..6dc0bb0c13b2 100644
--- a/arch/sandbox/include/asm/bitsperlong.h
+++ b/arch/sandbox/include/asm/bitsperlong.h
@@ -1,10 +1 @@
-#ifndef __ASM_BITSPERLONG_H
-#define __ASM_BITSPERLONG_H
-
-#ifdef __x86_64__
-#define BITS_PER_LONG 64
-#else
-#define BITS_PER_LONG 32
-#endif
-
-#endif /* __ASM_BITSPERLONG_H */
+#include <asm-generic/bitsperlong.h>
-- 
2.26.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
