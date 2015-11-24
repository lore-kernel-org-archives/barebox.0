Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a18S6-00011v-Vk
 for barebox@lists.infradead.org; Tue, 24 Nov 2015 07:55:51 +0000
Date: Tue, 24 Nov 2015 08:55:29 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151124075529.GA11966@pengutronix.de>
References: <1448277281-24391-1-git-send-email-s.hauer@pengutronix.de>
 <20151124070726.GD19888@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20151124070726.GD19888@pengutronix.de>
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
Subject: Re: [PATCH] spi: i.MX: optimize transfers for ECSPI v2.3
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Tue, Nov 24, 2015 at 08:07:26AM +0100, Uwe Kleine-K=F6nig wrote:
> Hello Sascha,
> =

> On Mon, Nov 23, 2015 at 12:14:41PM +0100, Sascha Hauer wrote:
> > Instead of writing one word to the txfifo and then wait until
> > one is received in the rxfifo we can write until the txfifos
> =

> My German feeling for English recommends s/until/while/

If you mean the second 'until' then I am with you.

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
