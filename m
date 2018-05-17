Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fJFdv-0000q2-A2
 for barebox@lists.infradead.org; Thu, 17 May 2018 09:56:19 +0000
Date: Thu, 17 May 2018 11:56:03 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180517095603.rmr3gdh2kgjkqkgz@pengutronix.de>
References: <20180516164233.27581-1-linux@rempel-privat.de>
 <20180516164233.27581-6-linux@rempel-privat.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180516164233.27581-6-linux@rempel-privat.de>
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
Subject: Re: [PATCH v1 05/10] MIPS: add kexec ELF loading support
To: Oleksij Rempel <linux@rempel-privat.de>
Cc: barebox@lists.infradead.org, Peter Mamonov <pmamonov@gmail.com>

On Wed, May 16, 2018 at 06:42:28PM +0200, Oleksij Rempel wrote:
> From: Antony Pavlov <antonynpavlov@gmail.com>
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
> ---
>  arch/mips/include/asm/elf.h        |   8 +-
>  arch/mips/lib/Makefile             |   4 +
>  arch/mips/lib/kexec-mach-generic.c |  21 +++
>  arch/mips/lib/kexec-mips.c         | 307 +++++++++++++++++++++++++++++++++++++
>  arch/mips/lib/machine_kexec.h      |  21 +++
>  arch/mips/lib/relocate_kernel.S    | 108 +++++++++++++
>  6 files changed, 468 insertions(+), 1 deletion(-)
>  create mode 100644 arch/mips/lib/kexec-mach-generic.c
>  create mode 100644 arch/mips/lib/kexec-mips.c
>  create mode 100644 arch/mips/lib/machine_kexec.h
>  create mode 100644 arch/mips/lib/relocate_kernel.S
> 
> +int kexec_load(struct image_data *data, void *entry,
> +	       unsigned long nr_segments,
> +	       struct kexec_segment *segments)
> +{
> +	int i;
> +	struct resource *elf;
> +	resource_size_t start;
> +	LIST_HEAD(elf_segments);
> +
> +	for (i = 0; i < nr_segments; i++) {
> +		resource_size_t mem = (resource_size_t)segments[i].mem;
> +
> +		elf = create_resource("elf segment",
> +			mem, mem + segments[i].memsz - 1);
> +
> +		list_add_used_region(&elf->sibling, &elf_segments);
> +	}
> +
> +	if (check_room_for_elf(&elf_segments)) {
> +		pr_err("ELF can't be loaded!\n");
> +		return -ENOSPC;
> +	}
> +
> +	start = dcheck_res(&elf_segments);
> +
> +	/* relocate_new_kernel() copy by register (4 or 8 bytes)
> +	   so start address must be aligned to 4/8 */
> +	start = (start + 15) & 0xfffffff0;
> +
> +	for (i = 0; i < nr_segments; i++) {
> +		segments[i].mem = (void *)(phys_to_virt((unsigned long)segments[i].mem));
> +		memcpy(phys_to_virt(start), segments[i].buf, segments[i].bufsz);
> +		request_sdram_region("kexec relocatable segment",
> +			(unsigned long)phys_to_virt(start),
> +			(unsigned long)segments[i].bufsz);

The return value of request_sdram_region should be checked and of course
the resource should be used after having checked the return value, not
before. Same for the other calls to request_sdram_region.

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
