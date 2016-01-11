Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aIYeB-0001qS-GQ
 for barebox@lists.infradead.org; Mon, 11 Jan 2016 09:20:21 +0000
Date: Mon, 11 Jan 2016 10:19:55 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160111091955.GM13058@pengutronix.de>
References: <1452099691-28645-1-git-send-email-mkl@pengutronix.de>
 <1452099691-28645-4-git-send-email-mkl@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1452099691-28645-4-git-send-email-mkl@pengutronix.de>
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
Subject: Re: [PATCH v2 3/3] bootm: add initial FIT support
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: barebox@lists.infradead.org, kernel@pengutronix.de

On Wed, Jan 06, 2016 at 06:01:31PM +0100, Marc Kleine-Budde wrote:
> From: Jan Luebbe <jlu@pengutronix.de>
> =

> This implementation is inspired by U-Boot's FIT support. Instead of
> using libfdt (which does not exist in barebox), configuration signatures
> are verified by using a simplified DT parser based on barebox's own
> code.
> =

> Currently, only signed configurations with hashed images are supported,
> as the other variants are less useful for verified boot. Compatible FIT
> images can be created using U-Boot's mkimage tool.
> =

> Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
> Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
> ---
>  arch/arm/lib/bootm.c |  73 +++++++
>  commands/Kconfig     |  10 +
>  common/Kconfig       |   6 +
>  common/Makefile      |   1 +
>  common/image-fit.c   | 585 +++++++++++++++++++++++++++++++++++++++++++++=
++++++
>  include/image-fit.h  |  42 ++++
>  6 files changed, 717 insertions(+)
>  create mode 100644 common/image-fit.c
>  create mode 100644 include/image-fit.h
> =

