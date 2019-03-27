Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h93Ir-0007fH-AI
 for barebox@lists.infradead.org; Wed, 27 Mar 2019 07:48:55 +0000
Date: Wed, 27 Mar 2019 08:48:51 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190327074851.jva5cfg2jnbvfviq@pengutronix.de>
References: <2115635878.3947318.1552936607997.JavaMail.zimbra@kalray.eu>
 <20190320080506.xttdoivywbkaptx5@pengutronix.de>
 <1029133302.4680876.1553069889561.JavaMail.zimbra@kalray.eu>
 <64949728.4732605.1553099324820.JavaMail.zimbra@kalray.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <64949728.4732605.1553099324820.JavaMail.zimbra@kalray.eu>
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

I guess this version looks good. Could you resend with a Signed-off-by
tag?

Sascha

On Wed, Mar 20, 2019 at 05:28:44PM +0100, Cl=E9ment Leger wrote:
> Here is a V2 which uses correct type for elf header access macros
> (instead of simply unsigned long). Moreover types used are now
> of fixed size type (u64 instead of unsigned long). This could
> potentially allow a 32bit barebox to load a 64bit elf using some custom
> hardware which support 64bit addressing (DMA or such thing).
> =

> =

> This patch add elf64 loading support to the elf loader. Since
> elf32 and elf64 uses completely different types, to avoid copying all
> the code and simply replace elf32 with elf64, use a macro which will
> return the appropriate field for each type of header. This macro
> generates getter for elf structures according to the class of the loaded
> elf.
> All direct elf struct dereference are then replaced by call to generated
> functions. This allows to keep a common loader code even if types are
> different.
> ---
>  common/elf.c  | 45 +++++++++++++++++++++++----------------------
>  include/elf.h | 29 ++++++++++++++++++++++++++++-
>  2 files changed, 51 insertions(+), 23 deletions(-)
> =

> diff --git a/common/elf.c b/common/elf.c
> index 8edf38856..4733accb0 100644
> --- a/common/elf.c
> +++ b/common/elf.c
> @@ -45,29 +45,31 @@ static void elf_release_regions(struct elf_image *elf)
>  =

>  =

