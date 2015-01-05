Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Y86Nt-0008BF-3N
 for barebox@lists.infradead.org; Mon, 05 Jan 2015 12:03:45 +0000
Date: Mon, 5 Jan 2015 13:03:22 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150105120322.GB4544@pengutronix.de>
References: <54A98B8F.2040405@free-electrons.com>
 <1511697250.362148406.1420454678099.JavaMail.root@zimbra1-e1.priv.proxad.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1511697250.362148406.1420454678099.JavaMail.root@zimbra1-e1.priv.proxad.net>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] mtd: nand: add pxa3xx-nand driver
To: robert.jarzmik@free.fr
Cc: barebox@lists.infradead.org

Hi Robert,

On Mon, Jan 05, 2015 at 11:44:38AM +0100, robert.jarzmik@free.fr wrote:
> ----- Mail original -----
> De: "Ezequiel Garcia" <ezequiel.garcia@free-electrons.com>
> =C0: "Robert Jarzmik" <robert.jarzmik@free.fr>, barebox@lists.infradead.o=
rg
> Envoy=E9: Dimanche 4 Janvier 2015 19:50:55
> Objet: Re: [PATCH] mtd: nand: add pxa3xx-nand driver
> =

> Hi Robert,
> =

> > If my memory doesn't fail me, the NAND controller is called NFC v1 on
> > pxa3xx, and NFC v2 on mvebu SoCs.
> > I'm wondering if we can pick a better name for this driver in barebox.
> > Maybe something like 'mv_nfc_nand' ?
> As all drivers are called "nand_XXX", I'd rather have it nand_mrvl_nfc th=
en.
> Does that sound good to you ?
> =

> > Also, I think you can get rid of the 'builtin_flash_types' struct and
> > all the device detection routines, which are really duplicating the
> > MTD's lower level job.
> Well, not really. If I get rid of them, how will I get the following
> information :
>  - page size
>  - nand timings (tHP, ...)
>  - controller width to use
>  - ...

Things like mtd->writesize, mtd->erasesize, and mtd->size should be
initialized after calling nand_scan_ident(). These are currently
overwritten by the pxa nand driver, but normally you should be able to
remove this. IIRC barebox can also detect the chip widths automatically.
I don't know how to get the timings though.

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
