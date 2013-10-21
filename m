Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VY9h8-0003DL-8q
 for barebox@lists.infradead.org; Mon, 21 Oct 2013 07:14:31 +0000
Date: Mon, 21 Oct 2013 09:14:07 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20131021071407.GZ30088@pengutronix.de>
References: <1382102564-31486-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1382102564-31486-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/1] fs: bpkfs: add missing include
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Fri, Oct 18, 2013 at 03:22:44PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> was not include when applying bpkfs patch
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

Applied, thanks

Sascha

> ---
>  include/bpkfs.h | 68 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 68 insertions(+)
>  create mode 100644 include/bpkfs.h
> 
> diff --git a/include/bpkfs.h b/include/bpkfs.h
> new file mode 100644
> index 0000000..ccb56c1
> --- /dev/null
> +++ b/include/bpkfs.h
> @@ -0,0 +1,68 @@
> +/*
> + * Copyright (c) 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> + *
> + * under GPLv2 only
> + */
> +
> +#ifndef __BPKFS_H__
> +#define __BPKFS_H__
> +
> +#include <linux/types.h>
> +#include <linux/list.h>
> +
> +#define BPKFS_TYPE_BL	0x50424c00
> +#define BPKFS_TYPE_BLV	0x50424c56
> +#define BPKFS_TYPE_DSC	0x44456343
> +#define BPKFS_TYPE_KER	0x504b4552
> +#define BPKFS_TYPE_RFS	0x50524653
> +#define BPKFS_TYPE_FMV	0x46575600
> +
> +struct bpkfs_header {
> +	uint32_t magic;
> +	uint32_t version;
> +	uint64_t size;
> +	uint32_t crc;
> +	uint64_t spare;
> +} __attribute__ ((packed)) ;
> +
> +struct bpkfs_data_header {
> +	uint32_t type;
> +	uint64_t size;
> +	uint32_t crc;
> +	uint32_t hw_id;
> +	uint32_t spare;
> +} __attribute__ ((packed)) ;
> +
> +struct bpkfs_handle_hw {
> +	char *name;
> +	uint32_t hw_id;
> +
> +	struct list_head list_data;
> +	struct list_head list_hw_id;
> +};
> +
> +struct bpkfs_handle_data {
> +	char *name;
> +	uint32_t type;
> +	uint32_t hw_id;
> +	uint64_t size;
> +
> +	int fd;
> +	size_t offset; /* offset in the image */
> +	size_t pos; /* pos in the data */
> +	uint32_t crc;
> +
> +	char data[8];
> +
> +	struct list_head list;
> +};
> +
> +struct bpkfs_handle {
> +	struct bpkfs_header header;
> +	int nb_data_entries;
> +	char *filename;
> +
> +	struct list_head list;
> +};
> +
> +#endif /* __BPKFS_H__ */
> -- 
> 1.8.4.rc3
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
