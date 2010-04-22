Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1O4uh7-0006vY-C9
	for barebox@lists.infradead.org; Thu, 22 Apr 2010 11:35:45 +0000
Date: Thu, 22 Apr 2010 13:35:43 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100422113543.GO7882@pengutronix.de>
References: <alpine.LRH.2.00.1004141327120.2049@localhost.localdomain>
	<20100416075656.GX7882@pengutronix.de>
	<i2yba216b431004190159h873158a1qacee1d4686455e1a@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <i2yba216b431004190159h873158a1qacee1d4686455e1a@mail.gmail.com>
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
Subject: Re: [PATCH] MX25PDK: Add support for 64MiB DDR2 SDRAM
To: Ivo Clarysse <ivo.clarysse@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Apr 19, 2010 at 10:59:08AM +0200, Ivo Clarysse wrote:
> On Fri, Apr 16, 2010 at 9:56 AM, Sascha Hauer <s.hauer@pengutronix.de> wr=
ote:
> [...]
> > Does Kconfig support something like
> >
> > =A0 =A0 =A0 =A0default 0x83f00000 if MACH_FREESCALE_MX25_3STACK && FREE=
SCALE_MX25_3STACK_SDRAM_64MB_DDR2
> > =A0 =A0 =A0 =A0default 0x87f00000 if MACH_FREESCALE_MX25_3STACK && FREE=
SCALE_MX25_3STACK_SDRAM_128MB_MDDR
> >
> > ?
> =

> Yes, that does seem to work.
> =

> Do you want me to submit a new patch ?

Yes please.

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
