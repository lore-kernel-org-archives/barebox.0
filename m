Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVCO5-0001n4-Mp
 for barebox@lists.infradead.org; Mon, 27 May 2019 09:57:55 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <afa@pengutronix.de>) id 1hVCO3-000220-L3
 for barebox@lists.infradead.org; Mon, 27 May 2019 11:57:47 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1hVCO2-0003D5-RN
 for barebox@lists.infradead.org; Mon, 27 May 2019 11:57:46 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 27 May 2019 11:57:32 +0200
Message-Id: <20190527095744.5923-7-a.fatoum@pengutronix.de>
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
Subject: [PATCH 06/18] scripts: don't depend on system <asm/types.h>
To: barebox@lists.infradead.org

If we compile on non-Linux hosts, we can't assume this header to be
available. Thus typedef loff_t and [su](8|16|32|64) ourselves.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 scripts/include/linux/types.h | 14 ++++++++++++--
 1 file changed, 12 insertions(+), 2 deletions(-)

diff --git a/scripts/include/linux/types.h b/scripts/include/linux/types.h
index 8ebf6278b2ef..e81d7e810126 100644
--- a/scripts/include/linux/types.h
+++ b/scripts/include/linux/types.h
@@ -5,8 +5,18 @@
 #include <stddef.h>
 #include <stdint.h>
 
-#define __SANE_USERSPACE_TYPES__	/* For PPC64, to get LL64 types */
-#include <asm/types.h>
+typedef uint64_t __u64;
+typedef int64_t __s64;
+typedef uint32_t __u32;
+typedef int32_t __s32;
+typedef uint16_t __u16;
+typedef int16_t __s16;
+typedef uint8_t __u8;
+typedef int8_t __s8;
+
+#ifndef __linux__
+typedef long long loff_t;
+#endif
 
 struct page;
 struct kmem_cache;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
