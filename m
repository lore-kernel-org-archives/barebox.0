Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1ebjYN-0007Vc-5Q
 for barebox@lists.infradead.org; Wed, 17 Jan 2018 08:58:41 +0000
Date: Wed, 17 Jan 2018 09:58:26 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180117085826.rmvfs2pffvnab54f@pengutronix.de>
References: <1513266697-324-1-git-send-email-d.schultz@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1513266697-324-1-git-send-email-d.schultz@phytec.de>
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
Subject: Re: [PATCH 1/2] common: state: Add property to protect existing data
To: Daniel Schultz <d.schultz@phytec.de>
Cc: barebox@lists.infradead.org

Sorry for replying only after reminding me. This patch is still
in my inbox as I have some problems with it. Anyway let's solve
them.

On Thu, Dec 14, 2017 at 04:51:36PM +0100, Daniel Schultz wrote:
> After an update to a newer barebox version with an enabled state
> framework, existing data in storage memories could be overwritten.
> 
> Add a new property to check in front of every write task, if the meta
> magic field only contains the magic number, zeros or ones.

What is the case you are trying to protect against? I assume partition
size changes and possibly old bootloaders with an old partitioning.
Could you explain?

Whatever solution we come up with should work for the circular backend
aswell.

What I am missing in this patch is a clear way how to overcome this
situation. For mtd it would be: erase the device and reset, but what
about devices that don't have to be erased? We might just need a -f aka
"I know what I am doing" parameter.

> 
> Signed-off-by: Daniel Schultz <d.schultz@phytec.de>
> ---
>  .../devicetree/bindings/barebox/barebox,state.rst     |  3 +++
>  common/state/backend_bucket_direct.c                  |  2 ++
>  common/state/backend_storage.c                        |  1 +
>  common/state/state.c                                  | 19 ++++++++++++++++++-
>  common/state/state.h                                  |  2 ++
>  5 files changed, 26 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/barebox/barebox,state.rst b/Documentation/devicetree/bindings/barebox/barebox,state.rst
> index cebb5f8..db5b041 100644
> --- a/Documentation/devicetree/bindings/barebox/barebox,state.rst
> +++ b/Documentation/devicetree/bindings/barebox/barebox,state.rst
> @@ -55,6 +55,9 @@ Optional Properties
>  * ``algo``: A HMAC algorithm used to detect manipulation of the data
>    or header, sensible values follow this pattern ``hmac(<HASH>)``,
>    e.g. ``hmac(sha256)``. Only available for the ``backend-type`` ``raw``.
> +* ``keep-previous-content``: Check if a the bucket meta magic field contains
> +  other data than the magic value. If so, the backend will not write the state
> +  to prevent unconditionally overwrites of existing data.
>  
>  .. note:: For the ``backend-storage-type`` the keyword ``noncircular`` is still
>     supported as a fall back to an old storage format. Recommendation is to not
> diff --git a/common/state/backend_bucket_direct.c b/common/state/backend_bucket_direct.c
> index 958696e..9d6a337 100644
> --- a/common/state/backend_bucket_direct.c
> +++ b/common/state/backend_bucket_direct.c
> @@ -69,6 +69,8 @@ static int state_backend_bucket_direct_read(struct state_backend_storage_bucket
>  	if (meta.magic == direct_magic) {
>  		read_len = meta.written_length;
>  	} else {
> +		if (meta.magic != ~0 && !!meta.magic)
> +			bucket->wrong_magic = 1;

This only handles the direct backend, but not the circular backend.

>  		if (!IS_ENABLED(CONFIG_STATE_BACKWARD_COMPATIBLE)) {
>  			dev_err(direct->dev, "No meta data header found\n");
>  			dev_dbg(direct->dev, "Enable backward compatibility or increase stride size\n");
> diff --git a/common/state/backend_storage.c b/common/state/backend_storage.c
> index c6ebe86..f0a169d 100644
> --- a/common/state/backend_storage.c
> +++ b/common/state/backend_storage.c
> @@ -152,6 +152,7 @@ int state_storage_read(struct state_backend_storage *storage,
>  	 * one we want to use.
>  	 */
>  	list_for_each_entry(bucket, &storage->buckets, bucket_list) {
> +		bucket->wrong_magic = 0;
>  		ret = bucket->read(bucket, &bucket->buf, &bucket->len);
>  		if (ret == -EUCLEAN)
>  			bucket->needs_refresh = 1;
> diff --git a/common/state/state.c b/common/state/state.c
> index 6399bd3..e110542 100644
> --- a/common/state/state.c
> +++ b/common/state/state.c
> @@ -44,6 +44,9 @@ int state_save(struct state *state)
>  	void *buf;
>  	ssize_t len;
>  	int ret;
> +	struct state_backend_storage_bucket *bucket;
> +	struct state_backend_storage *storage;
> +	bool has_content;
>  
>  	if (!state->dirty)
>  		return 0;
> @@ -55,7 +58,18 @@ int state_save(struct state *state)
>  		return ret;
>  	}
>  
> -	ret = state_storage_write(&state->storage, buf, len);
> +	storage = &state->storage;
> +	if (state->keep_prev_content) {
> +		has_content = 0;

has_content is only used in this if(){}, can you move its declaration
here?

> +		list_for_each_entry(bucket, &storage->buckets, bucket_list)
> +			has_content |= bucket->wrong_magic;
> +		if (has_content) {
> +			dev_dbg(&state->dev, "Found content on a backend.\n");

I think dev_dbg() is a bit quiet. This really deserves a warning saying
"Found foreign content on backend, won't overwrite.\n"

> +			goto out;

You should initialize 'ret' with some error value before not saving the
state.

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
