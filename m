Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U6HA3-0006bu-0S
 for barebox@lists.infradead.org; Fri, 15 Feb 2013 09:00:51 +0000
Date: Fri, 15 Feb 2013 10:00:47 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130215090047.GM1906@pengutronix.de>
References: <20130214224222.GX19322@game.jcrosoft.org>
 <1360881873-1599-1-git-send-email-plagnioj@jcrosoft.com>
 <1360881873-1599-2-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1360881873-1599-2-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 2/5] filetype: add GPT support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org, Rob Herring <rob.herring@calxeda.com>

On Thu, Feb 14, 2013 at 11:44:30PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> GPT need to be check before MBR
> 
> Cc: Rob Herring <rob.herring@calxeda.com>
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  common/filetype.c  |   47 +++++++++++++++++++++++++++++++++++++++++++++++
>  include/filetype.h |    1 +
>  2 files changed, 48 insertions(+)
> 
> diff --git a/common/filetype.c b/common/filetype.c
> index 22fc621..a685ea5 100644
> --- a/common/filetype.c
> +++ b/common/filetype.c
> @@ -48,6 +48,7 @@ static const struct filetype_str filetype_str[] = {
>  	[filetype_bmp] = { "BMP image", "bmp" },
>  	[filetype_png] = { "PNG image", "png" },
>  	[filetype_ext] = { "ext filesystem", "ext" },
> +	[filetype_gpt] = { "GUID Partition Table", "gpt" },
>  };
>  
>  const char *file_type_to_string(enum filetype f)
> @@ -69,9 +70,52 @@ const char *file_type_to_short_string(enum filetype f)
>  #define MBR_StartSector		8	/* MBR: Offset of Starting Sector in Partition Table Entry */
>  #define BS_55AA			510	/* Boot sector signature (2) */
>  #define MBR_Table		446	/* MBR: Partition table offset (2) */
> +#define MBR_partition_size	16	/* MBR: Partition table offset (2) */
>  #define BS_FilSysType32		82	/* File system type (1) */
>  #define BS_FilSysType		54	/* File system type (1) */
>  
> +#define MBR_PART_sys_ind	4
> +#define MBR_PART_start_sect	8
> +#define MBR_OSTYPE_EFI_GPT	0xee
> +
> +static inline int pmbr_part_valid(const uint8_t *buf)
> +{
> +	if (buf[MBR_PART_sys_ind] == MBR_OSTYPE_EFI_GPT &&
> +		get_unaligned_le32(&buf[MBR_PART_start_sect]) == 1UL) {
> +		return 1;
> +	}
> +
> +	return 0;
> +}
> +
> +/**
> + * is_pmbr_valid(): test Protective MBR for validity
> + * @mbr: pointer to a legacy mbr structure
> + *
> + * Description: Returns 1 if PMBR is valid, 0 otherwise.
> + * Validity depends on two things:
> + *  1) MSDOS signature is in the last two bytes of the MBR
> + *  2) One partition of type 0xEE is found
> + */
> +static int is_gpt_valid(const uint8_t *buf)

The function name doesn't match the description.

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
