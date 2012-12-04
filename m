Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Tg1N1-0007Uy-FT
 for barebox@lists.infradead.org; Tue, 04 Dec 2012 22:53:45 +0000
Date: Tue, 4 Dec 2012 23:53:39 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121204225339.GW10369@pengutronix.de>
References: <1354558114-28799-1-git-send-email-renaud.barbier@ge.com>
 <1354558114-28799-6-git-send-email-renaud.barbier@ge.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1354558114-28799-6-git-send-email-renaud.barbier@ge.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 05/18] UBIFS: file operations
To: Renaud Barbier <renaud.barbier@ge.com>
Cc: barebox@lists.infradead.org

Hi Renaud,

First of all, thank you for working in this. Nice ;)

On Mon, Dec 03, 2012 at 06:08:21PM +0000, Renaud Barbier wrote:
> This file defines all the files/directories operations.
> It also initializes the driver.
> 
> Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
> ---
>  fs/ubifs/ubifs.c |  942 ++++++++++++++++++++++++++++++++++++++++++++++++++++++
>  1 files changed, 942 insertions(+), 0 deletions(-)
>  create mode 100644 fs/ubifs/ubifs.c
> 
> +/*
> + * ubifsls...
> + */
> +static int filldir(struct ubifs_info *c, const char *name, int namlen,
> +		   u64 ino, unsigned int d_type)
> +{
> +	struct inode *inode;
> +
> +	inode = ubifs_iget(c->vfs_sb, ino);
> +	if (IS_ERR(inode)) {
> +		printf("%s: Error in ubifs_iget(), ino=%lld ret=%p!\n",
> +		       __func__, ino, inode);
> +		return -1;

No -1 as error code please. -1 means -EPERM.

> +	}
> +	/*ctime_r((time_t *)&inode->i_mtime, filetime);
> +	printf("%9lld  %24.24s  ", inode->i_size, filetime); */
> +	ubifs_iput(inode);
> +
> +
> +	return 0;
> +}
> +
> +
> +
> +static int ubifs_doreaddir(struct file *file, struct dirent *dirent)
> +{
> +	int err, over = 0;
> +	struct qstr nm;
> +	union ubifs_key key;
> +	struct ubifs_dent_node *dent;
> +
> +	struct inode *dir = file->f_path.dentry->d_inode;
> +
> +	struct ubifs_info *c = dir->i_sb->s_fs_info;
> +
> +	dbg_gen("dir ino %lu, f_pos %#llx", dir->i_ino, file->f_pos);
> +
> +	memset(dirent->d_name, 0, sizeof(dirent->d_name));
> +
> +	if (file->f_pos > UBIFS_S_KEY_HASH_MASK || file->f_pos == 2) {
> +		/*
> +		 * The directory was seek'ed to a senseless position or there
> +		 * are no more entries.
> +		 */
> +		return 0;
> +	}
> +
> +
> +	if (file->f_pos == 1) {
> +		/* Find the first entry in TNC and save it */
> +		lowest_dent_key(c, &key, dir->i_ino);
> +		nm.name = NULL;
> +		dent = ubifs_tnc_next_ent(c, &key, &nm);
> +		if (IS_ERR(dent)) {
> +			err = PTR_ERR(dent);
> +			goto out;
> +		}
> +
> +		file->f_pos = key_hash_flash(c, &dent->key);
> +		file->private_data = dent;
> +	}
> +
> +	dent = file->private_data;
> +	if (!dent) {
> +		/*
> +		 * The directory was seek'ed to and is now readdir'ed.
> +		 * Find the entry corresponding to @file->f_pos or the
> +		 * closest one.
> +		 */
> +		dent_key_init_hash(c, &key, dir->i_ino, file->f_pos);
> +		nm.name = NULL;
> +		dent = ubifs_tnc_next_ent(c, &key, &nm);
> +		if (IS_ERR(dent)) {
> +			err = PTR_ERR(dent);
> +			goto out;
> +		}
> +		file->f_pos = key_hash_flash(c, &dent->key);
> +		file->private_data = dent;
> +	}
> +
> +	while (1) {
> +		dbg_gen("feed '%s', ino %llu, new f_pos %#x",
> +			dent->name, (unsigned long long)le64_to_cpu(dent->inum),
> +			 key_hash_flash(c, &dent->key));
> +		ubifs_assert(le64_to_cpu(dent->ch.sqnum) > ubifs_inode(dir)->creat_sqnum);
> +
> +		nm.len = le16_to_cpu(dent->nlen);
> +		/* Need to remove this */
> +		over = filldir(c, (char *)dent->name, nm.len,
> +			       le64_to_cpu(dent->inum), dent->type);
> +		if (over) {
> +			return 0;
> +		} else {
> +			memcpy(dirent, dent->name, strlen(dent->name));
> +
> +			/* Switch to the next entry */
> +			key_read(c, &dent->key, &key);
> +			nm.name = (char *)dent->name;
> +			dent = ubifs_tnc_next_ent(c, &key, &nm);
> +			if (IS_ERR(dent)) {
> +				err = PTR_ERR(dent);
> +				goto out;
> +			}
> +
> +			kfree(file->private_data);
> +			file->f_pos = key_hash_flash(c, &dent->key);
> +			file->private_data = dent;
> +			cond_resched();
> +			return 1;
> +		}
> +	}
> +
> +out:
> +	if (err != -ENOENT) {
> +		ubifs_err("cannot find next direntry, error %d", err);
> +		return 0;
> +	}
> +
> +	kfree(file->private_data);
> +	file->private_data = NULL;
> +	file->f_pos = 2;
> +	return 1;
> +}
> +
> +static struct dirent *ubifs_readdir(struct device_d *dev, DIR *dir)
> +{
> +	struct ubifs_priv *priv = (struct ubifs_priv *)dev->priv;
> +	struct file *file;
> +	int ret;
> +
> +	file = priv->file;
> +	ret = ubifs_doreaddir(file, &dir->d);
> +
> +	if (ret)
> +		return &dir->d;
> +	else
> +		return NULL;
> +
> +
> +}
> +
> +static int ubifs_finddir(struct super_block *sb, char *dirname,
> +			 unsigned long root_inum, unsigned long *inum)
> +{
> +	int err;
> +	struct qstr nm;
> +	union ubifs_key key;
> +	struct ubifs_dent_node *dent;
> +	struct ubifs_info *c;
> +	struct file *file;
> +	struct dentry *dentry;
> +	struct inode *dir;
> +
> +	file = kzalloc(sizeof(struct file), 0);
> +	dentry = kzalloc(sizeof(struct dentry), 0);
> +	dir = kzalloc(sizeof(struct inode), 0);
> +	if (!file || !dentry || !dir) {
> +		printf("%s: Error, no memory for malloc!\n", __func__);
> +		err = -ENOMEM;
> +		goto out;
> +	}
> +
> +	dir->i_sb = sb;
> +	file->f_path.dentry = dentry;
> +	file->f_path.dentry->d_parent = dentry;
> +	file->f_path.dentry->d_inode = dir;
> +	file->f_path.dentry->d_inode->i_ino = root_inum;
> +	c = sb->s_fs_info;
> +
> +	dbg_gen("finddir: dir ino %lu, f_pos %#llx", dir->i_ino, file->f_pos);
> +
> +	/* Find the first entry in TNC and save it */
> +	lowest_dent_key(c, &key, dir->i_ino);
> +	nm.name = NULL;
> +	dent = ubifs_tnc_next_ent(c, &key, &nm);
> +	if (IS_ERR(dent)) {
> +		err = PTR_ERR(dent);
> +		goto out;
> +	}
> +
> +	file->f_pos = key_hash_flash(c, &dent->key);
> +	file->private_data = dent;
> +
> +	while (1) {
> +		dbg_gen("feed '%s', ino %llu, new f_pos %#x",
> +			dent->name, (unsigned long long)le64_to_cpu(dent->inum),
> +			key_hash_flash(c, &dent->key));
> +		ubifs_assert(le64_to_cpu(dent->ch.sqnum) > ubifs_inode(dir)->creat_sqnum);
> +
> +		nm.len = le16_to_cpu(dent->nlen);
> +		if ((strncmp(dirname, (char *)dent->name, nm.len) == 0) &&
> +		    (strlen(dirname) == nm.len)) {
> +			*inum = le64_to_cpu(dent->inum);
> +			return 1;
> +		}
> +
> +		/* Switch to the next entry */
> +		key_read(c, &dent->key, &key);
> +		nm.name = (char *)dent->name;
> +		dent = ubifs_tnc_next_ent(c, &key, &nm);
> +		if (IS_ERR(dent)) {
> +			err = PTR_ERR(dent);
> +			goto out;
> +		}
> +
> +		kfree(file->private_data);
> +		file->f_pos = key_hash_flash(c, &dent->key);
> +		file->private_data = dent;
> +		cond_resched();
> +	}
> +
> +out:
> +	if (err != -ENOENT) {
> +		ubifs_err("cannot find next direntry, error %d", err);
> +		return err;
> +	}
> +
> +	if (file->private_data)
> +		kfree(file->private_data);
> +	if (file)
> +		free(file);
> +	if (dentry)
> +		free(dentry);
> +	if (dir)
> +		free(dir);

No need to check for valid pointers, free() does this.

> +
> +	return 0;

Please return 0 for success and a negative error code otherwise.
Everything else is quite confusing.

> +}
> +
> +static unsigned long ubifs_findfile(struct super_block *sb,
> +				    const char *filename)

