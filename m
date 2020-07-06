Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jsKWn-0000lP-Bo
 for barebox@lists.infradead.org; Mon, 06 Jul 2020 06:22:57 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  6 Jul 2020 08:22:54 +0200
Message-Id: <20200706062254.29127-1-a.fatoum@pengutronix.de>
In-Reply-To: <20200701091122.3437-28-a.fatoum@pengutronix.de>
References: <20200701091122.3437-28-a.fatoum@pengutronix.de>
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
Subject: [PATCH] fixup! ARM: at91: sama5d27-giantboard: add additional first
 stage entry point
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

putc_ll() is already behind a IS_ENABLED(CONFIG_DEBUG_LL), so no need to
replicate.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/sama5d27-giantboard/lowlevel.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boards/sama5d27-giantboard/lowlevel.c b/arch/arm/boards/sama5d27-giantboard/lowlevel.c
index dc678e5d83ce..ee8297fa4562 100644
--- a/arch/arm/boards/sama5d27-giantboard/lowlevel.c
+++ b/arch/arm/boards/sama5d27-giantboard/lowlevel.c
@@ -22,8 +22,7 @@ SAMA5_ENTRY_FUNCTION(start_sama5d27_giantboard_xload_mmc, r4)
 	sama5d2_lowlevel_init();
 
 	dbgu_base = sama5d2_resetup_uart_console(MASTER_CLOCK);
-	if (IS_ENABLED(CONFIG_DEBUG_LL))
-		putc_ll('>');
+	putc_ll('>');
 
 	relocate_to_current_adr();
 	setup_c();
@@ -41,8 +40,7 @@ SAMA5_ENTRY_FUNCTION(start_sama5d27_giantboard, r4)
 {
 	void *fdt;
 
-	if (IS_ENABLED(CONFIG_DEBUG_LL))
-		putc_ll('>');
+	putc_ll('>');
 
 	fdt = __dtb_z_at91_sama5d27_giantboard_start + get_runtime_offset();
 
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
