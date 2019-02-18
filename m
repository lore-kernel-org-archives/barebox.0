Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gveVi-0003LB-Hp
 for barebox@lists.infradead.org; Mon, 18 Feb 2019 08:42:48 +0000
Date: Mon, 18 Feb 2019 09:42:44 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190218084244.j5eoggrgfgedsuuo@pengutronix.de>
References: <20190214132429.7463-1-tomaz.solc@tablix.org>
 <20190214132429.7463-6-tomaz.solc@tablix.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190214132429.7463-6-tomaz.solc@tablix.org>
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
Subject: Re: [PATCH 5/7] mci: move after pinctrl in link order.
To: Tomaz Solc <tomaz.solc@tablix.org>
Cc: barebox@lists.infradead.org

On Thu, Feb 14, 2019 at 02:24:27PM +0100, Tomaz Solc wrote:
> pinctrl driver needs to be initialized before mci driver or the pinctrl
> device tree properties in the mci node are ignored. Since mci is already
> initialized by the coredevice_initcall(), changing the link order is currently
> the only way to ensure that.

The same applies most other subsystems, so instead of moving mci down I
would rather suggest to move pinctrl up.

The other thing is: Why does the bcm2835 mci driver use coredevice_initcall()
at all? Normally it should be a device_initcall(). Since the
coredevice_initcall() goes back to the initial commit of the driver I
suspect there is no special reason for that decision and so I think we
should just change to device_initcall().

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
