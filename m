Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lAUAB-0005ub-CP
 for barebox@lists.infradead.org; Fri, 12 Feb 2021 08:50:56 +0000
Date: Fri, 12 Feb 2021 09:50:54 +0100
Message-ID: <20210212085054.GG19583@pengutronix.de>
References: <20210211150348.3670852-1-l.goehrs@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210211150348.3670852-1-l.goehrs@pengutronix.de>
From: Sascha Hauer <sha@pengutronix.de>
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
Subject: Re: [PATCH] watchdog: prevent the STPMIC1 watchdog probe from
 modifying the global turn-OFF behaviour
To: Leonard =?iso-8859-15?Q?G=F6hrs?= <l.goehrs@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Feb 11, 2021 at 04:03:48PM +0100, Leonard G=F6hrs wrote:
> According to Table 12 in the STPMIC1-datasheet (Rev 7 - December 2020)
> there are the following turn-OFF conditions:
> =

> - Software switch-OFF*
> - PONKEYn long key press*
> - Thermal shutdown
> - Overcurrent protection
> - Watchdog*
> - VIN_OK_Fall*
> =

> The conditions marked with an * can be re-configured from turn-Off condit=
ions
> to restart requests using the RREQ_EN-bit in the CR register
> (Called RESTART_REQUEST_ENABLED in Linux/Barebox).
> =

> The watchdog code enabled this bit in it's probe function to trigger a re=
start
> on a watchdog event. This may however result in unexpected behaviour,
> like a long-press of the PONKEY resulting in a restart instead of a turn-=
off
> when the watchdog is enabled vs. when it is not.
> =

> This change does not affect the restart and poweroff functionality provid=
ed by
> the wdt driver, as the restart-/poweroff-handlers explicitly set/clear the
> RESTART_REQUEST_ENABLED flag when triggering a software turn-OFF.
> =

> To prevent unexpected behaviour of the PONKEYn and other turn-OFF sources=
 the
> RESTART_REQUEST_ENABLED configuration in the probe function can and shoul=
d thus be removed.
> =

> Signed-off-by: Leonard G=F6hrs <l.goehrs@pengutronix.de>
> ---
>  drivers/watchdog/stpmic1_wdt.c | 4 ----
>  1 file changed, 4 deletions(-)

Applied, thanks

Sascha

-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
