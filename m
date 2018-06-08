Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fRATn-0005ZQ-Qu
 for barebox@lists.infradead.org; Fri, 08 Jun 2018 06:02:33 +0000
Date: Fri, 8 Jun 2018 08:02:20 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180608060220.am36jfyyulspdbrq@pengutronix.de>
References: <1528359910-5868-1-git-send-email-t.remmet@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1528359910-5868-1-git-send-email-t.remmet@phytec.de>
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
Subject: Re: [PATCH v2] commands: mmc_extcsd: Add support to write multibyte
 registers
To: Teresa Remmet <t.remmet@phytec.de>
Cc: barebox@lists.infradead.org

On Thu, Jun 07, 2018 at 10:25:10AM +0200, Teresa Remmet wrote:
> It has been possible to write only the first byte of a multibyte register.
> Updated the command to write the complete value of a multibyte register at once.
> 
> Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
> ---
> Changes in v2:
> - Readded removed static from fuction

Applied, thanks

Sascha

> 
>  commands/mmc_extcsd.c | 44 +++++++++++++++++++++++++++-----------------
>  1 file changed, 27 insertions(+), 17 deletions(-)
> 
> diff --git a/commands/mmc_extcsd.c b/commands/mmc_extcsd.c
> index acd23a466bcb..82e0600eaf67 100644
> --- a/commands/mmc_extcsd.c
> +++ b/commands/mmc_extcsd.c
> @@ -2306,10 +2306,8 @@ static int request_write_operation(void)
>  	return 0;
>  }
>  
> -static void write_field(struct mci *mci, u8 *reg, u16 index, u8 value,
> -				int always_write)
> +static int request_one_time_programmable(u16 index)
>  {
> -
>  	switch (index) {
>  	case EXT_CSD_BOOT_CONFIG_PROT:
>  	case EXT_CSD_BOOT_WP:
> @@ -2349,18 +2347,15 @@ static void write_field(struct mci *mci, u8 *reg, u16 index, u8 value,
>  	case 52:
>  	case EXT_CSD_BARRIER_CTRL:
>  	case EXT_CSD_SECURE_REMOVAL_TYPE:
> -		if (!always_write)
> -			if (request_write_operation() == 0) {
> -				printf("Abort write operation!\n");
> -				goto out;
> -			}
> -		break;
> +		if (request_write_operation() == 0) {
> +			printf("Abort write operation!\n");
> +			return 1;
> +		} else {
> +			return 0;
> +		}
>  	}
>  
> -	mci_switch(mci, index, value);
> -
> -out:
> -	return;
> +	return 0;
>  }
>  
>  static int do_mmc_extcsd(int argc, char *argv[])
> @@ -2430,11 +2425,26 @@ static int do_mmc_extcsd(int argc, char *argv[])
>  		if (!print_field(dst, index)) {
>  			printf("No field with this index found. Abort write operation!\n");
>  		} else {
> -			write_field(mci, dst, index, value, always_write);
> +			struct extcsd_reg *ext;
> +			int i;
> +			int val = 0;
> +
> +			if (!always_write) {
> +				retval = request_one_time_programmable(index);
> +				if (retval)
> +					goto error_with_mem;
> +			}
> +
> +			ext = &extcsd[index];
> +			for (i = 0; i < ext->width; i++) {
> +				val = (value >> (i * 8)) & 0xFF;
> +
> +				mci_switch(mci, index + i, val);
> +				retval = mci_send_ext_csd(mci, dst);
> +				if (retval != 0)
> +					goto error_with_mem;
> +			}
>  			printf("\nValue written!\n\n");
> -			retval = mci_send_ext_csd(mci, dst);
> -			if (retval != 0)
> -				goto error_with_mem;
>  			print_field(dst, index);
>  		}
>  	else
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
