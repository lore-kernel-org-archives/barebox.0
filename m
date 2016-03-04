Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1abk1X-0008DK-2Y
 for barebox@lists.infradead.org; Fri, 04 Mar 2016 07:19:43 +0000
Date: Fri, 4 Mar 2016 08:19:21 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160304071921.GD21869@pengutronix.de>
References: <1457018230-4554-1-git-send-email-rndfax@yandex.ru>
 <1457018230-4554-2-git-send-email-rndfax@yandex.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1457018230-4554-2-git-send-email-rndfax@yandex.ru>
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
Subject: Re: [PATCH 2/2] input: make the Input Core be the last in the poller
 queue
To: Aleksey Kuleshov <rndfax@yandex.ru>
Cc: barebox@lists.infradead.org

On Thu, Mar 03, 2016 at 06:17:10PM +0300, Aleksey Kuleshov wrote:
> This prevents the case when Input Core and event providers
> have to run "at one time" so Input Core will work with non-relevant
> data since it will be called first.
> ---
>  drivers/input/input.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)

I tested the approach to add a .poll callback into struct input_device
and to let the input core register one poller for all input devices
rather than one poller for each device. This also gives the input core
better control when the input devices are polled. Would that approach go
into the right direction?
I have no ready-to-post patch for this approach, partly because it doesn't
solve the double-return problem and I currently don't understand why.

Sascha

> 
> diff --git a/drivers/input/input.c b/drivers/input/input.c
> index 31a9c22..1a8efc6 100644
> --- a/drivers/input/input.c
> +++ b/drivers/input/input.c
> @@ -178,11 +178,13 @@ static void input_console_notify(struct input_notifier *in,
>  	if (ev->value) {
>  		kfifo_putc(ic->fifo, ascii);
>  		ic->current_key = ascii;
> +		poller_async_register(&ic->poller);
>  		poller_call_async(&ic->poller, 400 * MSECOND,
>  				  input_console_repeat, ic);
>  	} else {
>  		ic->current_key = 0;
>  		poller_async_cancel(&ic->poller);
> +		poller_async_unregister(&ic->poller);
>  	}
>  }
>  
> @@ -199,7 +201,6 @@ static int input_init(void)
>  	ic->fifo = kfifo_alloc(32);
>  	ic->notifier.notify = input_console_notify;
>  	input_register_notfier(&ic->notifier);
> -	poller_async_register(&ic->poller);
>  
>  	return console_register(&ic->console);
>  }
> -- 
> 2.6.2
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
