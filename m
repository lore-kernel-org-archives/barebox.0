Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TIjMB-0002Ip-Pz
 for barebox@lists.infradead.org; Mon, 01 Oct 2012 17:00:37 +0000
Date: Mon, 1 Oct 2012 19:00:32 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121001170032.GR1322@pengutronix.de>
References: <1347391260.4361.12.camel@mars>
 <20121001162400.GA29504@lovely.krouter>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121001162400.GA29504@lovely.krouter>
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

On Mon, Oct 01, 2012 at 06:24:01PM +0200, Christoph Fritz wrote:
> On Tue, Sep 11, 2012 at 09:21:00PM +0200, Christoph Fritz wrote:
> > Hi Sascha,
> > 
> > your commit 244198e "ARM boards: Use _text rather than TEXT_BASE"
> > breaks board pca100 (phycard-i.MX27): It doesn't boot.
> > 
> > Revering the patch fixes the problem.
> > 
> > Any ideas?
> 
> *ping*

Sorry, missed this one.

Does the following fix it?

8<------------------------------------------------------------

From d199fdf0b57879485fcde51c6a4e4d6e316816ee Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 1 Oct 2012 18:58:16 +0200
Subject: [PATCH] ARM i.MX pca100: Add missing jump to
 board_init_lowlevel_return()

This is broken since:

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

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/phycard-i.MX27/pca100.c |    1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boards/phycard-i.MX27/pca100.c b/arch/arm/boards/phycard-i.MX27/pca100.c
index 614bfc6..4b6e26e 100644
--- a/arch/arm/boards/phycard-i.MX27/pca100.c
+++ b/arch/arm/boards/phycard-i.MX27/pca100.c
@@ -329,6 +329,7 @@ console_initcall(pca100_console_init);
 void __bare_init nand_boot(void)
 {
 	imx_nand_load_image(_text, barebox_image_size);
+	board_init_lowlevel_return();
 }
 #endif
 
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
