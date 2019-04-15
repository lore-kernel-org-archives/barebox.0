Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hFpNa-0004yV-EA
 for barebox@lists.infradead.org; Mon, 15 Apr 2019 00:21:47 +0000
Received: by mail-pl1-x643.google.com with SMTP id w23so7683830ply.4
 for <barebox@lists.infradead.org>; Sun, 14 Apr 2019 17:21:45 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun, 14 Apr 2019 17:21:19 -0700
Message-Id: <20190415002121.15988-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 1/3] ARM: zii-vf610-dev: Use -fno-tree-switch-conversion
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
 arch/arm/boards/zii-vf610-dev/Makefile   |  1 +
 arch/arm/boards/zii-vf610-dev/lowlevel.c | 17 -----------------
 2 files changed, 1 insertion(+), 17 deletions(-)

diff --git a/arch/arm/boards/zii-vf610-dev/Makefile b/arch/arm/boards/zii-vf610-dev/Makefile
index 1297d815e..3c3a3f238 100644
--- a/arch/arm/boards/zii-vf610-dev/Makefile
+++ b/arch/arm/boards/zii-vf610-dev/Makefile
@@ -1,3 +1,4 @@
 obj-y += board.o
+CFLAGS_pbl-lowlevel.o := -fno-tree-switch-conversion -fno-jump-tables
 lwl-y += lowlevel.o
 bbenv-y += defaultenv-zii-vf610-dev
diff --git a/arch/arm/boards/zii-vf610-dev/lowlevel.c b/arch/arm/boards/zii-vf610-dev/lowlevel.c
index a1859eeae..b320fbc0c 100644
--- a/arch/arm/boards/zii-vf610-dev/lowlevel.c
+++ b/arch/arm/boards/zii-vf610-dev/lowlevel.c
@@ -95,23 +95,6 @@ ENTRY_FUNCTION(start_zii_vf610_dev, r0, r1, r2)
 
 	switch (system_type) {
 	default:
-		/*
-		 * GCC can be smart enough to, when DEBUG_LL is
-		 * disabled, reduce this switch statement to a LUT
-		 * fetch. Unfortunately here, this early in the boot
-		 * process before any relocation/address fixups could
-		 * happen, the address of that LUT used by the code is
-		 * incorrect and any access to it would result in
-		 * bogus values.
-		 *
-		 * Adding the following barrier() statement seem to
-		 * force the compiler to always translate this block
-		 * to a sequence of consecutive checks and jumps with
-		 * relative fetches, which should work with or without
-		 * relocation/fixups.
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
