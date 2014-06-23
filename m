Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x234.google.com ([2a00:1450:4010:c04::234])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WzBgS-0006wy-R6
 for barebox@lists.infradead.org; Mon, 23 Jun 2014 21:21:49 +0000
Received: by mail-lb0-f180.google.com with SMTP id w7so5316175lbi.39
 for <barebox@lists.infradead.org>; Mon, 23 Jun 2014 14:21:26 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue, 24 Jun 2014 01:21:08 +0400
Message-Id: <1403558473-26199-3-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1403558473-26199-1-git-send-email-antonynpavlov@gmail.com>
References: <1403558473-26199-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 2/7] MIPS: add <asm/gpio.h> header file
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/include/asm/gpio.h | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/mips/include/asm/gpio.h b/arch/mips/include/asm/gpio.h
new file mode 100644
index 0000000..41a9589
--- /dev/null
+++ b/arch/mips/include/asm/gpio.h
@@ -0,0 +1,6 @@
+#ifndef _ARCH_MIPS_GPIO_H
+#define _ARCH_MIPS_GPIO_H
+
+#include <asm-generic/gpio.h>
+
+#endif /* _ARCH_MIPS_GPIO_H */
-- 
1.9.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
