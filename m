Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TA2hP-0000M2-75
 for barebox@lists.infradead.org; Fri, 07 Sep 2012 17:50:35 +0000
Date: Fri, 7 Sep 2012 19:50:33 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120907175033.GY26594@pengutronix.de>
References: <20120905122556.GF32603@game.jcrosoft.org>
 <1346848107-4664-1-git-send-email-plagnioj@jcrosoft.com>
 <1346848107-4664-5-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1346848107-4664-5-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 5/7] echo: always allow to pass -e option
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Wed, Sep 05, 2012 at 02:28:25PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> This will allow to do not taint if not enabled
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  commands/echo.c |    4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/commands/echo.c b/commands/echo.c
> index a19d992..566f5c2 100644
> --- a/commands/echo.c
> +++ b/commands/echo.c
> @@ -66,11 +66,11 @@ static int do_echo(int argc, char *argv[])
>  				goto no_optarg_out;
>  			optind++;
>  			break;
> -#ifdef CONFIG_CMD_ECHO_E
>  		case 'e':
> +#ifdef CONFIG_CMD_ECHO_E
>  			process_escape = 1;

Better:
			process_escape = IS_ENABLED(CONFIG_CMD_ECHO_E);

Sascha

> -			break;
>  #endif
> +			break;
>  		default:
>  			goto exit_parse;
>  		}
> -- 
> 1.7.10.4
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
