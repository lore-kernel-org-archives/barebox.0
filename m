Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fOdsc-0003SZ-BH
 for barebox@lists.infradead.org; Fri, 01 Jun 2018 06:49:44 +0000
Date: Fri, 1 Jun 2018 08:49:29 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180601064929.aryh7oe2ktd3snya@pengutronix.de>
References: <20180531204851.1719-1-o.rempel@pengutronix.de>
 <20180531204851.1719-2-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180531204851.1719-2-o.rempel@pengutronix.de>
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
Subject: Re: [PATCH 2/4] add basic ELF parser
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, May 31, 2018 at 10:48:49PM +0200, Oleksij Rempel wrote:
> This parser is needed for kernel boot support on MIPS
> and can potentially reused on other platforms.
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  common/Makefile |   1 +
>  common/elf.c    | 146 ++++++++++++++++++++++++++++++++++++++++++++++++
>  include/elf.h   |  10 ++++
>  3 files changed, 157 insertions(+)
>  create mode 100644 common/elf.c
> 
> diff --git a/common/Makefile b/common/Makefile
> index 1ff7d2370..4fe7eaaf6 100644
> --- a/common/Makefile
> +++ b/common/Makefile
> @@ -8,6 +8,7 @@ obj-y				+= misc.o
>  obj-pbl-y			+= memsize.o
>  obj-y				+= resource.o
>  obj-y				+= bootsource.o
> +obj-y				+= elf.o
>  obj-y				+= restart.o
>  obj-y				+= poweroff.o
>  obj-$(CONFIG_AUTO_COMPLETE)	+= complete.o
> diff --git a/common/elf.c b/common/elf.c
> new file mode 100644
> index 000000000..d6a1f8b6a
> --- /dev/null
> +++ b/common/elf.c
> @@ -0,0 +1,146 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (c) 2018 Pengutronix, Oleksij Rempel <o.rempel@pengutronix.de>
> + */
> +
> +#include <common.h>
> +#include <elf.h>
> +#include <memory.h>
> +
> +struct elf_section {
> +	struct list_head list;
> +	struct resource *r;
> +};
> +
> +static int elf_request_region(struct elf_image *elf, resource_size_t start,
> +			      resource_size_t size)
> +{
> +	struct list_head *list = &elf->list;
> +	struct resource *r_new;
> +	struct elf_section *r;
> +
> +	r = xzalloc(sizeof(*r));
> +	r_new = request_sdram_region("elf_section", start, size);
> +	if (!r_new) {
> +		pr_err("Failed to request region: %x %x\n", start, size);

For resource_size_t type please use the %pa format specifier.

> +		return -EINVAL;
> +	}
> +
> +	r->r = r_new;
> +	list_add_tail(&r->list, list);
> +
> +	return 0;
> +}
> +
> +static void elf_release_regions(struct elf_image *elf)
> +{
> +	struct list_head *list = &elf->list;
> +	struct elf_section *r, *r_tmp;
> +
> +	list_for_each_entry_safe(r, r_tmp, list, list) {
> +		release_sdram_region(r->r);
> +		free(r);
> +	}
> +}
> +
> +
> +static int load_elf_phdr_segment(struct elf_image *elf, void *src,
> +				 Elf32_Phdr *phdr)
> +{
> +	void *dst = (void *)phdr->p_paddr;
> +	int ret;
> +
> +	/* we care only about PT_LOAD segments */
> +	if (phdr->p_type != PT_LOAD)
> +		return 0;
> +
> +	if (!phdr->p_filesz)
> +		return 0;
> +
> +	pr_debug("Loading phdr to 0x%p (%i bytes)\n", dst, phdr->p_filesz);
> +
> +	ret = elf_request_region(elf, (resource_size_t)dst, phdr->p_filesz);
> +	if (ret)
> +		return ret;
> +
> +	memcpy(dst, src, phdr->p_filesz);
> +
> +	if (phdr->p_filesz < phdr->p_memsz)
> +		memset(dst + phdr->p_filesz, 0x00,
> +		       phdr->p_memsz - phdr->p_filesz);
> +
> +	return 0;
> +}
> +
> +static int load_elf_image_phdr(struct elf_image *elf)
> +{
> +	void *buf = elf->buf;
> +	Elf32_Ehdr *ehdr = buf;
> +	Elf32_Phdr *phdr = (Elf32_Phdr *)(buf + ehdr->e_phoff);
> +	int i, ret;
> +
> +	elf->entry = ehdr->e_entry;
> +
> +	for (i = 0; i < ehdr->e_phnum; ++i) {
> +		void *src = buf + phdr->p_offset;
> +
> +		ret = load_elf_phdr_segment(elf, src, phdr);
> +		/* in case of error elf_load_image() caller should clean up and
> +		 * call elf_release_image() */
> +		if (ret)
> +			return ret;
> +
> +		++phdr;
> +	}
> +
> +	return 0;
> +}
> +
> +static int elf_check_image(void *buf)
> +{
> +	Elf32_Ehdr *ehdr = (Elf32_Ehdr *)buf;
> +
> +	if (strncmp(buf, ELFMAG, SELFMAG)) {
> +		pr_err("ELF magic not found.\n");
> +                return -EINVAL;
> +        }

Whitespace broken here

> +
> +	if (ehdr->e_type != ET_EXEC) {
> +		pr_err("Non EXEC ELF image.\n");
> +                return -ENOEXEC;
> +	}
> +
> +	return 0;
> +}
> +
> +struct elf_image *elf_load_image(void *buf)
> +{
> +	struct elf_image *elf;
> +	int ret;
> +
> +	elf = xzalloc(sizeof(*elf));
> +
> +	INIT_LIST_HEAD(&elf->list);
> +
> +	elf->buf = buf;
> +
> +	ret = elf_check_image(buf);
> +	if (ret)
> +		return ERR_PTR(ret);
> +
> +	ret = load_elf_image_phdr(elf);
> +	if (ret) {
> +		elf_release_image(elf);
> +		return ERR_PTR(ret);
> +	}
> +
> +	return elf;
> +}
> +
> +void elf_release_image(struct elf_image *elf)
> +{
> +	elf_release_regions(elf);
> +
> +	free(elf->buf);

elf->buf hasn't been allocated by elf_load_image, so it shouldn't be
freed by elf_release_image.

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
