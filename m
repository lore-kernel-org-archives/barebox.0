Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aU8Ip-0006Sb-3o
 for barebox@lists.infradead.org; Fri, 12 Feb 2016 07:38:09 +0000
Date: Fri, 12 Feb 2016 08:37:44 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160212073744.GZ4118@pengutronix.de>
References: <1455202575-9855-1-git-send-email-yegorslists@googlemail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1455202575-9855-1-git-send-email-yegorslists@googlemail.com>
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
Subject: Re: [RFC] fs: add support for SquashFS
To: yegorslists@googlemail.com
Cc: barebox@lists.infradead.org

Hi Yegor,

This doesn't look too bad. Some things I noticed while looking at it and
trying to compile it.

On Thu, Feb 11, 2016 at 03:56:15PM +0100, yegorslists@googlemail.com wrote:
> From: Yegor Yefremov <yegorslists@googlemail.com>
> 
> Signed-off-by: Yegor Yefremov <yegorslists@googlemail.com>

The final commit should be a bit more descriptive. It should at least
contain the Kernel version you started from so that later know from
which kernel version on we have to look for updates.


> diff --git a/fs/squashfs/Kconfig b/fs/squashfs/Kconfig
> new file mode 100644
> index 0000000..d8836d5
> --- /dev/null
> +++ b/fs/squashfs/Kconfig
> @@ -0,0 +1,31 @@
> +menuconfig FS_SQUASHFS
> +	bool
> +	prompt "squashfs support"
> +	help
> +	  Saying Y here includes support for SquashFS 4.0 (a Compressed
> +	  Read-Only File System).  Squashfs is a highly compressed read-only
> +	  filesystem for Linux.  It uses zlib, lzo or xz compression to
> +	  compress both files, inodes and directories.  Inodes in the system
> +	  are very small and all blocks are packed to minimise data overhead.
> +	  Block sizes greater than 4K are supported up to a maximum of 1 Mbytes
> +	  (default block size 128K).  SquashFS 4.0 supports 64 bit filesystems
> +	  and files (larger than 4GB), full uid/gid information, hard links and
> +	  timestamps.
> +
> +	  Squashfs is intended for general read-only filesystem use, for
> +	  archival use (i.e. in cases where a .tar.gz file may be used), and in
> +	  embedded systems where low overhead is needed.  Further information
> +	  and tools are available from http://squashfs.sourceforge.net.
> +
> +config SQUASHFS_XZ
> +	bool "Include support for XZ compressed file systems"
> +	depends on FS_SQUASHFS
> +	select XZ_DECOMPRESS
> +	help
> +	  Saying Y here includes support for reading Squashfs file systems
> +	  compressed with XZ compression.  XZ gives better compression than
> +	  the default zlib compression, at the expense of greater CPU and
> +	  memory overhead.
> +
> +	  XZ is not the standard compression used in Squashfs and so most
> +	  file systems will be readable without selecting this option.

I noticed we currently get linker errors when XZ decompression is
disabled:

fs/built-in.o: In function `squashfs_xz_uncompress':
:(.text.squashfs_xz_uncompress+0x14): undefined reference to `xz_dec_reset'
:(.text.squashfs_xz_uncompress+0x98): undefined reference to `xz_dec_run'
fs/built-in.o: In function `squashfs_xz_free':
:(.text.squashfs_xz_free+0x8): undefined reference to `xz_dec_end'
fs/built-in.o: In function `squashfs_xz_init':
:(.text.squashfs_xz_init+0x12): undefined reference to `xz_dec_init'
:(.text.squashfs_xz_init+0x22): undefined reference to `xz_crc32_init'


> +
> +/*
> + * Read the metadata block length, this is stored in the first two
> + * bytes of the metadata block.
> + */
> +static char *get_block_length(struct super_block *sb,
> +			u64 *cur_index, int *offset, int *length)
> +{
> +	struct squashfs_sb_info *msblk = sb->s_fs_info;
> +	char *buf;
> +	int rc;
> +
> +	buf = squashfs_devread(msblk,
> +			 *cur_index * msblk->devblksize,
> +			 msblk->devblksize);
> +	if (buf == NULL)
> +		return NULL;

buf holds allocated memory here and is reinitialized with another buffer
below without being freed beforehand. Please make sure that you
eliminate those memory leaks. I usually do something like:

meminfo; mount -t squashfs /dev/friesel /frasel; umount /frasel; meminfo

Do this command (or a cp command) a few times, memory consumption
should not increase. Note that the whole command should be in a single
line, otherwise the commands you type will go into the command history
each time you hit return and eat up a few bytes each time, and this
would also increase memory usage.

> +
> +	if (msblk->devblksize - *offset == 1) {
> +		*length = (unsigned char) buf[*offset];
> +		buf = squashfs_devread(msblk,
> +				 ++(*cur_index) * msblk->devblksize,
> +				 msblk->devblksize);
> +		if (buf == NULL)
> +			return NULL;
> +		*length |= (unsigned char) buf[0] << 8;
> +		*offset = 1;
> +	} else {
> +		*length = (unsigned char) buf[*offset] |
> +			(unsigned char) buf[*offset + 1] << 8;
> +		*offset += 2;
> +
> +		if (*offset == msblk->devblksize) {
> +			buf = squashfs_devread(msblk,
> +					 ++(*cur_index) * msblk->devblksize,
> +					 msblk->devblksize);
> +			if (buf == NULL)
> +				return NULL;
> +			*offset = 0;
> +		}
> +	}
> +
> +	return buf;
> +}
> +
> +

