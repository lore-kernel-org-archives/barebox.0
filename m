Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ctfDE-0001QY-Uw
 for barebox@lists.infradead.org; Thu, 30 Mar 2017 18:54:27 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.84_2)
 (envelope-from <ukl@pengutronix.de>) id 1ctfCt-0002zk-Jk
 for barebox@lists.infradead.org; Thu, 30 Mar 2017 20:54:03 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.84_2)
 (envelope-from <ukl@pengutronix.de>) id 1ctfCt-0001Os-DH
 for barebox@lists.infradead.org; Thu, 30 Mar 2017 20:54:03 +0200
Date: Thu, 30 Mar 2017 20:54:03 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20170330185403.v5vsubjnkix52ysd@pengutronix.de>
References: <20170330184636.22846-1-u.kleine-koenig@pengutronix.de>
 <20170330184636.22846-3-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170330184636.22846-3-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH 2/2] watchdog: new driver for Armada XP
To: barebox@lists.infradead.org

Hello,

On Thu, Mar 30, 2017 at 08:46:36PM +0200, Uwe Kleine-K=F6nig wrote:
> diff --git a/drivers/watchdog/orion_wdt.c b/drivers/watchdog/orion_wdt.c
> new file mode 100644
> index 000000000000..fcdfcd56f9a9
> --- /dev/null
> +++ b/drivers/watchdog/orion_wdt.c
> @@ -0,0 +1,123 @@
> +/*
> + * Watchdog driver for Marvell Armada XP.
> + *
> + * Copyright (C) 2017 Pengutronix, Fridolin Tux <kernel@pengutronix.de>

huh, copied from the template without adoption. Can you please
s/Fridolin Tux/Uwe Kleine-K=F6nig/ here? Or should I resend?

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
