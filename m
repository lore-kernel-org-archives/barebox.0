Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1czJSn-0004m9-H6
 for barebox@lists.infradead.org; Sat, 15 Apr 2017 08:53:51 +0000
Date: Sat, 15 Apr 2017 10:53:25 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20170415085325.GD20400@ravnborg.org>
References: <20170331070346.26878-1-s.hauer@pengutronix.de>
 <20170331070346.26878-17-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170331070346.26878-17-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH 16/42] state: Drop cache bucket
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

Hi Sasha.

> diff --git a/common/state/backend_storage.c b/common/state/backend_storage.c
> index 6ec58a0c97..218c67f2d7 100644
> --- a/common/state/backend_storage.c
> +++ b/common/state/backend_storage.c
> @@ -69,22 +69,29 @@ int state_storage_write(struct state_backend_storage *storage,
>  	return -EIO;
>  }
>  
> -/**
> - * state_storage_restore_consistency - Restore consistency on all storage backends
> - * @param storage Storage object
> - * @param buf Buffer with valid data that should be on all buckets after this operation
> - * @param len Length of the buffer
> - * @return 0 on success, -errno otherwise
> - *
> - * This function brings valid data onto all buckets we have to ensure that all
> - * data copies are in sync. In the current implementation we just write the data
> - * to all buckets. Bucket implementations that need to keep the number of writes
> - * low, can read their own copy first and compare it.
> - */
> -int state_storage_restore_consistency(struct state_backend_storage *storage,
> -				      const void * buf, ssize_t len)
> +static int bucket_refresh(struct state_backend_storage *storage,
> +			  struct state_backend_storage_bucket *bucket, void *buf, ssize_t len)
>  {
> -	return state_storage_write(storage, buf, len);
> +	int ret;
> +
> +	if (bucket->needs_refresh)
> +		goto refresh;
> +
> +	if (bucket->len != len)
> +		goto refresh;
> +
> +	if (memcmp(bucket->buf, buf, len))
> +		goto refresh;
> +
> +	return 0;
> +
> +refresh:
> +	ret = bucket->write(bucket, buf, len);

In the code above we check needs_refresh and len.
But needs_refresh is never set back to 0 so it looks like we will refresh it too often.
The same with the len argument.

> +	/*
> +	 * Iterate over all buckets. The first valid one we find is the
> +	 * one we want to use.
> +	 */
>  	list_for_each_entry(bucket, &storage->buckets, bucket_list) {
> -		ret = bucket->read(bucket, buf, len);
> -		if (ret) {
> +		ret = bucket->read(bucket, &bucket->buf, &bucket->len);
> +		if (ret == -EUCLEAN) {
> +			bucket->needs_refresh = 1;
> +		} else if (ret) {
This is where we mark it as need_refresh.

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
