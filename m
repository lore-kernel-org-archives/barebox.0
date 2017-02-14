Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cdYno-0003OV-FW
 for barebox@lists.infradead.org; Tue, 14 Feb 2017 08:49:39 +0000
Date: Tue, 14 Feb 2017 09:49:11 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20170214084911.7uhr6t7qrghjoomp@pengutronix.de>
References: <20170126100159.6036-1-u.kleine-koenig@pengutronix.de>
 <20170126143027.GB21086@berta>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170126143027.GB21086@berta>
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
Subject: Re: [PATCH] ata: new driver to support the internal sata controller
 on Armada-XP
To: Peter Mamonov <pmamonov@gmail.com>
Cc: barebox@lists.infradead.org

Hallo Peter,

On Thu, Jan 26, 2017 at 05:30:27PM +0300, Peter Mamonov wrote:
> Our approach for the same problem was to put SATA PHY initialization into=
 the =

> board specific code (I guess in your case it is =

> arch/arm/boards/marvell-armada-xp-gp/board.c) and bind the generic ATA dr=
iver =

> (drivers/ata/intf_platform_ide.c) via the device tree.

I copied the PHY initialisation from U-Boot generic code, so I think
there is nothing board-specific here and having that code in a driver is
fine. Also this approach works with the dt that is imported from the
kernel. (Not sure if that is applicable to your solution?)

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
