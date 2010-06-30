Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OTrFA-0003s8-U4
	for barebox@lists.infradead.org; Wed, 30 Jun 2010 06:58:02 +0000
Date: Wed, 30 Jun 2010 08:57:57 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100630065757.GO12115@pengutronix.de>
References: <AANLkTimjBoeR8qBpdmbcuRgxr6o7xNRKaYQ6OdyDi_Fu@mail.gmail.com>
	<AANLkTila-9RsB4fiMy35ZDW0NHUckd4fj5kELB8R7VX-@mail.gmail.com>
	<4C2868A6.7010600@eukrea.com>
	<201006281136.10750.jbe@pengutronix.de>
	<AANLkTinS3Lx8V5gZ17iJfRuoQuz_GU0WR7PSAUwhe2x1@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AANLkTinS3Lx8V5gZ17iJfRuoQuz_GU0WR7PSAUwhe2x1@mail.gmail.com>
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
Subject: Re: testing barebox on calao sbc35-a9260 board
To: Belisko Marek <marek.belisko@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Jun 28, 2010 at 12:37:06PM +0200, Belisko Marek wrote:
> Hi,
> =

> On Mon, Jun 28, 2010 at 11:36 AM, Juergen Beisert <jbe@pengutronix.de> wr=
ote:
> > Eric B=E9nard wrote:
> >> Hi Marek,
> >>
> >> Le 28/06/2010 11:08, Belisko Marek a =E9crit :
> >> > I disable autostart and download barebox image to 0x8000 with
> >> > tftp 0x8000 barebox.bin and then jut go 0x8000 ended with:
> >> > ## Starting application at 0x00008000 ...
> >>
> >> if I remember well, on AT91 SDRAM is at 0x20000000 so actually you don=
't
> >> seem to load it in SDRAM.
> >> For the binary to execute properly, you should load it at the right
> >> target address in SDRAM.
> >
> > If barebox detects its current runtime address differs from the link ad=
dress
> > it copies itself to the link address first.
> >
> > So writing it anywhere into sdram should work. But only, if also the li=
nk
> > address is in the sdram area...
> Seems it's not working in my case. U-boot code just jump to address which
> is taken as argument according code. If barebox is copied to correct link
> address and started it should work. Is there any possibility to check
> link address from binary
> or it's not necessary to use mkimage tool from u-boot?

Here are the necessary steps to run the barebox.bin file from U-Boot:

tftp 0x20000000 barebox.bin
go 0x20000000

As Eric stated the 9260 has SDRAM at 0x20000000, so this would be an
appropriate load address. barebox then relocates itself to 0x23f00000
according to the link address which you can check by doing 'make
barebox.S' and looking at barebox.S.

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
