Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SoF2G-0001Fp-Ct
 for barebox@lists.infradead.org; Mon, 09 Jul 2012 14:34:01 +0000
Date: Mon, 9 Jul 2012 16:33:56 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20120709143356.GL4687@pengutronix.de>
References: <4FFAE124.8040703@yahoo.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4FFAE124.8040703@yahoo.fr>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Flashing automatically the default environment
To: Patrick <kpa_info@yahoo.fr>
Cc: barebox@lists.infradead.org

Hello Patrick,

On Mon, Jul 09, 2012 at 03:48:20PM +0200, Patrick wrote:
> When booting a new board with barebox it detect that the nand
> partition dedicated to environment is invalid and barebox use the
> default config.
> I would like that in this case (the first boot) the default config
> is flashed in the nand (save) command.
> =

> Any idea how to do that ?
How do you bring barebox into nand? Maybe flash the environment in the
same go?

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
