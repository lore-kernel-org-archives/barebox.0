Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bxUPn-0005UA-K4
 for barebox@lists.infradead.org; Fri, 21 Oct 2016 07:38:56 +0000
From: Juergen Borleis <jbe@pengutronix.de>
Date: Fri, 21 Oct 2016 09:39:59 +0200
References: <CABvwO2ARpHSzYE6Y3JrfFAQ2jEzw3EXfP36goL6kPogcBbNLKQ@mail.gmail.com>
 <CABvwO2DgadsiAhdVaSb+teN8MPJMwpLNF0RXWyvOf98=hOSo9Q@mail.gmail.com>
 <CABvwO2ByvooXXYw+KKZSKvX0CPf43XABHn1-CUNd+qguCkRTeA@mail.gmail.com>
In-Reply-To: <CABvwO2ByvooXXYw+KKZSKvX0CPf43XABHn1-CUNd+qguCkRTeA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201610210939.59537.jbe@pengutronix.de>
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
Subject: Re: Loading kernel issues
To: barebox@lists.infradead.org
Cc: Javier Fileiv <javier.fileiv@gmail.com>

Hi Javier,

On Thursday 20 October 2016 19:59:54 Javier Fileiv wrote:
> ups... I think Ive broken everything... I just put at the end of the
> env/config file "boot nand" and now is looping and at some point it
> says "ERROR: out of memory".
> Another thing... I changed vivibootloader in NOR for the barebox, and
> even if I change to NOR it's looping again and again... What do I do?
> HELP!

Seems you configured your board into a brick. You now can boot from NOR and =

short some data lines pins at the NAND device to make barebox fail to read =
its =

environment from NAND and fall back to the built-in default environment =

without that loop.
Or you need some JTAG equipment to make the SoC working again.

Cheers,
Juergen

-- =

Pengutronix e.K. =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0| Juergen Borleis =A0 =A0 =A0 =A0 =A0 =A0 |
Industrial Linux Solutions =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0| http://=
www.pengutronix.de/ =A0|

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
