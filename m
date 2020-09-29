Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kNDL1-0004a2-FQ
 for barebox@lists.infradead.org; Tue, 29 Sep 2020 10:58:29 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 29 Sep 2020 12:58:22 +0200
Message-Id: <20200929105823.11542-4-a.fatoum@pengutronix.de>
In-Reply-To: <20200929105823.11542-1-a.fatoum@pengutronix.de>
References: <20200929105823.11542-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 4/5] include: asm-generic: bitio.h don't include
 <asm-generic/io.h> directly
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

<asm-generic/io.h> is not meant for direct inclusion. It provides
defaults for each arch's <asm/io.h> to fall back to.
Use <asm/io.h> instead.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/asm-generic/bitio.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/asm-generic/bitio.h b/include/asm-generic/bitio.h
index e88dbd7b8527..99b85da59c6d 100644
--- a/include/asm-generic/bitio.h
+++ b/include/asm-generic/bitio.h
@@ -3,7 +3,7 @@
 #ifndef __ASM_GENERIC_BITIO_H
 #define __ASM_GENERIC_BITIO_H
 
-#include <asm-generic/io.h>
+#include <asm/io.h>
 
 /*
  * Clear and set bits in one shot. These macros can be used to clear and
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
