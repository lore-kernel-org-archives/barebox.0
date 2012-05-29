Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SZIkc-0005XP-7W
 for barebox@lists.infradead.org; Tue, 29 May 2012 09:30:03 +0000
Date: Tue, 29 May 2012 11:29:58 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120529092958.GP30400@pengutronix.de>
References: <20120522184240.GM30400@pengutronix.de>
 <CAONxwYOOSCcUQY7wRy8wrdmWGLrjPfchxY1raxBA034gKCk9KQ@mail.gmail.com>
 <20120523134733.6164c4fb@eb-e6520>
 <CAONxwYMkcS4Vt04tKHkWijVxYBnt097wyMXr-LK-m5Hyj_Sk_w@mail.gmail.com>
 <20120524145837.42085b83@eb-e6520>
 <CAONxwYOdiRnDiRRFikckrj+6pOKA5DgW-hxwRCRgVGQ93p3QUQ@mail.gmail.com>
 <20120524153119.6d724afc@eb-e6520>
 <CAONxwYNisYJ+hvHTnxjHs-oPVGDFrhajVxMMrZXFJ8GN7aTg9A@mail.gmail.com>
 <20120525120858.77dd6e7a@eb-e6520>
 <CAONxwYPWmxz1uraADOW2mV6x-qzjSLpZ=3BuFx3AaVKdvxTOrQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAONxwYPWmxz1uraADOW2mV6x-qzjSLpZ=3BuFx3AaVKdvxTOrQ@mail.gmail.com>
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
Subject: Re: Booting mx25 based device from SD and NOR
To: Roberto Nibali <rnibali@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, May 29, 2012 at 11:06:00AM +0200, Roberto Nibali wrote:
> Hi Eric
> 
> > >
> > http://git.pengutronix.de/?p=barebox.git;a=blob;f=arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c;h=63e87c9551c440edab572f5252a503ba4d533161;hb=c48de4beee21c3a5573cec084123c33ae08f6f7a
> > > >
> > > >
> > > Now that piece certainly was missing, but how the heck did you find out
> > > those register values? Where did you get the information about writing to
> > > chip select 0 and selecting:
> > >
> > > CSCR0U: 0x00008F03
> > > CSCR0L: 0xA0330D01
> > > CSCR0A: 0x002208C0
> > >
> > you need the reference manual of the i.MX25 to know the meaning of
> > these registers and the datasheet of your flash to know it's timings
> > then you can calculate the value to put in the registers.
> >
> >
> I have found them in an old uboot tree a previous person patched to have
> working support for NOR on boot. The values are:
> 
>         { .ptr_type = 4, .addr = 0xB8002000, .val = 0x0000D003, },
>         { .ptr_type = 4, .addr = 0xB8002004, .val = 0x00330D01, },
>         { .ptr_type = 4, .addr = 0xB8002008, .val = 0x00220800, },

Do these values match the ones you read out of the registers using your
U-Boot?

> 
> /* Set up 16bit NOR flash on WEIM CS0 */
> writel(0xB8002000, 0x0000D003);
>  writel(0xB8002004, 0x00330D01);
> writel(0xB8002008, 0x00220800);

You mixed up the argument order.

> 
> board_init_lowlevel_return();
> }
> 
> Why can't I printf() from low_level?

Because the console hasn't been setup yet. That's exactly the reason why
I recommend doing only the absolutely necessary stuff in lowlevel_init.

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
