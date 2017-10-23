Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1e6X9P-0007JB-DY
 for barebox@lists.infradead.org; Mon, 23 Oct 2017 07:27:57 +0000
Date: Mon, 23 Oct 2017 09:27:33 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20171023072733.bcxmpkiqu64qgud2@pengutronix.de>
References: <20171019065308.2507-1-u.oelmann@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20171019065308.2507-1-u.oelmann@pengutronix.de>
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
Subject: Re: [PATCH 0/2] Allow decimally formatted data for the commands
 "i2c_write" and "spi"
To: Ulrich =?iso-8859-15?Q?=D6lmann?= <u.oelmann@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Thu, Oct 19, 2017 at 08:53:06AM +0200, Ulrich =D6lmann wrote:
> Currently both commands set the default base for parsing user supplied da=
ta to
> 16 which makes it impossible at all to parse decimal data.
> =

> Presumably this originates from having the convenience to easily copy'n'p=
aste
> hex dumped data into these commands without further preprocessing it befo=
re.
> =

> Change the default base to 0 to particularly allow decimally formatted da=
ta.
> This is in accordance to what the "mw" command does.
> =

> Changes since (implicit) v1 (20171017) (http://lists.infradead.org/piperm=
ail/barebox/2017-October/031356.html):
>   - extended the commit messages to include the motivation for the change
>   - added Uwe's acked-by
> =

> Ulrich =D6lmann (2):
>   commands: i2c: do not restrict i2c_write's data to be hex-formatted
>   commands: spi: do not restrict spi's data to be hex-formatted

Applied, thanks

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
