Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W06WW-00054P-0q
 for barebox@lists.infradead.org; Mon, 06 Jan 2014 09:31:05 +0000
Date: Mon, 6 Jan 2014 10:25:42 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140106092541.GF24559@pengutronix.de>
References: <1387442368-27731-1-git-send-email-j.weitzel@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1387442368-27731-1-git-send-email-j.weitzel@phytec.de>
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
Subject: Re: [PATCH] oftree command: Allow free stored dtb before load
To: Jan Weitzel <j.weitzel@phytec.de>
Cc: barebox@lists.infradead.org

On Thu, Dec 19, 2013 at 09:39:28AM +0100, Jan Weitzel wrote:
> Don't return after freeing stored devicetree if also loading ist wanted.
> Allow  "oftree -f -l my.dtb"
> 
> Signed-off-by: Jan Weitzel <j.weitzel@phytec.de>

Applied, thanks

Sascha


> ---
>  commands/oftree.c |    3 ++-
>  1 files changed, 2 insertions(+), 1 deletions(-)
> 
> diff --git a/commands/oftree.c b/commands/oftree.c
> index 475f019..3fa516c 100644
> --- a/commands/oftree.c
> +++ b/commands/oftree.c
> @@ -88,7 +88,8 @@ static int do_oftree(int argc, char *argv[])
>  		if (root)
>  			of_delete_node(root);
>  
> -		return 0;
> +		if (!load)
> +			return 0;
>  	}
>  
>  	if (optind < argc)
> -- 
> 1.7.0.4
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