ditto. Since the result of this function seems to be an inode or block number
you could pass this in as a pointer instead of returning it.

> +{
> +	int ret;
> +	char *next;
> +	char fpath[128];
> +	char symlinkpath[128];
> +	char *name = fpath;
> +	unsigned long root_inum = 1;
> +	unsigned long inum;
> +	int symlink_count = 0; /* Don't allow symlink recursion */
> +	char link_name[64];
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
> +	inum = root_inum;
> +	if (!name || *name == '\0')
> +		return inum;
> +
> +	for (;;) {
> +		struct inode *inode;
> +		struct ubifs_inode *ui;
> +
> +		/* Extract the actual part from the pathname.  */
> +		next = strchr(name, '/');
> +		if (next) {
> +			/* Remove all leading slashes.  */
> +			while (*next == '/')
> +				*(next++) = '\0';
> +		}

You don't need this. the barebox fs implementation removes all double
slashes.

> +
> +		ret = ubifs_finddir(sb, name, root_inum, &inum);
> +		if (!ret)
> +			return 0;
> +		inode = ubifs_iget(sb, inum);
> +
> +		if (!inode)
> +			return 0;
> +		ui = ubifs_inode(inode);
> +
> +		if ((inode->i_mode & S_IFMT) == S_IFLNK) {

barebox has link handling. You can just remove link handling here and
implement .readlink.

> +			char buf[128];
> +
> +			/* We have some sort of symlink recursion, bail out */
> +			if (symlink_count++ > 8) {
> +				printf("Symlink recursion, aborting\n");
> +				return 0;
> +			}
> +			memcpy(link_name, ui->data, ui->data_len);
> +			link_name[ui->data_len] = '\0';
> +
> +			if (link_name[0] == '/') {
> +				/* Absolute path, redo everything without
> +				 * the leading slash */
> +				next = name = link_name + 1;
> +				root_inum = 1;
> +				continue;
> +			}
> +			/* Relative to cur dir */
> +			sprintf(buf, "%s/%s",
> +					link_name, next == NULL ? "" : next);
> +			memcpy(symlinkpath, buf, sizeof(buf));
> +			next = name = symlinkpath;
> +			continue;
> +		}
> +
> +		/*
> +		 * Check if directory with this name exists
> +		 */
> +
> +		/* Found the node!  */
> +		if (!next || *next == '\0')
> +			return inum;
> +
> +		root_inum = inum;
> +		name = next;
> +	}
> +
> +	return 0;
> +}
> +
> +static int ubifs_open(struct device_d *dev, FILE *file, const char *filename)
> +{
> +	struct ubifs_priv *priv = (struct ubifs_priv *)dev->priv;
> +	struct ubifs_info *c = priv->sb->s_fs_info;
> +	struct ubifs_inode *ui;
> +	struct inode *inode;
> +	unsigned long inum;
> +
> +
> +	c->ubi = ubi_open_volume(c->vi.ubi_num, c->vi.vol_id, UBI_READONLY);

Is this necessary? I would expect this happens at mount time.

> +
> +	inum = ubifs_findfile(priv->sb, filename);
> +	if (!inum) {
> +		printf("ubifs_open: file %s not found\n", filename);
> +		ubi_close_volume(c->ubi);
> +		return -ENOENT;
> +	}
> +
> +	/*
> +	 * Read file inode
> +	 */
> +	inode = ubifs_iget(c->vfs_sb, inum);
> +
> +	if (!inode) {
> +		ubi_close_volume(c->ubi);
> +		return -ENOENT;
> +	}
> +
> +	ui = ubifs_inode(inode);
> +
> +	file->inode = inode;
> +	file->size = ui->ui_size;
> +
> +	return 0;
> +}
> +
> +static int ubifs_read(struct device_d *dev, FILE *f, void *buf, size_t size)
> +{
> +	struct ubifs_priv *priv = (struct ubifs_priv *)dev->priv;
> +	struct ubifs_info *c = priv->sb->s_fs_info;
> +	struct inode *inode = f->inode;
> +	struct page page;
> +	int last_block_size = 0;
> +	int count, ix;
> +	int outsize = 0;
> +	int err;
> +
> +	if (f->pos + size > inode->i_size)
> +		size = inode->i_size - f->pos;
> +
> +	count = (size + UBIFS_BLOCK_SIZE - 1) >> UBIFS_BLOCK_SHIFT;
> +	page.addr = (void *)buf;
> +	page.index = f->pos >> UBIFS_BLOCK_SHIFT;
> +	page.inode = inode;
> +
> +	for (ix = 0; ix < count; ix++) {
> +		/*
> +		 * Make sure to not read beyond the requested size
> +		 */
> +		if (((ix + 1) == count) && (size < inode->i_size)) {
> +			last_block_size = size - (ix * PAGE_SIZE);
> +			outsize += last_block_size;
> +		} else
> +			outsize += PAGE_SIZE;
> +
> +		err = do_readpage(c, inode, &page, last_block_size);
> +		if (err)
> +			break;
> +		page.addr += PAGE_SIZE;
> +		page.index++;
> +	}
> +
> +	if (err)
> +		return err;
> +
> +	return outsize;
> +}

