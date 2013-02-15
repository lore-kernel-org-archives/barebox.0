Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U6PE2-0001Do-8T
 for barebox@lists.infradead.org; Fri, 15 Feb 2013 17:37:30 +0000
Date: Fri, 15 Feb 2013 18:37:28 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130215173728.GY1906@pengutronix.de>
References: <20130215125941.GB19322@game.jcrosoft.org>
 <1360935317-7386-1-git-send-email-plagnioj@jcrosoft.com>
 <1360935317-7386-3-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1360935317-7386-3-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 3/5] partitons: add framework
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org, Rob Herring <rob.herring@calxeda.com>

On Fri, Feb 15, 2013 at 02:35:15PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> +#include "partitions/parser.h"
>  
> -on_error:
> -	dma_free(buffer);
> -}
> +LIST_HEAD(partition_parser_list);

static

>  
>  /**
>   * Register one partition on the given block device
> @@ -135,6 +55,33 @@ static int register_one_partition(struct block_device *blk,
>  				0, partition_name);
>  }
>  
> +static struct partition_parser *partition_parser_get_by_filetype(uint8_t *buf)
> +{
> +	enum filetype type;
> +	struct partition_parser *parser;
> +
> +	/* first new partition table as EFI GPT */
> +	type = file_detect_type(buf, SECTOR_SIZE * 2);
> +
> +	list_for_each_entry(parser, &partition_parser_list, list) {
> +		if (parser->type == type)
> +			return parser;
> +	}
> +
> +	/* if not parser found search for old one
> +	 * so if EFI GPT not enable take it as MBR
> +	 * usefull for compatibility

1 Cent for each time you write useful with double l...



> +
> +struct partition_parser dos = {
> +	.parse = dos_partition,
> +	.type = filetype_mbr,
> +};

static

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
