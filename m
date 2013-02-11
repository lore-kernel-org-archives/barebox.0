Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from we-in-x022f.1e100.net ([2a00:1450:400c:c03::22f]
 helo=mail-we0-x22f.google.com)
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U52RZ-0004l9-2S
 for barebox@lists.infradead.org; Mon, 11 Feb 2013 23:05:49 +0000
Received: by mail-we0-f175.google.com with SMTP id x8so5323258wey.6
 for <barebox@lists.infradead.org>; Mon, 11 Feb 2013 15:05:44 -0800 (PST)
From: Vicente Bergas <vicencb@gmail.com>
Date: Tue, 12 Feb 2013 00:04:58 +0100
Message-Id: <1360623899-10059-2-git-send-email-vicencb@gmail.com>
In-Reply-To: <1360623899-10059-1-git-send-email-vicencb@gmail.com>
References: <1360623899-10059-1-git-send-email-vicencb@gmail.com>
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
Subject: [PATCH 1/2] ArchosG9: solve regression in second stage lowlevel init
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
