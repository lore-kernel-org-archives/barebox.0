Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VlZjJ-0002mH-Bl
 for barebox@lists.infradead.org; Wed, 27 Nov 2013 07:40:13 +0000
Date: Wed, 27 Nov 2013 08:39:51 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20131127073951.GQ24559@pengutronix.de>
References: <1385456253-5399-1-git-send-email-j.weitzel@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1385456253-5399-1-git-send-email-j.weitzel@phytec.de>
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
Subject: Re: [PATCH] commands: of_node fix descripion
To: Jan Weitzel <j.weitzel@phytec.de>
Cc: barebox@lists.infradead.org

On Tue, Nov 26, 2013 at 09:57:33AM +0100, Jan Weitzel wrote:
> Remove copy and paste error
> 
> Signed-off-by: Jan Weitzel <j.weitzel@phytec.de>
> ---
>  commands/Kconfig |    2 +-
>  1 files changed, 1 insertions(+), 1 deletions(-)
> 
> diff --git a/commands/Kconfig b/commands/Kconfig
> index 9738ec4..1e07b5b 100644
> --- a/commands/Kconfig
> +++ b/commands/Kconfig
> @@ -559,7 +559,7 @@ config CMD_OF_NODE
>  	select OFTREE
>  	prompt "of_node"
>  	help
> -	  The of_property command allows adding and removing devicetree nodes.
> +	  The of_node command allows adding and removing devicetree nodes.

Applied, thanks

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
