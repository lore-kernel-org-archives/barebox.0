Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x233.google.com ([2a00:1450:400c:c00::233])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W4tEC-0001g6-OG
 for barebox@lists.infradead.org; Sun, 19 Jan 2014 14:19:57 +0000
Received: by mail-wg0-f51.google.com with SMTP id z12so6116583wgg.30
 for <barebox@lists.infradead.org>; Sun, 19 Jan 2014 06:19:34 -0800 (PST)
Date: Sun, 19 Jan 2014 15:19:29 +0100
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20140119141929.GA3990@omega>
References: <1389971012-22977-1-git-send-email-s.hauer@pengutronix.de>
 <1389971012-22977-3-git-send-email-s.hauer@pengutronix.de>
 <20140118191625.GB3624@omega>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140118191625.GB3624@omega>
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
Subject: Re: [PATCH 02/22] ARM: phyCARD-i.MX27: increase barebox partition
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Sat, Jan 18, 2014 at 08:16:25PM +0100, Alexander Aring wrote:
> Hi,
> 
> On Fri, Jan 17, 2014 at 04:03:12PM +0100, Sascha Hauer wrote:
> > More place for barebox.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  arch/arm/boards/phycard-i.MX27/env/config | 2 +-
> >  arch/arm/boards/phycard-i.MX27/pca100.c   | 5 +++--
> >  2 files changed, 4 insertions(+), 3 deletions(-)
> > 
> > diff --git a/arch/arm/boards/phycard-i.MX27/env/config b/arch/arm/boards/phycard-i.MX27/env/config
> > index 9596311..9f10e7d 100644
> > --- a/arch/arm/boards/phycard-i.MX27/env/config
> > +++ b/arch/arm/boards/phycard-i.MX27/env/config
> > @@ -39,7 +39,7 @@ autoboot_timeout=3
> >  
> >  bootargs="console=ttymxc0,115200"
> >  
> > -nand_parts="256k(barebox)ro,128k(bareboxenv),2M(kernel),-(root)"
> > +nand_parts="512k(barebox)ro,512k(bareboxenv),2M(kernel),-(root)"
> 
> First I through "2 MB for kernel?", but then I see you change this to 4MB

I meant "thought" here.

> 
> >  rootfs_mtdblock_nand=7
> >  
> >  # set a fancy prompt (if support is compiled in)
> > diff --git a/arch/arm/boards/phycard-i.MX27/pca100.c b/arch/arm/boards/phycard-i.MX27/pca100.c
> > index 2ff1b79..7ac0bf6 100644
> > --- a/arch/arm/boards/phycard-i.MX27/pca100.c
> > +++ b/arch/arm/boards/phycard-i.MX27/pca100.c
> > @@ -21,6 +21,7 @@
> >  #include <mach/imx27-regs.h>
> >  #include <fec.h>
> >  #include <gpio.h>
> > +#include <sizes.h>
> >  #include <asm/armlinux.h>
> >  #include <asm/sections.h>
> >  #include <generated/mach-types.h>
> > @@ -287,10 +288,10 @@ static int pca100_devices_init(void)
> >  #endif
> >  
> >  	nand = get_device_by_name("nand0");
> 
> I know, you don't make any change here but I though "What the hell do this

here too. sry...

- Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
