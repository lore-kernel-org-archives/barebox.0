Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hngaC-0000rZ-5x
 for barebox@lists.infradead.org; Wed, 17 Jul 2019 09:50:45 +0000
Date: Wed, 17 Jul 2019 11:50:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190717095042.4wptlgeprjjxa5ky@pengutronix.de>
References: <20190716105837.18237-1-bst@pengutronix.de>
 <20190716105837.18237-3-bst@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190716105837.18237-3-bst@pengutronix.de>
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
Subject: Re: [PATCH 3/3] nvmem: ocotp: set unique id as machine-id hashable
To: Bastian Krause <bst@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Jul 16, 2019 at 12:58:37PM +0200, Bastian Krause wrote:
> Pass the OCOTP unique id as hashable information to machine id
> generation.
> 
> Signed-off-by: Bastian Krause <bst@pengutronix.de>
> ---
>  drivers/nvmem/ocotp.c | 24 ++++++++++++++++++++++++
>  1 file changed, 24 insertions(+)
> 
> diff --git a/drivers/nvmem/ocotp.c b/drivers/nvmem/ocotp.c
> index 3f9f162860..6f76ad9ac0 100644
> --- a/drivers/nvmem/ocotp.c
> +++ b/drivers/nvmem/ocotp.c
> @@ -29,6 +29,7 @@
>  #include <regmap.h>
>  #include <linux/clk.h>
>  #include <mach/ocotp.h>
> +#include <machine_id.h>
>  #include <linux/nvmem-provider.h>
>  
>  /*
> @@ -77,6 +78,9 @@
>  #define MAC_OFFSET_1			(0x24 * 4)
>  #define MAX_MAC_OFFSETS			2
>  #define MAC_BYTES			8
> +#define UNIQUE_ID_NUM			2
> +/* 0 <= n < UNIQUE_ID_NUM */
> +#define UNIQUE_ID(n)			(OCOTP_WORD(0x410 + 0x10 * (n)) | OCOTP_BIT(0) | OCOTP_WIDTH(32))
>  
>  enum imx_ocotp_format_mac_direction {
>  	OCOTP_HW_TO_MAC,
> @@ -548,6 +552,23 @@ static int imx_ocotp_read(struct device_d *dev, const int offset, void *val,
>  	return regmap_bulk_read(priv->map, offset, val, bytes);
>  }
>  
> +static int imx_ocotp_set_unique_machine_id(void)
> +{
> +	uint32_t unique_id_parts[UNIQUE_ID_NUM];
> +	int ret, i;
> +
> +	for (i = 0; i < UNIQUE_ID_NUM; i++) {
> +		ret = imx_ocotp_read_field(UNIQUE_ID(i), &unique_id_parts[i]);
> +		if (ret < 0)
> +			goto out;
> +	}
> +
> +	machine_id_set_hashable(&unique_id_parts, sizeof(unique_id_parts));

So unique_id_parts is on the stack. As said, better make a copy in
machine_id_set_hashable() ;)

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
