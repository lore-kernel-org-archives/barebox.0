Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gUplG-0004CJ-Jm
 for barebox@lists.infradead.org; Thu, 06 Dec 2018 09:16:00 +0000
Date: Thu, 6 Dec 2018 10:15:45 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181206091545.6s72qpyz7q3q6rfx@pengutronix.de>
References: <20181127091935.2992-1-o.rempel@pengutronix.de>
 <20181127091935.2992-9-o.rempel@pengutronix.de>
 <20181205115031.d90c15ad4703eba8f8be818d@gmail.com>
 <ea5bfd0c-c90f-bf9d-2c42-d745cb31a403@rempel-privat.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ea5bfd0c-c90f-bf9d-2c42-d745cb31a403@rempel-privat.de>
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
Subject: Re: [PATCH v3 08/10] MIPS: port all mach* to multiimage
To: Oleksij Rempel <linux@rempel-privat.de>
Cc: Oleksij Rempel <o.rempel@pengutronix.de>, barebox@lists.infradead.org

On Wed, Dec 05, 2018 at 02:58:12PM +0100, Oleksij Rempel wrote:
> Am 05.12.18 um 09:50 schrieb Antony Pavlov:
> > I suppose there is a problem with simultaneous debug_ll support for AR9344 and AR9331 in one binary.
> > the Kconfig DEBUG_AR9331_UART and DEBUG_AR9344_UART options are mutually exclusive.
> > 
> > Your approach makes it possible to build barebox binary image for AR9331 board with debug_ll code for AR9344
> > and vice versa.
> 
> yes, same issues as with most of DEBUG_LL related configurations in
> common/Kconfig. It is possible to misconfigure the DEBUG_LL for board or
> SoC. Currently I don't have a solution except of remove DEBUG_LL support
> completely from Kconfig for MIPS, or introduce some dynamic
> configuration, which is not related to this patch set.

At least on ARM with multi image support you have to make sure to chose
the correct DEBUG_LL UART that fits the board. Or to put the other way
round: Enabling DEBUG_LL limits the build to a single board only, thus it
should only be enabled during debugging.

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
