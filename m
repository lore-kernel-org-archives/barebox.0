Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TIwIa-0002JC-Ll
 for barebox@lists.infradead.org; Tue, 02 Oct 2012 06:49:46 +0000
Date: Tue, 2 Oct 2012 08:49:41 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121002064941.GU1322@pengutronix.de>
References: <1347391260.4361.12.camel@mars>
 <20121001162400.GA29504@lovely.krouter>
 <20121001170032.GR1322@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121001170032.GR1322@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: regression: ARM: pca100: Use _text rather than TEXT_BASE
To: Christoph Fritz <chf.fritz@googlemail.com>
Cc: barebox@lists.infradead.org

On Mon, Oct 01, 2012 at 07:00:32PM +0200, Sascha Hauer wrote:
> On Mon, Oct 01, 2012 at 06:24:01PM +0200, Christoph Fritz wrote:
> > On Tue, Sep 11, 2012 at 09:21:00PM +0200, Christoph Fritz wrote:
> > > Hi Sascha,
> > > 
> > > your commit 244198e "ARM boards: Use _text rather than TEXT_BASE"
> > > breaks board pca100 (phycard-i.MX27): It doesn't boot.
> > > 
> > > Revering the patch fixes the problem.
> > > 
> > > Any ideas?
> > 
> > *ping*
> 
> Sorry, missed this one.
> 
> Does the following fix it?
> 

I'll rather go with the following patch which also allows to use pbl
support with this board. I tested the patch, it should work for you.

Sascha


8<------------------------------------------------------------


From 47d0240b9cdcf9ed8aa166ae62fba5ac48e11bba Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 1 Oct 2012 18:58:16 +0200
Subject: [PATCH] ARM i.MX pca100: Fix nand boot

The following missed to add a jump to board_init_lowlevel_return for the
phycard pca100 board:

| commit 244198ea8bdf592799ebfd430fe9ab165284e480
| Author: Sascha Hauer <s.hauer@pengutronix.de>
| Date:   Sun Jul 8 18:30:42 2012 +0200
|
|     ARM boards: Use _text rather than TEXT_BASE
|
|     With compressed image support TEXT_BASE will become the base
|     address of the uncompressed image. What the boards want instead
|     is the base address of the decompressor code or, if not compressed,
|     the base address of the uncompressed image. Use _text which is
|     the correct one for both cases.
|
|     Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

This fixes it by adding the jump. Also imx_nand_load_image is directly
called from lowlevel_init.S which fixes compilation with pbl support
enabled.

Tested with both compression enabled and disabled.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/phycard-i.MX27/lowlevel_init.S |    5 ++++-
 arch/arm/boards/phycard-i.MX27/pca100.c        |    8 --------
 2 files changed, 4 insertions(+), 9 deletions(-)

diff --git a/arch/arm/boards/phycard-i.MX27/lowlevel_init.S b/arch/arm/boards/phycard-i.MX27/lowlevel_init.S
index c24edd4..f983642 100644
--- a/arch/arm/boards/phycard-i.MX27/lowlevel_init.S
+++ b/arch/arm/boards/phycard-i.MX27/lowlevel_init.S
@@ -116,7 +116,10 @@ copy_loop:
 
 	ldr	pc, =1f			/* Jump to SDRAM                    */
 1:
-	b	nand_boot		/* Load barebox from NAND Flash      */
+	ldr	r0,=_text
+	ldr	r1,=_barebox_image_size
+	bl	imx_nand_load_image
+	b	board_init_lowlevel_return
 
 #endif /* CONFIG_NAND_IMX_BOOT */
 
diff --git a/arch/arm/boards/phycard-i.MX27/pca100.c b/arch/arm/boards/phycard-i.MX27/pca100.c
index 614bfc6..53eec8f 100644
--- a/arch/arm/boards/phycard-i.MX27/pca100.c
+++ b/arch/arm/boards/phycard-i.MX27/pca100.c
@@ -324,11 +324,3 @@ static int pca100_console_init(void)
 }
 
 console_initcall(pca100_console_init);
-
-#ifdef CONFIG_NAND_IMX_BOOT
-void __bare_init nand_boot(void)
-{
-	imx_nand_load_image(_text, barebox_image_size);
-}
-#endif
-
-- 
1.7.10.4

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
