Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mailbox.openface.ca ([216.46.1.7])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WAglt-0001Jo-EV
 for barebox@lists.infradead.org; Tue, 04 Feb 2014 14:14:42 +0000
From: "Balasa, Bogdan" <BBalasa@Morganschaffer.com>
Date: Tue, 4 Feb 2014 14:14:17 +0000
Message-ID: <4C598A31AEBE214FB619D7F2DC3BD8AB0127A14BF9@MSI0E01.MSI.Local>
References: <4C598A31AEBE214FB619D7F2DC3BD8AB0127A14A86@MSI0E01.MSI.Local>
 <4C598A31AEBE214FB619D7F2DC3BD8AB0127A14AD3@MSI0E01.MSI.Local>
 <20140204071748.GP16215@pengutronix.de>
In-Reply-To: <20140204071748.GP16215@pengutronix.de>
Content-Language: fr-FR
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: RE: barebox env userspace
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi,
Is not working when modifying in userspace the '/init/general' file, the li=
ne:
'global.boot.default=3Dnand'
to: 'global.boot.default=3Dtwo'

and after reset barebox was not taking into account this change.
I needed to enter in barebox abd send a saveenv in barebox such that the co=
ntent of '/init/general'
to be saved in the persistent storage (I think dev/env0).


-----Message d'origine-----
De=A0: Sascha Hauer [mailto:s.hauer@pengutronix.de] =

Envoy=E9=A0: February-04-14 2:18 AM
=C0=A0: Balasa, Bogdan
Cc=A0: barebox@lists.infradead.org
Objet=A0: Re: barebox env userspace

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
> De=A0: Balasa, Bogdan [mailto:BBalasa@Morganschaffer.com]
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

So it doesn't seem to be a problem with accessing/changing the environment =
from userspace, but that you modify a file which isn't used by barebox, or =
not used as you are expecting it. What file are you modifying?

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
