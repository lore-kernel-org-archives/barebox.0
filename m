Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRVmP-000386-KT
 for barebox@lists.infradead.org; Thu, 23 Apr 2020 06:56:15 +0000
Date: Thu, 23 Apr 2020 08:56:11 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200423065611.GW1694@pengutronix.de>
References: <20200422112119.23181-1-cleger@kalray.eu>
 <20200422112119.23181-5-cleger@kalray.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200422112119.23181-5-cleger@kalray.eu>
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
Subject: Re: [PATCH 4/6] common: elf: add elf_open and elf_close
To: Clement Leger <cleger@kalray.eu>
Cc: barebox@lists.infradead.org

On Wed, Apr 22, 2020 at 01:21:17PM +0200, Clement Leger wrote:
> When loading an elf file from a mtd device, this allows to parse the
> header and load only the needed data according to the elf size. Without
> that support, loading a elf file from a /dev/mtd would try to read the
> entire partition.
> 
> Signed-off-by: Clement Leger <cleger@kalray.eu>
> ---
>  common/elf.c  | 87 +++++++++++++++++++++++++++++++++++++++++++++++++++
>  include/elf.h |  7 +++++
>  2 files changed, 94 insertions(+)
> 
> diff --git a/common/elf.c b/common/elf.c
> index 5534632b2..8b36c2073 100644
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
> @@ -158,3 +163,85 @@ void elf_release_image(struct elf_image *elf)
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
> +	elf->buf = xzalloc(size);

You are allocating a potentially unbounded amount of memory. Please use
malloc rather than xzalloc here.

> +
> +	lseek(fd, 0, SEEK_SET);
> +
> +	read_ret = read(fd, elf->buf, size);
> +	if (read_ret < 0) {
> +		printf("could not read elf file: %s\n", errno_str());
> +		ret = -errno;
> +		goto err_free_buf;
> +	} else if (read_ret != size) {
> +		printf("could not read entire elf file\n");
> +		ret = -EIO;
> +		goto err_free_buf;
> +	}

read_full handles this case.

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
