Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fVGda-0005kF-OH
 for barebox@lists.infradead.org; Tue, 19 Jun 2018 13:25:38 +0000
Date: Tue, 19 Jun 2018 15:25:22 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180619132522.zisos7vvvjbet3s5@pengutronix.de>
References: <1529316238.3364.3.camel@googlemail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1529316238.3364.3.camel@googlemail.com>
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
Subject: Re: [PATCH] mmc_extcsd command: Add cmd option to set bkops-enable
To: Christoph Fritz <chf.fritz@googlemail.com>
Cc: barebox@lists.infradead.org

On Mon, Jun 18, 2018 at 12:03:58PM +0200, Christoph Fritz wrote:
> This patch is for convenience to set bkops-enable (EXT_CSD_BKOPS_EN[163])
> on devices which have it not yet activated.
> 
> Signed-off-by: Christoph Fritz <chf.fritz@googlemail.com>
> ---

Applied, thanks

Sascha

>  commands/mmc_extcsd.c | 26 +++++++++++++++++++++++---
>  1 file changed, 23 insertions(+), 3 deletions(-)
> 
> diff --git a/commands/mmc_extcsd.c b/commands/mmc_extcsd.c
> index 82e0600..3a418ea 100644
> --- a/commands/mmc_extcsd.c
> +++ b/commands/mmc_extcsd.c
> @@ -1482,7 +1482,7 @@ static int print_field(u8 *reg, int index)
>  			str = "may";
>  		else
>  			str = "shall not";
> -		printf("\t[1] AUTO_EN: Device %s perform background ops while"
> +		printf("\t[1] AUTO_EN: Device %s perform background ops while\n"
>  		       "\t    not servicing the host\n", str);
>  		return 1;
>  
> @@ -2371,11 +2371,12 @@ static int do_mmc_extcsd(int argc, char *argv[])
>  	int			write_operation = 0;
>  	int			always_write = 0;
>  	int			print_as_raw = 0;
> +	int			set_bkops_en = 0;
>  
>  	if (argc < 2)
>  		return COMMAND_ERROR_USAGE;
>  
> -	while ((opt = getopt(argc, argv, "i:v:yr")) > 0)
> +	while ((opt = getopt(argc, argv, "i:v:yrb")) > 0)
>  		switch (opt) {
>  		case 'i':
>  			index = simple_strtoul(optarg, NULL, 0);
> @@ -2390,6 +2391,13 @@ static int do_mmc_extcsd(int argc, char *argv[])
>  		case 'r':
>  			print_as_raw = 1;
>  			break;
> +		case 'b':
> +			set_bkops_en = 1;
> +			index = EXT_CSD_BKOPS_EN;
> +			value = BIT(0);
> +			write_operation = 1;
> +			always_write = 1;
> +			break;
>  		}
>  
>  	if (optind == argc)
> @@ -2421,6 +2429,16 @@ static int do_mmc_extcsd(int argc, char *argv[])
>  		goto error_with_mem;
>  	}
>  
> +	if (set_bkops_en) {
> +		if (dst[index]) {
> +			printf("Abort: EXT_CSD [%u] already set to %#02x!\n",
> +			       index, dst[index]);
> +			goto error_with_mem;
> +		}
> +		if (dst[EXT_CSD_REV] >= 7)
> +			value |= BIT(1);	/* set AUTO_EN bit too */
> +	}
> +
>  	if (write_operation)
>  		if (!print_field(dst, index)) {
>  			printf("No field with this index found. Abort write operation!\n");
> @@ -2466,12 +2484,14 @@ BAREBOX_CMD_HELP_OPT("-r", "print the register as raw data")
>  BAREBOX_CMD_HELP_OPT("-v", "value which will be written")
>  BAREBOX_CMD_HELP_OPT("-y", "don't request when writing to one time programmable fields")
>  BAREBOX_CMD_HELP_OPT("",   "__CAUTION__: this could damage the device!")
> +BAREBOX_CMD_HELP_OPT("-b", "set bkops-enable (EXT_CSD_BKOPS_EN[163])")
> +BAREBOX_CMD_HELP_OPT("",   "__WARNING__: this is a write-once setting!")
>  BAREBOX_CMD_HELP_END
>  
>  BAREBOX_CMD_START(mmc_extcsd)
>  	.cmd		= do_mmc_extcsd,
>  	BAREBOX_CMD_DESC("Read/write the extended CSD register.")
> -	BAREBOX_CMD_OPTS("dev [-r | -i index [-r | -v value [-y]]]")
> +	BAREBOX_CMD_OPTS("dev [-r | -b | -i index [-r | -v value [-y]]]")
>  	BAREBOX_CMD_GROUP(CMD_GRP_CONSOLE)
>  	BAREBOX_CMD_HELP(cmd_mmc_extcsd_help)
>  BAREBOX_CMD_END
> -- 
> 2.1.4
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
