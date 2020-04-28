Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTJtf-0001p7-6y
 for barebox@lists.infradead.org; Tue, 28 Apr 2020 06:39:12 +0000
Date: Tue, 28 Apr 2020 08:39:07 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200428063907.GP5877@pengutronix.de>
References: <20200423081712.4022-1-cleger@kalray.eu>
 <20200423081712.4022-5-cleger@kalray.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200423081712.4022-5-cleger@kalray.eu>
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
Subject: Re: [PATCH v2 4/6] common: elf: add elf_open and elf_close
To: Clement Leger <cleger@kalray.eu>
Cc: barebox@lists.infradead.org

On Thu, Apr 23, 2020 at 10:17:09AM +0200, Clement Leger wrote:
> When loading an elf file from a mtd device, this allows to parse the
> header and load only the needed data according to the elf size. Without
> that support, loading a elf file from a /dev/mtd would try to read the
> entire partition.
> 
> Signed-off-by: Clement Leger <cleger@kalray.eu>
> ---
>  common/elf.c  | 83 +++++++++++++++++++++++++++++++++++++++++++++++++++
>  include/elf.h |  7 +++++
>  2 files changed, 90 insertions(+)
> 
> diff --git a/common/elf.c b/common/elf.c
> index 5534632b2..291f883cb 100644
> --- a/common/elf.c
> +++ b/common/elf.c
> @@ -5,7 +5,12 @@
>  
>  #include <common.h>
>  #include <elf.h>
> +#include <errno.h>
> +#include <fcntl.h>
> +#include <libfile.h>
>  #include <memory.h>
> +#include <unistd.h>
> +#include <linux/fs.h>
>  
>  struct elf_section {
>  	struct list_head list;
> @@ -158,3 +163,81 @@ void elf_release_image(struct elf_image *elf)
>  
>  	free(elf);
>  }
> +
> +static u64 elf_get_size(struct elf_image *elf)
> +{
> +	u64 sh_size = elf_hdr_e_shentsize(elf, elf->buf) *
> +		      elf_hdr_e_shnum(elf, elf->buf);
> +
> +	/*
> +	 * The section header table is located at the end of the elf file thus
> +	 * we can take the offset and add the size of this table to obtain the
> +	 * file size.
> +	 */
> +	return elf_hdr_e_shoff(elf, elf->buf) + sh_size;
> +}
> +
> +struct elf_image *elf_open(const char *filename)
> +{
> +	int fd, ret;
> +	u64 size;
> +	struct elf64_hdr hdr;
> +	struct elf_image *elf;
> +	ssize_t read_ret;
> +
> +	fd = open(filename, O_RDONLY);
> +	if (fd < 0) {
> +		printf("could not open: %s\n", errno_str());
> +		return ERR_PTR(-errno);
> +	}
> +
> +	if (read(fd, &hdr, sizeof(hdr)) < 0) {
> +		printf("could not read elf header: %s\n", errno_str());
> +		ret = -errno;
> +		goto err_close_fd;
> +	}
> +
> +	elf = xzalloc(sizeof(*elf));
> +
> +	ret = elf_check_init(elf, &hdr);
> +	if (ret) {
> +		ret = -errno;
> +		goto err_free_elf;
> +	}
> +
> +	size = elf_get_size(elf);
> +
> +	elf->buf = xmalloc(size);

As said before, please use malloc rather than one of the x-functions.
The regular malloc can fail when we are out of memory and then you have
a chance to fail gracefully.

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
