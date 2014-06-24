Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WzKzb-00089U-SC
 for barebox@lists.infradead.org; Tue, 24 Jun 2014 07:18:12 +0000
Date: Tue, 24 Jun 2014 09:17:49 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140624071749.GD15686@pengutronix.de>
References: <1403591596-13955-1-git-send-email-dev@lynxeye.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1403591596-13955-1-git-send-email-dev@lynxeye.de>
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
Subject: Re: [PATCH 1/3] arm: imx6: move imx6_init_lowlevel to single initcall
To: Lucas Stach <dev@lynxeye.de>
Cc: barebox@lists.infradead.org

On Tue, Jun 24, 2014 at 08:33:14AM +0200, Lucas Stach wrote:
> Instead of repeating the same lowlevel init for every board
> move it to it's own initcall.
> 
> Avoids code bloat and shaves off almost 1.5kB of uncompressed
> barebox size for a default imx_v7_defconfig build.
> 
> For boards wherethe hostname setup was done in  the postcore
> initcall we move this to a device initcall to get it out of
> the way.
> 
> Signed-off-by: Lucas Stach <dev@lynxeye.de>

You could also call imx6_init_lowlevel from imx6_init which is also
called at postcore_initcall time.

At the moment are boards are free to:

- replace imx6_init_lowlevel with their own version
- Call imx6_init_lowlevel earlier

I hope we won't regret this change when we get some special board.

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
