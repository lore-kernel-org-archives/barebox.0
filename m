Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aYsNx-00026M-0C
 for barebox@lists.infradead.Org; Thu, 25 Feb 2016 09:39:02 +0000
Date: Thu, 25 Feb 2016 10:38:38 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160225093838.GE3939@pengutronix.de>
References: <1455893355-17319-1-git-send-email-yegorslists@googlemail.com>
 <1455893355-17319-3-git-send-email-yegorslists@googlemail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1455893355-17319-3-git-send-email-yegorslists@googlemail.com>
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
Subject: Re: [PATCH v3 3/3] fs: add support for SquashFS 4.0
To: yegorslists@googlemail.com
Cc: barebox@lists.infradead.org

On Fri, Feb 19, 2016 at 03:49:15PM +0100, yegorslists@googlemail.com wrote:
> From: Yegor Yefremov <yegorslists@googlemail.com>
> 
> The driver was imported from Linux 4.4.
> 

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

As long as XZ is the only option, does it make sense to make this
visible? I rather suggest an invisible "default y" option.

> +
> +struct squashfs_priv {
> +	struct super_block *sb;
> +};
> +
> +static struct inode *squashfs_findfile(struct super_block *sb,
> +		const char *filename, char *buf)
> +{
> +	char *next;
> +	char fpath[128];
> +	char *name = fpath;
> +	struct inode *inode;
> +	struct inode *t_inode = NULL;
> +
> +	strcpy(fpath, filename);
> +
> +	/* Remove all leading slashes */
> +	while (*name == '/')
> +		name++;
> +
> +	inode = duplicate_inode(sb->s_root->d_inode);
> +
> +	/*
> +	 * Handle root-direcoty ('/')

s/direcoty/directory/

> +	 */
> +	if (!name || *name == '\0')
> +		return inode;
> +
> +	for (;;) {
> +		/* Extract the actual part from the pathname.  */
> +		next = strchr(name, '/');
> +		if (next) {
> +			/* Remove all leading slashes.  */
> +			while (*next == '/')
> +				*(next++) = '\0';
> +		}
> +
> +		t_inode = squashfs_lookup(inode, name, 0);
> +		if (t_inode == NULL)
> +			break;
> +
> +		/*
> +		 * Check if directory with this name exists
> +		 */
> +
> +		/* Found the node!  */
> +		if (!next || *next == '\0') {
> +			if (buf != NULL)
> +				sprintf(buf, "%s", name);
> +
> +			free(squashfs_i(inode));
> +			return t_inode;
> +		}
> +
> +		name = next;
> +
> +		free(squashfs_i(inode));
> +		inode = t_inode;
> +	}
> +
> +	free(squashfs_i(inode));
> +	return NULL;
> +}
> +
> +static int squashfs_probe(struct device_d *dev)
> +{
> +	struct fs_device_d *fsdev;
> +	struct squashfs_priv *priv;
> +	int ret;
> +
> +	fsdev = dev_to_fs_device(dev);
> +
> +	priv = xmalloc(sizeof(struct squashfs_priv));

xzalloc is usually safer here. Even if you know that all fields are
initialized properly later, once we add new fields we usually expect
them to be initialized to zero.

> +	dev->priv = priv;
> +
> +	ret = fsdev_open_cdev(fsdev);
> +	if (ret)
> +		goto err_out;
> +
> +
> +	priv->sb = squashfs_mount(fsdev, 0);

You could embed a struct super_block into struct squashfs_priv. That
would save you one extra allocation.

> +	if (IS_ERR(priv->sb)) {
> +		dev_info(dev, "no valid squashfs found\n");
> +		ret = PTR_ERR(priv->sb);
> +		goto err_out;
> +	}
> +
> +	return 0;
> +
> +err_out:
> +	free(priv);
> +
> +	return ret;
> +}
> +
> +static void squashfs_remove(struct device_d *dev)
> +{
> +	struct squashfs_priv *priv = dev->priv;
> +
> +	squashfs_put_super(priv->sb);
> +	free(priv->sb);
> +	free(priv);
> +}
> +
> +static int squashfs_open(struct device_d *dev, FILE *file, const char *filename)
> +{
> +	struct squashfs_priv *priv = dev->priv;
> +	struct inode *inode;
> +	struct squashfs_page *page;
> +	int i;
> +
> +	inode = squashfs_findfile(priv->sb, filename, NULL);
> +	if (!inode)
> +		return -ENOENT;
> +
> +	page = malloc(sizeof(struct squashfs_page));
> +	page->buf = calloc(32, sizeof(*page->buf));
> +	for (i = 0; i < 32; i++)
> +		page->buf[i] = malloc(PAGE_CACHE_SIZE);

Given the amount of memory you allocate here malloc is a good choice,
but please check the return value.

> +
> +	page->data_block = 0;
> +	page->idx = 0;
> +	page->real_page.inode = inode;
> +	file->size = inode->i_size;
> +	file->priv = page;
> +
> +	return 0;
> +}
> +
> +static int squashfs_close(struct device_d *dev, FILE *f)
> +{
> +	struct squashfs_page *page = f->priv;
> +	int i;
> +
> +	for (i = 0; i < 32; i++)
> +		free(page->buf[i]);
> +
> +	free(page->buf);
> +	free(squashfs_i(page->real_page.inode));
> +	free(page);
> +
> +	return 0;
> +}
> +
> +static int squashfs_read(struct device_d *_dev, FILE *f, void *buf,
> +		size_t insize)
> +{
> +	unsigned int size = insize;
> +	int offset, idx;
> +	int data_block_pos;
> +	struct squashfs_page *page = f->priv;
> +
> +	if (f->pos >= (page->data_block + 1) * 32 * PAGE_CACHE_SIZE) {
> +		page->data_block++;
> +		page->idx = 0;
> +	}

You seem to assume here that files are only read linearly. You have to
do something more clever here to support lseek.

> +
> +	data_block_pos = f->pos - page->data_block * 32 * PAGE_CACHE_SIZE;
> +	idx = data_block_pos / PAGE_CACHE_SIZE;
> +	page->real_page.index = (page->data_block)*32;
> +	offset = data_block_pos - idx * PAGE_CACHE_SIZE;
> +
> +	if (page->idx == 0)
> +		squashfs_readpage(NULL, &page->real_page);
> +
> +	memcpy(buf, page->buf[idx] + offset, size);
> +
> +	return insize;
> +}
> +
> +static loff_t squashfs_lseek(struct device_d *dev, FILE *f, loff_t pos)
> +{
> +	f->pos = pos;
> +
> +	return pos;
> +}
> +

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
