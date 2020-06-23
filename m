Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jneDL-0000TA-Es
 for barebox@lists.infradead.org; Tue, 23 Jun 2020 08:23:32 +0000
Date: Tue, 23 Jun 2020 10:23:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200623082330.GW11869@pengutronix.de>
References: <20200622151525.21082-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200622151525.21082-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH v2] startup: inhibit watchdogs on non-interactive
 autoboot abort
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Jun 22, 2020 at 05:15:25PM +0200, Ahmad Fatoum wrote:
> nv.autoboot=abort has been added as development aid to have barebox stop
> at the shell prompt automatically. It makes sense to inhibit all watchdogs
> in this mode, so the user can later use the shell in peace.

As a person who is frequently annoyed by watchdogs I really like this
change.

We could add a new option to the wd command to call
watchdog_inhibit_all() for the case when the autoboot timeout has been
interrupted by the user.

Anyway, this could be done as a separate patch.

Applied, thanks

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
