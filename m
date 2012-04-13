Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SIfug-0000xr-5J
 for barebox@lists.infradead.org; Fri, 13 Apr 2012 12:47:42 +0000
Date: Fri, 13 Apr 2012 14:47:35 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120413124735.GM3852@pengutronix.de>
References: <20120413101046.GF11079@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120413101046.GF11079@game.jcrosoft.org>
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
Subject: Re: [PATCH 0/2] zImage fix
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Fri, Apr 13, 2012 at 12:10:46PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> HI,
> 
> 	fix zImage support when a oftree is concataned
> 
> 	if the oftree is enabled used it
> 	otherwise just copy it
> 
> The following changes since commit d034757079c34d6ce258c1fd08f0bb1352e75622:
> 
>   arm: add Android boot image support (2012-04-13 18:13:53 +0800)
> 
> are available in the git repository at:
> 
>   git://git.jcrosoft.org/barebox.git zImage
> 
> for you to fetch changes up to cc80bdcb3991f995091697c035d156e1f03c6a35:
> 
>   arm: bootm: zImage allow to use the concataned oftree (2012-04-13 18:22:36 +0800)

Applied, thanks.

Sascha

> 
> ----------------------------------------------------------------
> Jean-Christophe PLAGNIOL-VILLARD (2):
>       arm: fix zImage support when a oftree is concatenated
>       arm: bootm: zImage allow to use the concataned oftree
> 
>  arch/arm/lib/bootm.c |   69 ++++++++++++++++++++++++++++++++++++++++++++++++++
>  1 files changed, 69 insertions(+), 0 deletions(-)
> 
> 
> Best Regards,
> J.
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
