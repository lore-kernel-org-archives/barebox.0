Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVCO5-0001nD-Mz
 for barebox@lists.infradead.org; Mon, 27 May 2019 09:57:52 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <afa@pengutronix.de>) id 1hVCO3-00022C-SB
 for barebox@lists.infradead.org; Mon, 27 May 2019 11:57:47 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1hVCO3-0003FJ-19
 for barebox@lists.infradead.org; Mon, 27 May 2019 11:57:47 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 27 May 2019 11:57:44 +0200
Message-Id: <20190527095744.5923-19-a.fatoum@pengutronix.de>
In-Reply-To: <20190527095744.5923-1-a.fatoum@pengutronix.de>
References: <20190527095744.5923-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 18/18] scripts: compiler.h: support BSDs as well
To: barebox@lists.infradead.org

The BSDs have their endianness changing functions in <sys/endian.h> and
define both _BYTE_ORDER as well as BYTE_ORDER (if strict POSIX conformance
isn't requested). Extend the header to compile, so it supports these
platforms as well.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 scripts/compiler.h | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/scripts/compiler.h b/scripts/compiler.h
index 01b0de44f18a..0ad25f9e8da9 100644
--- a/scripts/compiler.h
+++ b/scripts/compiler.h
@@ -56,16 +56,22 @@
 # else /* non apple __MACH__ */
 #  include <machine/endian.h>
 # endif /* __APPLE__ */
-# define __BYTE_ORDER    BYTE_ORDER
-# define __LITTLE_ENDIAN LITTLE_ENDIAN
-# define __BIG_ENDIAN    BIG_ENDIAN
 typedef unsigned long ulong;
 typedef unsigned int  uint;
+#elif defined(__OpenBSD__) || defined(__FreeBSD__) || \
+      defined(__NetBSD__) || defined(__DragonFly__)
+# include <sys/endian.h>
 #else /* assume Linux */
 # include <endian.h>
 # include <byteswap.h>
 #endif
 
+#if defined(__BYTE_ORDER) && !defined(BYTE_ORDER)
+# define __BYTE_ORDER    BYTE_ORDER
+# define __BIG_ENDIAN    BIG_ENDIAN
+# define __LITTLE_ENDIAN LITTLE_ENDIAN
+#endif
+
 typedef uint8_t __u8;
 typedef uint16_t __u16;
 typedef uint32_t __u32;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
