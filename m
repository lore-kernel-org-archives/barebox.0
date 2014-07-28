Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XBkBv-0007N3-H7
 for barebox@lists.infradead.org; Mon, 28 Jul 2014 12:38:12 +0000
Date: Mon, 28 Jul 2014 14:37:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140728123748.GB23235@pengutronix.de>
References: <CACqcpZDdPLs3LRpg7X9u2E_z+824+vDC=c9vS6NRundiJUmTOA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACqcpZDdPLs3LRpg7X9u2E_z+824+vDC=c9vS6NRundiJUmTOA@mail.gmail.com>
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
Subject: Re: at91: device tree
To: =?iso-8859-15?Q?Rapha=EBl?= Poggi <poggi.raph@gmail.com>
Cc: barebox@lists.infradead.org

Hi Rapha=EBl,

On Sun, Jul 27, 2014 at 12:18:07PM +0200, Rapha=EBl Poggi wrote:
> Hi all !
> =

> In barebox, atmel AT91 boards don't have device tree support(neither
> atmel drivers like: atmel_nand).
> I am currently working on adding device tree support especially on
> at91sam9m10g45ek board (the only atmel board, I have for testing) and
> corresponding drivers (i2c, nand, spi, etc...).
> =

> I wonder if barebox community is interested to add device tree support
> for atmel or if there is already somebody who works on it.

I'm not aware of anyone working on device tree support for AT91.
Jean-Christophe sometimes mentioned that this is on his todo list, but
AFAIK he hasn't started yet.

Having device tree support for AT91 would be great, this would open the
door for quite some cleanups in the AT91 port.

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
