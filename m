Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHLuG-0006YK-L8
 for barebox@lists.infradead.org; Thu, 26 Mar 2020 06:22:21 +0000
Date: Thu, 26 Mar 2020 07:22:18 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200326062218.GN27288@pengutronix.de>
References: <20200325123111.9612-1-s.hauer@pengutronix.de>
 <20200325123111.9612-16-s.hauer@pengutronix.de>
 <20200325141800.jxdjc2oj7auufv46@tellis.lin.mbt.kalray.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200325141800.jxdjc2oj7auufv46@tellis.lin.mbt.kalray.eu>
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
Subject: Re: [PATCH 15/24] usb: net: Allocate rx buffer dynamically
To: Jules Maselbas <jmaselbas@kalray.eu>
Cc: Barebox List <barebox@lists.infradead.org>

Hi Jules,

On Wed, Mar 25, 2020 at 03:18:00PM +0100, Jules Maselbas wrote:
> Hi Sascha,
> 
> > +	undev->rx_buf = dma_alloc(undev->rx_urb_size);
> Looks like this buffer is never free, same for tx_buf.

Right, thanks for noting. Fixed.

Regards
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
