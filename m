Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T6iq2-00024F-Ni
 for barebox@lists.infradead.org; Wed, 29 Aug 2012 14:01:47 +0000
Date: Wed, 29 Aug 2012 16:01:45 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120829140145.GC26594@pengutronix.de>
References: <1345648133-31721-1-git-send-email-renaud.barbier@ge.com>
 <1345648133-31721-3-git-send-email-renaud.barbier@ge.com>
 <20120828091913.GF26594@pengutronix.de> <503E2056.5050305@ge.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <503E2056.5050305@ge.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 2/3] Freescale I2C driver
To: Renaud Barbier <renaud.barbier@ge.com>
Cc: barebox@lists.infradead.org

On Wed, Aug 29, 2012 at 02:59:50PM +0100, Renaud Barbier wrote:
> On 28/08/12 10:19, Sascha Hauer wrote:
> 
> > 
> > These defines look awfully familiar. Can we use
> > drivers/i2c/busses/i2c-imx.c instead of adding a new driver?
> It indeed does work on the ppc P2020rdb after setting the clock.

nice :)

> 
> Question: is the included header <gpio.h> necessary in the imx I2C driver?

No, it doesn't seem so

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
