Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ftFVU-0007mF-9K
 for barebox@lists.infradead.org; Fri, 24 Aug 2018 17:04:21 +0000
Date: Fri, 24 Aug 2018 19:04:07 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180824170407.geeahhgkqntovpi5@pengutronix.de>
References: <20180824151739.8883-1-m.grzeschik@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180824151739.8883-1-m.grzeschik@pengutronix.de>
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
Subject: Re: [PATCH] imx{5,6}: reset otg port after usb-serial boot
To: Michael Grzeschik <m.grzeschik@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Aug 24, 2018 at 05:17:39PM +0200, Michael Grzeschik wrote:
> The ROM loader leaves the otg port in peripheral mode which confuses the
> host controller. After the handover to barebox we ensure to bring in the
> port into the otg state by resetting it.
> 
> Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
> ---
> This was tested with mx53 and mx6 for now. I suppose we should
> adopt this to the mx2 and mx3 models.

Looks like a variant of the patch I posted here:
https://www.spinics.net/lists/u-boot-v2/msg34153.html
I have given the reason this can't be applied directly here:
https://www.spinics.net/lists/u-boot-v2/msg34196.html

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
