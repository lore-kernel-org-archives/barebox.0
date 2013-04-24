Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UUvAh-00033j-FE
 for barebox@lists.infradead.org; Wed, 24 Apr 2013 08:35:24 +0000
Date: Wed, 24 Apr 2013 10:35:21 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130424083521.GB32299@pengutronix.de>
References: <1366382189-15575-1-git-send-email-mkl@pengutronix.de>
 <517797C5.3010208@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <517797C5.3010208@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2] ARM i.MX28: make chip reset via reset pin work again
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: barebox@lists.infradead.org, Steffen Trumtrar <s.trumtrar@pengutronix.de>

On Wed, Apr 24, 2013 at 10:28:53AM +0200, Marc Kleine-Budde wrote:
> On 04/19/2013 04:36 PM, Marc Kleine-Budde wrote:
> > Since commit:
> > 
> >     2ccd451 ARM i.MX28: change default watchdog reset method
> > 
> > the external reset via the reset pin is broken. That commit overwrites the
> > HW_CLKCTRL_RESET register with only WDOG_POR_DISABLE set, which results in
> > disabling the external reset.
> > 
> > This patch uses read-modify-write to set the WDOG_POR_DISABLE, leaving the
> > WDOG_POR_DISABLE untouched.
> > 
> > Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> > Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
> 
> ping

pong.

For master?

Sascha


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
