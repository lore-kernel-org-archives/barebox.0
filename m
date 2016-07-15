Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bNwHw-0004aT-5a
 for barebox@lists.infradead.org; Fri, 15 Jul 2016 06:07:54 +0000
Date: Fri, 15 Jul 2016 08:07:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160715060730.GH20657@pengutronix.de>
References: <20160713051805.GZ20657@pengutronix.de>
 <20160714141718.20121-1-iw3gtf@arcor.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20160714141718.20121-1-iw3gtf@arcor.de>
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
Subject: Re: [PATCH 0/4] fixes some problems found in the backligth-pwm
 implementation.
To: iw3gtf@arcor.de
Cc: barebox@lists.infradead.org

On Thu, Jul 14, 2016 at 04:17:14PM +0200, iw3gtf@arcor.de wrote:
> This serie fixes some problems found in the backligth-pwm implementation.
> 
> root (4):
>   video/backlight-pwm: fixed a loop index going out of range.
>   video/backlight-pwm: fix the value of 'brightness_max'.
>   video/backlight-pwm: code readability improvement.
>   video/backlight-pwm: properly handle the case of an empty
>     'brightness-levels' in the device tree.

Applied all, thanks

Sascha

> 
>  drivers/video/backlight-pwm.c | 31 ++++++++++++++++++-------------
>  1 file changed, 18 insertions(+), 13 deletions(-)
> 
> -- 
> 2.9.1
> 
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
