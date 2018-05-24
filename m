Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fLj0b-0007hv-Dv
 for barebox@lists.infradead.org; Thu, 24 May 2018 05:41:55 +0000
Date: Thu, 24 May 2018 07:41:41 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180524054141.ijjdc32jbgiikrav@pengutronix.de>
References: <20180523114555.6031-1-pmamonov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180523114555.6031-1-pmamonov@gmail.com>
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
Subject: Re: [PATCH] mw command: add `-x` option description
To: Peter Mamonov <pmamonov@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, May 23, 2018 at 02:45:55PM +0300, Peter Mamonov wrote:
> Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
> ---
>  commands/mw.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/commands/mw.c b/commands/mw.c
> index bb6a16ef3..7ff589abb 100644
> --- a/commands/mw.c
> +++ b/commands/mw.c
> @@ -107,12 +107,13 @@ BAREBOX_CMD_HELP_OPT ("-w",  "word access (16 bit)")
>  BAREBOX_CMD_HELP_OPT ("-l",  "long access (32 bit)")
>  BAREBOX_CMD_HELP_OPT ("-q",  "quad access (64 bit)")
>  BAREBOX_CMD_HELP_OPT ("-d FILE",  "write file (default /dev/mem)")
> +BAREBOX_CMD_HELP_OPT ("-x",       "swap bytes")
>  BAREBOX_CMD_HELP_END
>  
>  BAREBOX_CMD_START(mw)
>  	.cmd		= do_mem_mw,
>  	BAREBOX_CMD_DESC("memory write")
> -	BAREBOX_CMD_OPTS("[-bwld] REGION DATA...")
> +	BAREBOX_CMD_OPTS("[-bwldx] REGION DATA...")
>  	BAREBOX_CMD_GROUP(CMD_GRP_MEM)
>  	BAREBOX_CMD_HELP(cmd_mw_help)
>  BAREBOX_CMD_END
> -- 
> 2.17.0
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
