Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-f171.google.com ([209.85.212.171])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U4CdY-0003Fc-OM
 for barebox@lists.infradead.org; Sat, 09 Feb 2013 15:46:45 +0000
Received: by mail-wi0-f171.google.com with SMTP id hn17so1866148wib.10
 for <barebox@lists.infradead.org>; Sat, 09 Feb 2013 07:46:42 -0800 (PST)
From: Vicente Bergas <vicencb@gmail.com>
Date: Sat,  9 Feb 2013 16:45:47 +0100
Message-Id: <1360424747-9099-1-git-send-email-vicencb@gmail.com>
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
Subject: [PATCH] ArchosG9: solve regression in second stage lowlevel init
To: barebox@lists.infradead.org
Cc: Vicente Bergas <vicencb@gmail.com>

 On ArchosG9 the second stage low-level init was the fallback default.
 Now that the low-level init is forcibly enabled it has to be skipped
 when already executed from first stage.

Signed-off-by: Vicente Bergas <vicencb@gmail.com>
---
 arch/arm/boards/archosg9/lowlevel.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/archosg9/lowlevel.c b/arch/arm/boards/archosg9/lowlevel.c
index 552268f..0334693 100644
--- a/arch/arm/boards/archosg9/lowlevel.c
+++ b/arch/arm/boards/archosg9/lowlevel.c
@@ -63,15 +63,18 @@ static noinline void archosg9_init_lowlevel(void)
 	omap4_configure_usb_dpll(&usb);
 
 	omap4_ddr_init(&ddr_regs_400_mhz_2cs, &core);
-
-	barebox_arm_entry(0x80000000, SZ_1G, 0);
 }
 
 void __naked __bare_init barebox_arm_reset_vector(void)
 {
 	arm_cpu_lowlevel_init();
 
+	if (get_pc() > 0x80000000)
+		goto out;
+
 	arm_setup_stack(0x4030d000);
 
 	archosg9_init_lowlevel();
+out:
+	barebox_arm_entry(0x80000000, SZ_1G, 0);
 }
-- 
1.8.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
