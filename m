Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c7Gjh-0000tm-Td
 for barebox@lists.infradead.org; Thu, 17 Nov 2016 07:03:54 +0000
Date: Thu, 17 Nov 2016 08:03:31 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20161117070331.g53g4rwntchvwgn5@pengutronix.de>
References: <20161115090821.18106-1-s.hauer@pengutronix.de>
 <CAOpc7mHgZNN4gz1VhbTqYW2atcVJCW4H1_RJdjhEQeJKSdF2wQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOpc7mHgZNN4gz1VhbTqYW2atcVJCW4H1_RJdjhEQeJKSdF2wQ@mail.gmail.com>
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
Subject: Re: [PATCH] ARM: i.MX: Add src fixup
To: Holger Schurig <holgerschurig@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>

On Wed, Nov 16, 2016 at 03:32:36PM +0100, Holger Schurig wrote:
>    > +config RESET_IMX_SRC
>    > + =A0 =A0 =A0 bool "i.MX SRC support"
>    > + =A0 =A0 =A0 default y if ARCH_IMX6 || ARCH_IMX50 || ARCH_IMX51 || =
ARCH_IMX53
>    > +
>    > =A0comment "Freescale i.MX System-on-Chip"
> =

>    I hate new visible config entries without a help text :-/

You're right. I took the easy way out and made this invisible. Also I
removed the duplicate Kconfig entry in drivers/reset/Kconfig.

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
