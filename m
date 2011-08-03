Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QoVtC-00056T-AE
	for barebox@lists.infradead.org; Wed, 03 Aug 2011 07:29:15 +0000
Date: Wed, 3 Aug 2011 09:29:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110803072910.GO31404@pengutronix.de>
References: <1312268888-16657-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1312268888-16657-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] commands/led.c: fix return codes
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Aug 02, 2011 at 11:08:08AM +0400, Antony Pavlov wrote:
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  commands/led.c |    8 ++++----
>  1 files changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/commands/led.c b/commands/led.c

As of now noone uses the COMMAND_ERROR/COMMAND_SUCCESS macros.
I'm not sure they are the way to go anyway. What I would rather
like to see is that commands can return the standard error
values, but this requires changes in hush.c (and the simple
parser), because hush currently has its own (strange) way
of interpreting return codes.

Sascha

> index 360ce7c..afb3fd3 100644
> --- a/commands/led.c
> +++ b/commands/led.c
> @@ -45,7 +45,7 @@ static int do_led(struct command *cmdtp, int argc, char *argv[])
>  					led->max_value);
>  			i++;
>  		}
> -		return 0;
> +		return COMMAND_SUCCESS;
>  	}
>  
>  	if (argc != 3)
> @@ -54,7 +54,7 @@ static int do_led(struct command *cmdtp, int argc, char *argv[])
>  	led = led_by_name_or_number(argv[1]);
>  	if (!led) {
>  		printf("no such LED: %s\n", argv[1]);
> -		return 1;
> +		return COMMAND_ERROR;
>  	}
>  
>  	value = simple_strtoul(argv[optind + 1], NULL, 0);
> @@ -62,10 +62,10 @@ static int do_led(struct command *cmdtp, int argc, char *argv[])
>  	ret = led_set(led, value);
>  	if (ret < 0) {
>  		perror("led");
> -		return 1;
> +		return COMMAND_ERROR;
>  	}
>  
> -	return 0;
> +	return COMMAND_SUCCESS;
>  }
>  
>  /**
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
