Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-f171.google.com ([209.85.212.171])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TKGSZ-0005N5-LA
 for barebox@lists.infradead.org; Fri, 05 Oct 2012 22:33:32 +0000
Received: by mail-wi0-f171.google.com with SMTP id hj13so1047058wib.0
 for <barebox@lists.infradead.org>; Fri, 05 Oct 2012 15:33:30 -0700 (PDT)
From: vj <vicencb@gmail.com>
Date: Sat,  6 Oct 2012 00:33:03 +0200
Message-Id: <1349476393-25520-2-git-send-email-vicencb@gmail.com>
In-Reply-To: <1349476393-25520-1-git-send-email-vicencb@gmail.com>
References: <1349476393-25520-1-git-send-email-vicencb@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 01/11] regression: reset can not return
To: barebox@lists.infradead.org
Cc: vj <vicencb@gmail.com>


Signed-off-by: vj <vicencb@gmail.com>
---
 arch/arm/boards/friendlyarm-tiny210/lowlevel.c | 2 +-
 arch/arm/boards/panda/lowlevel.c               | 2 +-
 arch/arm/boards/pcm049/lowlevel.c              | 2 +-
 arch/arm/boards/phycard-a-xl2/lowlevel.c       | 2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boards/friendlyarm-tiny210/lowlevel.c b/arch/arm/boards/friendlyarm-tiny210/lowlevel.c
index 791918a..695f97d 100644
--- a/arch/arm/boards/friendlyarm-tiny210/lowlevel.c
+++ b/arch/arm/boards/friendlyarm-tiny210/lowlevel.c
@@ -61,7 +61,7 @@ void __bare_init reset(void)
 #endif
 
 	if (get_pc() < 0xD0000000) /* Are we running from iRAM? */
-		return; /* No, we don't. */
+		board_init_lowlevel_return(); /* No, we don't. */
 
 	s5p_init_dram_bank_ddr2(S5P_DMC0_BASE, 0x20E00323, 0, 0);
 
diff --git a/arch/arm/boards/panda/lowlevel.c b/arch/arm/boards/panda/lowlevel.c
index 3a24148..33d06be 100644
--- a/arch/arm/boards/panda/lowlevel.c
+++ b/arch/arm/boards/panda/lowlevel.c
@@ -81,7 +81,7 @@ void reset(void)
 	common_reset();
 
 	if (get_pc() > 0x80000000)
-		return;
+		board_init_lowlevel_return();
 
 	r = 0x4030d000;
 	__asm__ __volatile__("mov sp, %0" : : "r"(r));
diff --git a/arch/arm/boards/pcm049/lowlevel.c b/arch/arm/boards/pcm049/lowlevel.c
index 20e40c5..c3fc6c7 100644
--- a/arch/arm/boards/pcm049/lowlevel.c
+++ b/arch/arm/boards/pcm049/lowlevel.c
@@ -91,7 +91,7 @@ void reset(void)
 	common_reset();
 
 	if (get_pc() > 0x80000000)
-		return;
+		board_init_lowlevel_return();
 
 	r = 0x4030d000;
 	__asm__ __volatile__("mov sp, %0" : : "r"(r));
diff --git a/arch/arm/boards/phycard-a-xl2/lowlevel.c b/arch/arm/boards/phycard-a-xl2/lowlevel.c
index d472347..24b4ab8 100644
--- a/arch/arm/boards/phycard-a-xl2/lowlevel.c
+++ b/arch/arm/boards/phycard-a-xl2/lowlevel.c
@@ -91,7 +91,7 @@ void reset(void)
 	common_reset();
 
 	if (get_pc() > 0x80000000)
-		return;
+		board_init_lowlevel_return();
 
 	r = 0x4030d000;
 	__asm__ __volatile__("mov sp, %0" : : "r"(r));
-- 
1.7.12.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
