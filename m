Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P9bY2-0004hI-NP
	for barebox@lists.infradead.org; Sat, 23 Oct 2010 10:42:04 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Sat, 23 Oct 2010 12:31:40 +0200
References: <1287766405-1646-1-git-send-email-jbe@pengutronix.de>
	<1287766405-1646-2-git-send-email-jbe@pengutronix.de>
	<20101022174621.GH22139@pengutronix.de>
In-Reply-To: <20101022174621.GH22139@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201010231231.40697.jbe@pengutronix.de>
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
Subject: Re: [PATCH 01/11] imx: Separate framebuffer platformdata and the
	videomode
To: barebox@lists.infradead.org

Sascha Hauer wrote:
> On Fri, Oct 22, 2010 at 06:53:15PM +0200, Juergen Beisert wrote:
> > This patch separates the imx platformdata and its videomode in two
> > structures, in order to support more than one defined videomode in the
> > boardfile. This is intended to support runtime videomode selection later
> > on. It also uses now the same videomode setup style than the imx-fpu
> > based systems (like the i.MX35).
> >
> >     Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
> > ---
> >  arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c |   28
> > +++++++++-------- arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c |  
> > 28 +++++++++-------- arch/arm/boards/guf-neso/board.c                  | 
> >  28 +++++++++-------- arch/arm/boards/imx21ads/imx21ads.c               |
> >   34 +++++++++++---------- arch/arm/boards/pcm038/pcm038.c               
> >    |   28 +++++++++-------- arch/arm/mach-imx/include/mach/imxfb.h       
> >     |    2 +-
> >  drivers/video/imx.c                               |    6 ++--
> >  7 files changed, 82 insertions(+), 72 deletions(-)
> >
> > diff --git a/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
> > b/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c index
> > 805ffe2..032897a 100644
> > --- a/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
> > +++ b/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
> > @@ -120,20 +120,22 @@ static struct device_d nand_dev = {
> >  	.platform_data	= &nand_info,
> >  };
> >
> > +static struct fb_videomode cmo_display = {
> > +	.name		= "CMO-QVGA",
> > +	.refresh	= 60,
> > +	.xres		= 320,
> > +	.yres		= 240,
> > +	.pixclock	= KHZ2PICOS(6500),
> > +	.hsync_len	= 30,
> > +	.left_margin	= 38,
> > +	.right_margin	= 20,
> > +	.vsync_len	= 3,
> > +	.upper_margin	= 15,
> > +	.lower_margin	= 4,
> > +};
> > +
> >  static struct imx_fb_videomode imxfb_mode = {
> > -	.mode = {
> > -		.name		= "CMO-QVGA",
> > -		.refresh	= 60,
> > -		.xres		= 320,
> > -		.yres		= 240,
> > -		.pixclock	= KHZ2PICOS(6500),
> > -		.hsync_len	= 30,
> > -		.left_margin	= 38,
> > -		.right_margin	= 20,
> > -		.vsync_len	= 3,
> > -		.upper_margin	= 15,
> > -		.lower_margin	= 4,
> > -	},
> > +	.mode		= &cmo_display,
> >  	.pcr		= 0xCAD08B80,
> >  	.bpp		= 16,
> >  };
>
> What are we going to do about the .pcr value? It is display specific.
> Look for example in pcm970-baseboard.c in the kernel. It has two
> different possible displays with two different pcr values.

I will take a closer look what the meaning of this pcr value is. Maybe we can 
create it at runtime from other flags given in the imx_fb_videomode.

Otherwise we could add a private pointer to the imx_fb_videomode structure, 
which can point to platform and videomode specific data in a generic way.

jbe

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | Phone: +49-8766-939 228     |
Vertretung Sued/Muenchen, Germany             | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686              | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
