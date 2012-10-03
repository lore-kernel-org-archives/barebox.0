Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TJPh6-0005Kj-AL
 for barebox@lists.infradead.org; Wed, 03 Oct 2012 14:13:01 +0000
Date: Wed, 3 Oct 2012 16:12:51 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121003141251.GF1322@pengutronix.de>
References: <1349259879-32523-1-git-send-email-s.hauer@pengutronix.de>
 <20121003113550.GD26553@game.jcrosoft.org>
 <20121003123010.GE1322@pengutronix.de>
 <20121003123435.GF26553@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121003123435.GF26553@game.jcrosoft.org>
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
Subject: Re: [PATCH] ARM pbl: Make usage of MMU in pbl optional
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Wed, Oct 03, 2012 at 02:34:35PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 14:30 Wed 03 Oct     , Sascha Hauer wrote:
> > On Wed, Oct 03, 2012 at 01:35:50PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > On 12:24 Wed 03 Oct     , Sascha Hauer wrote:
> > > > Since this currently does not work on all boards make usage
> > > > of the MMU in the pbl optional until this has been resolved.
> > > > 
> > > > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > > > ---
> > > >  arch/arm/cpu/start-pbl.c |    2 +-
> > > >  common/Kconfig           |    5 +++++
> > > >  2 files changed, 6 insertions(+), 1 deletion(-)
> > > > 
> > > > diff --git a/arch/arm/cpu/start-pbl.c b/arch/arm/cpu/start-pbl.c
> > > > index 932a3da..ceb60ab 100644
> > > > --- a/arch/arm/cpu/start-pbl.c
> > > > +++ b/arch/arm/cpu/start-pbl.c
> > > > @@ -116,7 +116,7 @@ static void mmu_disable(void)
> > > >  static void barebox_uncompress(void *compressed_start, unsigned int len)
> > > >  {
> > > >  	void (*barebox)(void);
> > > > -	int use_mmu = IS_ENABLED(CONFIG_MMU);
> > > > +	int use_mmu = IS_ENABLED(CONFIG_PBL_USE_MMU);
> > > >  
> > > >  	/* set 128 KiB at the end of the MALLOC_BASE for early malloc */
> > > >  	free_mem_ptr = MALLOC_BASE + MALLOC_SIZE - SZ_128K;
> > > > diff --git a/common/Kconfig b/common/Kconfig
> > > > index b97392c..7e4cf1f 100644
> > > > --- a/common/Kconfig
> > > > +++ b/common/Kconfig
> > > > @@ -139,6 +139,11 @@ config IMAGE_COMPRESSION_GZIP
> > > >  
> > > >  endchoice
> > > >  
> > > > +config PBL_USE_MMU
> > > > +	bool "Use MMU in PBL image"
> > > default y if MMU
> > 
> > Can do, but can you then send a patch for the defconfigs which don't
> > work with MMU in the pbl?
> 
> ok give one day to test all

Another plan. Since remap_cache currently does not work and
I'm not confident enough to apply the fixups so close before
a release we can equally well disable the feature for now.

Ok?

Sascha

8<------------------------------------------------------

From c05511d6cdbcddf32d41d4036e49af8a9c18832d Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 3 Oct 2012 12:23:41 +0200
Subject: [PATCH] ARM: Disable MMU feature in PBL

remap_cache currently does not work, so enabling the MMU in the
PBL currently does not make sense. Disable it for now.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/start-pbl.c |    6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/arch/arm/cpu/start-pbl.c b/arch/arm/cpu/start-pbl.c
index 932a3da..3bd520c 100644
--- a/arch/arm/cpu/start-pbl.c
+++ b/arch/arm/cpu/start-pbl.c
@@ -116,7 +116,11 @@ static void mmu_disable(void)
 static void barebox_uncompress(void *compressed_start, unsigned int len)
 {
 	void (*barebox)(void);
-	int use_mmu = IS_ENABLED(CONFIG_MMU);
+	/*
+	 * remap_cached currently does not work rendering the feature
+	 * of enabling the MMU in the PBL useless. disable for now.
+	 */
+	int use_mmu = 0;
 
 	/* set 128 KiB at the end of the MALLOC_BASE for early malloc */
 	free_mem_ptr = MALLOC_BASE + MALLOC_SIZE - SZ_128K;
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
