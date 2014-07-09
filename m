Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X4v1m-0003Zu-M7
 for barebox@lists.infradead.org; Wed, 09 Jul 2014 16:47:31 +0000
Date: Wed, 9 Jul 2014 18:47:07 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140709164707.GC23235@pengutronix.de>
References: <1404921012.3612.15.camel@lws-gamez.phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1404921012.3612.15.camel@lws-gamez.phytec.de>
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
Subject: Re: AM335x MLO images broken
To: Teresa Gamez <t.gamez@phytec.de>
Cc: barebox@lists.infradead.org

On Wed, Jul 09, 2014 at 05:50:12PM +0200, Teresa Gamez wrote:
> Hello Sascha,
> 
> since 
> 
> commit d1ec6fb0c9bb66939e85964c2f5214b117c78ecf
> Author: Sascha Hauer <s.hauer@pengutronix.de>
> Date:   Mon Jul 7 14:13:14 2014 +0200
> 
>     ARM: OMAP: Do not show MLO/SPI image options with OMAP_MULTI_BOARDS
> 
> 
> the creation of a proper MLO image is not working any more. When I run 
> make am335x_mlo_defconfig && make I get:
> ..
> images built:
> barebox-am33xx-phytec-phycore.img
> barebox-am33xx-beaglebone.img
> 
> instead of the expected
> 
> barebox-am33xx-phytec-phycore-mlo.img
> barebox-am33xx-beaglebone-mlo.img
> 
> and they also won't work.

Looks like a side effect of:

| commit d1ec6fb0c9bb66939e85964c2f5214b117c78ecf
| Author: Sascha Hauer <s.hauer@pengutronix.de>
| Date:   Mon Jul 7 14:13:14 2014 +0200
| 
|     ARM: OMAP: Do not show MLO/SPI image options with OMAP_MULTI_BOARDS
|     
|     The MLO/SPI image options have no effect with OMAP_MULTI_BOARDS
|     enabled, so do not show them.
|     
|     Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

I haven't looked whether there's a better solution than reverting the
commit.

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
