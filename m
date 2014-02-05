Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mailbox.openface.ca ([216.46.1.7])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WB4ch-0007b6-4i
 for barebox@lists.infradead.org; Wed, 05 Feb 2014 15:42:47 +0000
From: "Balasa, Bogdan" <BBalasa@Morganschaffer.com>
Date: Wed, 5 Feb 2014 15:42:21 +0000
Message-ID: <4C598A31AEBE214FB619D7F2DC3BD8AB0127A14E6B@MSI0E01.MSI.Local>
References: <4C598A31AEBE214FB619D7F2DC3BD8AB0127A14A86@MSI0E01.MSI.Local>
 <4C598A31AEBE214FB619D7F2DC3BD8AB0127A14AD3@MSI0E01.MSI.Local>
 <20140204071748.GP16215@pengutronix.de>
 <4C598A31AEBE214FB619D7F2DC3BD8AB0127A14BF9@MSI0E01.MSI.Local>
 <20140205081859.GY16215@pengutronix.de>
In-Reply-To: <20140205081859.GY16215@pengutronix.de>
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

I modified '/env/config' instead of 'init/general' and deleted 'init/genera=
l' and it works.

Thank you,
Bogdan

-----Message d'origine-----
De=A0: Sascha Hauer [mailto:s.hauer@pengutronix.de] =

Envoy=E9=A0: February-05-14 3:19 AM
=C0=A0: Balasa, Bogdan
Cc=A0: barebox@lists.infradead.org
Objet=A0: Re: barebox env userspace

On Tue, Feb 04, 2014 at 02:14:17PM +0000, Balasa, Bogdan wrote:
> Hi,
> Is not working when modifying in userspace the '/init/general' file, the =
line:
> 'global.boot.default=3Dnand'
> to: 'global.boot.default=3Dtwo'
> =

> and after reset barebox was not taking into account this change.
> I needed to enter in barebox abd send a saveenv in barebox such that the =
content of '/init/general'
> to be saved in the persistent storage (I think dev/env0).

I think the problem is that the variable is overwritten later, at least tha=
t's what I rememember from the Phytec barebox. Try removing that file and m=
odify /env/config instead.

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
