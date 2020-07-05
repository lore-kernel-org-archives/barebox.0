Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1js5PD-0006oK-RH
 for barebox@lists.infradead.org; Sun, 05 Jul 2020 14:14:09 +0000
Date: Sun, 5 Jul 2020 16:14:06 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200705141406.GQ15485@pengutronix.de>
References: <20200615060229.7533-1-s.hauer@pengutronix.de>
 <20200615060229.7533-9-s.hauer@pengutronix.de>
 <e6dc5288-a62c-48e9-df4d-7e5fde191eb8@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e6dc5288-a62c-48e9-df4d-7e5fde191eb8@pengutronix.de>
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
Subject: Re: [PATCH 08/11] fs: ramfs: Use dynamically sized chunks
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Thu, Jul 02, 2020 at 04:28:26PM +0200, Ahmad Fatoum wrote:
> 
> 
> On 6/15/20 8:02 AM, Sascha Hauer wrote:
> > This changes the way ramfs stores its data. So far we used equally sized
> > chunks, this patch changes it to use chunks in a size that fits our
> > needs. The chunks are always allocated in the size they are needed for
> > the current truncation. Only if we fail to allocate all desired memory
> > at once we fall back to allocating smaller chunks. Together with using
> > the generic list implementation this results in smaller code and has
> > the advantage that many image files end up being contiguously in memory
> > and thus we can provide a memmap for them. Files will end up
> > contiguously in memory when they are first created, then truncated to
> > the final size and then filled up with data. This is something which
> > is normally easily achievable when desired.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  fs/ramfs.c | 307 +++++++++++++++++++++++++++--------------------------
> >  1 file changed, 159 insertions(+), 148 deletions(-)
> > 
> > diff --git a/fs/ramfs.c b/fs/ramfs.c
> > index 2b6df07996..ebe03de736 100644
> > --- a/fs/ramfs.c
> > +++ b/fs/ramfs.c
> > @@ -23,12 +23,15 @@
> >  #include <errno.h>
> >  #include <linux/stat.h>
> >  #include <xfuncs.h>
> > +#include <linux/sizes.h>
> >  
> >  #define CHUNK_SIZE	(4096 * 2)
> >  
> >  struct ramfs_chunk {
> >  	char *data;
> > -	struct ramfs_chunk *next;
> > +	unsigned long ofs;
> > +	int size;
> > +	struct list_head list;
> >  };
> >  
> >  struct ramfs_inode {
> > @@ -37,12 +40,14 @@ struct ramfs_inode {
> >  	char *symlink;
> >  	ulong mode;
> >  
> > -	ulong size;
> > -	struct ramfs_chunk *data;
> > +	/* bytes used in this inode */
> > +	unsigned long size;
> > +	/* bytes currently allocated for this inode */
> > +	unsigned long alloc_size;
> > +
> > +	struct list_head data;
> >  
> > -	/* Points to recently used chunk */
> > -	int recent_chunk;
> > -	struct ramfs_chunk *recent_chunkp;
> > +	struct ramfs_chunk *current_chunk;
> >  };
> >  
> >  static inline struct ramfs_inode *to_ramfs_inode(struct inode *inode)
> > @@ -89,18 +94,25 @@ static struct inode *ramfs_get_inode(struct super_block *sb, const struct inode
> >  	return inode;
> >  }
> >  
> > -static struct ramfs_chunk *ramfs_get_chunk(void)
> > +#define MIN_SIZE SZ_8K
> > +
> > +static struct ramfs_chunk *ramfs_get_chunk(unsigned long size)
> >  {
> >  	struct ramfs_chunk *data = malloc(sizeof(struct ramfs_chunk));
> > +
> >  	if (!data)
> >  		return NULL;
> >  
> > -	data->data = calloc(CHUNK_SIZE, 1);
> > +	if (size < MIN_SIZE)
> > +		size = MIN_SIZE;
> > +
> > +	data->data = calloc(size, 1);
> >  	if (!data->data) {
> >  		free(data);
> >  		return NULL;
> >  	}
> > -	data->next = NULL;
> > +
> > +	data->size = size;
> >  
> >  	return data;
> >  }
> > @@ -160,23 +172,6 @@ static int ramfs_symlink(struct inode *dir, struct dentry *dentry,
> >  
> >  static int ramfs_unlink(struct inode *dir, struct dentry *dentry)
> >  {
> > -	struct inode *inode = d_inode(dentry);
> > -
> > -	if (inode) {
> > -		struct ramfs_inode *node = to_ramfs_inode(inode);
> > -		struct ramfs_chunk *chunk = node->data;
> > -
> > -		node->data = NULL;
> > -
> > -		while (chunk) {
> > -			struct ramfs_chunk *tmp = chunk;
> > -
> > -			chunk = chunk->next;
> > -
> > -			ramfs_put_chunk(tmp);
> > -		}
> > -	}
> > -
> >  	return simple_unlink(dir, dentry);
> >  }
> >  
> > @@ -200,80 +195,57 @@ static const struct inode_operations ramfs_dir_inode_operations =
> >  	.create = ramfs_create,
> >  };
> >  
> > -static struct ramfs_chunk *ramfs_find_chunk(struct ramfs_inode *node, int chunk)
> > +static struct ramfs_chunk *ramfs_find_chunk(struct ramfs_inode *node,
> > +					    unsigned long pos, int *ofs, int *len)
> >  {
> > -	struct ramfs_chunk *data;
> > -	int left = chunk;
> > +	struct ramfs_chunk *data, *cur = node->current_chunk;
> >  
> > -	if (chunk == 0)
> > -		return node->data;
> > +	if (cur && pos >= cur->ofs)
> > +		data = cur;
> > +	else
> > +		data = list_first_entry(&node->data, struct ramfs_chunk, list);
> >  
> > -	if (node->recent_chunk == chunk)
> > -		return node->recent_chunkp;
> > +	list_for_each_entry_from(data, &node->data, list) {
> > +		if (data->ofs + data->size > pos) {
> > +			*ofs = pos - data->ofs;
> > +			*len = data->ofs + data->size - pos;
> >  
> > -	if (node->recent_chunk < chunk && node->recent_chunk != 0) {
> > -		/* Start at last known chunk */
> > -		data = node->recent_chunkp;
> > -		left -= node->recent_chunk;
> > -	} else {
> > -		/* Start at first chunk */
> > -		data = node->data;
> > -	}
> > +			node->current_chunk = data;
> >  
> > -	while (left--)
> > -		data = data->next;
> > +			return data;
> > +		}
> > +	}
> >  
> > -	node->recent_chunkp = data;
> > -	node->recent_chunk = chunk;
> > +	pr_err("%s: no chunk for pos %ld found\n", __func__, pos);
> >  
> > -	return data;
> > +	return NULL;
> >  }
> >  
> >  static int ramfs_read(struct device_d *_dev, FILE *f, void *buf, size_t insize)
> >  {
> >  	struct inode *inode = f->f_inode;
> >  	struct ramfs_inode *node = to_ramfs_inode(inode);
> > -	int chunk;
> >  	struct ramfs_chunk *data;
> > -	int ofs;
> > -	int now;
> > -	int pos = f->pos;
> > +	int ofs, len, now;
> > +	unsigned long pos = f->pos;
> >  	int size = insize;
> >  
> > -	chunk = pos / CHUNK_SIZE;
> > -	debug("%s: reading from chunk %d\n", __FUNCTION__, chunk);
> > +	debug("%s: %p %d @ %lld\n", __func__, node, insize, f->pos);
> > +
> > +	while (size) {
> > +		data = ramfs_find_chunk(node, pos, &ofs, &len);
> > +		if (!data)
> > +			return -EINVAL;
> >  
> > -	/* Position ourself in stream */
> > -	data = ramfs_find_chunk(node, chunk);
> > -	ofs = pos % CHUNK_SIZE;
> > +		debug("%s: pos: %ld ofs: %d len: %d\n", __func__, pos, ofs, len);
> > +
> > +		now = min(size, len);
> >  
> > -	/* Read till end of current chunk */
> > -	if (ofs) {
> > -		now = min(size, CHUNK_SIZE - ofs);
> > -		debug("Reading till end of node. size: %d\n", size);
> >  		memcpy(buf, data->data + ofs, now);
> > +
> >  		size -= now;
> > -		pos += now;
> >  		buf += now;
> > -		if (pos > node->size)
> > -			node->size = now;
> > -		data = data->next;
> > -	}
> > -
> > -	/* Do full chunks */
> > -	while (size >= CHUNK_SIZE) {
> > -		debug("do full chunk. size: %d\n", size);
> > -		memcpy(buf, data->data, CHUNK_SIZE);
> > -		data = data->next;
> > -		size -= CHUNK_SIZE;
> > -		pos += CHUNK_SIZE;
> > -		buf += CHUNK_SIZE;
> > -	}
> > -
> > -	/* And the rest */
> > -	if (size) {
> > -		debug("do rest. size: %d\n", size);
> > -		memcpy(buf, data->data, size);
> > +		pos += now;
> >  	}
> >  
> >  	return insize;
> > @@ -283,100 +255,135 @@ static int ramfs_write(struct device_d *_dev, FILE *f, const void *buf, size_t i
> >  {
> >  	struct inode *inode = f->f_inode;
> >  	struct ramfs_inode *node = to_ramfs_inode(inode);
> > -	int chunk;
> >  	struct ramfs_chunk *data;
> > -	int ofs;
> > -	int now;
> > -	int pos = f->pos;
> > +	int ofs, len, now;
> > +	unsigned long pos = f->pos;
> 
> On 32-bit systems, you are truncating a 64-bit pos to 32-bit here. Is this intended?

It's a RAM filesystem, so we can't handle files that are bigger than the
address space here. Yes, this is intended, I wanted to avoid the burden
of doing 64bit math on 32bit systems.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
