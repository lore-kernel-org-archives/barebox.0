Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hFpNa-0004yW-PH
 for barebox@lists.infradead.org; Mon, 15 Apr 2019 00:21:48 +0000
Received: by mail-pf1-x444.google.com with SMTP id c8so7675321pfd.10
 for <barebox@lists.infradead.org>; Sun, 14 Apr 2019 17:21:46 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun, 14 Apr 2019 17:21:20 -0700
Message-Id: <20190415002121.15988-2-andrew.smirnov@gmail.com>
In-Reply-To: <20190415002121.15988-1-andrew.smirnov@gmail.com>
References: <20190415002121.15988-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 2/3] ARM: zii-imx51-rdu1: Use -fno-tree-switch-conversion
 -fno-jump-tables
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, Chris Healy <cphealy@gmail.com>, Heiner Kallweit <hkallweit1@gmail.com>

Original and very poor workaround no longer works against GCC8, so
drop it and replace with a proper solution that should've been used in
the first place - specifying -fno-tree-switch-conversion
-fno-jump-tables as CFLAGS when building lowlevel.c

Tested to work with:

    - GCC 8.2.1 (arm-none-eabi)
    - GCC 7.1.0 (arm-none-eabi)
    - GCC 4.8.4 (armv7l-timesys-linux-gnueabihf)

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Heiner Kallweit <hkallweit1@gmail.com>
Cc: Chris Healy <cphealy@gmail.com>
---
 arch/arm/boards/zii-imx51-rdu1/Makefile   | 1 +
 arch/arm/boards/zii-imx51-rdu1/lowlevel.c | 7 -------
 2 files changed, 1 insertion(+), 7 deletions(-)

diff --git a/arch/arm/boards/zii-imx51-rdu1/Makefile b/arch/arm/boards/zii-imx51-rdu1/Makefile
index 7f2569bda..a17cf5684 100644
--- a/arch/arm/boards/zii-imx51-rdu1/Makefile
+++ b/arch/arm/boards/zii-imx51-rdu1/Makefile
@@ -1,3 +1,4 @@
 obj-y += board.o
+CFLAGS_pbl-lowlevel.o := -fno-tree-switch-conversion -fno-jump-tables
 lwl-y += lowlevel.o
 bbenv-y += defaultenv-rdu1
diff --git a/arch/arm/boards/zii-imx51-rdu1/lowlevel.c b/arch/arm/boards/zii-imx51-rdu1/lowlevel.c
index 849c5624c..da05b0564 100644
--- a/arch/arm/boards/zii-imx51-rdu1/lowlevel.c
+++ b/arch/arm/boards/zii-imx51-rdu1/lowlevel.c
@@ -84,13 +84,6 @@ ENTRY_FUNCTION(start_imx51_zii_rdu1, r0, r1, r2)
 
 	switch (system_type) {
 	default:
-		/*
-		 * see similar code in
-		 * arch/arm/boards/zii-vf610-dev/lowlevel.c for
-		 * reasoning for placing barrier() below.
-		 */
-		barrier();
-
 		if (IS_ENABLED(CONFIG_DEBUG_LL)) {
 			relocate_to_current_adr();
 			setup_c();
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
