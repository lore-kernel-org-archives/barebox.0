Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U1BXM-00045o-VR
 for barebox@lists.infradead.org; Fri, 01 Feb 2013 08:00:03 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  1 Feb 2013 08:59:32 +0100
Message-Id: <1359705587-9762-20-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1359705587-9762-1-git-send-email-s.hauer@pengutronix.de>
References: <1359705587-9762-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 19/34] ARM AT91: switch at91rm9200 board to barebox_arm_entry
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-at91/Kconfig                    |    1 +
 arch/arm/mach-at91/at91rm9200_lowlevel_init.c |    2 +-
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index ac6fd2f..f7f4cbc 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -90,6 +90,7 @@ config SOC_AT91RM9200
 	select HAVE_AT91_DBGU0
 	select HAS_AT91_ETHER
 	select MACH_HAS_LOWLEVEL_INIT
+	select MACH_DO_LOWLEVEL_INIT
 
 config SOC_AT91SAM9260
 	bool
diff --git a/arch/arm/mach-at91/at91rm9200_lowlevel_init.c b/arch/arm/mach-at91/at91rm9200_lowlevel_init.c
index 4add3d9..51dc281 100644
--- a/arch/arm/mach-at91/at91rm9200_lowlevel_init.c
+++ b/arch/arm/mach-at91/at91rm9200_lowlevel_init.c
@@ -129,5 +129,5 @@ void __naked __bare_init reset(void)
 	set_cr(r);
 
 end:
-	board_init_lowlevel_return();
+	barebox_arm_entry(AT91_SDRAM_BASE, at91rm9200_get_sdram_size(), 0);
 }
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
