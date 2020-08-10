Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k5EN2-0008Mc-Ts
 for barebox@lists.infradead.org; Mon, 10 Aug 2020 20:26:13 +0000
Date: Mon, 10 Aug 2020 22:26:11 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200810202611.GC9475@pengutronix.de>
References: <20200721120600.15114-1-jmaselbas@kalray.eu>
 <20200721120600.15114-3-jmaselbas@kalray.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200721120600.15114-3-jmaselbas@kalray.eu>
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
Subject: Re: [PATCH v3 02/14] usb: dwc2: Add host controller driver
To: Jules Maselbas <jmaselbas@kalray.eu>
Cc: Barebox List <barebox@lists.infradead.org>

On Tue, Jul 21, 2020 at 02:05:48PM +0200, Jules Maselbas wrote:
> The host driver is taken from U-Boot and mix with some part from Linux.

Which versions exactly? Having the base version helps when we later want
to update the driver from newer U-Boot or Kernel versions.

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
