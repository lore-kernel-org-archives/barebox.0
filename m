Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEFN3-0001T8-U7
 for barebox@lists.infradead.org; Tue, 17 Mar 2020 16:47:15 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>) id 1jEFN0-0003kv-CI
 for barebox@lists.infradead.org; Tue, 17 Mar 2020 17:47:10 +0100
References: <20200317151611.4313-1-pmamonov@gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <fb297aaa-6399-baa1-94e5-bc93167ed88f@pengutronix.de>
Date: Tue, 17 Mar 2020 17:47:10 +0100
MIME-Version: 1.0
In-Reply-To: <20200317151611.4313-1-pmamonov@gmail.com>
Content-Language: en-US
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
Subject: Re: [PATCH] reset: add missing stub for device_reset()
To: barebox@lists.infradead.org

Hello Peter,

On 3/17/20 4:16 PM, Peter Mamonov wrote:
> Fixes: 45b95b50cd0b (reset: add reset controller framework)
> Signed-off-by: Peter Mamonov <pmamonov@gmail.com>

I've submitted ("reset: add stub for device_reset when CONFIG_RESET_CONTROLLER=n")
for this, which is currently in the next branch.

Cheers,
Ahmad

> ---
>  include/linux/reset.h | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/include/linux/reset.h b/include/linux/reset.h
> index a22bcf9a5..0d4ff5d19 100644
> --- a/include/linux/reset.h
> +++ b/include/linux/reset.h
> @@ -49,6 +49,12 @@ static inline void reset_control_put(struct reset_control *rstc)
>  	WARN_ON(1);
>  }
>  
> +static inline int device_reset(struct device_d *dev)
> +{
> +	WARN_ON(1);
> +	return 0;
> +}
> +
>  static inline int device_reset_us(struct device_d *dev, int us)
>  {
>  	WARN_ON(1);
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
