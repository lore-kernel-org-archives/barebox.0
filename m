Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RuhQz-0007Bl-CM
 for barebox@lists.infradead.org; Tue, 07 Feb 2012 09:33:58 +0000
Date: Tue, 7 Feb 2012 10:33:42 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120207093342.GB3852@pengutronix.de>
References: <alpine.DEB.2.02.1202061041330.5018@oneiric>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.02.1202061041330.5018@oneiric>
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
Subject: Re: any value in allowing user selection of barebox prompt?
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

On Mon, Feb 06, 2012 at 10:57:22AM -0500, Robert P. J. Day wrote:
> 
>   making things a bit simpler than my last few posts, is it worth
> making the BOARDINFO prompt string user selectable?  if i was going to
> do some customization, it would be nice to have the prompt perhaps
> abbreviate what i'd done.
> 
>   for instance, if i:
> 
> $ make omap3530_beagle_defconfig
> 
> i can see how my barebox prompt string is going to be set in
> arch/arm/mach-omap/Kconfig:
> 
> config BOARDINFO
>         default "Texas Instrument's SDP343x" if MACH_OMAP343xSDP
>         default "Texas Instrument's Beagle" if MACH_BEAGLE
>         default "Texas Instrument's OMAP3EVM" if MACH_OMAP3EVM
>         default "Texas Instrument's Panda" if MACH_PANDA
>         default "Phytec phyCORE pcm049" if MACH_PCM049
>         default "Phytec phyCARD-A-L1" if MACH_PCAAL1
> 
>   but if i specifically configure and build for an xM, i'd like the
> prompt to perhaps read:
> 
>   barebox@Texas Instrument's Beagle xM:/
> 
> it's easy enough to do (although it would need to be done on a
> per-machine basis):
> 
> config BOARDINFO
>         string "Board info"
>         default "Texas Instrument's SDP343x" if MACH_OMAP343xSDP
>         default "Texas Instrument's Beagle" if MACH_BEAGLE
>         default "Texas Instrument's OMAP3EVM" if MACH_OMAP3EVM
>         default "Texas Instrument's Panda" if MACH_PANDA
>         default "Phytec phyCORE pcm049" if MACH_PCM049
>         default "Phytec phyCARD-A-L1" if MACH_PCAAL1
> 
>   i tried it and it seems to work fine although the aesthetics in
> "make menuconfig" is a bit strange WRT order:
> 
>     (Texas Instrument's Beagle) Board info
>         Select OMAP board (Texas Instrument's Beagle Board)  --->
> 
> but that could be fixed just by moving the BOARDINFO entry below the
> board choice in that file.
> 
>   was this already discussed and rejected once upon a time?  it's not
> a big deal but it has the value of being moderately informative.

It hasn't been discussed before. It's mostly the way it is because I
did it that way without much thinking. The change you suggest has one
drawback. Consider you do a make menuconfig and change the board.
Currently BOARDINFO correctly changes to the new board, but if we prompt
the user for BOARDINFO the board string will still have the name of the
old board.
I think the board name does not have to come from Kconfig anyway. How
about keeping things in Kconfig how they are but instead of using
CONFIG_BOARDINFO directly we could use a string. This string defaults to
CONFIG_BOARDINFO but can be overwritten by board code by calling a
set_boardinfo(const char *) function. For new boards we could use this
exclusively and maybe convert the existing boards over to it.

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
