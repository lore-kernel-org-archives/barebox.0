Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TmTzk-0001Fb-LT
 for barebox@lists.infradead.org; Sat, 22 Dec 2012 18:40:25 +0000
Date: Sat, 22 Dec 2012 19:40:23 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121222184023.GS26326@pengutronix.de>
References: <20121221132530.GB3406@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121221132530.GB3406@game.jcrosoft.org>
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
Subject: Re: [PATCH 0/2 v2] gpiolib: add request and free support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Fri, Dec 21, 2012 at 02:25:30PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> HI,
> 
> 	v2:
> 	introduce gpio_ensure_requested
> 
> 	This allow to trac which gpio is used for what
> 	and allow drivers to have custom request and free
> 
> 	as example on at91 mux the pin as gpio on request
> 
> The following changes since commit b46b57f35a27090cfbac4900d1a3d522d7898e53:
> 
>   MFD MC34708: Add dependence on SPI (2012-12-21 12:18:08 +0100)
> 
> are available in the git repository at:
> 
>   git://git.jcrosoft.org/barebox.git delivery/gpiolib

Applied, thanks

Sascha

> 
> for you to fetch changes up to 56685f7f8f617724c320013a4ca4946b92b00f67:
> 
>   gpiolib: add command to dump the current gpio status (2012-12-21 21:10:25 +0800)
> 
> ----------------------------------------------------------------
> Jean-Christophe PLAGNIOL-VILLARD (2):
>       gpiolib: add gpio_request and gpio_free support
>       gpiolib: add command to dump the current gpio status
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
