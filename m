Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bbi6Z-0003dJ-Rk
 for barebox@lists.infradead.org; Mon, 22 Aug 2016 05:49:04 +0000
Date: Mon, 22 Aug 2016 07:48:41 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160822054841.GX20657@pengutronix.de>
References: <1471522876-38747-1-git-send-email-c.hemp@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1471522876-38747-1-git-send-email-c.hemp@phytec.de>
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
Subject: Re: [PATCH] commands/Kconfig: fix typo in CMD_OF_FIXUP_STATUS help
To: Christian Hemp <c.hemp@phytec.de>
Cc: barebox@lists.infradead.org

On Thu, Aug 18, 2016 at 02:21:16PM +0200, Christian Hemp wrote:
> The command is of_fixup_status and not of_fixup_node.
> 
> Signed-off-by: Christian Hemp <c.hemp@phytec.de>
> ---
>  commands/Kconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/commands/Kconfig b/commands/Kconfig
> index decd45d..3c79831 100644
> --- a/commands/Kconfig
> +++ b/commands/Kconfig
> @@ -2058,7 +2058,7 @@ config CMD_OF_FIXUP_STATUS
>  	help
>  	  Register a fixup to enable or disable node
>  
> -	  Usage: of_fixup_node [-d] path
> +	  Usage: of_fixup_status [-d] path
>  
>  	  Options:
>  		  -d		disable node
> -- 
> 1.9.1
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
