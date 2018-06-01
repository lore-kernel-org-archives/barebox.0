Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fOdxK-00066e-Rn
 for barebox@lists.infradead.org; Fri, 01 Jun 2018 06:54:36 +0000
Date: Fri, 1 Jun 2018 08:54:22 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180601065422.kuoxpjciawxnfg3v@pengutronix.de>
References: <20180531204851.1719-1-o.rempel@pengutronix.de>
 <20180531204851.1719-4-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180531204851.1719-4-o.rempel@pengutronix.de>
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
Subject: Re: [PATCH 4/4] MIPS: bootm: add ELF handler
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, May 31, 2018 at 10:48:51PM +0200, Oleksij Rempel wrote:
> With this handler barebox will be able to start linux kernel as
> is, without additional image conversation.
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  arch/mips/lib/bootm.c | 47 +++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 47 insertions(+)
> 
> diff --git a/arch/mips/lib/bootm.c b/arch/mips/lib/bootm.c
> index 91e7e1c68..8906ae7b4 100644
> --- a/arch/mips/lib/bootm.c
> +++ b/arch/mips/lib/bootm.c
> @@ -10,6 +10,7 @@
>  #include <restart.h>
>  
>  #include <asm/byteorder.h>
> +#include <asm/io.h>
>  
>  static int do_bootm_barebox(struct image_data *data)
>  {
> @@ -42,11 +43,57 @@ static struct binfmt_hook binfmt_barebox_hook = {
>  	.exec = "bootm",
>  };
>  
> +static int do_bootm_elf(struct image_data *data)
> +{
> +	void (*entry)(int, void *);
> +	struct elf_image *elf;
> +	void *buf;
> +
> +	buf = read_file(data->os_file, NULL);
> +	if (!buf)
> +		return -EINVAL;
> +
> +	elf = elf_load_image(buf);
> +	if (IS_ERR(elf))
> +		return PTR_ERR(elf);
> +
> +	bootm_get_devicetree(data);

Check return value?

A
	if (data->dryrun) {
		elf_release_image(elf);
		return 0;
	}

Would be nice here.

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
