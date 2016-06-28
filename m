Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bHmw7-0000jR-9e
 for barebox@lists.infradead.org; Tue, 28 Jun 2016 06:55:56 +0000
Date: Tue, 28 Jun 2016 08:55:32 +0200
From: Michael Grzeschik <mgr@pengutronix.de>
Message-ID: <20160628065532.GE13410@pengutronix.de>
References: <1466762762-15212-1-git-send-email-mpa@pengutronix.de>
 <1466762762-15212-6-git-send-email-mpa@pengutronix.de>
 <20160628061847.GH20657@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20160628061847.GH20657@pengutronix.de>
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
Subject: Re: [PATCH v2 5/6] state: backend_storage_direct: also use cached
 data on write
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Jun 28, 2016 at 08:18:47AM +0200, Sascha Hauer wrote:
> On Fri, Jun 24, 2016 at 12:06:01PM +0200, Markus Pargmann wrote:
> > From: Michael Grzeschik <m.grzeschik@pengutronix.de>
> > 
> > Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
> > Signed-off-by: Markus Pargmann <mpa@pengutronix.de>
> > ---
> >  common/state/backend_bucket_direct.c | 55 ++++++++++++++++++++++++++++++++++++
> >  1 file changed, 55 insertions(+)
> 
> What's the problem this patch tries to solve?

The backend storage is writing the first correct bucket data it finds
back to each copy. Therefor every bucket got written on every boot. Even
if the content did not change. The direct backend was missing an cache
that represent the current data in the buckets. This patch adds the
cache and improves the bootup time on systems with direct bucket storage
like eeproms.

Michael

> Sascha
> 
> > 
> > diff --git a/common/state/backend_bucket_direct.c b/common/state/backend_bucket_direct.c
> > index 08892f001e25..772267f6dc1d 100644
> > --- a/common/state/backend_bucket_direct.c
> > +++ b/common/state/backend_bucket_direct.c
> > @@ -29,6 +29,10 @@ struct state_backend_storage_bucket_direct {
> >  
> >  	int fd;
> >  
> > +	/* Cached data of the last read/write */
> > +	u8 *current_data;
> > +	ssize_t current_data_len;
> > +
> >  	struct device_d *dev;
> >  };
> >  
> > @@ -99,6 +103,29 @@ static int state_backend_bucket_direct_read(struct state_backend_storage_bucket
> >  	return 0;
> >  }
> >  
> > +
> > +static int state_backend_bucket_direct_fill_cache(
> > +		struct state_backend_storage_bucket *bucket)
> > +{
> > +	struct state_backend_storage_bucket_direct *direct =
> > +	    get_bucket_direct(bucket);
> > +	ssize_t read_len;
> > +	uint8_t *buf;
> > +	int ret;
> > +
> > +	ret = state_backend_bucket_direct_read(bucket, &buf, &read_len);
> > +	if (ret < 0) {
> > +		dev_err(direct->dev, "Failed to read from file, %d\n", ret);
> > +		free(buf);
> > +		return ret;
> > +	}
> > +
> > +	direct->current_data = buf;
> > +	direct->current_data_len = read_len;
> > +
> > +	return 0;
> > +}
> > +
> >  static int state_backend_bucket_direct_write(struct state_backend_storage_bucket
> >  					     *bucket, const uint8_t * buf,
> >  					     ssize_t len)
> > @@ -111,6 +138,11 @@ static int state_backend_bucket_direct_write(struct state_backend_storage_bucket
> >  	if (direct->max_size && len > direct->max_size)
> >  		return -E2BIG;
> >  
> > +	/* Nothing in cache? Then read to see what is on the device currently */
> > +	if (!direct->current_data) {
> > +		state_backend_bucket_direct_fill_cache(bucket);
> > +	}
> > +
> >  	ret = lseek(direct->fd, direct->offset, SEEK_SET);
> >  	if (ret < 0) {
> >  		dev_err(direct->dev, "Failed to seek file, %d\n", ret);
> > @@ -119,6 +151,26 @@ static int state_backend_bucket_direct_write(struct state_backend_storage_bucket
> >  
> >  	meta.magic = direct_magic;
> >  	meta.written_length = len;
> > +
> > +	/*
> > +	 * If we would write the same data that is currently on the device, we
> > +	 * can return successfully without writing.
> > +	 * Note that the cache may still be empty if the storage is empty or
> > +	 * errors occured.
> > +	 */
> > +	if (direct->current_data) {
> > +		dev_dbg(direct->dev, "Comparing cached data, writing %zd bytes, cached %zd bytes\n",
> > +			len, direct->current_data_len);
> > +		if (len == direct->current_data_len &&
> > +		    !memcmp(direct->current_data, buf, len)) {
> > +			dev_dbg(direct->dev, "Data already on device, not writing again\n");
> > +			return ret;
> > +		} else {
> > +			free(direct->current_data);
> > +			direct->current_data = NULL;
> > +		}
> > +	}
> > +
> >  	ret = write_full(direct->fd, &meta, sizeof(meta));
> >  	if (ret < 0) {
> >  		dev_err(direct->dev, "Failed to write metadata to file, %d\n", ret);
> > @@ -147,6 +199,9 @@ static void state_backend_bucket_direct_free(struct
> >  	struct state_backend_storage_bucket_direct *direct =
> >  	    get_bucket_direct(bucket);
> >  
> > +	if (direct->current_data)
> > +		free(direct->current_data);
> > +
> >  	close(direct->fd);
> >  	free(direct);
> >  }
> > -- 
> > 2.8.1
> > 
> > 
> > _______________________________________________
> > barebox mailing list
> > barebox@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/barebox
> > 
> 
> -- 
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
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
