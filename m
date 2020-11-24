Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1khTzG-0006V2-C6
 for barebox@lists.infradead.org; Tue, 24 Nov 2020 08:47:47 +0000
Date: Tue, 24 Nov 2020 09:47:44 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20201124084744.GD14718@pengutronix.de>
References: <20201123161432.28064-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201123161432.28064-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH 1/3] commands: boot: fix error code/clean up behavior
 when not booting
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Nov 23, 2020 at 05:14:30PM +0100, Ahmad Fatoum wrote:
> The boot command won't boot if:
>   - There are no boot entries: we should still clean up before
>     returning an error
>   - A menu or list of found entries should be displayed: we should
>     exit with success
>   - We were doing a dry run: we should propagate the boot entry
>     boot method's exit code
> 
> Do the necessary.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  commands/boot.c | 13 +++++--------
>  1 file changed, 5 insertions(+), 8 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/commands/boot.c b/commands/boot.c
> index d7795bde726b..18f4e36ec733 100644
> --- a/commands/boot.c
> +++ b/commands/boot.c
> @@ -97,19 +97,16 @@ static int do_boot(int argc, char *argv[])
>  
>  	if (list_empty(&entries->entries)) {
>  		printf("Nothing bootable found\n");
> -		return COMMAND_ERROR;
> -	}
> -
> -	if (do_list) {
> -		bootsources_list(entries);
> +		ret = COMMAND_ERROR;
>  		goto out;
>  	}
>  
> -	if (do_menu) {
> +	if (do_list)
> +		bootsources_list(entries);
> +	else if (do_menu)
>  		bootsources_menu(entries, timeout);
> -		goto out;
> -	}
>  
> +	ret = 0;
>  out:
>  	bootentries_free(entries);
>  	free(freep);
> -- 
> 2.29.2
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
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