> diff --git a/arch/arm/lib/bootm.c b/arch/arm/lib/bootm.c
> index 7bb9b436560c..9a78ee85e9be 100644
> --- a/arch/arm/lib/bootm.c
> +++ b/arch/arm/lib/bootm.c
> @@ -553,6 +553,77 @@ BAREBOX_MAGICVAR(aimage_noverwrite_bootargs, "Disabl=
e overwrite of the bootargs
>  BAREBOX_MAGICVAR(aimage_noverwrite_tags, "Disable overwrite of the tags =
addr with the one present in aimage");
>  #endif
>  =

> +#include <image-fit.h>
> +
> +static int do_bootm_arm_fit(struct image_data *data)
> +{
> +	struct fit_handle *handle;
> +	int ret;
> +	unsigned long mem_free;
> +	unsigned long mem_start, mem_size;
> +
> +	handle =3D fit_open(data->os_file, data->os_num, data->verbose);
> +	if (!handle)
> +		return -EINVAL;
> +
> +	ret =3D sdram_start_and_size(&mem_start, &mem_size);
> +	if (ret)
> +		return ret;
> +
> +	/* no support for custom load address */
> +	data->os_address =3D mem_start + PAGE_ALIGN(handle->kernel_size * 4);
> +	data->os_res =3D request_sdram_region("fit-kernel", data->os_address, h=
andle->kernel_size);
> +	if (!data->os_res) {
> +		pr_err("Cannot request region 0x%08lx - 0x%08lx\n",
> +				data->os_address, handle->kernel_size);
> +		ret =3D -ENOMEM;
> +		goto err_out;
> +	}
> +	memcpy((void *)data->os_res->start, handle->kernel, handle->kernel_size=
);
> +
> +	/*
> +	 * Put oftree/initrd close behind compressed kernel image to avoid
> +	 * placing it outside of the kernels lowmem.
> +	 */
> +	if (handle->initrd_size) {
> +		data->initrd_address =3D PAGE_ALIGN(data->os_res->end + SZ_1M);
> +		data->initrd_res =3D request_sdram_region("fit-initrd", data->initrd_a=
ddress, handle->initrd_size);
> +		if (!data->initrd_res) {
> +			ret =3D -ENOMEM;
> +			goto err_out;
> +		}
> +		memcpy((void *)data->initrd_res->start, handle->initrd, handle->initrd=
_size);
> +	}
> +
> +	data->of_root_node =3D of_unflatten_dtb(handle->oftree);
> +	if (!data->of_root_node) {
> +		pr_err("unable to unflatten devicetree\n");
> +		ret =3D -EINVAL;
> +		goto err_out;
> +	}
> +
> +	/*
> +	 * Put devicetree right after initrd if present or after the kernel
> +	 * if not.
> +	 */
> +	if (data->initrd_res)
> +		mem_free =3D PAGE_ALIGN(data->initrd_res->end);
> +	else
> +		mem_free =3D PAGE_ALIGN(data->os_res->end + SZ_1M);
> +
> +	return __do_bootm_linux(data, mem_free, 0);
> +
> +err_out:
> +	fit_close(handle);
> +	return ret;
> +}
> +
> +static struct image_handler arm_fit_handler =3D {
> +        .name =3D "FIT image",
> +        .bootm =3D do_bootm_arm_fit,
> +        .filetype =3D filetype_oftree,
> +};
> +
>  static struct binfmt_hook binfmt_aimage_hook =3D {
>  	.type =3D filetype_aimage,
>  	.exec =3D "bootm",
> @@ -578,6 +649,8 @@ static int armlinux_register_image_handler(void)
>  		register_image_handler(&aimage_handler);
>  		binfmt_register(&binfmt_aimage_hook);
>  	}
> +	if (IS_BUILTIN(CONFIG_CMD_BOOTM_FITIMAGE))
> +	        register_image_handler(&arm_fit_handler);
>  	binfmt_register(&binfmt_arm_zimage_hook);
>  	binfmt_register(&binfmt_barebox_hook);
>  =

> diff --git a/commands/Kconfig b/commands/Kconfig
> index 1743670ed33c..3e4a32a416c7 100644
> --- a/commands/Kconfig
> +++ b/commands/Kconfig
> @@ -418,6 +418,16 @@ config CMD_BOOTM_AIMAGE
>  	help
>  	  Support using Android Images.
>  =

> +config CMD_BOOTM_FITIMAGE
> +	bool
> +	prompt "FIT image support"
> +	select FITIMAGE
> +	depends on CMD_BOOTM && ARM
> +	help
> +	  Support using FIT Images. Have a look at the u-boot source
> +	  tree in the "doc/uImage.FIT" folder for more information:
> +	  http://git.denx.de/?p=3Du-boot.git;a=3Dtree;f=3Ddoc/uImage.FIT
> +
>  config CMD_BOOTU
>  	tristate
>  	default y
> diff --git a/common/Kconfig b/common/Kconfig
> index 8e7950968c3e..d824b5e35f04 100644
> --- a/common/Kconfig
> +++ b/common/Kconfig
> @@ -66,6 +66,12 @@ config UIMAGE
>  	select CRC32
>  	bool
>  =

> +config FITIMAGE
> +	bool
> +	select OFTREE
> +	select DIGEST
> +	select CRYPTO_RSA
> +
>  config LOGBUF
>  	bool
>  =

> diff --git a/common/Makefile b/common/Makefile
> index 56e6becec078..ffaf8e7b42eb 100644
> --- a/common/Makefile
> +++ b/common/Makefile
> @@ -46,6 +46,7 @@ obj-$(CONFIG_SHELL_HUSH)	+=3D hush.o
>  obj-$(CONFIG_SHELL_SIMPLE)	+=3D parser.o
>  obj-$(CONFIG_STATE)		+=3D state.o
>  obj-$(CONFIG_UIMAGE)		+=3D image.o uimage.o
> +obj-$(CONFIG_FITIMAGE)		+=3D image-fit.o
>  obj-$(CONFIG_MENUTREE)		+=3D menutree.o
>  obj-$(CONFIG_EFI_GUID)		+=3D efi-guid.o
>  obj-$(CONFIG_EFI_DEVICEPATH)	+=3D efi-devicepath.o
> diff --git a/common/image-fit.c b/common/image-fit.c
> new file mode 100644
> index 000000000000..296285b0b44d
> --- /dev/null
> +++ b/common/image-fit.c
> @@ -0,0 +1,585 @@
> +/*
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License as published by
> + * the Free Software Foundation; either version 2 of the License, or
> + * (at your option) any later version.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + * You should have received a copy of the GNU General Public License
> + * along with this program; if not, see <http://www.gnu.org/licenses/>.
> + *
> + * Copyright (C) Jan L=FCbbe, 2014
> + */
> +
> +#include <common.h>
> +#include <init.h>
> +#include <boot.h>
> +#include <libfile.h>
> +#include <fdt.h>
> +#include <digest.h>
> +#include <of.h>
> +#include <fs.h>
> +#include <malloc.h>
> +#include <linux/ctype.h>
> +#include <asm/byteorder.h>
> +#include <errno.h>
> +#include <linux/err.h>
> +#include <stringlist.h>
> +#include <rsa.h>
> +#include <image-fit.h>
> +
> +#define FDT_MAX_DEPTH 32
> +#define FDT_MAX_PATH_LEN 200
> +
> +#define CHECK_LEVEL_NONE 0
> +#define CHECK_LEVEL_HASH 1
> +#define CHECK_LEVEL_SIG 2
> +#define CHECK_LEVEL_MAX 3
> +
> +static uint32_t dt_struct_advance(struct fdt_header *f, uint32_t dt, int=
 size)
> +{
> +	dt +=3D size;
> +	dt =3D ALIGN(dt, 4);
> +
> +	if (dt > f->off_dt_struct + f->size_dt_struct)
> +		return 0;
> +
> +	return dt;
> +}
> +
> +static char *dt_string(struct fdt_header *f, char *strstart, uint32_t of=
s)
> +{
> +	if (ofs > f->size_dt_strings)
> +		return NULL;
> +	else
> +		return strstart + ofs;
> +}

We already have these elsewhere, also as static functions. We should
create global functions for them.

> +
> +static int of_read_string_list(struct device_node *np, const char *name,=
 struct string_list *sl)
> +{
> +	struct property *prop;
> +	const char *s;
> +
> +	of_property_for_each_string(np, name, prop, s) {
> +		string_list_add(sl, s);
> +	}
> +
> +	return prop ? 0 : -EINVAL;
> +}
> +
> +static int fit_digest(void *fit, struct digest *digest,
> +		      struct string_list *inc_nodes, struct string_list *exc_props,
> +		      uint32_t hashed_strings_start, uint32_t hashed_strings_size)
> +{
> +	struct fdt_header *fdt =3D fit;
> +	uint32_t dt_struct;
> +	void *dt_strings;
> +	struct fdt_header f;

You do not initialize all fields, it's probably safer to zero it explicitly
here.

> +	int stack[FDT_MAX_DEPTH];
> +	char path[FDT_MAX_PATH_LEN];
> +	char *end;
> +	uint32_t tag;
> +	int start =3D -1;
> +	int depth =3D -1;
> +	int want =3D 0;
> +
> +	f.totalsize =3D fdt32_to_cpu(fdt->totalsize);
> +	f.off_dt_struct =3D fdt32_to_cpu(fdt->off_dt_struct);
> +	f.size_dt_struct =3D fdt32_to_cpu(fdt->size_dt_struct);
> +	f.off_dt_strings =3D fdt32_to_cpu(fdt->off_dt_strings);
> +	f.size_dt_strings =3D fdt32_to_cpu(fdt->size_dt_strings);
> +
> +	if (hashed_strings_start > f.size_dt_strings ||
> +	    hashed_strings_size > f.size_dt_strings ||
> +	    hashed_strings_start + hashed_strings_size > f.size_dt_strings) {
> +		pr_err("%s: hashed-strings too large\n", __func__);
> +		return -EINVAL;
> +	}
> +
> +	dt_struct =3D f.off_dt_struct;
> +	dt_strings =3D (void *)fdt + f.off_dt_strings;
> +
> +	end =3D path;
> +	*end =3D '\0';
> +
> +	do {
> +		const struct fdt_property *fdt_prop;
> +		const struct fdt_node_header *fnh;
> +		const char *name;
> +		int include =3D 0;
> +		int stop_at =3D 0;
> +		int offset =3D dt_struct;
> +		int maxlen, len;
> +
> +		tag =3D be32_to_cpu(*(uint32_t *)(fit + dt_struct));
> +
> +		switch (tag) {
> +		case FDT_BEGIN_NODE:
> +			fnh =3D fit + dt_struct;
> +			name =3D fnh->name;
> +			maxlen =3D (unsigned long)fdt + f.off_dt_struct +
> +				f.size_dt_struct - (unsigned long)name;
> +
> +			len =3D strnlen(name, maxlen + 1);
> +			if (len > maxlen)
> +				return -ESPIPE;
> +
> +			dt_struct =3D dt_struct_advance(&f, dt_struct,
> +						      sizeof(struct fdt_node_header) + len + 1);
> +
> +			depth++;
> +			if (depth =3D=3D FDT_MAX_DEPTH)
> +				return -ESPIPE;
> +			if (end - path + 2 + len >=3D FDT_MAX_PATH_LEN)
> +				return -ESPIPE;
> +			if (end !=3D path + 1)
> +				*end++ =3D '/';
> +			strcpy(end, name);
> +			end +=3D len;
> +			stack[depth] =3D want;
> +			if (want =3D=3D 1)
> +				stop_at =3D offset;
> +			if (string_list_contains(inc_nodes, path))
> +				want =3D 2;
> +			else if (want)
> +				want--;
> +			else
> +				stop_at =3D offset;
> +			include =3D want;
> +
> +			break;
> +
> +		case FDT_END_NODE:
> +			dt_struct =3D dt_struct_advance(&f, dt_struct, FDT_TAGSIZE);
> +
> +			include =3D want;
> +			want =3D stack[depth--];
> +			while (end > path && *--end !=3D '/')
> +				;
> +			*end =3D '\0';
> +
> +			break;
> +
> +		case FDT_PROP:
> +			fdt_prop =3D fit + dt_struct;
> +			len =3D fdt32_to_cpu(fdt_prop->len);
> +
> +			name =3D dt_string(&f, dt_strings, fdt32_to_cpu(fdt_prop->nameoff));
> +			if (!name)
> +				return -ESPIPE;
> +
> +			dt_struct =3D dt_struct_advance(&f, dt_struct,
> +						      sizeof(struct fdt_property) + len);
> +
> +			include =3D want >=3D 2;
> +			stop_at =3D offset;
> +			if (string_list_contains(exc_props, name))
> +				include =3D 0;
> +
> +			break;
> +
> +		case FDT_NOP:
> +			dt_struct =3D dt_struct_advance(&f, dt_struct, FDT_TAGSIZE);
> +
> +			include =3D want >=3D 2;
> +			stop_at =3D offset;
> +
> +			break;
> +
> +		case FDT_END:
> +			dt_struct =3D dt_struct_advance(&f, dt_struct, FDT_TAGSIZE);
> +
> +			include =3D 1;
> +
> +			break;
> +
> +		default:
> +			pr_err("%s: Unknown tag 0x%08X\n", __func__, tag);
> +			return -EINVAL;
> +		}
> +
> +		if (!dt_struct)
> +			return -ESPIPE;
> +
> +		pr_debug("%s: include %d, want %d, offset 0x%x, len 0x%x\n",
> +			 path, include, want, offset, dt_struct-offset);
> +
> +		if (include && start =3D=3D -1)
> +			start =3D offset;
> +
> +		if (!include && start !=3D -1) {
> +			pr_debug("region: 0x%p+0x%x\n", fit+start, offset-start);
> +			digest_update(digest, fit+start, offset-start);
> +			start =3D -1;
> +		}
> +	} while (tag !=3D FDT_END);
> +
> +	pr_debug("region: 0x%p+0x%x\n", fit+start, dt_struct-start);
> +	digest_update(digest, fit+start, dt_struct-start);

Please add whitespaces around binary operators.

> +
> +	pr_debug("strings: 0x%p+0x%x\n", dt_strings+hashed_strings_start, hashe=
d_strings_size);
> +	digest_update(digest, dt_strings+hashed_strings_start, hashed_strings_s=
ize);
> +
> +	return 0;
> +}
> +
> +/*
> + * The consistency of the FTD structure was already checked by of_unflat=
ten_dtb()
> + */
> +static int fit_verify_signature(struct device_node *sig_node, void *fit)
> +{
> +	uint32_t hashed_strings_start, hashed_strings_size;
> +	struct string_list inc_nodes, exc_props;
> +	struct rsa_public_key key =3D {};
> +	struct digest *digest;
> +	int sig_len;
> +	const char *algo_name, *key_name, *sig_value;
> +	char *key_path;
> +	struct device_node *key_node;
> +	enum hash_algo algo;
> +	void *hash;
> +	int ret;
> +
> +	if (of_property_read_string(sig_node, "algo", &algo_name)) {
> +		pr_err("algo not found\n");
> +		ret =3D -EINVAL;
> +		goto out;
> +	}
> +	if (strcmp(algo_name, "sha1,rsa2048") =3D=3D 0) {
> +		algo =3D HASH_ALGO_SHA1;
> +	} else if (strcmp(algo_name, "sha256,rsa4096") =3D=3D 0) {
> +		algo =3D HASH_ALGO_SHA256;
> +	} else	{
> +		pr_err("unknown algo %s\n", algo_name);
> +		ret =3D -EINVAL;
> +		goto out;
> +	}
> +	digest =3D digest_alloc_by_algo(algo);
> +	if (!digest) {
> +		pr_err("unsupported algo %s\n", algo_name);
> +		ret =3D -EINVAL;
> +		goto out;
> +	}
> +
> +	sig_value =3D of_get_property(sig_node, "value", &sig_len);
> +	if (!sig_value) {
> +		pr_err("signature value not found\n");
> +		ret =3D -EINVAL;
> +		goto out_free_digest;
> +	}
> +
> +	if (of_property_read_string(sig_node, "key-name-hint", &key_name)) {
> +		pr_err("key name not found\n");
> +		ret =3D -EINVAL;
> +		goto out_free_digest;
> +	}
> +	key_path =3D asprintf("/signature/key-%s", key_name);
> +	if (!key_name) {

s/key_name/key_path/

> +		ret =3D -ENOMEM;
> +		goto out_free_digest;
> +	}
> +	key_node =3D of_find_node_by_path(key_path);
> +	free(key_path);
> +	if (!key_node) {
> +		pr_info("failed to find key node\n");
> +		ret =3D -ENOENT;
> +		goto out_free_digest;
> +	}
> +
> +	ret =3D rsa_of_read_key(key_node, &key);
> +	if (ret) {
> +		pr_info("failed to read key\n");
> +		ret =3D -ENOENT;
> +		goto out_free_digest;
> +	}
> +
> +	if (of_property_read_u32_index(sig_node, "hashed-strings", 0, &hashed_s=
trings_start)) {
> +		pr_err("%s: hashed-strings start not found\n", __func__);
> +		ret =3D -EINVAL;
> +		goto out_free_digest;
> +	}
> +	if (of_property_read_u32_index(sig_node, "hashed-strings", 1, &hashed_s=
trings_size)) {
> +		pr_err("%s: hashed-strings size not found\n", __func__);
> +		ret =3D -EINVAL;
> +		goto out_free_digest;
> +	}
> +
> +	string_list_init(&inc_nodes);
> +	string_list_init(&exc_props);
> +
> +	if (of_read_string_list(sig_node, "hashed-nodes", &inc_nodes)) {
> +		pr_err("%s: hashed-nodes invalid\n", __func__);

Please drop the __func__ and add a suitable pr_fmt.

> +		ret =3D -EINVAL;
> +		goto out_sl;
> +	}
> +
> +	string_list_add(&exc_props, "data");
> +
> +	digest_init(digest);
> +	ret =3D fit_digest(fit, digest, &inc_nodes, &exc_props, hashed_strings_=
start, hashed_strings_size);
> +	hash =3D xzalloc(digest_length(digest));
> +	digest_final(digest, hash);
> +
> +	ret =3D rsa_verify(&key, sig_value, sig_len, hash, algo);
> +	if (ret) {
> +		pr_info("FIT image signature BAD\n");
> +		ret =3D CHECK_LEVEL_NONE;
> +	} else {
> +		pr_info("FIT image signature OK\n");
> +		ret =3D CHECK_LEVEL_SIG;
> +	}
> +
> +	free(hash);
> + out_sl:
> +	string_list_free(&inc_nodes);
> +	string_list_free(&exc_props);
> + out_free_digest:
> +	digest_free(digest);
> + out:
> +	return ret;
> +}
> +
> +static int fit_verify_hash(struct device_node *hash, const void *data, i=
nt data_len)
> +{
> +	struct digest *d;
> +	const char *algo;
> +	const char *value_read;
> +	char *value_calc;
> +	int hash_len;
> +
> +	value_read =3D of_get_property(hash, "value", &hash_len);
> +	if (!value_read) {
> +		pr_err("%s: value not found\n", hash->full_name);
> +		return -EINVAL;
> +	}
> +
> +	if (of_property_read_string(hash, "algo", &algo)) {
> +		pr_err("%s: algo not found\n", hash->full_name);
> +		return -EINVAL;
> +	}
> +
> +	d =3D digest_alloc(algo);
> +	if (!d) {
> +		pr_err("%s: unsupported algo %s\n", hash->full_name, algo);
> +		return -EINVAL;
> +	}
> +
> +	if (hash_len !=3D digest_length(d)) {
> +		pr_err("%s: invalid hash length %d\n", hash->full_name, hash_len);
> +		digest_free(d);
> +		return -EINVAL;
> +	}
> +
> +	value_calc =3D xmalloc(hash_len);
> +
> +	digest_init(d);
> +	digest_update(d, data, data_len);
> +	digest_final(d, value_calc);
> +
> +	if (memcmp(value_read, value_calc, hash_len)) {
> +		pr_info("%s: hash BAD\n", hash->full_name);
> +		digest_free(d);
> +		return CHECK_LEVEL_NONE;
> +	} else {
> +		pr_info("%s: hash OK\n", hash->full_name);
> +		digest_free(d);
> +		return CHECK_LEVEL_HASH;
> +	}

You can move the digest_free before the if/else.

> +}
> +
> +static int fit_open_image(struct fit_handle *handle, const char* unit)
> +{
> +	struct device_node *image =3D NULL, *hash;
> +	const char *type =3D NULL, *desc=3D "(no description)";
> +	const void *data;
> +	int data_len;
> +	int ret, level;
> +
> +	image =3D of_get_child_by_name(handle->root, "images");
> +	if (!image)
> +		return -ENOENT;
> +
> +	image =3D of_get_child_by_name(image, unit);
> +	if (!image)
> +		return -ENOENT;
> +
> +	of_property_read_string(image, "description", &desc);
> +	pr_info("FIT image '%s': '%s'\n", unit, desc);
> +
> +	of_property_read_string(image, "type", &type);
> +	if (!type)
> +		return -EINVAL;
> +
> +	data =3D of_get_property(image, "data", &data_len);
> +	if (!data) {
> +		pr_err("data not found\n");
> +		return -EINVAL;
> +	}
> +
> +	level =3D CHECK_LEVEL_MAX;
> +	for_each_child_of_node(image, hash) {
> +		if (handle->verbose)
> +			of_print_nodes(hash, 0);
> +		ret =3D fit_verify_hash(hash, data, data_len);
> +		if (ret < 0)
> +			return ret;
> +		level =3D min(level, ret);
> +	}
> +	if (level =3D=3D CHECK_LEVEL_MAX)
> +		return -EINVAL;
> +
> +	if (level =3D=3D CHECK_LEVEL_HASH) {
> +		if (strcmp(type, "kernel") =3D=3D 0 ||
> +		    strcmp(type, "kernel_noload") =3D=3D 0) {
> +			handle->kernel =3D data;
> +			handle->kernel_size =3D data_len;
> +		} else if (strcmp(type, "flat_dt") =3D=3D 0) {
> +			handle->oftree =3D data;
> +			handle->oftree_size =3D data_len;
> +		} else if (strcmp(type, "ramdisk") =3D=3D 0) {
> +			handle->initrd =3D data;
> +			handle->initrd_size =3D data_len;
> +		} else {
> +			pr_info("unknown image type %s, ignoring\n", type);
> +		}
> +	}
> +
> +	return level;
> +}
> +
> +static int fit_open_configuration(struct fit_handle *handle, int num)
> +{
> +	struct device_node *conf_node =3D NULL, *sig_node;
> +	char unit_name[10];
> +	const char *unit, *desc;
> +	int ret, level;
> +
> +	conf_node =3D of_get_child_by_name(handle->root, "configurations");
> +	if (!conf_node)
> +		return -ENOENT;
> +
> +	if (num) {
> +		snprintf(unit_name, sizeof(unit_name), "conf@%d", num);
> +		unit =3D unit_name;
> +	} else if (of_property_read_string(conf_node, "default", &unit)) {
> +		unit =3D "conf@1";
> +	}
> +
> +	conf_node =3D of_get_child_by_name(conf_node, unit);
> +	if (!conf_node) {
> +		pr_err("FIT configuration '%s' not found\n", unit);
> +		return -ENOENT;
> +	}
> +
> +	if (of_property_read_string(conf_node, "description", &desc)) {
> +		pr_info("FIT configuration '%s' (no description)\n", unit);
> +	} else {
> +		pr_info("FIT configuration '%s': '%s'\n", unit, desc);
> +	}

in fit_open_image() desc is initialized with "(no description)". You could
do the same here.


> +struct fit_handle *fit_open(const char *filename, int num, bool verbose)
> +{
> +	struct fit_handle *handle =3D NULL;
> +	const char *desc;
> +
> +	handle =3D xzalloc(sizeof(struct fit_handle));
> +
> +	handle->verbose =3D verbose;
> =

> +		pr_err("unable to read %s: %s\n", filename, strerror(errno));
> +		goto err;
> +	}
> +
> +	handle->root =3D of_unflatten_dtb(handle->fit);
> +	if (IS_ERR(handle->root)) {
> +		goto err;
> +	}
> +
> +	if (of_property_read_string(handle->root, "description", &desc)) {
> +		pr_info("FIT '%s' (no description)\n", filename);
> +	} else {
> +		pr_info("FIT '%s': '%s'\n", filename, desc);
> +	}

Same as in fit_open_configuration()


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
