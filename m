Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hFpNc-0004yv-Gm
 for barebox@lists.infradead.org; Mon, 15 Apr 2019 00:21:49 +0000
Received: by mail-pf1-x441.google.com with SMTP id 8so7697100pfr.4
 for <barebox@lists.infradead.org>; Sun, 14 Apr 2019 17:21:47 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun, 14 Apr 2019 17:21:21 -0700
Message-Id: <20190415002121.15988-3-andrew.smirnov@gmail.com>
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
Subject: [PATCH 3/3] ARM: zii-imx8mq-dev: Drop unnecessary barrier() in switch
 statement
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, Chris Healy <cphealy@gmail.com>, Heiner Kallweit <hkallweit1@gmail.com>

AArch64 uses PC-relative addressing instead of absolute one for data
lookups, so compiling switch statement into a LUT shouldn't be a
problem regardless if relocation happened or not. Disassembly of PBL
code looks almost exactly the same with or without this workaround, so
it is clearly not needed. Drop it.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Heiner Kallweit <hkallweit1@gmail.com>
Cc: Chris Healy <cphealy@gmail.com>
---
 arch/arm/boards/zii-imx8mq-dev/lowlevel.c | 7 -------
 1 file changed, 7 deletions(-)

diff --git a/arch/arm/boards/zii-imx8mq-dev/lowlevel.c b/arch/arm/boards/zii-imx8mq-dev/lowlevel.c
index 0fd2ddfca..33c007e05 100644
--- a/arch/arm/boards/zii-imx8mq-dev/lowlevel.c
+++ b/arch/arm/boards/zii-imx8mq-dev/lowlevel.c
@@ -179,13 +179,6 @@ ENTRY_FUNCTION(start_zii_imx8mq_dev, r0, r1, r2)
 
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
