Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnIWR-0000Un-5d
 for barebox@lists.infradead.org; Tue, 16 Jul 2019 08:09:16 +0000
Date: Tue, 16 Jul 2019 10:09:11 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20190716080911.p53fxgo3m5h3plmd@pengutronix.de>
References: <20190715090900.19123-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190715090900.19123-1-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH] ubiformat: improve generation of UBI image sequence
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Mon, Jul 15, 2019 at 11:09:00AM +0200, Sascha Hauer wrote:
> The UBI ec_hdr has an image_seq field. During attaching UBI expects
> that its value is the same for all eraseblocks. The value should be
> changed with every ubiformat and is used to detect half written images.
> =

> In barebox we use a pseudo random number generated with rand() for this
> value. The ubiformat command calls srand(get_time_ns()) to initialize
> the pseudo random numbber generator. This is done in the option parser,

s/bb/b/

> so when ubiformat() is called directly (from fastboot for example) the
> pseudo random number generator is not initialized and we get the same
> values after every barebox restart.

I don't understand the problem (i.e. where is srand() called up to now),
but that's not important. I wonder if you could just use some data from
the NAND to (additionally) initialize the rng?

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