>  static int load_elf_phdr_segment(struct elf_image *elf, void *src,
> -				 Elf32_Phdr *phdr)
> +				 void *phdr)
>  {
> -	void *dst =3D (void *)phdr->p_paddr;
> +	void *dst =3D (void *) elf_phdr_p_paddr(elf, phdr);
>  	int ret;
> +	u64 p_filesz =3D elf_phdr_p_filesz(elf, phdr);
> +	u64 p_memsz =3D elf_phdr_p_memsz(elf, phdr);
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
> +	pr_debug("Loading phdr to 0x%p (%llu bytes)\n", dst, p_filesz);
>  =

> -	ret =3D elf_request_region(elf, (resource_size_t)dst, phdr->p_filesz);
> +	ret =3D elf_request_region(elf, (resource_size_t)dst, p_filesz);
>  	if (ret)
>  		return ret;
>  =

> -	memcpy(dst, src, phdr->p_filesz);
> +	memcpy(dst, src, p_filesz);
>  =

> -	if (phdr->p_filesz < phdr->p_memsz)
> -		memset(dst + phdr->p_filesz, 0x00,
> -		       phdr->p_memsz - phdr->p_filesz);
> +	if (p_filesz < p_memsz)
> +		memset(dst + p_filesz, 0x00,
> +		       p_memsz - p_filesz);
>  =

>  	return 0;
>  }
> @@ -75,14 +77,13 @@ static int load_elf_phdr_segment(struct elf_image *el=
f, void *src,
>  static int load_elf_image_phdr(struct elf_image *elf)
>  {
>  	void *buf =3D elf->buf;
> -	Elf32_Ehdr *ehdr =3D buf;
> -	Elf32_Phdr *phdr =3D (Elf32_Phdr *)(buf + ehdr->e_phoff);
> +	void *phdr =3D (void *) (buf + elf_hdr_e_phoff(elf, buf));
>  	int i, ret;
>  =

> -	elf->entry =3D ehdr->e_entry;
> +	elf->entry =3D elf_hdr_e_entry(elf, buf);
>  =

> -	for (i =3D 0; i < ehdr->e_phnum; ++i) {
> -		void *src =3D buf + phdr->p_offset;
> +	for (i =3D 0; i < elf_hdr_e_phnum(elf, buf) ; ++i) {
> +		void *src =3D buf + elf_phdr_p_offset(elf, phdr);
>  =

>  		ret =3D load_elf_phdr_segment(elf, src, phdr);
>  		/* in case of error elf_load_image() caller should clean up and
> @@ -90,22 +91,22 @@ static int load_elf_image_phdr(struct elf_image *elf)
>  		if (ret)
>  			return ret;
>  =

> -		++phdr;
> +		phdr +=3D elf_size_of_phdr(elf);
>  	}
>  =

>  	return 0;
>  }
>  =

> -static int elf_check_image(void *buf)
> +static int elf_check_image(struct elf_image *elf)
>  {
> -	Elf32_Ehdr *ehdr =3D (Elf32_Ehdr *)buf;
> -
> -	if (strncmp(buf, ELFMAG, SELFMAG)) {
> +	if (strncmp(elf->buf, ELFMAG, SELFMAG)) {
>  		pr_err("ELF magic not found.\n");
>  		return -EINVAL;
>  	}
>  =

> -	if (ehdr->e_type !=3D ET_EXEC) {
> +	elf->class =3D ((char *) elf->buf)[EI_CLASS];
> +
> +	if (elf_hdr_e_type(elf, elf->buf) !=3D ET_EXEC) {
>  		pr_err("Non EXEC ELF image.\n");
>  		return -ENOEXEC;
>  	}
> @@ -124,7 +125,7 @@ struct elf_image *elf_load_image(void *buf)
>  =

>  	elf->buf =3D buf;
>  =

> -	ret =3D elf_check_image(buf);
> +	ret =3D elf_check_image(elf);
>  	if (ret)
>  		return ERR_PTR(ret);
>  =

> diff --git a/include/elf.h b/include/elf.h
> index 92c8d9c12..633f4992d 100644
> --- a/include/elf.h
> +++ b/include/elf.h
> @@ -400,11 +400,38 @@ static inline void arch_write_notes(struct file *fi=
le) { }
>  =

>  struct elf_image {
>  	struct list_head list;
> -	unsigned long entry;
> +	u8 class;
> +	u64 entry;
>  	void *buf;
>  };
>  =

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
> +ELF_GET_FIELD(hdr, e_entry, u64)
> +ELF_GET_FIELD(hdr, e_phnum, u16)
> +ELF_GET_FIELD(hdr, e_phoff, u64)
> +ELF_GET_FIELD(hdr, e_type, u16)
> +ELF_GET_FIELD(phdr, p_paddr, u64)
> +ELF_GET_FIELD(phdr, p_filesz, u64)
> +ELF_GET_FIELD(phdr, p_memsz, u64)
> +ELF_GET_FIELD(phdr, p_type, u32)
> +ELF_GET_FIELD(phdr, p_offset, u64)
> +
> +static inline unsigned long elf_size_of_phdr(struct elf_image *elf)
> +{
> +	if (elf->class =3D=3D ELFCLASS32)
> +		return sizeof(Elf32_Phdr);
> +	else
> +		return sizeof(Elf64_Phdr);
> +}
> +
>  #endif /* _LINUX_ELF_H */
> -- =

> 2.15.0.276.g89ea799
> =

> =

> =

> =

> > Hi Sascha,
> > =

> >> Hi Cl=E9ment,
> >> =

> >> On Mon, Mar 18, 2019 at 08:16:47PM +0100, Cl=E9ment Leger wrote:
> >>> This patch add elf64 loading support to the elf loader. Since
> >>> elf32 and elf64 uses completely different types, to avoid copying all
> >>> the code and simply replace elf32 with elf64, use a macro which will
> >>> return the appropriate field for each type of header. This macro
> >>> generates getter for elf structures according to the class of the loa=
ded
> >>> elf.
> >>> All direct elf struct dereference are then replaced by call to genera=
ted
> >>> functions. This allows to keep a common loader code even if types are
> >>> different.
> >>> =

> >>> Signed-off-by: Cl=E9ment L=E9ger <clement.leger@kalray.eu>
> >>> ---
> >>>  common/elf.c  | 46 +++++++++++++++++++++++-----------------------
> >>>  include/elf.h | 27 +++++++++++++++++++++++++++
> >>>  2 files changed, 50 insertions(+), 23 deletions(-)
> >>> =

> >>> diff --git a/common/elf.c b/common/elf.c
> >>> index 8edf38856..bfb878954 100644
> >>> --- a/common/elf.c
> >>> +++ b/common/elf.c
> >>> @@ -43,31 +43,32 @@ static void elf_release_regions(struct elf_image =
*elf)
> >>>  	}
> >>>  }
> >>>  =

> >>> -
> >>>  static int load_elf_phdr_segment(struct elf_image *elf, void *src,
> >>> -				 Elf32_Phdr *phdr)
> >>> +				 void *phdr)
> >>>  {
> >>> -	void *dst =3D (void *)phdr->p_paddr;
> >>> +	void *dst =3D (void *) elf_phdr_p_paddr(elf, phdr);
> >>>  	int ret;
> >>> +	unsigned long p_filesz =3D elf_phdr_p_filesz(elf, phdr);
> >>> +	unsigned long p_memsz =3D elf_phdr_p_memsz(elf, phdr);
> >>>  =

> >>>  	/* we care only about PT_LOAD segments */
> >>> -	if (phdr->p_type !=3D PT_LOAD)
> >>> +	if (elf_phdr_p_type(elf, phdr) !=3D PT_LOAD)
> >>>  		return 0;
> >>>  =

> >>> -	if (!phdr->p_filesz)
> >>> +	if (!p_filesz)
> >>>  		return 0;
> >>>  =

> >>> -	pr_debug("Loading phdr to 0x%p (%i bytes)\n", dst, phdr->p_filesz);
> >>> +	pr_debug("Loading phdr to 0x%p (%ld bytes)\n", dst, p_filesz);
> >> =

> >> %lu for p_filesz?
> > =

> > Indeed, I missed this one.
> > =

> >> =

> >>> @@ -400,6 +400,7 @@ static inline void arch_write_notes(struct file *=
file) { }
> >>>  =

> >>>  struct elf_image {
> >>>  	struct list_head list;
> >>> +	unsigned long class;
> >>>  	unsigned long entry;
> >>>  	void *buf;
> >>>  };
> >>> @@ -407,4 +408,30 @@ struct elf_image {
> >>>  struct elf_image *elf_load_image(void *buf);
> >>>  void elf_release_image(struct elf_image *elf);
> >>>  =

> >>> +#define ELF_GET_FIELD(__s, __field, __type) \
> >>> +static inline __type elf_##__s##_##__field(struct elf_image *elf, vo=
id *arg) {
> >>> \
> >>> +	if (elf->class =3D=3D ELFCLASS32) \
> >>> +		return (__type) ((struct elf32_##__s *) arg)->__field; \
> >>> +	else \
> >>> +		return (__type) ((struct elf64_##__s *) arg)->__field; \
> >>> +}
> >>> +
> >>> +ELF_GET_FIELD(hdr, e_entry, unsigned long)
> >>> +ELF_GET_FIELD(hdr, e_phnum, unsigned long)
> >>> +ELF_GET_FIELD(hdr, e_phoff, unsigned long)
> >>> +ELF_GET_FIELD(hdr, e_type, unsigned long)
> >>> +ELF_GET_FIELD(phdr, p_paddr, unsigned long)
> >>> +ELF_GET_FIELD(phdr, p_filesz, unsigned long)
> >>> +ELF_GET_FIELD(phdr, p_memsz, unsigned long)
> >>> +ELF_GET_FIELD(phdr, p_type, unsigned long)
> >>> +ELF_GET_FIELD(phdr, p_offset, unsigned long)
> >> =

> >> When it's always unsigned long why do we have to pass in the type as an
> >> argument?
> > =

> > Actually, some of them should not be defined as I did.
> > For instance, the e_type is an half in both elf32 and elf64 so it should
> > be defined as u16.
> > =

> > Some other approaches to handle both 64bits/32bits elf were to copy
> > the whole loading code and s/elf32/elf64. Since the code in barebox is
> > not so big, maybe I could do that.
> > =

> >> =

> >> I am undecided if this is the right approach. "unsigned long" is wrong
> >> when a ELF file for a foreign architecture is loaded. This can happen
> >> for example when code for the Cortex M4 cores is loaded from the 64bit
> >> Cortex A cores is loaded on an i.MX8 for example. Using the bigger typ=
es
> >> then is not a problem, but maybe it could happen the other way round,
> >> loading a 64bit ELF on a 32bit architecture?
> > =

> > I was thinking about this one. I tried loading 32bit and 64bit elf from
> > a 64bit core but indeed, not the other way. If so, then addresses will
> > be truncated but since the processor will not be able to access a
> > 64 bits memory space, I guess it's not possible (unless you have some
> > DMA which can access the upper memory but this will probably not be
> > handled by barebox elf loader).
> > =

> >> =

> >> I can't see a real problem here, I just wanted to note. Are there other
> >> opinions?
> >> =

> >> Sascha
> >> =

> >> --
> >> Pengutronix e.K.                           |                          =
   |
> >> Industrial Linux Solutions                 | http://www.pengutronix.de=
/  |
> >> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0 =
   |
> >> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-55=
55 |
> > =

> > _______________________________________________
> > barebox mailing list
> > barebox@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/barebox
> =


-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
