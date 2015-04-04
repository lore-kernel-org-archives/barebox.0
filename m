Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22c.google.com ([2a00:1450:4010:c04::22c])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YeOfk-0003Ni-0I
 for barebox@lists.infradead.org; Sat, 04 Apr 2015 14:03:40 +0000
Received: by lbbzk7 with SMTP id zk7so76975942lbb.0
 for <barebox@lists.infradead.org>; Sat, 04 Apr 2015 07:03:17 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sat,  4 Apr 2015 17:03:17 +0300
Message-Id: <1428156197-5305-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] make PBL_CONSOLE depend on PBL_IMAGE
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

PBL_CONSOLE option is used only for building PBL. See this output:

    barebox$ git grep PBL_CONSOLE
    arch/arm/configs/tx28stk5_defconfig:CONFIG_PBL_CONSOLE=y
    common/Kconfig:config PBL_CONSOLE
    common/Makefile:pbl-$(CONFIG_PBL_CONSOLE)       += memory_display.o
    include/printk.h:       (defined(__PBL__) && defined(CONFIG_PBL_CONSOLE))
    include/stdio.h:        (defined(__PBL__) && defined(CONFIG_PBL_CONSOLE))
    lib/Makefile:pbl-$(CONFIG_PBL_CONSOLE) += vsprintf.o
    pbl/Makefile:pbl-$(CONFIG_PBL_CONSOLE) += console.o

PBL_CONSOLE looks confusing in PBL-less configuration
so it's better to enable it only if PBL is enabled.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 common/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/common/Kconfig b/common/Kconfig
index d6a1fa7..15e581c 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -923,6 +923,7 @@ config DEBUG_INITCALLS
 	  If enabled this will print initcall traces.
 
 config PBL_CONSOLE
+	depends on PBL_IMAGE
 	depends on DEBUG_LL
 	depends on !CONSOLE_NONE
 	bool "Enable console support in PBL"
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
