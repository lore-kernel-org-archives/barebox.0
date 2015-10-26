Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zqc5Y-0006wj-6W
 for barebox@lists.infradead.org; Mon, 26 Oct 2015 07:21:05 +0000
Date: Mon, 26 Oct 2015 08:20:42 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151026072042.GU14476@pengutronix.de>
References: <1445502038-2566-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1445502038-2566-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] fixup! commands: clk_dump: use COMMAND_SUCCESS instead
 of 0 return code
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Oct 22, 2015 at 11:20:38AM +0300, Antony Pavlov wrote:
> Sorry, I have missed that occurence.
> So we can change original patch subject line to
> 
> 
>   commands: clk: use COMMAND_SUCCESS instead of 0

Did that.

Sascha

> 
> 
> ---
>  commands/clk.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/commands/clk.c b/commands/clk.c
> index 2bfdfdf..e9459a3 100644
> --- a/commands/clk.c
> +++ b/commands/clk.c
> @@ -40,7 +40,7 @@ static int do_clk_disable(int argc, char *argv[])
>  
>  	clk_disable(clk);
>  
> -	return 0;
> +	return COMMAND_SUCCESS;
>  }
>  
>  BAREBOX_CMD_START(clk_disable)
> -- 
> 2.6.0
> 
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
