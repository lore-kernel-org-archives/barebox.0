Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x242.google.com ([2607:f8b0:400e:c05::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fBwGs-0006xd-7i
 for barebox@lists.infradead.org; Fri, 27 Apr 2018 05:50:15 +0000
Received: by mail-pg0-x242.google.com with SMTP id b9-v6so704903pgf.6
 for <barebox@lists.infradead.org>; Thu, 26 Apr 2018 22:50:04 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 26 Apr 2018 22:49:42 -0700
Message-Id: <20180427054946.11687-3-andrew.smirnov@gmail.com>
In-Reply-To: <20180427054946.11687-1-andrew.smirnov@gmail.com>
References: <20180427054946.11687-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 2/6] ARM: i.MX: Fix incorrect IMX_SRC_SRSR_CSU_RESET
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

IMX_SRC_SRSR_CSU_RESET is bit 2, not 1.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/include/mach/reset-reason.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/include/mach/reset-reason.h b/arch/arm/mach-imx/include/mach/reset-reason.h
index 4919f68d5..23e73d3b5 100644
--- a/arch/arm/mach-imx/include/mach/reset-reason.h
+++ b/arch/arm/mach-imx/include/mach/reset-reason.h
@@ -4,7 +4,7 @@
 #include <reset_source.h>
 
 #define IMX_SRC_SRSR_IPP_RESET		BIT(0)
-#define IMX_SRC_SRSR_CSU_RESET		BIT(1)
+#define IMX_SRC_SRSR_CSU_RESET		BIT(2)
 #define IMX_SRC_SRSR_IPP_USER_RESET	BIT(3)
 #define IMX_SRC_SRSR_WDOG1_RESET	BIT(4)
 #define IMX_SRC_SRSR_JTAG_RESET		BIT(5)
-- 
2.14.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
