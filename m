Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bFyMk-00016j-Fi
 for barebox@lists.infradead.org; Thu, 23 Jun 2016 06:43:55 +0000
Date: Thu, 23 Jun 2016 08:43:32 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160623064332.GI4750@pengutronix.de>
References: <1466586161-14532-1-git-send-email-t.remmet@phytec.de>
 <1466586161-14532-3-git-send-email-t.remmet@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1466586161-14532-3-git-send-email-t.remmet@phytec.de>
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
Subject: Re: [PATCH 3/4] commands: ubi: Add ubiupdatevol command
To: Teresa Remmet <t.remmet@phytec.de>
Cc: barebox@lists.infradead.org

On Wed, Jun 22, 2016 at 11:02:40AM +0200, Teresa Remmet wrote:
> Add ubiupdatevol command. This is to update static
> and dynamic volumes.
> 
> Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
> ---
>  commands/ubi.c | 52 ++++++++++++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 52 insertions(+)
> 
> diff --git a/commands/ubi.c b/commands/ubi.c
> index f4ff5e7..e727776 100644
> --- a/commands/ubi.c
> +++ b/commands/ubi.c
> @@ -5,12 +5,64 @@
>  #include <ioctl.h>
>  #include <errno.h>
>  #include <getopt.h>
> +#include <libfile.h>
>  #include <linux/mtd/mtd.h>
>  #include <linux/kernel.h>
> +#include <linux/stat.h>
>  #include <linux/mtd/mtd-abi.h>
>  #include <mtd/ubi-user.h>
>  #include <mtd/ubi-media.h>
>  
> +static int do_ubiupdatevol(int argc, char *argv[])
> +{
> +	int fd_vol, ret;
> +	uint64_t size = 0;
> +	void *buf;
> +
> +	if (argc - optind < 2)
> +		return COMMAND_ERROR_USAGE;
> +
> +	buf = read_file(argv[optind+1], (size_t *) &size);
> +	if (!buf) {
> +		perror("read");
> +		return 1;
> +	}

This limits us to files that fit into memory. Is it worth it to
read/write in a loop?

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
