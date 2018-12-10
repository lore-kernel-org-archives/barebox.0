Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gWHL3-0007xA-9R
 for barebox@lists.infradead.org; Mon, 10 Dec 2018 08:54:55 +0000
Date: Mon, 10 Dec 2018 09:54:41 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181210085441.wt35ingr47brdfnj@pengutronix.de>
References: <20181207073059.1703-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181207073059.1703-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 1/3] led: core: Don't call get_time_us() twice
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Dec 06, 2018 at 11:30:57PM -0800, Andrey Smirnov wrote:
> The code doesn't seem to be time-sensitive enough to warrant calling
> get_time_ns() twice instead of caching its value and using it no both
> places.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  drivers/led/core.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/led/core.c b/drivers/led/core.c
> index a388e6b36..f11504ace 100644
> --- a/drivers/led/core.c
> +++ b/drivers/led/core.c
> @@ -127,12 +127,13 @@ static void led_blink_func(struct poller_struct *poller)
>  	struct led *led;
>  
>  	list_for_each_entry(led, &leds, list) {
> +		const uint64_t now = get_time_ns();
>  		int on;
>  
>  		if (!led->blink && !led->flash)
>  			continue;
>  
> -		if (led->blink_next_event > get_time_ns()) {
> +		if (led->blink_next_event > now) {
>  			continue;
>  		}
>  
> @@ -140,7 +141,7 @@ static void led_blink_func(struct poller_struct *poller)
>  		if (on)
>  			on = led->max_value;
>  
> -		led->blink_next_event = get_time_ns() +
> +		led->blink_next_event = now +
>  			(led->blink_states[led->blink_next_state] * MSECOND);
>  		led->blink_next_state = (led->blink_next_state + 1) %
>  					led->blink_nr_states;
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
