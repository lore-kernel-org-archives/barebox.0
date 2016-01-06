Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aGqfA-0006fK-DC
 for barebox@lists.infradead.org; Wed, 06 Jan 2016 16:10:19 +0000
References: <1451981463-23604-1-git-send-email-mkl@pengutronix.de>
 <1451981463-23604-4-git-send-email-mkl@pengutronix.de>
 <1452025697.4474.40.camel@rtred1test09.kymeta.local>
From: Marc Kleine-Budde <mkl@pengutronix.de>
Message-ID: <568D3C4B.3070409@pengutronix.de>
Date: Wed, 6 Jan 2016 17:09:47 +0100
MIME-Version: 1.0
In-Reply-To: <1452025697.4474.40.camel@rtred1test09.kymeta.local>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============4033555027209867625=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 3/3] bootm: add initial FIT support
To: Trent Piepho <tpiepho@kymetacorp.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>, "kernel@pengutronix.de" <kernel@pengutronix.de>

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============4033555027209867625==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="fhSqmo0gD5OUS7j6U1NGJqioFMjn4npjp"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--fhSqmo0gD5OUS7j6U1NGJqioFMjn4npjp
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On 01/05/2016 09:28 PM, Trent Piepho wrote:

Thanks for the review. Comments inline.

> On Tue, 2016-01-05 at 09:11 +0100, Marc Kleine-Budde wrote:
>> +static int do_bootm_arm_fit(struct image_data *data)
>> +{
>> +	struct fit_handle *handle;
>> +	int ret;
>> +	unsigned long mem_free;
>> +	unsigned long mem_start, mem_size;
>> +
>> +	handle =3D fit_open(data->os_file, data->os_num, data->verbose);
>> +	if (!handle)
>> +		return -EINVAL;
>> +
>> +	ret =3D sdram_start_and_size(&mem_start, &mem_size);
>> +	if (ret)
>> +		return ret;
>> +
>> +	/* no support for custom load address */
>> +	data->os_address =3D mem_start + PAGE_ALIGN(handle->kernel_size * 4)=
;
>> +	data->os_res =3D request_sdram_region("fit-kernel", data->os_address=
, handle->kernel_size);
>> +	if (!data->os_res) {
>> +		pr_err("Cannot request region 0x%08lx - 0x%08lx\n",
>> +				data->os_address, handle->kernel_size);
>> +		ret =3D -ENOMEM;
>> +		goto err_out;
>> +	}
>> +	memcpy((void *)data->os_res->start, handle->kernel, handle->kernel_s=
ize);
>> +
>> +	/*
>> +	 * Put oftree/initrd close behind compressed kernel image to avoid
>> +	 * placing it outside of the kernels lowmem.
>> +	 */
>> +	if (handle->initrd_size) {
>> +		data->initrd_address =3D PAGE_ALIGN(data->os_res->end + SZ_1M);
>> +		data->initrd_res =3D request_sdram_region("fit-initrd", data->initr=
d_address, handle->initrd_size);
>> +		if (!data->initrd_res) {
>> +			ret =3D -ENOMEM;
>> +			goto err_out;
>> +		}
>> +		memcpy((void *)data->initrd_res->start, handle->initrd, handle->ini=
trd_size);
>> +	}
>> +
>> +	data->of_root_node =3D of_unflatten_dtb(handle->oftree);
>> +	if (!data->of_root_node) {
>> +		pr_err("unable to unflatten devicetree\n");
>> +		ret =3D -EINVAL;
>> +		goto err_out;
>> +	}
>> +
>> +	/*
>> +	 * Put devicetree right after initrd if present or after the kernel
>> +	 * if not.
>> +	 */
>> +	if (data->initrd_res)
>> +		mem_free =3D PAGE_ALIGN(data->initrd_res->end);
>> +	else
>> +		mem_free =3D PAGE_ALIGN(data->os_res->end + SZ_1M);
> Why the extra 1M?

Let's see if Jan remembers, he has coded this.

>> +
>> +	return __do_bootm_linux(data, mem_free, 0);
>> +
>> +err_out:
>> +	if (handle)
>> +		fit_close(handle);
>=20
> handle can't be NULL, it's been dereferenced in every path that gets
> there.

correct. tnx.

>=20
>> +	return ret;
>> +}
>> +
>> +static struct image_handler arm_fit_handler =3D {
>=20
> Can this be const?

No, because it has a struct list_head embedded.

>> +        .name =3D "FIT image",
>> +        .bootm =3D do_bootm_arm_fit,
>> +        .filetype =3D filetype_oftree,
>> +};
>> +
>>  static struct binfmt_hook binfmt_aimage_hook =3D {
>>  	.type =3D filetype_aimage,
>>  	.exec =3D "bootm",
>> @@ -578,6 +650,8 @@ static int armlinux_register_image_handler(void)
>>  		register_image_handler(&aimage_handler);
>>  		binfmt_register(&binfmt_aimage_hook);
>>  	}
>> +	if (IS_BUILTIN(CONFIG_CMD_BOOTM_FITIMAGE))
>> +	        register_image_handler(&arm_fit_handler);
>>  	binfmt_register(&binfmt_arm_zimage_hook);
>>  	binfmt_register(&binfmt_barebox_hook);
>> =20
>> diff --git a/commands/Kconfig b/commands/Kconfig
>> index 1743670ed33c..b89627209f5a 100644
>> --- a/commands/Kconfig
>> +++ b/commands/Kconfig
>> @@ -418,6 +418,14 @@ config CMD_BOOTM_AIMAGE
>>  	help
>>  	  Support using Android Images.
>> =20
>> +config CMD_BOOTM_FITIMAGE
>> +	bool
>> +	prompt "FIT image support"
>> +	select FITIMAGE
>> +	depends on CMD_BOOTM && ARM
>> +	help
>> +	  Support using FIT Images.
>=20
> Perhaps a link about FIT images or a pointer to a file in Documentation=

