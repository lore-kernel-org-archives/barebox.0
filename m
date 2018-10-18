Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gD2GZ-0003LX-AH
 for barebox@lists.infradead.org; Thu, 18 Oct 2018 06:59:07 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 18 Oct 2018 08:58:19 +0200
Message-Id: <20181018065827.19973-13-s.hauer@pengutronix.de>
In-Reply-To: <20181018065827.19973-1-s.hauer@pengutronix.de>
References: <20181018065827.19973-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 12/20] ARM: boards: kontron-samx6i: Add include file to
 provide prototype
To: Barebox List <barebox@lists.infradead.org>

samx6i_get_size() is declared and used in two different C files.
Provide a header file for the prototype instead.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/kontron-samx6i/board.c    | 2 +-
 arch/arm/boards/kontron-samx6i/lowlevel.c | 2 +-
 arch/arm/boards/kontron-samx6i/mem.c      | 2 ++
 arch/arm/boards/kontron-samx6i/mem.h      | 6 ++++++
 4 files changed, 10 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm/boards/kontron-samx6i/mem.h

diff --git a/arch/arm/boards/kontron-samx6i/board.c b/arch/arm/boards/kontron-samx6i/board.c
index 01826b67d2..b4b0eac824 100644
--- a/arch/arm/boards/kontron-samx6i/board.c
+++ b/arch/arm/boards/kontron-samx6i/board.c
@@ -23,7 +23,7 @@
 
 #include <asm/armlinux.h>
 
-resource_size_t samx6i_get_size(void);
+#include "mem.h"
 
 /*
  * On this board the SDRAM size is always configured by pin selection.
diff --git a/arch/arm/boards/kontron-samx6i/lowlevel.c b/arch/arm/boards/kontron-samx6i/lowlevel.c
index 5c35007040..9742469e20 100644
--- a/arch/arm/boards/kontron-samx6i/lowlevel.c
+++ b/arch/arm/boards/kontron-samx6i/lowlevel.c
@@ -20,7 +20,7 @@
 #include <mach/imx6.h>
 #include <mach/esdctl.h>
 
-resource_size_t samx6i_get_size(void);
+#include "mem.h"
 
 static inline void setup_uart(void)
 {
diff --git a/arch/arm/boards/kontron-samx6i/mem.c b/arch/arm/boards/kontron-samx6i/mem.c
index ab9969e32c..3b9fbd464a 100644
--- a/arch/arm/boards/kontron-samx6i/mem.c
+++ b/arch/arm/boards/kontron-samx6i/mem.c
@@ -15,6 +15,8 @@
 #include <mach/imx-gpio.h>
 #include <mach/imx6.h>
 
+#include "mem.h"
+
 #define PCBVERSION_PIN IMX_GPIO_NR(2, 2)
 #define PCBID0_PIN IMX_GPIO_NR(6, 7)
 #define PCBID1_PIN IMX_GPIO_NR(6, 9)
diff --git a/arch/arm/boards/kontron-samx6i/mem.h b/arch/arm/boards/kontron-samx6i/mem.h
new file mode 100644
index 0000000000..252b82621d
--- /dev/null
+++ b/arch/arm/boards/kontron-samx6i/mem.h
@@ -0,0 +1,6 @@
+#ifndef __BOARD_KONTRON_SAMX6I_MEM_H
+#define __BOARD_KONTRON_SAMX6I_MEM_H
+
+resource_size_t samx6i_get_size(void);
+
+#endif /* __BOARD_KONTRON_SAMX6I_MEM_H */
\ No newline at end of file
-- 
2.19.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
