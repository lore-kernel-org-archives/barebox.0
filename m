Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZS4cX-0000us-SN
 for barebox@lists.infradead.org; Wed, 19 Aug 2015 14:45:42 +0000
Date: Wed, 19 Aug 2015 16:45:19 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150819144519.GK18700@pengutronix.de>
References: <55CB2C1C.4000002@insync.tv>
 <20150819142020.GF18700@pengutronix.de>
 <55D492C1.3000003@insync.tv>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <55D492C1.3000003@insync.tv>
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
Subject: Re: MTD with non-power-of-2 page size
To: Dave Kitchen <dave.kitchen@insync.tv>
Cc: barebox@lists.infradead.org

On Wed, Aug 19, 2015 at 03:29:21PM +0100, Dave Kitchen wrote:
> Hi Sascha
> 
> Thank you for the hint. I now have running code with the
> non-power-of-2 page size.
> Shall I try and generate/submit a patch for this?

Yes please.

> The code may be
> marginally slower in the power-of-2 case than the original, but I
> defy anyone to notice if they are using spi boot!

Well this code is not only executed for SPI Flashes but also NAND
flashes. Anyway, the speed penalty should be negligible.

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
