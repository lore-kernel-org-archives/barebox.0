Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVCOA-0001nG-HX
 for barebox@lists.infradead.org; Mon, 27 May 2019 09:57:57 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <afa@pengutronix.de>) id 1hVCO3-00022B-VM
 for barebox@lists.infradead.org; Mon, 27 May 2019 11:57:47 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1hVCO3-0003FA-0h
 for barebox@lists.infradead.org; Mon, 27 May 2019 11:57:47 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 27 May 2019 11:57:43 +0200
Message-Id: <20190527095744.5923-18-a.fatoum@pengutronix.de>
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
Subject: [PATCH 17/18] scripts: compiler.h: use Linux <endian.h> as default
To: barebox@lists.infradead.org

Other systems mimic the GNU endianness headers, e.g. Cygwin. Instead of
explicitly listing them, just make the Linux case the default case by
moving it into the #else clause.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 scripts/compiler.h | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/scripts/compiler.h b/scripts/compiler.h
index ee2097aa3691..01b0de44f18a 100644
--- a/scripts/compiler.h
+++ b/scripts/compiler.h
@@ -38,10 +38,7 @@
 #define O_BINARY	0
 #endif
 
-#ifdef __linux__
-# include <endian.h>
-# include <byteswap.h>
-#elif defined(__MACH__)
+#if defined(__MACH__)
 # ifdef __APPLE__
 #  include <libkern/OSByteOrder.h>
 #  define htobe16(x) OSSwapHostToBigInt16(x)
@@ -64,6 +61,9 @@
 # define __BIG_ENDIAN    BIG_ENDIAN
 typedef unsigned long ulong;
 typedef unsigned int  uint;
+#else /* assume Linux */
+# include <endian.h>
+# include <byteswap.h>
 #endif
 
 typedef uint8_t __u8;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
