Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h6WDk-0002WC-Uq
 for barebox@lists.infradead.org; Wed, 20 Mar 2019 08:05:11 +0000
Date: Wed, 20 Mar 2019 09:05:06 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190320080506.xttdoivywbkaptx5@pengutronix.de>
References: <2115635878.3947318.1552936607997.JavaMail.zimbra@kalray.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2115635878.3947318.1552936607997.JavaMail.zimbra@kalray.eu>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] elf: add 64 bits elf support
To: =?iso-8859-15?Q?Cl=E9ment?= Leger <cleger@kalray.eu>
Cc: Barebox List <barebox@lists.infradead.org>

Hi Cl=E9ment,

On Mon, Mar 18, 2019 at 08:16:47PM +0100, Cl=E9ment Leger wrote:
> This patch add elf64 loading support to the elf loader. Since
> elf32 and elf64 uses completely different types, to avoid copying all
> the code and simply replace elf32 with elf64, use a macro which will
> return the appropriate field for each type of header. This macro
> generates getter for elf structures according to the class of the loaded
> elf.
> All direct elf struct dereference are then replaced by call to generated
> functions. This allows to keep a common loader code even if types are
> different.
> =

> Signed-off-by: Cl=E9ment L=E9ger <clement.leger@kalray.eu>
> ---
>  common/elf.c  | 46 +++++++++++++++++++++++-----------------------
>  include/elf.h | 27 +++++++++++++++++++++++++++
>  2 files changed, 50 insertions(+), 23 deletions(-)
> =

> diff --git a/common/elf.c b/common/elf.c
> index 8edf38856..bfb878954 100644
> --- a/common/elf.c
> +++ b/common/elf.c
> @@ -43,31 +43,32 @@ static void elf_release_regions(struct elf_image *elf)
>  	}
>  }
>  =

> -
>  static int load_elf_phdr_segment(struct elf_image *elf, void *src,
> -				 Elf32_Phdr *phdr)
> +				 void *phdr)
>  {
> -	void *dst =3D (void *)phdr->p_paddr;
> +	void *dst =3D (void *) elf_phdr_p_paddr(elf, phdr);
>  	int ret;
> +	unsigned long p_filesz =3D elf_phdr_p_filesz(elf, phdr);
> +	unsigned long p_memsz =3D elf_phdr_p_memsz(elf, phdr);
>  =

>  	/* we care only about PT_LOAD segments */
> -	if (phdr->p_type !=3D PT_LOAD)
> +	if (elf_phdr_p_type(elf, phdr) !=3D PT_LOAD)
>  		return 0;
>  =

> -	if (!phdr->p_filesz)
> +	if (!p_filesz)
>  		return 0;
>  =

> -	pr_debug("Loading phdr to 0x%p (%i bytes)\n", dst, phdr->p_filesz);
> +	pr_debug("Loading phdr to 0x%p (%ld bytes)\n", dst, p_filesz);

%lu for p_filesz?

> @@ -400,6 +400,7 @@ static inline void arch_write_notes(struct file *file=
) { }
>  =

>  struct elf_image {
>  	struct list_head list;
> +	unsigned long class;
>  	unsigned long entry;
>  	void *buf;
>  };
> @@ -407,4 +408,30 @@ struct elf_image {
>  struct elf_image *elf_load_image(void *buf);
>  void elf_release_image(struct elf_image *elf);
>  =

> +#define ELF_GET_FIELD(__s, __field, __type) \
> +static inline __type elf_##__s##_##__field(struct elf_image *elf, void *=
arg) { \
> +	if (elf->class =3D=3D ELFCLASS32) \
> +		return (__type) ((struct elf32_##__s *) arg)->__field; \
> +	else \
> +		return (__type) ((struct elf64_##__s *) arg)->__field; \
> +}
> +
> +ELF_GET_FIELD(hdr, e_entry, unsigned long)
> +ELF_GET_FIELD(hdr, e_phnum, unsigned long)
> +ELF_GET_FIELD(hdr, e_phoff, unsigned long)
> +ELF_GET_FIELD(hdr, e_type, unsigned long)
> +ELF_GET_FIELD(phdr, p_paddr, unsigned long)
> +ELF_GET_FIELD(phdr, p_filesz, unsigned long)
> +ELF_GET_FIELD(phdr, p_memsz, unsigned long)
> +ELF_GET_FIELD(phdr, p_type, unsigned long)
> +ELF_GET_FIELD(phdr, p_offset, unsigned long)

When it's always unsigned long why do we have to pass in the type as an
argument?

I am undecided if this is the right approach. "unsigned long" is wrong
when a ELF file for a foreign architecture is loaded. This can happen
for example when code for the Cortex M4 cores is loaded from the 64bit
Cortex A cores is loaded on an i.MX8 for example. Using the bigger types
then is not a problem, but maybe it could happen the other way round,
loading a 64bit ELF on a 32bit architecture?

I can't see a real problem here, I just wanted to note. Are there other
opinions?

Sascha

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
