Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dsNdL-0007X2-RV
 for barebox@lists.infradead.org; Thu, 14 Sep 2017 06:28:29 +0000
Date: Thu, 14 Sep 2017 08:27:54 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170914062754.ssohtnuhds4rpav3@pengutronix.de>
References: <20170913122332.17585-1-ejo@pengutronix.de>
 <20170913122332.17585-2-ejo@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170913122332.17585-2-ejo@pengutronix.de>
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
Subject: Re: [PATCH 1/5] commands: nv: argc cannot be < 1
To: Enrico Jorns <ejo@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Sep 13, 2017 at 02:23:28PM +0200, Enrico Jorns wrote:
> argc == 1 will only contain the name of the program itself which must be
> present when invoking nv command code.

This reasoning is not quite right. You miss the argc -= optind above the
argc < 1 test. In fact in patch 4/5 you re-add the same test again
(written as argc == 0 this time).

Shouldn't this patch simply be merged with 4/5?

Sascha

> 
> Signed-off-by: Enrico Jorns <ejo@pengutronix.de>
> ---
>  commands/nv.c | 3 ---
>  1 file changed, 3 deletions(-)
> 
> diff --git a/commands/nv.c b/commands/nv.c
> index 37cdb96647..eb396bfd9b 100644
> --- a/commands/nv.c
> +++ b/commands/nv.c
> @@ -55,9 +55,6 @@ static int do_nv(int argc, char *argv[])
>  	argc -= optind;
>  	argv += optind;
>  
> -	if (argc < 1)
> -		return COMMAND_ERROR_USAGE;
> -
>  	for (i = 0; i < argc; i++) {
>  		value = strchr(argv[0], '=');
>  		if (value) {
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
