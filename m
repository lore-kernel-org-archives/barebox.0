Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WAaGo-0005zm-Lr
 for barebox@lists.infradead.org; Tue, 04 Feb 2014 07:18:11 +0000
Date: Tue, 4 Feb 2014 08:17:48 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140204071748.GP16215@pengutronix.de>
References: <4C598A31AEBE214FB619D7F2DC3BD8AB0127A14A86@MSI0E01.MSI.Local>
 <4C598A31AEBE214FB619D7F2DC3BD8AB0127A14AD3@MSI0E01.MSI.Local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4C598A31AEBE214FB619D7F2DC3BD8AB0127A14AD3@MSI0E01.MSI.Local>
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
Subject: Re: barebox env userspace
To: "Balasa, Bogdan" <BBalasa@Morganschaffer.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Mon, Feb 03, 2014 at 06:00:02PM +0000, Balasa, Bogdan wrote:
> I was modifying the '/init/general' file, the line:
> =

> global.boot.default=3Dnand
> =

> A second method (this one worked): changed the content of 'boot/nand' fil=
e.
> =

> Bogdan
> =

> -----Message d'origine-----
> De=A0: Balasa, Bogdan [mailto:BBalasa@Morganschaffer.com] =

> Envoy=E9=A0: February-03-14 12:20 PM
> =C0=A0: barebox@lists.infradead.org
> Objet=A0: barebox env userspace
> =

> Hi,
> =

> I try to modify the barebox environment from linux userspace with:
> =

> 1.	Load environment from SPI NOR flash:
>                ./bareboxenv-target -l /mnt /dev/mtd1
> =

> 2.	Erase environment from SPI nor flash
> flash_erase /dev/mtd1 0 0
> =

> # do some modifications in "/mnt"
> =

> 3.	Save environment to NOR flash
> ./bareboxenv-target -s /mnt /dev/mtd1
> =

> ----
> After reset I can see my modifications in the files within barebox but th=
e changes are not taken into account by barebox.

So it doesn't seem to be a problem with accessing/changing the
environment from userspace, but that you modify a file which isn't used
by barebox, or not used as you are expecting it. What file are you
modifying?

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
