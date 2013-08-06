Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V6fn4-0003P3-NR
 for barebox@lists.infradead.org; Tue, 06 Aug 2013 11:51:04 +0000
Date: Tue, 6 Aug 2013 13:50:40 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130806115040.GD26614@pengutronix.de>
References: <20130806114945.065bda07@skate>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130806114945.065bda07@skate>
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
Subject: Re: Commit "ARM: Turn most board directories into regular build
 directories" break kwb images
To: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: barebox@lists.infradead.org

Hi Thomas,

On Tue, Aug 06, 2013 at 11:49:45AM +0200, Thomas Petazzoni wrote:
> Hello Sascha,
> 
> Your commit 6bbb24cf8d0b0a060c57d9c07610210cdf2dcc96 ('ARM: Turn most
> board directories into regular build directories') apparently breaks
> the build of kwbimage for Marvell EBU platforms.
> 
> The kwbimage is built as follows:
> 
> KWBIMAGE_OPTS = \
>         -c -i $(srctree)/$(BOARD)/kwbimage.cfg -d $(TEXT_BASE) -e $(TEXT_BASE)
> 
> quiet_cmd_kwbimage = KWB     $@
>       cmd_kwbimage = scripts/kwbimage -p $< $(KWBIMAGE_OPTS) -o $@ || \
>         echo "WARNING: Couldn't create KWB image due to previous errors."
> 
> quiet_cmd_kwbimage_uart = KWBUART $@
>       cmd_kwbimage_uart = scripts/kwbimage -m uart -p $< $(KWBIMAGE_OPTS) -o $@ || \
>         echo "WARNING Couldn't create KWB image due to previous errors."
> 
> so we rely on the $(BOARD) variable to contain
> arch/arm/boards/<theboard>/. Unfortunately, with your commit, this is
> no longer the case.
> 
> Your commit made the assumption that only those boards that have a
> config.h should stay in board-y, but the Marvell EBU boards should also
> stay in board-y, or another solution needs to be found.
> 
> I've temporarily worked around the problem by re-adding:
> 
> +board-$(CONFIG_MACH_GLOBALSCALE_GURUPLUG)      += globalscale-guruplug
> 
> into arch/arm/Makefile.
> 
> Since I haven't yet grasped the entire philosophy of the Barebox build
> system, I'm not sure what the correct fix is.

The best fix for this would be to switch the mvebu boards over to
multiboard support. I already created an initial patch for the cubox,
but got distracted somewhere in between.

However, I think for now we should just partly revert 6bbb24cf8d0b0a06
for mvebu.

Sascha


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
