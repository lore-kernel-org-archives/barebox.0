Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U65YI-0007xU-AG
 for barebox@lists.infradead.org; Thu, 14 Feb 2013 20:37:06 +0000
Date: Thu, 14 Feb 2013 21:37:03 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130214203703.GD1906@pengutronix.de>
References: <20130214154759.GT19322@game.jcrosoft.org>
 <1360857147-489-1-git-send-email-plagnioj@jcrosoft.com>
 <1360857147-489-3-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1360857147-489-3-git-send-email-plagnioj@jcrosoft.com>
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

On Thu, Feb 14, 2013 at 04:52:25PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> so we can support multiple format
> 
> use filetpye to detect the parser to use
> 
> Cc: Rob Herring <rob.herring@calxeda.com>
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  common/Kconfig             |   14 +----
>  common/Makefile            |    2 +-
>  common/partitions.c        |  132 +++++++++++++++-----------------------------
>  common/partitions/Makefile |    1 +
>  common/partitions/dos.c    |   87 +++++++++++++++++++++++++++++
>  common/partitions/parser.h |   35 ++++++++++++

common/partitions/Kconfig is missing in this patch.

> +int partition_parser_register(struct partition_parser *p)
> +{
> +	if (!p || !p->parse)
> +		return -EINVAL;

Please drop these stupid checks. Everyone calling this with a NULL
pointer really deserves a stack dump.

> +
> +#ifndef __PARTITIONS_PARSER_H__
> +#define __PARTITIONS_PARSER_H__
> +
> +#include <block.h>
> +#include <filetype.h>
> +#include <linux/list.h>
> +
> +#define MAX_PARTITION		8
> +
> +struct partition {
> +	uint64_t first_sec;
> +	uint64_t size;
> +};
> +
> +struct partition_desc {
> +	int used_entries;
> +	struct partition parts[MAX_PARTITION];
> +};
> +
> +struct partition_parser {
> +	void (*parse)(uint8_t *buf, struct block_device *blk, struct partition_desc *pd);

use void * for passing buffers please.

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
