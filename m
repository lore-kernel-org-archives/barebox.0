Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f8KKz-0003li-FI
 for barebox@lists.infradead.org; Tue, 17 Apr 2018 06:43:35 +0000
Date: Tue, 17 Apr 2018 08:43:20 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180417064320.hw3helj6mtr5a3v4@pengutronix.de>
References: <38a86524d3ed4ff2b2306a3bb52fb312@eckelmann.de>
 <20180416101939.yggybypgs3ahr76b@sapphire.tkos.co.il>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180416101939.yggybypgs3ahr76b@sapphire.tkos.co.il>
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
Subject: Re: Question about =?iso-8859-15?Q?barebox?=
 =?iso-8859-15?Q?*=2Fdrivers=2Fmfd=2Fmc34704=2Ec_and_ACCURATE_I=B2?=
 =?iso-8859-15?Q?C?= mode ...
To: Baruch Siach <baruch@tkos.co.il>
Cc: "Mainz, Roland" <R.Mainz@eckelmann.de>, barebox@lists.infradead.org

Hi Roland,

On Mon, Apr 16, 2018 at 01:19:39PM +0300, Baruch Siach wrote:
> Hi Roland,
> =

> On Mon, Apr 16, 2018 at 09:52:14AM +0000, Mainz, Roland wrote:
> > Two small questions about drivers/mfd/mc34704.c in the barebox codebase:
> > 1. mc34704 has an ACCURATE bit (I2CSET1, see =

> > https://www.nxp.com/docs/en/data-sheet/MC34704.pdf) which requires that=
 all =

> > read/write commands are send twice - does the barebox code have any sup=
port =

> > for that in the current versions ?
> > 2. Is this "accurate I=B2C communication mode" enabled by that bit a =

> > vendor-specific protocol extension or is it part of the I=B2C standard ?

I never heard of "accurate I=B2C", it must be something the chip designers
have invented. Also there is no support for it neither in the mc34704
driver nor in the generic I=B2C support.

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
