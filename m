Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from tango.tkos.co.il ([62.219.50.35])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OgXka-00029I-VX
	for barebox@lists.infradead.org; Wed, 04 Aug 2010 06:46:54 +0000
Date: Wed, 4 Aug 2010 09:46:41 +0300
From: Baruch Siach <baruch@tkos.co.il>
Message-ID: <20100804064641.GB17208@jasper.tkos.co.il>
References: <cover.1280749932.git.baruch@tkos.co.il>
	<20100802120213.GC13044@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20100802120213.GC13044@game.jcrosoft.org>
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
Subject: Re: [PATCH 0/3] arm/imx: serial number / UID support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

Hi Jean-Christophe,

On Mon, Aug 02, 2010 at 02:02:13PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> 	serial number is more for board ref than CPU ref
> 	as you can easly read it from the register.
> 
> 	So why pass it via the ATAG?

The point of the serial number ATAG is to uniquely identify the system.  
Getting this unique ID from the CPU is as good as any other IMO. I'm not aware 
of any other UID source on the mx25 3DS system. Besides, having the serial 
number nicely listed in /proc/cpuinfo is far easier than reading registers.

Anyway, patches 1 and 2 in this series are useful on their own, I think. I 
intend to use this functionality for our own board. I've added the mx25 3ds 
two lines patch to justify the bloat :).

baruch

> Best Regards,
> J.
> On 14:58 Mon 02 Aug     , Baruch Siach wrote:
> > This patch series adds support for the serial ATAG, and uses this functionality 
> > to pass the i.MX25 chip UID as a serial number to the Linux kernel.
> > 
> > Baruch Siach (3):
> >   arm: add support for the serial ATAG
> >   imx25: add support for UID read from eFuse
> >   mx25 3ds: set CPU UID
> > 
> >  arch/arm/boards/freescale-mx25-3-stack/3stack.c |    2 ++
> >  arch/arm/include/asm/armlinux.h                 |    4 ++++
> >  arch/arm/lib/armlinux.c                         |   19 +++++++++++++++++++
> >  arch/arm/mach-imx/imx25.c                       |   12 ++++++++++++
> >  arch/arm/mach-imx/include/mach/generic.h        |    1 +
> >  arch/arm/mach-imx/include/mach/imx25-regs.h     |    3 +++
> >  6 files changed, 41 insertions(+), 0 deletions(-)

-- 
                                                     ~. .~   Tk Open Systems
=}------------------------------------------------ooO--U--Ooo------------{=
   - baruch@tkos.co.il - tel: +972.2.679.5364, http://www.tkos.co.il -

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