> could go here?

OK.

>> +/*
>> + * The consistency of the FTD structure was already checked by of_unf=
latten_dtb()
>> + */
>> +static int fit_verify_signature(struct device_node *sig_node, void *f=
it)
>> +{
>> +	uint32_t hashed_strings_start, hashed_strings_size;
>> +	struct string_list inc_nodes, exc_props;
>> +	struct rsa_public_key key =3D {};
>> +	struct digest *digest;
>> +	int sig_len;
>> +	const char *algo_name, *key_name, *sig_value;
>> +	char *key_path;
>> +	struct device_node *key_node;
>> +	enum hash_algo algo;
>> +	void *hash;
>> +	int ret;
>> +
>> +	if (of_property_read_string(sig_node, "algo", &algo_name)) {
>> +		pr_err("algo not found\n");
>> +		ret =3D -EINVAL;
>> +		goto out;
>> +	}
>> +	if (strcmp(algo_name, "sha1,rsa2048") =3D=3D 0) {
>> +		algo =3D HASH_ALGO_SHA1;
>> +	} else if (strcmp(algo_name, "sha256,rsa4096") =3D=3D 0) {
>> +		algo =3D HASH_ALGO_SHA256;
>> +	} else	{
>> +		pr_err("unknown algo %s\n", algo_name);
>> +		ret =3D -EINVAL;
>> +		goto out;
>> +	}
>> +	digest =3D digest_alloc_by_algo(algo);
>> +	if (!digest) {
>> +		pr_err("unsupported algo %s\n", algo_name);
>> +		ret =3D -EINVAL;
>> +		goto out;
>> +	}
>> +
>> +	sig_value =3D of_get_property(sig_node, "value", &sig_len);
>> +	if (!sig_value) {
>> +		pr_err("signature value not found\n");
>> +		ret =3D -EINVAL;
>> +		goto out_free_digest;
>> +	}
>> +
>> +	if (of_property_read_string(sig_node, "key-name-hint", &key_name)) {=

>> +		pr_err("key name not found\n");
>> +		ret =3D -EINVAL;
>> +		goto out_free_digest;
>> +	}
>> +	key_path =3D asprintf("/signature/key-%s", key_name);
>=20
> If I understand this correctly, one computes a hash of part of the
> device tree and then verifies it against a signature, also in the devic=
e
> tree, using an RSA key, also in the device tree.
>=20
> What's the point of that?  Isn't it basically a complex CRC check for
> internal consistency?

No, as the public key comes from the device tree that's already active
in barebox. In my use case it's linked into the barebox binary which
itself is signed again (and tested by the ROM code before executed).

>> +	if (!key_name) {
>> +		ret =3D -ENOMEM;
>> +		goto out_free_digest;
>> +	}
>> +	key_node =3D of_find_node_by_path(key_path);
>> +	free(key_path);
>> +	if (!key_node) {
>> +		pr_info("failed to find key node\n");
>> +		ret =3D -ENOENT;
>> +		goto out_free_digest;
>> +	}
>> +
>> +	ret =3D rsa_of_read_key(key_node, &key);
>> +	if (ret) {
>> +		pr_info("failed to read key\n");
>> +		ret =3D -ENOENT;
>> +		goto out_free_digest;
>> +	}
>> +
>> +	if (of_property_read_u32_index(sig_node, "hashed-strings", 0, &hashe=
d_strings_start)) {
>> +		pr_err("%s: hashed-strings start not found\n", __func__);
>> +		ret =3D -EINVAL;
>> +		goto out_free_digest;
>> +	}
>> +	if (of_property_read_u32_index(sig_node, "hashed-strings", 1, &hashe=
d_strings_size)) {
>> +		pr_err("%s: hashed-strings size not found\n", __func__);
>> +		ret =3D -EINVAL;
>> +		goto out_free_digest;
>> +	}
>> +
>> +	string_list_init(&inc_nodes);
>> +	string_list_init(&exc_props);
>> +
>> +	if (of_read_string_list(sig_node, "hashed-nodes", &inc_nodes)) {
>> +		pr_err("%s: hashed-nodes invalid\n", __func__);
>> +		ret =3D -EINVAL;
>> +		goto out_sl;
>> +	}
>> +
>> +	string_list_add(&exc_props, "data");
>> +
>> +	digest_init(digest);
>> +	ret =3D fit_digest(fit, digest, &inc_nodes, &exc_props, hashed_strin=
gs_start, hashed_strings_size);
>> +	hash =3D xzalloc(digest_length(digest));
>> +	digest_final(digest, hash);
>> +
>> +	ret =3D rsa_verify(&key, sig_value, sig_len, hash, algo);
>> +	if (ret) {
>> +		pr_info("sig BAD\n");
>> +		ret =3D CHECK_LEVEL_NONE;
>=20
> Info level message should maybe be a bit more descriptive.

OK

>=20
>> +	} else {
>> +		pr_info("sig OK\n");
>> +		ret =3D CHECK_LEVEL_SIG;
>> +	}
>> +
>> +	free(hash);
>> + out_sl:
>> +	string_list_free(&inc_nodes);
>> +	string_list_free(&exc_props);
>> + out_free_digest:
>> +	digest_free(digest);
>> + out:
>> +	return ret;
>> +}
>> +
>> +static int fit_verify_hash(struct device_node *hash, const void *data=
, int data_len)
>> +{
>> +	struct digest *d;
>> +	const char *algo;
>> +	const char *value_read;
>> +	char *value_calc;
>> +	int hash_len;
>> +
>> +	value_read =3D of_get_property(hash, "value", &hash_len);
>> +	if (!value_read) {
>> +		pr_err("value not found\n");
>> +		return CHECK_LEVEL_NONE;
>=20
> Suggest adding node path to error messages.  "value not found" really
> doesn't tell anyone anything.

OK

>=20
> This is an error message, but returns CHECK_LEVEL_NONE.  While later...=

>=20
>> +
>> +	if (memcmp(value_read, value_calc, hash_len)) {
>> +		pr_info("hash BAD\n");
>> +		digest_free(d);
>> +		return CHECK_LEVEL_NONE;
>=20
> Now it's an info message and returns CHECK_LEVEL_NONE.  Seems wrong to
> return the same value for an error and a non-error.

I've kept the LEVEL_NONE here, but return with -EINVAL if no hash value
is found.

>=20
>> +	} else {
>> +		pr_info("hash OK\n");
>> +		digest_free(d);
>> +		return CHECK_LEVEL_HASH;
>> +	}
>> +}
>> +
>> +static int fit_open_image(struct fit_handle *handle, const char* unit=
)
>> +{
>> +	struct device_node *image =3D NULL, *hash;
>> +	const char *type =3D NULL, *desc;
>> +	const void *data;
>> +	int data_len;
>> +	int ret, level;
>> +
>> +	image =3D of_get_child_by_name(handle->root, "images");
>> +	if (!image)
>> +		return -ENOENT;
>> +
>> +	image =3D of_get_child_by_name(image, unit);
>> +	if (!image)
>> +		return -ENOENT;
>> +
>> +	if (of_property_read_string(image, "description", &desc)) {
> Here you check the return value of of_property_read_string()
>> +		pr_info("FIT image '%s' (no description)\n", unit);
>> +	} else {
>> +		pr_info("FIT image '%s': '%s'\n", unit, desc);
>> +	}
>=20
> Suggest:
>          desc =3D "(no description)";
>          of_property_read_string(image, "description", &desc);
>          pr_info("FIT image '%s': '%s'\n", unit, desc);
>          /* desc has valid value if anyone uses it again, instead of
>             being uninitialized */

tnx

>> +
>> +	of_property_read_string(image, "type", &type);
>> +	if (!type)
>> +		return -EINVAL;
>=20
> But here you check that type is non-NULL.

It's later used in strcmp().

>> +
>> +	data =3D of_get_property(image, "data", &data_len);
>> +	if (!data) {
>> +		pr_err("data not found\n");
>> +		return -EINVAL;
>> +	}
>> +
>> +	level =3D CHECK_LEVEL_MAX;
>> +	for_each_child_of_node(image, hash) {
>> +		if (handle->verbose)
>> +			of_print_nodes(hash, 0);
>> +		ret =3D fit_verify_hash(hash, data, data_len);
>> +		if (ret < 0)
>> +			return ret;
>> +		level =3D min(level, ret);
>> +	}
>> +	if (level =3D=3D CHECK_LEVEL_MAX) {
>> +		return -EINVAL;
>> +	}
> Inconsistent use of {} for one statement then clause.

ok

>> +
>> +	if (level =3D=3D CHECK_LEVEL_HASH) {
>> +		if (strcmp(type, "kernel") =3D=3D 0 ||
>> +		    strcmp(type, "kernel_noload") =3D=3D 0) {
>> +			handle->kernel =3D data;
>> +			handle->kernel_size =3D data_len;
>> +		} else if (strcmp(type, "flat_dt") =3D=3D 0) {
>> +			handle->oftree =3D data;
>> +			handle->oftree_size =3D data_len;
>> +		} else if (strcmp(type, "ramdisk") =3D=3D 0) {
>> +			handle->initrd =3D data;
>> +			handle->initrd_size =3D data_len;
>> +		} else {
>> +			pr_info("unknown image type %s, ignoring\n", type);
>> +		}
>> +	}
>> +
>> +	return level;
>> +}
>> +
>> +static int fit_open_configuration(struct fit_handle *handle, int num)=

>> +{
>> +	struct device_node *conf_node =3D NULL, *sig_node;
>> +	char unit_name[10];
>> +	const char *unit, *desc;
>> +	int ret, level;
>> +
>> +	conf_node =3D of_get_child_by_name(handle->root, "configurations");
>> +	if (!conf_node)
>> +		return -ENOENT;
>> +
>> +	if (num) {
>> +		snprintf(unit_name, sizeof(unit_name), "conf@%d", num);
>> +		unit =3D unit_name;
>> +	} else if (of_property_read_string(conf_node, "default", &unit)) {
>> +		unit =3D "conf@1";
>> +	}
>> +
>> +	conf_node =3D of_get_child_by_name(conf_node, unit);
>> +	if (!conf_node) {
>> +		pr_err("FIT configuration '%s' not found\n", unit);
>> +		return -ENOENT;
>> +	}
>> +
>> +	if (of_property_read_string(conf_node, "description", &desc)) {
>> +		pr_info("FIT configuration '%s' (no description)\n", unit);
>> +	} else {
>> +		pr_info("FIT configuration '%s': '%s'\n", unit, desc);
>> +	}
>> +
>> +	level =3D CHECK_LEVEL_MAX;
>> +	for_each_child_of_node(conf_node, sig_node) {
>> +		if (handle->verbose)
>> +			of_print_nodes(sig_node, 0);
>> +		ret =3D fit_verify_signature(sig_node, handle->fit);
>> +		if (ret < 0)
>> +			return ret;
>> +		level =3D min(level, ret);
>> +	}
>> +	if (level =3D=3D CHECK_LEVEL_MAX)
>> +		return -EINVAL;
>=20
> This function up to here seems very similar to fit_open_image().  Could=

> they be refactored, Ie. _fit_open(handle, "images", unit) vs
> _fit_open(handle, "configurations", "conf@1").

Given the fact that Yegor wants to improve the configuration selection
anyways I'd postpone this until he's finished.

>=20
>> +
>> +	if (level !=3D CHECK_LEVEL_SIG)
>> +		return -EINVAL;
>> +
>> +	if (of_property_read_string(conf_node, "kernel", &unit) =3D=3D 0)
>> +		level =3D min(level, fit_open_image(handle, unit));
>> +	else
>> +		return -ENOENT;
>> +
>> +	if (of_property_read_string(conf_node, "fdt", &unit) =3D=3D 0)
>> +		level =3D min(level, fit_open_image(handle, unit));
>> +
>> +	if (of_property_read_string(conf_node, "ramdisk", &unit) =3D=3D 0)
>> +		level =3D min(level, fit_open_image(handle, unit));
>> +
>> +	if (level !=3D CHECK_LEVEL_HASH)
>> +		return -EINVAL;
>> +
>> +	return 0;
>> +}
>> +
>> +struct fit_handle *fit_open(const char *filename, int num, bool verbo=
se)
>> +{
>> +	struct fit_handle *handle =3D NULL;
>> +	const char *desc;
>> +
>> +	handle =3D xzalloc(sizeof(struct fit_handle));
>> +
>> +	handle->verbose =3D verbose;
>> +
>> +	handle->fit =3D read_file(filename, &handle->size);
>> +	if (!handle->fit) {
>> +		pr_err("unable to read %s: %s\n", filename, strerror(errno));
>> +		goto err;
>> +	}
>> +
>> +	handle->root =3D of_unflatten_dtb(handle->fit);
>> +	if (IS_ERR(handle->root)) {
>> +		goto err;
>> +	}
> Use of {} for one statement if clauses is inconsistent in this function=
=2E

tnx

>> +
>> +	if (of_property_read_string(handle->root, "description", &desc)) {
>> +		pr_info("FIT '%s' (no description)\n", filename);
>> +	} else {
>> +		pr_info("FIT '%s': '%s'\n", filename, desc);
>> +	}
>> +
>> +	if (fit_open_configuration(handle, num))
>> +		goto err;
>> +
>> +	return handle;
>> + err:
>> +	if (handle->root)
>> +		of_delete_node(handle->root);
>> +	if (handle->fit)
>> +		free(handle->fit);
>> +	free(handle);
>> +
>> +	return NULL;
>> +}
>> +
>> +void fit_close(struct fit_handle *handle)
>> +{
>> +	if (handle->root)
>> +		of_delete_node(handle->root);
>> +	if (handle->fit)
>> +		free(handle->fit);
>=20
> Isn't free(NULL) allowed in Barebox?  In the kernel it's defined that
> kfree() will check for NULL and code should not check before calling it=
=2E

tnx, should be no problem.

>=20
>> +	free(handle);
>> +}
>> +
>> +#ifdef CONFIG_SANDBOX
>> +static int do_bootm_sandbox_fit(struct image_data *data)
>> +{
>> +	struct fit_handle *handle;
>> +	handle =3D fit_open(data->os_file, data->os_num, data->verbose);
>> +	if (handle)
>> +		fit_close(handle);
>> +	return 0;
>> +}
>> +
>> +static struct image_handler sandbox_fit_handler =3D {
>> +	.name =3D "FIT image",
>> +	.bootm =3D do_bootm_sandbox_fit,
>> +	.filetype =3D filetype_oftree,
>> +};
>> +
>> +static int sandbox_fit_register(void)
>> +{
>> +	return register_image_handler(&sandbox_fit_handler);
>> +}
>> +late_initcall(sandbox_fit_register);
>> +#endif
>> diff --git a/include/image-fit.h b/include/image-fit.h
>> new file mode 100644
>> index 000000000000..bcbc859ead37
>> --- /dev/null
>> +++ b/include/image-fit.h
>> @@ -0,0 +1,42 @@
>> +/*
>> + * This program is free software; you can redistribute it and/or modi=
fy
>> + * it under the terms of the GNU General Public License as published =
by
>> + * the Free Software Foundation; either version 2 of the License, or
>> + * (at your option) any later version.
>> + *
>> + * This program is distributed in the hope that it will be useful,
>> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
>> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
>> + * GNU General Public License for more details.
>> + *
>> + * You should have received a copy of the GNU General Public License
>> + * along with this program; if not, see <http://www.gnu.org/licenses/=
>.
>> + *
>> + * Copyright (C) Jan L=C3=BCbbe, 2014
>> + */
>> +
>> +#ifndef __IMAGE_FIT_H__
>> +#define __IMAGE_FIT_H__
>> +
>> +#include <linux/types.h>
>> +
>> +struct fit_handle {
>> +	void *fit;
>> +	size_t size;
>> +
>> +	bool verbose;
>> +
>> +	struct device_node *root;
>> +
>> +	const void *kernel;
>> +	unsigned long kernel_size;
>> +	const void *oftree;
>> +	unsigned long oftree_size;
>> +	const void *initrd;
>> +	unsigned long initrd_size;
>> +};
>> +
>> +struct fit_handle *fit_open(const char *filename, int num, bool verbo=
se);
>> +void fit_close(struct fit_handle *handle);
>> +
>> +#endif	/* __IMAGE_FIT_H__ */
>=20

Marc

--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--fhSqmo0gD5OUS7j6U1NGJqioFMjn4npjp
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEcBAEBCgAGBQJWjTxLAAoJEP5prqPJtc/HUbYIAIcidUIY4UqDUX1eaoqp8aQG
SA5M2c+8IX0efW0wix5XC4MyNOL5HsQsqWHAiHOGPuRZC2bYATnOFLLCBjquv5TN
mD2FmOBjX7F/pC9eQp9eHEqbQ1gXMxqxJoJL9aAoXVQTDJglONf7iKzHcHBof8pi
o5/5VrtiKzMiSLtKj8ZWIwmDqrkMQl/q9F7MSJyI4+kAn8pMBAgNo3OujRm8PEg+
rBMKIXKhKRARlDJBWPNWFrVaQxsgYzz9Mn7e4pHk/rvShIjF6DcKPxrl+tjTF2iG
jcd0V+xkwTmBuh1xgKzYNmQk57UgvUkDayVsVB3xbGgCXiUsSgh7upTgbUSUvFU=
=XbIm
-----END PGP SIGNATURE-----

--fhSqmo0gD5OUS7j6U1NGJqioFMjn4npjp--


--===============4033555027209867625==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============4033555027209867625==--
