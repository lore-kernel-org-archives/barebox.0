Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dAzRx-0000hU-4I
 for barebox@lists.infradead.org; Wed, 17 May 2017 13:57:14 +0000
Date: Wed, 17 May 2017 15:56:51 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170517135651.nj6xmqgml63kpkeq@pengutronix.de>
References: <20170517114649.26061-1-abbotti@mev.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170517114649.26061-1-abbotti@mev.co.uk>
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
Subject: Re: [PATCH] commands: add ':' as alias for 'true'
To: Ian Abbott <abbotti@mev.co.uk>
Cc: barebox@lists.infradead.org

On Wed, May 17, 2017 at 12:46:49PM +0100, Ian Abbott wrote:
> ':' is the null command, sometimes used in shell scripts (especially
> after 'then'), but it is not yet supported by barebox.  It is supposed
> to do nothing, successfully, just like the 'true' command, so add it as
> an alias.
> 
> Signed-off-by: Ian Abbott <abbotti@mev.co.uk>
> ---
>  commands/true.c | 3 +++
>  1 file changed, 3 insertions(+)

Not sure how useful this is, but it's trivial, so why not?
Applied, thanks

Sascha

> 
> diff --git a/commands/true.c b/commands/true.c
> index 24dea4692..b850f5165 100644
> --- a/commands/true.c
> +++ b/commands/true.c
> @@ -26,7 +26,10 @@ static int do_true(int argc, char *argv[])
>  	return 0;
>  }
>  
> +static const char *true_aliases[] = { ":", NULL};
> +
>  BAREBOX_CMD_START(true)
> +	.aliases	= true_aliases,
>  	.cmd		= do_true,
>  	BAREBOX_CMD_DESC("do nothing, successfully")
>  	BAREBOX_CMD_GROUP(CMD_GRP_SCRIPT)
> -- 
> 2.11.0
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
