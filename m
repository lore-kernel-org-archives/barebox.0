Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bgnMB-0006Xg-HJ
 for barebox@lists.infradead.org; Mon, 05 Sep 2016 06:26:12 +0000
Date: Mon, 5 Sep 2016 08:25:49 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160905062549.ydiq73qbkj2xemop@pengutronix.de>
References: <1472715224-2562-1-git-send-email-ejo@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1472715224-2562-1-git-send-email-ejo@pengutronix.de>
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
Subject: Re: [PATCH] commands: saveenv: exit on invalid option
To: Enrico Jorns <ejo@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Sep 01, 2016 at 09:33:44AM +0200, Enrico Jorns wrote:
> Saveenv should not perform any actions if an invalid parameter was
> given.
> 
> Signed-off-by: Enrico Jorns <ejo@pengutronix.de>
> ---
>  commands/saveenv.c | 2 ++
>  1 file changed, 2 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/commands/saveenv.c b/commands/saveenv.c
> index 6f210b7..bc1202f 100644
> --- a/commands/saveenv.c
> +++ b/commands/saveenv.c
> @@ -35,6 +35,8 @@ static int do_saveenv(int argc, char *argv[])
>  		case 'z':
>  			envfs_flags |= ENVFS_FLAGS_FORCE_BUILT_IN;
>  			break;
> +		default:
> +			return COMMAND_ERROR_USAGE;
>  		}
>  	}
>  
> -- 
> 2.8.1
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
