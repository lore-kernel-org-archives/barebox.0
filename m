Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9l6Z-0007PM-Ft
 for barebox@lists.infradead.org; Mon, 16 Sep 2019 07:07:25 +0000
Date: Mon, 16 Sep 2019 09:07:18 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190916070718.3va4rzjkdsoriyj6@pengutronix.de>
References: <20190913131446.8202-1-m.tretter@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190913131446.8202-1-m.tretter@pengutronix.de>
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
Subject: Re: [PATCH v3 0/8] Device Tree Overlay Support
To: Michael Tretter <m.tretter@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Sep 13, 2019 at 03:14:38PM +0200, Michael Tretter wrote:
> Hello,
> 
> This is the v3 for adding device tree overlay support to barebox.
> 
> I added a new config item for building the build-in device tree with
> __symbols__. As __symbols__ increases the size of the dtb and you don't need
> symbols in the build-in device tree to use overlays on other device trees.
> Therefore, this should be disabled unless actually needed.
> 
> Furthermore, I completely reworked the function to load firmware from a
> devicetree overlay, because it must be successful whenever the overlay does
> not reference firmware. However, it must always fail if the overlay references
> firmware which cannot be loaded, because Barebox must not apply the overlay
> without the according firmware.
> 
> There are a few other minor changes which I describe in the respective
> patches.

Applied, thanks

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
