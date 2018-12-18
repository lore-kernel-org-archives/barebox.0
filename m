Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gZG35-0005nW-E2
 for barebox@lists.infradead.org; Tue, 18 Dec 2018 14:08:41 +0000
Date: Tue, 18 Dec 2018 15:08:27 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181218140827.qgb7hlbwi2j5bxzl@pengutronix.de>
References: <1545136803-42645-1-git-send-email-t.remmet@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1545136803-42645-1-git-send-email-t.remmet@phytec.de>
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
Subject: Re: [PATCH] commands: nand-bitflip: Add documentation for option '-c'
To: Teresa Remmet <t.remmet@phytec.de>
Cc: barebox@lists.infradead.org

On Tue, Dec 18, 2018 at 01:40:03PM +0100, Teresa Remmet wrote:
> Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
> ---
>  commands/nand-bitflip.c | 1 +
>  1 file changed, 1 insertion(+)
> 

Applied, thanks

Sascha

> diff --git a/commands/nand-bitflip.c b/commands/nand-bitflip.c
> index a8a97c153aa0..cfde2f4040e7 100644
> --- a/commands/nand-bitflip.c
> +++ b/commands/nand-bitflip.c
> @@ -107,6 +107,7 @@ BAREBOX_CMD_HELP_START(nand_bitflip)
>  BAREBOX_CMD_HELP_TEXT("This command creates bitflips on Nand pages.")
>  BAREBOX_CMD_HELP_TEXT("Options:")
>  BAREBOX_CMD_HELP_OPT ("-b <block>",  "block to work on")
> +BAREBOX_CMD_HELP_OPT ("-c\t",  "Check only for bitflips")
>  BAREBOX_CMD_HELP_OPT ("-o <offset>",  "offset in Nand")
>  BAREBOX_CMD_HELP_OPT ("-r\t",  "flip random bits")
>  BAREBOX_CMD_HELP_OPT ("-n <numbitflips>",  "Specify maximum number of bitflips to generate")
> -- 
> 2.7.4
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
