Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp48.i.mail.ru ([94.100.177.108])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1glAS8-0002UV-WB
 for barebox@lists.infradead.org; Sun, 20 Jan 2019 10:35:49 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sun, 20 Jan 2019 13:35:31 +0300
Message-Id: <20190120103533.7146-8-shc_work@mail.ru>
In-Reply-To: <20190120103533.7146-1-shc_work@mail.ru>
References: <20190120103533.7146-1-shc_work@mail.ru>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 08/10] PPC: delete unused asm/mc146818rtc.h
To: barebox@lists.infradead.org

This removes the stale asm/mc146818rtc.h include as there is no user of it.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/ppc/include/asm/mc146818rtc.h | 27 ---------------------------
 1 file changed, 27 deletions(-)
 delete mode 100644 arch/ppc/include/asm/mc146818rtc.h

diff --git a/arch/ppc/include/asm/mc146818rtc.h b/arch/ppc/include/asm/mc146818rtc.h
deleted file mode 100644
index adc4e24..0000000
--- a/arch/ppc/include/asm/mc146818rtc.h
+++ /dev/null
@@ -1,27 +0,0 @@
-/*
- * Machine dependent access functions for RTC registers.
- */
-#ifndef __ASM_PPC_MC146818RTC_H
-#define __ASM_PPC_MC146818RTC_H
-
-#include <io.h>
-
-#ifndef RTC_PORT
-#define RTC_PORT(x) (0x70 + (x))
-#define RTC_ALWAYS_BCD  1   /* RTC operates in binary mode */
-#endif
-
-/*
- * The yet supported machines all access the RTC index register via
- * an ISA port access but the way to access the date register differs ...
- */
-#define CMOS_READ(addr) ({ \
-outb_p((addr),RTC_PORT(0)); \
-inb_p(RTC_PORT(1)); \
-})
-#define CMOS_WRITE(val, addr) ({ \
-outb_p((addr),RTC_PORT(0)); \
-outb_p((val),RTC_PORT(1)); \
-})
-
-#endif /* __ASM_PPC_MC146818RTC_H */
-- 
2.10.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
