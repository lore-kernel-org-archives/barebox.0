Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ghuae-0005vv-OH
 for barebox@lists.infradead.org; Fri, 11 Jan 2019 11:03:06 +0000
Date: Fri, 11 Jan 2019 12:03:03 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190111110302.gioxtjns6w5tfzqu@pengutronix.de>
References: <20190108102412.10553-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190108102412.10553-1-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH RFC] imx6ul-phytec-phycore-som: don't use fsl,
 no-blockmark-swap for the NAND
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org, Stefan Riedmueller <s.riedmueller@phytec.de>

On Tue, Jan 08, 2019 at 11:24:12AM +0100, Uwe Kleine-K=F6nig wrote:
> barebox doesn't honor that property which yields to inconsitencies
> between Linux and barebox after for example filling an UBI with a file
> system with barebox and then trying to mount that from Linux.
> =

> Note this is an interruptive change as it requires to rewrite the flash
> to make it working with Linux again.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
> Hello,
> =

> I wonder why Phytec chose to use this configuration. Was this just
> copied from another board?

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
