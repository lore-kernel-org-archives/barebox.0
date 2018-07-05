Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1faxYa-0007IW-4H
 for barebox@lists.infradead.org; Thu, 05 Jul 2018 06:15:58 +0000
Date: Thu, 5 Jul 2018 08:15:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180705061542.tq7dgyk2cigqwgfw@pengutronix.de>
References: <20180704041024.32569-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180704041024.32569-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 1/4] nvmem: rave-sp-eeprom: Remove VLA usage
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Jul 03, 2018 at 09:10:21PM -0700, Andrey Smirnov wrote:
> This is a backport of patch [1] by Kees Cook
> 
> [1] https://lkml.kernel.org/r/20180620182600.GA24297@beast
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---

Applied, thanks

Sascha

>  drivers/nvmem/rave-sp-eeprom.c | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/nvmem/rave-sp-eeprom.c b/drivers/nvmem/rave-sp-eeprom.c
> index 5fd429f16..ff91f39f7 100644
> --- a/drivers/nvmem/rave-sp-eeprom.c
> +++ b/drivers/nvmem/rave-sp-eeprom.c
> @@ -55,6 +55,7 @@ enum rave_sp_eeprom_header_size {
>  	RAVE_SP_EEPROM_HEADER_SMALL = 4U,
>  	RAVE_SP_EEPROM_HEADER_BIG   = 5U,
>  };
> +#define RAVE_SP_EEPROM_HEADER_MAX	RAVE_SP_EEPROM_HEADER_BIG
>  
>  #define	RAVE_SP_EEPROM_PAGE_SIZE	32U
>  
> @@ -115,9 +116,12 @@ static int rave_sp_eeprom_io(struct rave_sp_eeprom *eeprom,
>  	const unsigned int rsp_size =
>  		is_write ? sizeof(*page) - sizeof(page->data) : sizeof(*page);
>  	unsigned int offset = 0;
> -	u8 cmd[cmd_size];
> +	u8 cmd[RAVE_SP_EEPROM_HEADER_MAX + sizeof(page->data)];
>  	int ret;
>  
> +	if (WARN_ON(cmd_size > sizeof(cmd)))
> +		return -EINVAL;
> +
>  	cmd[offset++] = eeprom->address;
>  	cmd[offset++] = 0;
>  	cmd[offset++] = type;
> -- 
> 2.17.1
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
