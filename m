Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1Qwr87-000055-R0
	for barebox@lists.infradead.org; Fri, 26 Aug 2011 07:47:08 +0000
Date: Fri, 26 Aug 2011 09:47:02 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110826074702.GD31404@pengutronix.de>
References: <4E56DD74.4070102@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4E56DD74.4070102@gmail.com>
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
Subject: Re: [PATCH] Autocomplete fix
To: Carlo Caione <carlo.caione@gmail.com>
Cc: barebox@lists.infradead.org

Hello Carlo,

You have trailing whitespaces in your patch, also your mailer wraps
lines. Please fix this before resending.

On Thu, Aug 25, 2011 at 04:40:36PM -0700, Carlo Caione wrote:
> Autocomplete fixed: now working also to autocomplete file names as
> first argument.
> 
> i.e.:
> 
> # ./en<TAB> completes to # ./env/
> 
> Signed-off-by: Carlo Caione <carlo.caione@gmail.com>
> ---
>  common/complete.c |   13 +++++++++----
>  1 files changed, 9 insertions(+), 4 deletions(-)
> 
> diff --git a/common/complete.c b/common/complete.c
> index 46ba871..543e649 100644
> --- a/common/complete.c
> +++ b/common/complete.c
> @@ -71,6 +71,7 @@ static int command_complete(struct string_list
> *sl, char *instr)
>  {
>  	struct command *cmdtp;
>  	char cmd[128];
> +	int found = 0;
> 
>  	for_each_command(cmdtp) {
>  		if (!strncmp(instr, cmdtp->name, strlen(instr))) {
> @@ -78,10 +79,11 @@ static int command_complete(struct string_list
> *sl, char *instr)
>  			cmd[strlen(cmdtp->name)] = ' ';
>  			cmd[strlen(cmdtp->name) + 1] = 0;
>  			string_list_add(sl, cmd);
> +			found = 1;
>  		}
>  	}
> 
> -	return 0;
> +	return(found);

No () with return please.

>  }
> 
>  static int tab_pressed = 0;
> @@ -116,13 +118,16 @@ int complete(char *instr, char **outstr)
> 
>  	instr = t;
> 
> -	/* get the completion possibilities */
>  	if ((t = strrchr(t, ' '))) {
>  		t++;
>  		file_complete(&sl, t);
>  		instr = t;
> -	} else
> -		command_complete(&sl, instr);
> +	} else {
> +		if(!command_complete(&sl, instr)){	
> +			file_complete(&sl, instr);
> +		}

This will only show the file completion when no suitable command is
found which is a bit strange behaviour. Normally I would expect to
see all possibilities. This can easily be archieved by calling both
command_complete() and file_complete() unconditionally.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
