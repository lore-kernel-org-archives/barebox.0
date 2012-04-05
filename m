Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SFpPO-0001p8-36
 for barebox@lists.infradead.org; Thu, 05 Apr 2012 16:19:39 +0000
Date: Thu, 5 Apr 2012 18:19:28 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120405161928.GG3852@pengutronix.de>
References: <4F7D68A1.9000800@yahoo.fr> <20120405134957.GE3852@pengutronix.de>
 <4F7DAE7B.2050607@yahoo.fr> <4F7DB31D.6030800@yahoo.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4F7DB31D.6030800@yahoo.fr>
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
Subject: Re: GPIO commands on OMAP4
To: Patrick <kpa_info@yahoo.fr>
Cc: barebox@lists.infradead.org

On Thu, Apr 05, 2012 at 04:58:37PM +0200, Patrick wrote:
> On 04/05/2012 04:38 PM, Patrick wrote:
> >On 04/05/2012 03:49 PM, Sascha Hauer wrote:
> >>On Thu, Apr 05, 2012 at 11:40:49AM +0200, Patrick wrote:
> >>>Dear mailing-list,
> >>>
> >>>I am using a pcm049 phyCORE omap4430 module from Phytec with BareBox
> >>>2011.09.0 patched with BSP from Phytec.
> >>>
> >>>I would like to use the GPIO command to read a switch at startup.
> >>>This chip is connected on ABE_MCBSP1_DX (gpio_116). I have edited
> >>>the boards/pcm049/mux.c files to change the configuration of this
> >>>GPIO as follow: {ABE_MCBSP1_DX, (DIS | IEN | M3)} instead of
> >>>{ABE_MCBSP1_DX, (SAFE_MODE)}.
> >>>
> >>>I then use the "gpio_get_value 116" command followed by "echo $?" to
> >>>read the value. I always read a 0. On Linux I could read the right
> >>>value depending of the position of the switch, so it's not an
> >>>hardware problems.
> >>>
> >>>I have tried with one of the two LEDs on the module (gpio_152) and I
> >>>could change the LED state and read it back with gpio_get_value.
> >>>
> >>>I do not understand what I am doing wrong. Any help will be appreciated.
> >>
> >>What you tried should work. The only thing I can imagine is that you
> >>need a gpio_direction_input before reading the value.
> >>
> >>Sascha
> >>
> >I have found the the problem come from the mux configuration.
> >
> >I have added a call to set_muxconf_regs() from the gpio_get_value()
> >(this is only to try) and then it works. I have checked my configuration
> >and the lowlevel init is enabled:
> >
> >CONFIG_MACH_HAS_LOWLEVEL_INIT=y
> >CONFIG_MACH_DO_LOWLEVEL_INIT=y
> >
> >I am runnig my development version of barebox from the stable barebox
> >flashed on NAND. I do the following:
> >
> >tftp barebox.bin /dev/ram0
> >go /dev/ram0
> >
> >Could this be a problem ?

The mux config is executed from lowlevel_init which returns immediately
when it detects that barebox runs from SDRAM. So yes, that's your
problem.

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
