Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gxt4I-0004m4-VH
 for barebox@lists.infradead.org; Sun, 24 Feb 2019 12:39:49 +0000
Date: Sun, 24 Feb 2019 13:35:29 +0100
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20190224123529.GA19669@ravnborg.org>
References: <20190219120612.728-1-a.fatoum@pengutronix.de>
 <20190219120612.728-5-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190219120612.728-5-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH 4/4] ARM: at91: remove duplicate get_ddram_size code
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Ahmad.

On Tue, Feb 19, 2019 at 01:06:12PM +0100, Ahmad Fatoum wrote:
> Both at91_get_ddram_size and at91sama5_get_ddram_size are the
> same if is_sdram == false and is_nb == true.
> 
> is_sdram is always false, because according to the sama5d{2,3,4}
> datasheets, the lowest possible value for AT91_DDRSDRC_MD is 3
> (i.e. none of them supports SDR SDRAM).
> 
> Therefore have at91sama5_get_ddram_size call at91_get_ddram_size
> with is_nb == true and remove the duplicate code.

This patch breaks the build of sama5d4_xplained and sama5d4ek.
The root cause is the use of wrong definitions.
Following patch fixes this:

If you apply this patch before the offending patch you
can add my:
Reviewed-by: Sam Ravnborg <sam@ravnborg.org>
Tested-by: Sam Ravnborg <sam@ravnborg.org>

For all patches in this series.

	Sam

From 050e9fa72d67e5f5c6cb4b95c18d52e4c3e31625 Mon Sep 17 00:00:00 2001
From: Sam Ravnborg <sam@ravnborg.org>
Date: Sun, 24 Feb 2019 13:31:08 +0100
Subject: [PATCH 1/3] arm: sama5d4: fix stack setup

The code that configure the stack uses sama5d3 constants.
Fix this to use the proper sama5d4 constants.

Boot tested on sama5d4_xplained.

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
---
 arch/arm/boards/sama5d4_xplained/lowlevel.c | 2 +-
 arch/arm/boards/sama5d4ek/lowlevel.c        | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/sama5d4_xplained/lowlevel.c b/arch/arm/boards/sama5d4_xplained/lowlevel.c
index b791f2a03..d4d27d2ec 100644
--- a/arch/arm/boards/sama5d4_xplained/lowlevel.c
+++ b/arch/arm/boards/sama5d4_xplained/lowlevel.c
@@ -17,7 +17,7 @@ void __naked __bare_init barebox_arm_reset_vector(void)
 {
 	arm_cpu_lowlevel_init();
 
-	arm_setup_stack(SAMA5D3_SRAM_BASE + SAMA5D3_SRAM_SIZE - 16);
+	arm_setup_stack(SAMA5D4_SRAM_BASE + SAMA5D4_SRAM_SIZE - 16);
 
 	barebox_arm_entry(SAMA5_DDRCS, at91sama5_get_ddram_size(), NULL);
 }
diff --git a/arch/arm/boards/sama5d4ek/lowlevel.c b/arch/arm/boards/sama5d4ek/lowlevel.c
index b791f2a03..d4d27d2ec 100644
--- a/arch/arm/boards/sama5d4ek/lowlevel.c
+++ b/arch/arm/boards/sama5d4ek/lowlevel.c
@@ -17,7 +17,7 @@ void __naked __bare_init barebox_arm_reset_vector(void)
 {
 	arm_cpu_lowlevel_init();
 
-	arm_setup_stack(SAMA5D3_SRAM_BASE + SAMA5D3_SRAM_SIZE - 16);
+	arm_setup_stack(SAMA5D4_SRAM_BASE + SAMA5D4_SRAM_SIZE - 16);
 
 	barebox_arm_entry(SAMA5_DDRCS, at91sama5_get_ddram_size(), NULL);
 }
-- 
2.12.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
