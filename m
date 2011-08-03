Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QoVn4-00054R-Ic
	for barebox@lists.infradead.org; Wed, 03 Aug 2011 07:22:55 +0000
Date: Wed, 3 Aug 2011 09:22:51 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110803072251.GN31404@pengutronix.de>
References: <1312268916-16694-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1312268916-16694-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] commands/led.c: check registered LEDs
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Aug 02, 2011 at 11:08:36AM +0400, Antony Pavlov wrote:
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  commands/led.c |    6 ++++++
>  1 files changed, 6 insertions(+), 0 deletions(-)

Applied to master.

Thanks,
  Sascha

> 
> diff --git a/commands/led.c b/commands/led.c
> index afb3fd3..774ba31 100644
> --- a/commands/led.c
> +++ b/commands/led.c
> @@ -37,6 +37,12 @@ static int do_led(struct command *cmdtp, int argc, char *argv[])
>  	if (argc == 1) {
>  		int i = 0;
>  
> +		led = led_by_number(i);
> +		if (!led) {
> +			printf("no registered LEDs\n");
> +			return COMMAND_ERROR;
> +		}
> +
>  		printf("registered LEDs:\n");
>  
>  		while ((led = led_by_number(i))) {
> -- 
> 1.7.5.4
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
