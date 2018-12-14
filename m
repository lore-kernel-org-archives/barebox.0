Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gXlO2-0008WN-2l
 for barebox@lists.infradead.org; Fri, 14 Dec 2018 11:12:25 +0000
Date: Fri, 14 Dec 2018 12:11:53 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181214111153.oyrd5pjomj4gu2q2@pengutronix.de>
References: <20181213071033.30932-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181213071033.30932-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 1/3] serial: amba-pl011: Fix regulator_get() return check
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Dec 12, 2018 at 11:10:31PM -0800, Andrey Smirnov wrote:
> NULL is used to designate a dummy regulator, so it it should be safe
> to use against regulator_enable(). Any value that would retrun true
> for IS_ERR(), OTOH, is not. Such value would also pass "if (r)" check
> without any problems.
> 
> Fix the code to use !IS_ERR() instead.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  drivers/serial/amba-pl011.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/serial/amba-pl011.c b/drivers/serial/amba-pl011.c
> index 4c4067d5b..ce40f840f 100644
> --- a/drivers/serial/amba-pl011.c
> +++ b/drivers/serial/amba-pl011.c
> @@ -185,7 +185,7 @@ static int pl011_probe(struct amba_device *dev, const struct amba_id *id)
>  	struct regulator *r;
>  
>  	r = regulator_get(&dev->dev, NULL);
> -	if (r) {
> +	if (!IS_ERR(r)) {
>  		int ret;
>  
>  		ret = regulator_enable(r);
> -- 
> 2.19.1
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
