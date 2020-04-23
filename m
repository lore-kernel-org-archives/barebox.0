Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRVua-0000GB-01
 for barebox@lists.infradead.org; Thu, 23 Apr 2020 07:04:41 +0000
Date: Thu, 23 Apr 2020 09:04:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200423070438.GX1694@pengutronix.de>
References: <20200422112119.23181-1-cleger@kalray.eu>
 <20200422112119.23181-6-cleger@kalray.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200422112119.23181-6-cleger@kalray.eu>
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
Subject: Re: [PATCH 5/6] common: bootm: add support for elf file loading
To: Clement Leger <cleger@kalray.eu>
Cc: barebox@lists.infradead.org

On Wed, Apr 22, 2020 at 01:21:18PM +0200, Clement Leger wrote:
> This will allows elf loader to directly have an elf file available. Thus
> filetype_elf bootm handlers will be able to use this elf file directly.
> 
> Signed-off-by: Clement Leger <cleger@kalray.eu>
> ---
>  common/bootm.c  | 27 +++++++++++++++++++++++++++
>  include/bootm.h |  3 +++
>  2 files changed, 30 insertions(+)
> 
> diff --git a/common/bootm.c b/common/bootm.c
> index 366f31455..015d90f3c 100644
> --- a/common/bootm.c
> +++ b/common/bootm.c
> @@ -455,6 +455,8 @@ int bootm_get_os_size(struct image_data *data)
>  {
>  	int ret;
>  
> +	if (data->elf)
> +		return data->elf->high_addr - data->elf->low_addr;
>  	if (data->os)
>  		return uimage_get_size(data->os, uimage_part_num(data->os_part));
>  	if (data->os_fit)
> @@ -502,6 +504,20 @@ static int bootm_open_os_uimage(struct image_data *data)
>  	return 0;
>  }
>  
> +static int bootm_open_elf(struct image_data *data)
> +{
> +
> +	data->elf = elf_open(data->os_file);
> +	if (IS_ERR(data->elf))
> +		return PTR_ERR(data->elf);
> +
> +	printf("Entry Point:  %08llx\n", data->elf->entry);
> +
> +	data->os_address = data->elf->entry;
> +
> +	return 0;
> +}
> +

This will give you linker errors when elf support is not compiled in.

	if (!IS_ENABLED(CONFIG_ELF))
		return -ENOSYS;

might be enough already, plus maybe an bootm kconfig option which
explicitly selects CONFIG_ELF when desired.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
