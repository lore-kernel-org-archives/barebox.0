Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U4zjF-00027z-KT
 for barebox@lists.infradead.org; Mon, 11 Feb 2013 20:11:54 +0000
Date: Mon, 11 Feb 2013 21:11:51 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130211201151.GI1906@pengutronix.de>
References: <1360609344-21376-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1360609344-21376-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/1] oftree: fix probe support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Mon, Feb 11, 2013 at 08:02:24PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> in commit e118761c5f7e8
> oftree command: refactor
> 
> the Kconfig CMD_OFTREE_PROBE was remove

Oops.

Applied, thanks

Sascha

> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  commands/Kconfig |    7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/commands/Kconfig b/commands/Kconfig
> index d3c338c..c1454c7 100644
> --- a/commands/Kconfig
> +++ b/commands/Kconfig
> @@ -487,6 +487,13 @@ config CMD_OFTREE
>  	  The oftree command has support for dumping devicetrees and, if
>  	  enabled, to probe devices from the devicetree
>  
> +config CMD_OFTREE_PROBE
> +	bool
> +	depends on CMD_OFTREE
> +	prompt "oftree probe support"
> +	help
> +	  This enables the -p option to probe devices from the devicetree
> +
>  config CMD_OF_PROPERTY
>  	tristate
>  	select OFTREE
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
