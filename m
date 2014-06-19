Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x232.google.com ([2a00:1450:4010:c03::232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WxjtV-0005mg-8Y
 for barebox@lists.infradead.org; Thu, 19 Jun 2014 21:29:17 +0000
Received: by mail-la0-f50.google.com with SMTP id pv20so1861454lab.9
 for <barebox@lists.infradead.org>; Thu, 19 Jun 2014 14:28:54 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri, 20 Jun 2014 01:28:37 +0400
Message-Id: <1403213320-28750-2-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1403213320-28750-1-git-send-email-antonynpavlov@gmail.com>
References: <1403213320-28750-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 1/4] ARM: versatile: drop redundant <mach/gpio.h>
To: barebox@lists.infradead.org

The arch/arm/include/asm/gpio.h header file contains

  #ifndef CONFIG_GPIOLIB
  #include <mach/gpio.h>
  #else
  #include <asm-generic/gpio.h>
  #endif

We use CONFIG_GPIOLIB=y for the only mach-versatile
Versatile/PB board so there is no need of <mach/gpio.h>.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/arm/mach-versatile/include/mach/gpio.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/mach-versatile/include/mach/gpio.h b/arch/arm/mach-versatile/include/mach/gpio.h
deleted file mode 100644
index 306ab4c..0000000
--- a/arch/arm/mach-versatile/include/mach/gpio.h
+++ /dev/null
@@ -1 +0,0 @@
-#include <asm-generic/gpio.h>
-- 
1.9.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
