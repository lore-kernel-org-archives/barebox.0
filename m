Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKJxN-00024D-4d
 for barebox@lists.infradead.org; Tue, 15 Oct 2019 10:21:35 +0000
References: <20191015075549.4380-1-s.hauer@pengutronix.de>
 <20191015075549.4380-3-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <2f77c25e-392c-3c4e-3298-5792d7aa072c@pengutronix.de>
Date: Tue, 15 Oct 2019 12:21:31 +0200
MIME-Version: 1.0
In-Reply-To: <20191015075549.4380-3-s.hauer@pengutronix.de>
Content-Language: en-US
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
Subject: Re: [PATCH 2/5] scripts: Add rsatoc tool
To: barebox@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>

Hello Sascha,

On 10/15/19 9:55 AM, Sascha Hauer wrote:
> The rsatoc tool converts rsa public keys into C structs suitable to
> compile with barebox. Most of the openssl rsa related stuff has been
> taken from the U-Boot mkimage tool.

I don't have any FIT image or RSA options enabled, yet my build fails now with:

  RSAKEY  crypto/rsa-keys.h                                                                                     
/bin/sh: 1: ./scripts/rsatoc: not found                           
./crypto/Makefile:27: recipe for target 'crypto/rsa-keys.h' failed
make[2]: *** [crypto/rsa-keys.h] Error 127                                                                      
./Makefile:802: recipe for target 'crypto' failed                 
make[1]: *** [crypto] Error 2                                                                                   

Cheers
Ahmad

> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  scripts/.gitignore |   1 +
>  scripts/Makefile   |   3 +
>  scripts/rsatoc.c   | 445 +++++++++++++++++++++++++++++++++++++++++++++
>  3 files changed, 449 insertions(+)
>  create mode 100644 scripts/rsatoc.c
> 
> diff --git a/scripts/.gitignore b/scripts/.gitignore
> index 45c81bf8f4..76ea271abb 100644
> --- a/scripts/.gitignore
> +++ b/scripts/.gitignore
> @@ -29,3 +29,4 @@ mxs-usb-loader
>  omap4_usbboot
>  omap3-usb-loader
>  mips-relocs
> +rsatoc
> diff --git a/scripts/Makefile b/scripts/Makefile
> index dffab53c73..81d1a501b0 100644
> --- a/scripts/Makefile
> +++ b/scripts/Makefile
> @@ -10,6 +10,9 @@ hostprogs-y                      += fix_size
>  hostprogs-y                      += bareboxenv
>  hostprogs-y                      += bareboxcrc32
>  hostprogs-y                      += kernel-install
> +hostprogs-$(CONFIG_CRYPTO_RSA_BUILTIN_KEYS) += rsatoc
> +HOSTCFLAGS_rsatoc = `pkg-config --cflags openssl`
> +HOSTLDLIBS_rsatoc = `pkg-config --libs openssl`
>  hostprogs-$(CONFIG_IMD)          += bareboximd
>  hostprogs-$(CONFIG_KALLSYMS)     += kallsyms
>  hostprogs-$(CONFIG_MIPS)         += mips-relocs
> diff --git a/scripts/rsatoc.c b/scripts/rsatoc.c
> new file mode 100644
> index 0000000000..f853691908
> --- /dev/null
> +++ b/scripts/rsatoc.c
> @@ -0,0 +1,445 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +/*
> + * rsatoc - utility to convert an RSA key to a C struct
> + *
> + * This tool converts an RSA key given as file or PKCS#11
> + * URI to a C struct suitable to compile with barebox.
> + */
> +#include <stdio.h>
> +#include <string.h>
> +#include <time.h>
> +#include <openssl/bn.h>
> +#include <openssl/rsa.h>
> +#include <openssl/pem.h>
> +#include <openssl/err.h>
> +#include <openssl/ssl.h>
> +#include <openssl/evp.h>
> +#include <openssl/engine.h>
> +
> +static int rsa_err(const char *msg)
> +{
> +	unsigned long sslErr = ERR_get_error();
> +
> +	fprintf(stderr, "%s", msg);
> +	fprintf(stderr, ": %s\n",
> +		ERR_error_string(sslErr, 0));
> +
> +	return -1;
> +}
> +
> +/**
> + * rsa_pem_get_pub_key() - read a public key from a .crt file
> + *
> + * @keydir:	Directory containins the key
> + * @name	Name of key file (will have a .crt extension)
> + * @rsap	Returns RSA object, or NULL on failure
> + * @return 0 if ok, -ve on error (in which case *rsap will be set to NULL)
> + */
> +static int rsa_pem_get_pub_key(const char *path, RSA **rsap)
> +{
> +	EVP_PKEY *key;
> +	X509 *cert;
> +	RSA *rsa;
> +	FILE *f;
> +	int ret;
> +
> +	*rsap = NULL;
> +	f = fopen(path, "r");
> +	if (!f) {
> +		fprintf(stderr, "Couldn't open RSA certificate: '%s': %s\n",
> +			path, strerror(errno));
> +		return -EACCES;
> +	}
> +
> +	/* Read the certificate */
> +	cert = NULL;
> +	if (!PEM_read_X509(f, &cert, NULL, NULL)) {
> +		rsa_err("Couldn't read certificate");
> +		ret = -EINVAL;
> +		goto err_cert;
> +	}
> +
> +	/* Get the public key from the certificate. */
> +	key = X509_get_pubkey(cert);
> +	if (!key) {
> +		rsa_err("Couldn't read public key\n");
> +		ret = -EINVAL;
> +		goto err_pubkey;
> +	}
> +
> +	/* Convert to a RSA_style key. */
> +	rsa = EVP_PKEY_get1_RSA(key);
> +	if (!rsa) {
> +		rsa_err("Couldn't convert to a RSA style key");
> +		ret = -EINVAL;
> +		goto err_rsa;
> +	}
> +	fclose(f);
> +	EVP_PKEY_free(key);
> +	X509_free(cert);
> +	*rsap = rsa;
> +
> +	return 0;
> +
> +err_rsa:
> +	EVP_PKEY_free(key);
> +err_pubkey:
> +	X509_free(cert);
> +err_cert:
> +	fclose(f);
> +	return ret;
> +}
> +
> +/**
> + * rsa_engine_get_pub_key() - read a public key from given engine
> + *
> + * @keydir:	Key prefix
> + * @name	Name of key
> + * @engine	Engine to use
> + * @rsap	Returns RSA object, or NULL on failure
> + * @return 0 if ok, -ve on error (in which case *rsap will be set to NULL)
> + */
> +static int rsa_engine_get_pub_key(const char *key_id,
> +				  ENGINE *engine, RSA **rsap)
> +{
> +	EVP_PKEY *key;
> +	RSA *rsa;
> +	int ret;
> +
> +	*rsap = NULL;
> +
> +	key = ENGINE_load_public_key(engine, key_id, NULL, NULL);
> +	if (!key)
> +		return rsa_err("Failure loading public key from engine");
> +
> +	/* Convert to a RSA_style key. */
> +	rsa = EVP_PKEY_get1_RSA(key);
> +	if (!rsa) {
> +		rsa_err("Couldn't convert to a RSA style key");
> +		ret = -EINVAL;
> +		goto err_rsa;
> +	}
> +
> +	EVP_PKEY_free(key);
> +	*rsap = rsa;
> +
> +	return 0;
> +
> +err_rsa:
> +	EVP_PKEY_free(key);
> +	return ret;
> +}
> +
> +/*
> + * rsa_get_exponent(): - Get the public exponent from an RSA key
> + */
> +static int rsa_get_exponent(RSA *key, uint64_t *e)
> +{
> +	int ret;
> +	BIGNUM *bn_te;
> +	const BIGNUM *key_e;
> +	uint64_t te;
> +
> +	ret = -EINVAL;
> +	bn_te = NULL;
> +
> +	if (!e)
> +		goto cleanup;
> +
> +	RSA_get0_key(key, NULL, &key_e, NULL);
> +	if (BN_num_bits(key_e) > 64)
> +		goto cleanup;
> +
> +	*e = BN_get_word(key_e);
> +
> +	if (BN_num_bits(key_e) < 33) {
> +		ret = 0;
> +		goto cleanup;
> +	}
> +
> +	bn_te = BN_dup(key_e);
> +	if (!bn_te)
> +		goto cleanup;
> +
> +	if (!BN_rshift(bn_te, bn_te, 32))
> +		goto cleanup;
> +
> +	if (!BN_mask_bits(bn_te, 32))
> +		goto cleanup;
> +
> +	te = BN_get_word(bn_te);
> +	te <<= 32;
> +	*e |= te;
> +	ret = 0;
> +
> +cleanup:
> +	if (bn_te)
> +		BN_free(bn_te);
> +
> +	return ret;
> +}
> +
> +/*
> + * rsa_get_params(): - Get the important parameters of an RSA public key
> + */
> +int rsa_get_params(RSA *key, uint64_t *exponent, uint32_t *n0_invp,
> +		   BIGNUM **modulusp, BIGNUM **r_squaredp)
> +{
> +	BIGNUM *big1, *big2, *big32, *big2_32;
> +	BIGNUM *n, *r, *r_squared, *tmp;
> +	const BIGNUM *key_n;
> +	BN_CTX *bn_ctx = BN_CTX_new();
> +	int ret = 0;
> +
> +	/* Initialize BIGNUMs */
> +	big1 = BN_new();
> +	big2 = BN_new();
> +	big32 = BN_new();
> +	r = BN_new();
> +	r_squared = BN_new();
> +	tmp = BN_new();
> +	big2_32 = BN_new();
> +	n = BN_new();
> +	if (!big1 || !big2 || !big32 || !r || !r_squared || !tmp || !big2_32 ||
> +	    !n) {
> +		fprintf(stderr, "Out of memory (bignum)\n");
> +		return -ENOMEM;
> +	}
> +
> +	if (0 != rsa_get_exponent(key, exponent))
> +		ret = -1;
> +
> +	RSA_get0_key(key, &key_n, NULL, NULL);
> +	if (!BN_copy(n, key_n) || !BN_set_word(big1, 1L) ||
> +	    !BN_set_word(big2, 2L) || !BN_set_word(big32, 32L))
> +		ret = -1;
> +
> +	/* big2_32 = 2^32 */
> +	if (!BN_exp(big2_32, big2, big32, bn_ctx))
> +		ret = -1;
> +
> +	/* Calculate n0_inv = -1 / n[0] mod 2^32 */
> +	if (!BN_mod_inverse(tmp, n, big2_32, bn_ctx) ||
> +	    !BN_sub(tmp, big2_32, tmp))
> +		ret = -1;
> +	*n0_invp = BN_get_word(tmp);
> +
> +	/* Calculate R = 2^(# of key bits) */
> +	if (!BN_set_word(tmp, BN_num_bits(n)) ||
> +	    !BN_exp(r, big2, tmp, bn_ctx))
> +		ret = -1;
> +
> +	/* Calculate r_squared = R^2 mod n */
> +	if (!BN_copy(r_squared, r) ||
> +	    !BN_mul(tmp, r_squared, r, bn_ctx) ||
> +	    !BN_mod(r_squared, tmp, n, bn_ctx))
> +		ret = -1;
> +
> +	*modulusp = n;
> +	*r_squaredp = r_squared;
> +
> +	BN_free(big1);
> +	BN_free(big2);
> +	BN_free(big32);
> +	BN_free(r);
> +	BN_free(tmp);
> +	BN_free(big2_32);
> +	if (ret) {
> +		fprintf(stderr, "Bignum operations failed\n");
> +		return -ENOMEM;
> +	}
> +
> +	return ret;
> +}
> +
> +static int rsa_engine_init(ENGINE **pe)
> +{
> +	ENGINE *e;
> +	int ret;
> +
> +	ENGINE_load_builtin_engines();
> +
> +	e = ENGINE_by_id("pkcs11");
> +	if (!e) {
> +		fprintf(stderr, "Engine isn't available\n");
> +		ret = -1;
> +		goto err_engine_by_id;
> +	}
> +
> +	if (!ENGINE_init(e)) {
> +		fprintf(stderr, "Couldn't initialize engine\n");
> +		ret = -1;
> +		goto err_engine_init;
> +	}
> +
> +	if (!ENGINE_set_default_RSA(e)) {
> +		fprintf(stderr, "Couldn't set engine as default for RSA\n");
> +		ret = -1;
> +		goto err_set_rsa;
> +	}
> +
> +	*pe = e;
> +
> +	return 0;
> +
> +err_set_rsa:
> +	ENGINE_finish(e);
> +err_engine_init:
> +	ENGINE_free(e);
> +err_engine_by_id:
> +#if OPENSSL_VERSION_NUMBER < 0x10100000L || \
> +	(defined(LIBRESSL_VERSION_NUMBER) && LIBRESSL_VERSION_NUMBER < 0x02070000fL)
> +	ENGINE_cleanup();
> +#endif
> +	return ret;
> +}
> +
> +static int print_bignum(BIGNUM *num, int num_bits)
> +{
> +	BIGNUM *tmp, *big2, *big32, *big2_32;
> +	BN_CTX *ctx;
> +	int i;
> +
> +	tmp = BN_new();
> +	big2 = BN_new();
> +	big32 = BN_new();
> +	big2_32 = BN_new();
> +
> +	/*
> +	 * Note: This code assumes that all of the above succeed, or all fail.
> +	 * In practice memory allocations generally do not fail (unless the
> +	 * process is killed), so it does not seem worth handling each of these
> +	 * as a separate case. Technicaly this could leak memory on failure,
> +	 * but a) it won't happen in practice, and b) it doesn't matter as we
> +	 * will immediately exit with a failure code.
> +	 */
> +	if (!tmp || !big2 || !big32 || !big2_32) {
> +		fprintf(stderr, "Out of memory (bignum)\n");
> +		return -ENOMEM;
> +	}
> +	ctx = BN_CTX_new();
> +	if (!tmp) {
> +		fprintf(stderr, "Out of memory (bignum context)\n");
> +		return -ENOMEM;
> +	}
> +	BN_set_word(big2, 2L);
> +	BN_set_word(big32, 32L);
> +	BN_exp(big2_32, big2, big32, ctx); /* B = 2^32 */
> +
> +	for (i = 0; i < num_bits / 32; i++) {
> +		BN_mod(tmp, num, big2_32, ctx); /* n = N mod B */
> +		if (i % 4)
> +			printf(" ");
> +		else
> +			printf("\n\t");
> +		printf("0x%08lx,", BN_get_word(tmp));
> +		BN_rshift(num, num, 32); /*  N = N/B */
> +	}
> +
> +	BN_free(tmp);
> +	BN_free(big2);
> +	BN_free(big32);
> +	BN_free(big2_32);
> +
> +	return 0;
> +}
> +
> +static int gen_key(const char *keyname, const char *path)
> +{
> +	BIGNUM *modulus, *r_squared;
> +	uint64_t exponent;
> +	uint32_t n0_inv;
> +	int ret;
> +	int bits;
> +	RSA *rsa;
> +	ENGINE *e = NULL;
> +	char *tmp, *key_name_c;
> +
> +	tmp = key_name_c = strdup(keyname);
> +
> +	while (*tmp) {
> +		if (*tmp == '-')
> +			*tmp = '_';
> +		tmp++;
> +	}
> +
> +	if (!strncmp(path, "__ENV__", 7)) {
> +		const char *var = getenv(path + 7);
> +		if (!var) {
> +			fprintf(stderr,
> +				"environment variable \"%s\" is empty\n", path + 7);
> +			exit(1);
> +		}
> +		path = var;
> +	}
> +
> +	if (!strncmp(path, "pkcs11:", 7)) {
> +		ret = rsa_engine_init(&e);
> +		if (ret)
> +			exit(1);
> +		ret = rsa_engine_get_pub_key(path, e, &rsa);
> +		if (ret)
> +			exit(1);
> +	} else {
> +		ret = rsa_pem_get_pub_key(path, &rsa);
> +		if (ret)
> +			exit(1);
> +	}
> +
> +	ret = rsa_get_params(rsa, &exponent, &n0_inv, &modulus, &r_squared);
> +	if (ret)
> +		return ret;
> +
> +	bits = BN_num_bits(modulus);
> +
> +	printf("\nstatic uint32_t %s_modulus[] = {", key_name_c);
> +	print_bignum(modulus, bits);
> +	printf("\n};\n\n");
> +
> +	printf("static uint32_t %s_rr[] = {", key_name_c);
> +	print_bignum(r_squared, bits);
> +	printf("\n};\n\n");
> +
> +	printf("static struct rsa_public_key %s = {\n", key_name_c);
> +	printf("\t.len = %d,\n", bits / 32);
> +	printf("\t.n0inv = 0x%0x,\n", n0_inv);
> +	printf("\t.modulus = %s_modulus,\n", key_name_c);
> +	printf("\t.rr = %s_rr,\n", key_name_c);
> +	printf("\t.exponent = 0x%0lx,\n", exponent);
> +	printf("\t.key_name_hint = \"%s\",\n", keyname);
> +	printf("};\n\n");
> +
> +	printf("struct rsa_public_key *%sp __attribute__((section(\".rsa_keys.rodata.%s\"))) = &%s;\n",
> +	       key_name_c, key_name_c, key_name_c);
> +
> +	return 0;
> +}
> +
> +int main(int argc, char *argv[])
> +{
> +	char *path, *keyname;
> +	int i;
> +
> +	if (argc < 2) {
> +		fprintf(stderr, "Usage: %s <key_name_hint>:<crt> ...\n", argv[0]);
> +		exit(1);
> +	}
> +
> +	for (i = 1; i < argc; i++) {
> +		keyname = argv[i];
> +
> +		path = strchr(keyname, ':');
> +		if (!path) {
> +			fprintf(stderr,
> +				"keys must be given as <key_name_hint>:<crt>\n");
> +			exit(1);
> +		}
> +
> +		*path = 0;
> +		path++;
> +
> +		gen_key(keyname, path);
> +	}
> +
> +	exit(0);
> +}
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
