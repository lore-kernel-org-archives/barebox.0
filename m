Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp02.smtpout.orange.fr ([80.12.242.124]
 helo=smtp.smtpout.orange.fr)
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a5LSS-0007z8-9u
 for barebox@lists.infradead.org; Sat, 05 Dec 2015 22:37:37 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
Date: Sat,  5 Dec 2015 23:37:05 +0100
Message-Id: <1449355025-20972-1-git-send-email-robert.jarzmik@free.fr>
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
Subject: [PATCH] ARM: pxa: pxa2xx use PSPR for resume address
To: barebox@lists.infradead.org

Both lubbock and mainstone suspend to RAM were broken by the same
typo. The linux kernel saves the resume address to PSPR, ie. the scratch
pad register, while it was PSSR which was checked in barebox.

Fixing this typo was tested on mainstone where resume from S3 works.

Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>
---
 arch/arm/boards/lubbock/lowlevel.c   | 2 +-
 arch/arm/boards/mainstone/lowlevel.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/lubbock/lowlevel.c b/arch/arm/boards/lubbock/lowlevel.c
index 3c8ae76..1c52b3e 100644
--- a/arch/arm/boards/lubbock/lowlevel.c
+++ b/arch/arm/boards/lubbock/lowlevel.c
@@ -171,7 +171,7 @@ static inline void pxa2xx_dram_init(void)
 
 void __bare_init __naked barebox_arm_reset_vector(void)
 {
-	unsigned long pssr = PSSR;
+	unsigned long pssr = PSPR;
 	unsigned long pc = get_pc();
 
 	arm_cpu_lowlevel_init();
diff --git a/arch/arm/boards/mainstone/lowlevel.c b/arch/arm/boards/mainstone/lowlevel.c
index 86bb09c..8983941 100644
--- a/arch/arm/boards/mainstone/lowlevel.c
+++ b/arch/arm/boards/mainstone/lowlevel.c
@@ -243,7 +243,7 @@ static inline void pxa2xx_dram_init(void)
 
 void __bare_init __naked barebox_arm_reset_vector(void)
 {
-	unsigned long pssr = PSSR;
+	unsigned long pssr = PSPR;
 	unsigned long pc = get_pc();
 
 	arm_cpu_lowlevel_init();
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
