Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PbZGP-00081G-8z
	for barebox@lists.infradead.org; Sat, 08 Jan 2011 13:55:26 +0000
Date: Sat, 8 Jan 2011 14:55:22 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110108135522.GG12078@pengutronix.de>
References: <m38vyym6k9.fsf@intrepid.localdomain>
	<m3vd22kq8q.fsf@intrepid.localdomain>
	<20110106233651.GB944@game.jcrosoft.org>
	<m3ei8nwpz2.fsf@intrepid.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <m3ei8nwpz2.fsf@intrepid.localdomain>
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
Subject: Re: [PATCH 3/3] ARM: Add support for IXP4xx CPU and for Goramo
	Multilink router platform.
To: Krzysztof Halasa <khc@pm.waw.pl>
Cc: barebox@lists.infradead.org

On Sat, Jan 08, 2011 at 01:16:01PM +0100, Krzysztof Halasa wrote:
> Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com> writes:
> 
> >> +/* offsets from start of flash ROM = 0x50000000 */
> >> +#define CFG_ETH0_ADDRESS     0x40 /* 6 bytes */
> >                            ^^^^^
> > whitespace please use tab for indent
> 
> Is it the official requirement that I should use tabs for visual
> indentation (I use tabs for syntactic indentation).

It's not an official requirement. I prefer tabs here, but I never
rejected a patch because of this.

> 
> This forces anyone to display with tabs=8 (vide the discussions on
> lkml). Obviously one can decide to use tabs everywhere, I just want
> to see such decision has been taken.

Have there been discussions? Do you have a pointer?

> 
> >> +static struct device_d cfi_dev = {
> >> +	.name     = "cfi_flash",
> >> +	.map_base = IXP4XX_EXP_BASE(0),
> >> +	.size     = 16 * 1024 * 1024,
>    ^^^^^^ I.e., I use tabs here.
> 
> >> +#define CFG_ETH1_ADDRESS     0x46 /* 6 bytes */
>                             ^^^^^ but not here (probably).
> 
> >> +#define ETH_ALEN             6
> > IIR we have a macro for it
> 
> What's its name?

I think I removed it during rewriting the network stuff.

> 
> >> +#define BAREBOX_START        0x00000
> >> +#define BAREBOX_LENGTH       0x34000
> >> +#define NPE_A_START          (BAREBOX_START + BAREBOX_LENGTH)
> >> +#define NPE_A_LENGTH         0x05000
> >> +#define NPE_B_START          (NPE_A_START + NPE_A_LENGTH)
> >> +#define NPE_B_LENGTH         0x03000
> >> +#define NPE_C_START          (NPE_B_START + NPE_B_LENGTH)
> >> +#define NPE_C_LENGTH         0x04000
> >> +#define NPE_ENV0_START       (NPE_C_START + NPE_C_LENGTH)
> >> +#define NPE_ENV0_LENGTH      0x20000
> > I prefer we use a fs to store it so we can share it Linux
> > with a cramfs at least
> 
> That means creating a CRAMFS in Barebox' two read/only blocks. Will look
> at it.

You could use a cramfs but it adds quite some binary size to the
image. Is it even possible to share the firmware with Linux? I guess
Linux does a request_firmware which either expects the firmware to be
compiled in or under /lib/firmware.

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
