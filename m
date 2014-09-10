Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22d.google.com ([2a00:1450:4010:c04::22d])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XRcYP-0003wH-Nn
 for barebox@lists.infradead.org; Wed, 10 Sep 2014 07:43:02 +0000
Received: by mail-lb0-f173.google.com with SMTP id w7so5319122lbi.4
 for <barebox@lists.infradead.org>; Wed, 10 Sep 2014 00:42:37 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed, 10 Sep 2014 11:42:18 +0400
Message-Id: <1410334946-12922-2-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1410334946-12922-1-git-send-email-antonynpavlov@gmail.com>
References: <1410334946-12922-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 1/9] common.h: use special IOMEM() for MIPS
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 include/common.h | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/include/common.h b/include/common.h
index de63571..fca9798 100644
--- a/include/common.h
+++ b/include/common.h
@@ -271,7 +271,13 @@ void barebox_set_model(const char *);
 const char *barebox_get_hostname(void);
 void barebox_set_hostname(const char *);
 
+#if defined(CONFIG_MIPS)
+#include <asm/addrspace.h>
+
+#define IOMEM(addr)	((void __force __iomem *)CKSEG1ADDR(addr))
+#else
 #define IOMEM(addr)	((void __force __iomem *)(addr))
+#endif
 
 #define DIV_ROUND_UP(n,d)	(((n) + (d) - 1) / (d))
 
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
