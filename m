Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZrKAB-0000Hs-D6
 for barebox@lists.infradead.org; Wed, 28 Oct 2015 06:24:48 +0000
Date: Wed, 28 Oct 2015 07:24:25 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151028062425.GR25308@pengutronix.de>
References: <1445807016-6637-1-git-send-email-mkl@pengutronix.de>
 <1445807016-6637-10-git-send-email-mkl@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1445807016-6637-10-git-send-email-mkl@pengutronix.de>
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
Subject: Re: [PATCH v3 9/9] state: backend_raw: add hamc support
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: barebox@lists.infradead.org

Still: s/hamc/hmac/ in the subject.

Sascha

On Sun, Oct 25, 2015 at 10:03:36PM +0100, Marc Kleine-Budde wrote:
> This patch adds hmac support to the raw backend.
> 
> With this patch, modifications of the header or data of a state partition can
> be detected, as the hmac woudln't match anymore. The hmac relies on a shared
> secret, which is requested from the keystore, with keystore_get_secret() using
> the name of the state partition as the "name" of the secret.
> 
> Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
> ---
>  .../devicetree/bindings/barebox/barebox,state.rst  |  19 +++
>  common/Kconfig                                     |  18 +++
>  common/state.c                                     | 127 +++++++++++++++++++--
>  3 files changed, 156 insertions(+), 8 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/barebox/barebox,state.rst b/Documentation/devicetree/bindings/barebox/barebox,state.rst
> index 4c5b06db47f6..ef6602937232 100644
> --- a/Documentation/devicetree/bindings/barebox/barebox,state.rst
> +++ b/Documentation/devicetree/bindings/barebox/barebox,state.rst
> @@ -32,6 +32,12 @@ Required properties:
>  * ``backend``: describes where the data for this state is stored
>  * ``backend-type``: should be ``raw`` or ``dtb``.
>  
> +Optional properties:
> +
> +* ``algo``: A HMAC algorithm used to detect manipulation of the data
> +  or header, sensible values follow this pattern ``hmac(<HASH>)``,
> +  e.g. ``hmac(sha256)``.
> +
>  Variable nodes
>  --------------
>  
> @@ -105,6 +111,19 @@ devicetree description of the state itself, but additionally contains
>  the actual values of the variables. Unlike the raw state backend the
>  dtb state backend can describe itself.
>  
> +HMAC
> +----
> +
> +With the optional property ``algo = "hmac(<HASH>)";`` a HMAC algorithm
> +can be defined to detect unauthorized modification of the state's
> +header and/or data. For this to work the HMAC and the selected hash
> +algorithm have to be compiled into barebox.
> +
> +The shared secret for the HMAC is requested via
> +``keystore_get_secret()``, using the state's name, from the barebox
> +simple keystore. It's up to the developer to populate the keystore via
> +``keystore_set_secret()`` in beforehand.
> +
>  Frontend
>  --------
>  
> diff --git a/common/Kconfig b/common/Kconfig
> index 877d3855a203..8e7950968c3e 100644
> --- a/common/Kconfig
> +++ b/common/Kconfig
> @@ -751,6 +751,24 @@ config STATE
>  	select OFTREE
>  	select PARAMETER
>  
> +config STATE_CRYPTO
> +	bool "HMAC based authentication support"
> +	depends on STATE
> +	select CRYPTO_KEYSTORE
> +	select DIGEST
> +	select DIGEST_HMAC_GENERIC
> +	help
> +	  This options enables HMAC based authentication support for
> +	  the state's header and data. This means the state framework
> +	  can verify both the data integrity and the authentication of
> +	  the state's header and data.
> +
> +	  Don't forget to select a hash algorithm in the
> +	  crypto/digests menu.
> +
> +	  See Documentation/devicetree/bindings/barebox/barebox,state.rst
> +	  for more information.
> +
>  config RESET_SOURCE
>  	bool "detect Reset cause"
>  	depends on GLOBALVAR
> diff --git a/common/state.c b/common/state.c
> index d37f4ab4b539..0a9204e099d0 100644
> --- a/common/state.c
> +++ b/common/state.c
> @@ -15,6 +15,7 @@
>   */
>  
>  #include <common.h>
> +#include <digest.h>
>  #include <environment.h>
>  #include <errno.h>
>  #include <fcntl.h>
> @@ -28,6 +29,8 @@
>  #include <state.h>
>  #include <xfuncs.h>
>  
> +#include <crypto/keystore.h>
> +
>  #include <linux/mtd/mtd-abi.h>
>  #include <linux/mtd/mtd.h>
>  #include <linux/list.h>
> @@ -41,7 +44,7 @@ struct state_backend;
>  
>  struct state {
>  	struct device_d dev;
> -	const struct device_node *root;
> +	struct device_node *root;
>  	struct list_head variables;
>  	const char *name;
>  	struct list_head list;
> @@ -55,6 +58,7 @@ struct state_backend {
>  	const char *name;
>  	const char *of_path;
>  	const char *path;
> +	struct digest *digest;
>  };
>  
>  enum state_variable_type {
> @@ -948,6 +952,16 @@ static int of_state_fixup(struct device_node *root, void *ctx)
>  	if (ret)
>  		goto out;
>  
> +	if (state->backend->digest) {
> +		p = of_new_property(new_node, "algo",
> +				    digest_name(state->backend->digest),
> +				    strlen(digest_name(state->backend->digest)) + 1);
> +		if (!p) {
> +			ret = -ENOMEM;
> +			goto out;
> +		}
> +	}
> +
>  	/* address-cells + size-cells */
>  	ret = of_property_write_u32(new_node, "#address-cells", 1);
>  	if (ret)
> @@ -1230,7 +1244,7 @@ int state_backend_dtb_file(struct state *state, const char *of_path, const char
>  struct state_backend_raw {
>  	struct state_backend backend;
>  	unsigned long size_data; /* The raw data size (without header) */
> -	unsigned long size_full; /* The size header + raw data */
> +	unsigned long size_full; /* The size header + raw data + hmac */
>  	unsigned long stride; /* The stride size in bytes of the copies */
>  	off_t offset; /* offset in the storage file */
>  	size_t size; /* size of the storage area */
> @@ -1253,8 +1267,9 @@ static int backend_raw_load_one(struct state_backend_raw *backend_raw,
>  	struct state_variable *sv;
>  	struct backend_raw_header header = {};
>  	unsigned long max_len;
> +	int d_len = 0;
>  	int ret;
> -	void *buf, *data;
> +	void *buf, *data, *hmac;
>  
>  	max_len = backend_raw->stride;
>  
> @@ -1285,6 +1300,11 @@ static int backend_raw_load_one(struct state_backend_raw *backend_raw,
>  		return -EINVAL;
>  	}
>  
> +	if (backend_raw->backend.digest) {
> +		d_len = digest_length(backend_raw->backend.digest);
> +		max_len -= d_len;
> +	}
> +
>  	if (header.data_len > max_len) {
>  		dev_err(&state->dev,
>  			"invalid data_len %u in header, max is %lu\n",
> @@ -1292,14 +1312,15 @@ static int backend_raw_load_one(struct state_backend_raw *backend_raw,
>  		return -EINVAL;
>  	}
>  
> -	buf = xzalloc(sizeof(header) + header.data_len);
> +	buf = xzalloc(sizeof(header) + header.data_len + d_len);
>  	data = buf + sizeof(header);
> +	hmac = data + header.data_len;
>  
>  	ret = lseek(fd, offset, SEEK_SET);
>  	if (ret < 0)
>  		goto out_free;
>  
> -	ret = read_full(fd, buf, sizeof(header) + header.data_len);
> +	ret = read_full(fd, buf, sizeof(header) + header.data_len + d_len);
>  	if (ret < 0)
>  		goto out_free;
>  
> @@ -1312,6 +1333,23 @@ static int backend_raw_load_one(struct state_backend_raw *backend_raw,
>  		goto out_free;
>  	}
>  
> +	if (backend_raw->backend.digest) {
> +		struct digest *d = backend_raw->backend.digest;
> +
> +		ret = digest_init(d);
> +		if (ret)
> +			goto out_free;
> +
> +		/* hmac over header and data */
> +		ret = digest_update(d, buf, sizeof(header) + header.data_len);
> +		if (ret)
> +			goto out_free;
> +
> +		ret = digest_verify(d, hmac);
> +		if (ret < 0)
> +			goto out_free;
> +	}
> +
>  	list_for_each_entry(sv, &state->variables, list) {
>  		if (sv->start + sv->size > header.data_len)
>  			break;
> @@ -1392,7 +1430,7 @@ static int state_backend_raw_save(struct state_backend *backend,
>  	struct state_backend_raw *backend_raw = container_of(backend,
>  			struct state_backend_raw, backend);
>  	int ret = 0, fd, i;
> -	void *buf, *data;
> +	void *buf, *data, *hmac;
>  	struct backend_raw_header *header;
>  	struct state_variable *sv;
>  
> @@ -1400,6 +1438,7 @@ static int state_backend_raw_save(struct state_backend *backend,
>  
>  	header = buf;
>  	data = buf + sizeof(*header);
> +	hmac = data + backend_raw->size_data;
>  
>  	list_for_each_entry(sv, &state->variables, list)
>  		memcpy(data + sv->start, sv->raw, sv->size);
> @@ -1410,6 +1449,23 @@ static int state_backend_raw_save(struct state_backend *backend,
>  	header->header_crc = crc32(0, header,
>  				   sizeof(*header) - sizeof(uint32_t));
>  
> +	if (backend_raw->backend.digest) {
> +		struct digest *d = backend_raw->backend.digest;
> +
> +		ret = digest_init(d);
> +		if (ret)
> +			goto out_free;
> +
> +		/* hmac over header and data */
> +		ret = digest_update(d, buf, sizeof(*header) + backend_raw->size_data);
> +		if (ret)
> +			goto out_free;
> +
> +		ret = digest_final(d, hmac);
> +		if (ret < 0)
> +			goto out_free;
> +	}
> +
>  	fd = open(backend->path, O_WRONLY);
>  	if (fd < 0)
>  		goto out_free;
> @@ -1494,6 +1550,53 @@ static int state_backend_raw_file_get_size(const char *path, size_t *out_size)
>  	return ret;
>  }
>  
> +static int state_backend_raw_file_init_digest(struct state *state, struct state_backend_raw *backend_raw)
> +{
> +	struct digest *digest;
> +	struct property *p;
> +	const char *algo;
> +	const unsigned char *key;
> +	int key_len, ret;
> +
> +	p = of_find_property(state->root, "algo", NULL);
> +	if (!p)			/* does not exist */
> +		return 0;
> +
> +	if (!IS_ENABLED(CONFIG_STATE_CRYPTO)) {
> +		dev_err(&state->dev,
> +			"algo %s specified, but crypto support for state framework (CONFIG_STATE_CRYPTO) not enabled.\n",
> +			algo);
> +		return -EINVAL;
> +	}
> +
> +	ret = of_property_read_string(state->root, "algo", &algo);
> +	if (ret)
> +		return ret;
> +
> +	ret = keystore_get_secret(state->name, &key, &key_len);
> +	if (ret == -ENOENT)	/* -ENOENT == does not exist */
> +		return -EPROBE_DEFER;
> +	else if (ret)
> +		return ret;
> +
> +	digest = digest_alloc(algo);
> +	if (!digest) {
> +		dev_info(&state->dev, "algo %s not found - probe deferred\n", algo);
> +		return -EPROBE_DEFER;
> +	}
> +
> +	ret = digest_set_key(digest, key, key_len);
> +	if (ret) {
> +		digest_free(digest);
> +		return ret;
> +	}
> +
> +	backend_raw->backend.digest = digest;
> +	backend_raw->size_full = digest_length(digest);
> +
> +	return 0;
> +}
> +
>  /*
>   * state_backend_raw_file - create a raw file backend store for a state instance
>   *
> @@ -1534,8 +1637,14 @@ int state_backend_raw_file(struct state *state, const char *of_path,
>  		return -EINVAL;
>  
>  	backend_raw = xzalloc(sizeof(*backend_raw));
> -	backend = &backend_raw->backend;
>  
> +	ret = state_backend_raw_file_init_digest(state, backend_raw);
> +	if (ret) {
> +		free(backend_raw);
> +		return ret;
> +	}
> +
> +	backend = &backend_raw->backend;
>  	backend->save = state_backend_raw_save;
>  	backend->of_path = xstrdup(of_path);
>  	backend->path = xstrdup(path);
> @@ -1545,7 +1654,7 @@ int state_backend_raw_file(struct state *state, const char *of_path,
>  	backend_raw->size_data = sv->start + sv->size;
>  	backend_raw->offset = offset;
>  	backend_raw->size = size;
> -	backend_raw->size_full = backend_raw->size_data +
> +	backend_raw->size_full += backend_raw->size_data +
>  		sizeof(struct backend_raw_header);
>  
>  	state->backend = backend;
> @@ -1581,6 +1690,8 @@ int state_backend_raw_file(struct state *state, const char *of_path,
>  	/* ignore return value of load() */
>  	return 0;
>  err:
> +	digest_free(backend_raw->backend.digest);
> +
>  	free(backend_raw);
>  	return ret;
>  }
> -- 
> 2.6.1
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
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
