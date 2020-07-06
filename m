Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jsKWI-0000hq-01
 for barebox@lists.infradead.org; Mon, 06 Jul 2020 06:22:26 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  6 Jul 2020 08:22:21 +0200
Message-Id: <20200706062221.14811-1-a.fatoum@pengutronix.de>
In-Reply-To: <20200701091122.3437-24-a.fatoum@pengutronix.de>
References: <20200701091122.3437-24-a.fatoum@pengutronix.de>
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
Subject: [PATCH] fixup! ARM: at91: sama5d27-som1: add additional first stage
 entry point
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

putc_ll() is already behind a IS_ENABLED(CONFIG_DEBUG_LL), so no need to
replicate.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/sama5d27-som1/lowlevel.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boards/sama5d27-som1/lowlevel.c b/arch/arm/boards/sama5d27-som1/lowlevel.c
index e9c781297c27..b0937119184b 100644
--- a/arch/arm/boards/sama5d27-som1/lowlevel.c
+++ b/arch/arm/boards/sama5d27-som1/lowlevel.c
@@ -45,8 +45,7 @@ SAMA5_ENTRY_FUNCTION(start_sama5d27_som1_ek_xload_mmc, r4)
 	sama5d2_lowlevel_init();
 
 	dbgu_base = sama5d2_resetup_uart_console(MASTER_CLOCK);
-	if (IS_ENABLED(CONFIG_DEBUG_LL))
-		putc_ll('>');
+	putc_ll('>');
 
 	relocate_to_current_adr();
 	setup_c();
@@ -65,8 +64,7 @@ SAMA5_ENTRY_FUNCTION(start_sama5d27_som1_ek, r4)
 {
 	void *fdt;
 
-	if (IS_ENABLED(CONFIG_DEBUG_LL))
-		putc_ll('>');
+	putc_ll('>');
 
 	fdt = __dtb_z_at91_sama5d27_som1_ek_start + get_runtime_offset();
 
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
