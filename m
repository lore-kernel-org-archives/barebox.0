Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ob0-x231.google.com ([2607:f8b0:4003:c01::231])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZAA3V-0005uA-1d
 for barebox@lists.infradead.org; Wed, 01 Jul 2015 04:55:30 +0000
Received: by obdbs4 with SMTP id bs4so21010485obd.3
 for <barebox@lists.infradead.org>; Tue, 30 Jun 2015 21:55:07 -0700 (PDT)
MIME-Version: 1.0
Date: Wed, 1 Jul 2015 07:55:05 +0300
Message-ID: <CAA4bVAH3Qk2Fmv5X9fdkqto+b2D+qyXMXQenaffyau_Oc_ewkA@mail.gmail.com>
From: Antony Pavlov <antonynpavlov@gmail.com>
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
Subject: big-endian sandbox issue
To: barebox <barebox@lists.infradead.org>, Sascha Hauer <s.hauer@pengutronix.de>

Hi!

I have tried to build barebox on big-endian MIPS CPU running Debian 8.
It fails because of unconditional <linux/byteorder/little_endian.h> inclusion.

At the first glance this can help:

--- a/arch/sandbox/include/asm/byteorder.h
+++ b/arch/sandbox/include/asm/byteorder.h
@@ -3,6 +3,12 @@

 #include <asm/types.h>

+#if __BYTE_ORDER__ == __ORDER_BIG_ENDIAN__
+#include <linux/byteorder/big_endian.h>
+#elif __BYTE_ORDER__ == __ORDER_LITTLE_ENDIAN__
 #include <linux/byteorder/little_endian.h>
+#else
+#error "__BYTE_ORDER__ != __ORDER_BIG_ENDIAN__ and __BYTE_ORDER__ !=
__ORDER_LITTLE_ENDIAN__"
+#endif

 #endif /* _I386_BYTEORDER_H */

But some warning appears:

In file included from common/filetype.c:21:0:
/barebox.git/arch/sandbox/include/asm/unaligned.h:11:21: warning:
"__LITTLE_ENDIAN" is not defined [-Wundef]
 #if __BYTE_ORDER == __LITTLE_ENDIAN

System-wide <endian.h> can fix the situation, but we use -nostdinc, so
the error occurs:

barebox.git/arch/sandbox/include/asm/byteorder.h:7:20: fatal error:
endian.h: No such file or directory
 #include <endian.h>
                    ^
compilation terminated.

Moreover AFAIR <endian.h> isn't available on BSD, so '#if
defined(__linux__)' has to be used.


Any suggestions?

-- 
Best regards,
  Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
