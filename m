Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RhgKY-0006lE-OG
 for barebox@lists.infradead.org; Mon, 02 Jan 2012 11:45:31 +0000
Date: Mon, 2 Jan 2012 12:45:23 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120102114523.GL27267@pengutronix.de>
References: <1323424858-14282-1-git-send-email-t.gamez@phytec.de>
 <1324473518.18539.45.camel@lws-gamez>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1324473518.18539.45.camel@lws-gamez>
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
Subject: Re: [PATCH] nand_omap_bch_decoder: Fix up error detection
To: Teresa Gamez <T.Gamez@phytec.de>
Cc: Steve Schefter <steve@scheftech.com>, barebox@lists.infradead.org

On Wed, Dec 21, 2011 at 02:18:38PM +0100, Teresa Gamez wrote:
> Am Freitag, den 09.12.2011, 11:00 +0100 schrieb Teresa G=E1mez:
> > From: Steve Schefter <steve@scheftech.com>
> > =

> > Bit errors in the ECC itself are not beeing taken into account.
> > In this cases the number of detected errors !=3D number of corrected er=
rors and
> > chien search returns an error.
> > This patch adds detection of bit errors in the ECC.
> > =

> > Signed-off-by: Steve Schefter <steve@scheftech.com>
> > Signed-off-by: Teresa G=E1mez <t.gamez@phytec.de>
> =

> Ping?

Applied now.

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