This function needs more work. It correctly handles partial page reads
when f->pos + size is not page aligned, but it doesn't handle the case
when you enter this function with f->pos not page aligned. The usage of
do_readpage is artificial, barebox has no idea of pages. Instead you
should use read_block directly here and drop do_readpage completely.

I think ubifs_read could look like:

	u8 tmpbuf[UBIFS_BLOCK_SIZE];

	block = f->pos >> UBIFS_BLOCK_SHIFT;

	part = f->pos & (UBIFS_BLOCK_SIZE - 1));
	if (part) {
		/* partial start block */
		int now = min(size, UBIFS_BLOCK_SIZE - part);
		read_block(inode, tmpbuf, block, dn);
		memcpy(buf, tmpbuf + part, now);
		buf += now;
		size -= now;
		block++;
	}

	while (size >= UBIFS_BLOCK_SIZE) {
		/* full blocks */
		read_block(inode, buf, block, dn);
		size -= UBIFS_BLOCK_SIZE;
		buf += UBIFS_BLOCK_SIZE;
		block++;
	}

	if (size) {
		/* remaining partial block */
		read_block(inode, tmpbuf, block, dn);
		memcpy(buf, tmpbuf, size);
	}

A further optimization step would be to store tmpbuf along with the
information which block number is stored in the files private data.
This will give a better performance when ubifs_read is continuously
called with not block aligned file offsets. This isn't necessary for now
though.


> +/*
> + * ubifs_probe: allocate private data and mount volume
> + */
> +static int ubifs_probe(struct device_d *dev)
> +{
> +	struct fs_device_d *fsdev;
> +	struct ubifs_priv *priv;
> +	char *backingstore;
> +
> +	priv = xzalloc(sizeof(struct ubifs_priv));
> +
> +	fsdev = dev_to_fs_device(dev);
> +	dev->priv = priv;
> +	backingstore = fsdev->backingstore;
> +
> +	/* Tested only with /dev/ubi0 */
> +	if (strncmp(backingstore, "/dev/ubi", 8))
> +		return -ENODEV;
> +
> +	backingstore += 5;
> +
> +	priv->cdev = cdev_by_name(backingstore);
> +	if (!priv->cdev)
> +		return -ENODEV;
> +
> +	/* Change volune name from ubiX.NAME to ubiX:NAME */
> +	backingstore[4] = ':';

You should modify the copy you make below, not the original string.

> +
> +	priv->vol_name = strdup(backingstore);
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
