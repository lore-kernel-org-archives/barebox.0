Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZD9M3-0003Z2-Ev
 for barebox@lists.infradead.org; Thu, 09 Jul 2015 10:47:00 +0000
Date: Thu, 9 Jul 2015 12:46:37 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150709104637.GS18700@pengutronix.de>
References: <1436346939-2306-1-git-send-email-antonynpavlov@gmail.com>
 <20150709064920.GJ18700@pengutronix.de>
 <20150709124254.3aeed69d7330aebd34377e12@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20150709124254.3aeed69d7330aebd34377e12@gmail.com>
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
Subject: Re: [RFC] WIP: video: implement quick-n-dirty framebuffer console
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Jul 09, 2015 at 12:42:54PM +0300, Antony Pavlov wrote:
> On Thu, 9 Jul 2015 08:49:20 +0200
> Sascha Hauer <s.hauer@pengutronix.de> wrote:
> 
> > Hi Antony,
> > 
> > On Wed, Jul 08, 2015 at 12:15:39PM +0300, Antony Pavlov wrote:
> > > This patch realizes very simple framebuffer console for barebox.
> > > Minimal ANSI/VT100 Escape Sequence parser is used to ignore color
> > > change commands (based on GNU screen parser).
> > > 
> > > THere are several ANSI/VT100 parsers:
> > > 
> > >   * GNU screen (git://git.savannah.gnu.org/screen.git);
> > >   * st - simple terminal (http://git.suckless.org/st);
> > >   * or even mutt (https://github.com/karelzak/mutt-kz).
> > 
> > There's even one in barebox in drivers/serial/efi-stdio.c
> > 
> > > 
> > > fbconsole mini-HOWTO
> > > ====================
> > > 
> > > 1. compile sandbox barebox with
> > > 
> > >     CONFIG_VIDEO=y
> > >     CONFIG_FBCONSOLE=y
> > >     CONFIG_DRIVER_VIDEO_SDL=y
> > > 
> > > 2. run barebox
> > > 
> > > 3. test fbconsole
> > > 
> > >     fbconsole0.active=o
> > 
> > I gave it a try on real hardware. Works nice.
> > 
> > > 
> > > TODO:
> > > 
> > >    * no visible cursor;
> > 
> > I couldn't resist and did some hacking on this. The cursor is visible
> > now. Also I implemented more control characters and color support. I'll
> > send an update patch shortly.
> > 
> > >    * FIXME: /dev/fb0 is hardcoded;
> > >    * FIXME: drop blanckchar() dirty hack;
> > >    * Sascha Hauer: character set should be prerendered for the actual framebuffer format
> > >                    before printing a string.
> > 
> > Did I mention that ealier? I don't know if that's a good idea since with
> > color support we would need quite some memory and I'm not sure if that
> > would really speed up things.
> > 
> > I'd really love to have framebuffer console in barebox. I wasn't aware
> > that this would be relatively straight forward to implement though. I'm
> > willing to help working on this job so that we finally have a fbcon.
> > 
> > Maybe one first step is to simply merge the font so that the patches
> > get smaller.
> 
> IMHO it is very reasonable to add simple tools and instruction for
> font modifing. We even can add several fonts and select one of them
> via Kconfig options as linux kernel does. There are some reasons
> for that:
> 
>    * some people prefere another fonts (e.g. Terminus);
>    * in Russia we need a font with cyrillic letters.

Ok. I'm happy to add this later, but if you want to add this from the
start, fine aswell. 

> 
> Also I prefere fix original font header file.
> Here is an example. 
> 
> 1. original font header file fragment:
> 
> +	/* 65 0x41 */
> +	0x00, /* 00000000 */
> +	0x00, /* 00000000 */
> +	0x10, /* 00010000 */
> +	0x38, /* 00111000 */
> +	0x6c, /* 01101100 */
> +	0xc6, /* 11000110 */
> +	0xc6, /* 11000110 */
> +	0xfe, /* 11111110 */
> +	0xc6, /* 11000110 */
> +	0xc6, /* 11000110 */
> +	0xc6, /* 11000110 */
> +	0xc6, /* 11000110 */
> +	0x00, /* 00000000 */
> +	0x00, /* 00000000 */
> +	0x00, /* 00000000 */
> +	0x00, /* 00000000 */
> +
> 
> 2. my version
> +	/* 65 0x41 'A' */
> +	0x00, /* ........ */
> +	0x00, /* ........ */
> +	0x10, /* ...#.... */
> +	0x38, /* ..###... */
> +	0x6c, /* .##.##.. */
> +	0xc6, /* ##...##. */
> +	0xc6, /* ##...##. */
> +	0xfe, /* #######. */
> +	0xc6, /* ##...##. */
> +	0xc6, /* ##...##. */
> +	0xc6, /* ##...##. */
> +	0xc6, /* ##...##. */
> +	0x00, /* ........ */
> +	0x00, /* ........ */
> +	0x00, /* ........ */
> +	0x00, /* ........ */

Yeah, that's much better to read.

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
