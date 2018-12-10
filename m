Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gWHKP-0002pc-Rt
 for barebox@lists.infradead.org; Mon, 10 Dec 2018 08:54:15 +0000
Date: Mon, 10 Dec 2018 09:53:57 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181210085357.nr7nqykdinvh6s37@pengutronix.de>
References: <20181207072932.32647-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181207072932.32647-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH] mfd: rave-sp: Make use of wait_on_timeout()
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Dec 06, 2018 at 11:29:32PM -0800, Andrey Smirnov wrote:
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  drivers/mfd/rave-sp.c | 8 ++------
>  1 file changed, 2 insertions(+), 6 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/mfd/rave-sp.c b/drivers/mfd/rave-sp.c
> index 469ce4cc0..cc897b122 100644
> --- a/drivers/mfd/rave-sp.c
> +++ b/drivers/mfd/rave-sp.c
> @@ -314,7 +314,6 @@ int rave_sp_exec(struct rave_sp *sp,
>  	unsigned char *data = __data;
>  	int command, ret = 0;
>  	u8 ackid;
> -	uint64_t start = get_time_ns();
>  
>  	command = sp->variant->cmd.translate(data[0]);
>  	if (command < 0)
> @@ -334,12 +333,9 @@ int rave_sp_exec(struct rave_sp *sp,
>  	 * is_timeout will implicitly poll serdev via poller
>  	 * infrastructure
>  	 */
> -	while (!is_timeout(start, SECOND) && !reply.received)
> -		;
> -
> -	if (!reply.received) {
> +	ret = wait_on_timeout(SECOND, reply.received);
> +	if (ret) {
>  		dev_err(dev, "Command timeout\n");
> -		ret = -ETIMEDOUT;
>  		sp->reply = NULL;
>  	}
>  
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
