Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PvCuI-0000zV-DU
	for barebox@lists.infradead.org; Thu, 03 Mar 2011 18:05:47 +0000
Date: Thu, 3 Mar 2011 19:05:41 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110303180541.GY29521@pengutronix.de>
References: <20110303151500.GT29521@pengutronix.de>
	<20110303173942.GP10814@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20110303173942.GP10814@game.jcrosoft.org>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: v2011.03.0
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Thu, Mar 03, 2011 at 06:39:42PM +0100, Jean-Christophe PLAGNIOL-VILLARD =
wrote:
> On 16:15 Thu 03 Mar     , Sascha Hauer wrote:
> > Hi All,
> > =

> > next month - next release. Here it is.
> > =

> > Sascha
> > =

> > Eric B=E9nard (8):
> >       _update_help: fix script name
> >       defaultenv/bin/boot: make ubi root's name configurable
> >       defaultenv/bin/update: let /env/config set default values
> >       update: add bareboxenv update possibility
> >       eukrea_cpuimx25: add led support
> >       eukrea_cpuimx25: switch to default environement
> >       eukrea_cpuimx25: update defconfig
> >       i2c-imx: sync with kernel's driver
> > =

> > Gregory CLEMENT (3):
> >       BMP: Add support for 32bpp video frame buffer
> >       ARM STM/i.MX: Add possibility to choose the bit per pixel for STM=
 video driver
> >       fb i.MX23/28: Add the reset control of LCD
> > =

> > Jean-Christophe PLAGNIOL-VILLARD (9):
> >       Thumb-2: Add macros for the unified assembler syntax
> >       arm: libgcc update to linux v2.6.37
> >       arm: add __bswapsi2 support
> >       import swab.h arch implementation form linux v2.3.37
> >       x86/pmjump: rename __bss_end to __bss_stop
> >       at91sam9m10g45ek: add board revision support
> >       lib/decompress_unlzo: use fill and full to read and write data
> can you reverse this one before the release I found the issue but can not=
 fix
> soon as the issue is also in the kernel

Damned. I forgot about this issue.

I'll make a stable release with either this issue fixed or this patch
reverted after the weekend.

Sascha


-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