> +/*
> + * Blocks in Squashfs are compressed.  To avoid repeatedly decompressing
> + * recently accessed data Squashfs uses two small metadata and fragment caches.
> + *
> + * This file implements a generic cache implementation used for both caches,
> + * plus functions layered ontop of the generic cache implementation to
> + * access the metadata and fragment caches.
> + *
> + * To avoid out of memory and fragmentation issues with vmalloc the cache
> + * uses sequences of kmalloced PAGE_CACHE_SIZE buffers.
> + *
> + * It should be noted that the cache is not used for file datablocks, these
> + * are decompressed and cached in the page-cache in the normal way.  The
> + * cache is only used to temporarily cache fragment and metadata blocks
> + * which have been read as as a result of a metadata (i.e. inode or
> + * directory) or fragment access.  Because metadata and fragments are packed
> + * together into blocks (to gain greater compression) the read of a particular
> + * piece of metadata or fragment will retrieve other metadata/fragments which
> + * have been packed with it, these because of locality-of-reference may be read
> + * in the near future. Temporarily caching them ensures they are available for
> + * near future access without requiring an additional read and decompress.
> + */
> +
> +#include <linux/fs.h>
> +#include <linux/pagemap.h>
> +
> +#include "squashfs_fs.h"
> +#include "squashfs_fs_sb.h"
> +#include "squashfs.h"
> +#include "page_actor.h"
> +
> +#if 1
> +/*
> + * Look-up block in cache, and increment usage count.  If not in cache, read
> + * and decompress it from disk.
> + */
> +struct squashfs_cache_entry *squashfs_cache_get(struct super_block *sb,
> +	struct squashfs_cache *cache, u64 block, int length)
> +{
> +	int i, n;
> +	struct squashfs_cache_entry *entry;
> +
> +	spin_lock(&cache->lock);
> +
> +	while (1) {
> +		for (i = cache->curr_blk, n = 0; n < cache->entries; n++) {
> +			if (cache->entry[i].block == block) {
> +				cache->curr_blk = i;
> +				break;
> +			}
> +			i = (i + 1) % cache->entries;
> +		}
> +
> +		if (n == cache->entries) {
> +			/*
> +			 * Block not in cache, if all cache entries are used
> +			 * go to sleep waiting for one to become available.
> +			 */
> +			if (cache->unused == 0) {
> +				cache->num_waiters++;
> +				spin_unlock(&cache->lock);
> +				//wait_event(cache->wait_queue, cache->unused);

Did you ever hit this point? Do bad things happen then? I mean this
condition the original code wants to wait upon will not become true.

> +				spin_lock(&cache->lock);
> +				cache->num_waiters--;
> +				continue;
> +			}
> +
> +			/*

> +
> +char *squashfs_devread(struct squashfs_sb_info *fs, int byte_offset,
> +		int byte_len)
> +{
> +	ssize_t size;
> +	char *buf;
> +
> +	buf = malloc(byte_len);
> +	if (buf == NULL)
> +		return NULL;
> +
> +	size = cdev_read(fs->cdev, buf, byte_len, byte_offset, 0);
> +	if (size < 0) {
> +		dev_err(fs->dev, "read error: %s\n",
> +				strerror(-size));
> +		return NULL;

free buf?

> +	}
> +
> +	return buf;
> +}
> +
> +struct squashfs_priv {
> +	struct super_block *sb;
> +};
> +
> +static struct dentry *squashfs_findfile(struct super_block *sb, const char *filename)
> +{
> +	int ret;
> +	char *next;
> +	char fpath[128];
> +	char *name = fpath;
> +	unsigned long root_inum = 1;
> +	unsigned long inum;
> +	struct inode *inode = 0;
> +	long long root_inode = 0;
> +	struct dentry *dir1, *dir2 = NULL;
> +	inode = sb->s_root->d_inode;
> +
> +	strcpy(fpath, filename);
> +
> +	/* Remove all leading slashes */
> +	while (*name == '/')
> +		name++;
> +
> +	/*
> +	 * Handle root-direcoty ('/')
> +	 */
> +	if (!name || *name == '\0')
> +		return sb->s_root;
> +
> +	dir1 = malloc(sizeof(struct dentry));
> +	if (dir1 == NULL) {
> +		TRACE("Error allocating dir1\n");
> +	}

Why don't you allocate this on the stack? Then you wouldn't have to free
it.

Please run the whole thing through scipts/checkpatch.pl. It contains
several trailing whitespaces and other stylistic stuff.

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
