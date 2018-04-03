Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f3Ggn-00021W-Qq
 for barebox@lists.infradead.org; Tue, 03 Apr 2018 07:49:12 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  3 Apr 2018 09:48:36 +0200
Message-Id: <20180403074851.5411-5-s.hauer@pengutronix.de>
In-Reply-To: <20180403074851.5411-1-s.hauer@pengutronix.de>
References: <20180403074851.5411-1-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 04/19] ubifs: remove dead code
To: Barebox List <barebox@lists.infradead.org>

Remove code that was added to UBIFS for U-Boot but that is not needed
for barebox.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/ubifs/ubifs.c | 475 -------------------------------------------------------
 1 file changed, 475 deletions(-)

diff --git a/fs/ubifs/ubifs.c b/fs/ubifs/ubifs.c
index 0bb1c26d7d..a525b044b8 100644
--- a/fs/ubifs/ubifs.c
+++ b/fs/ubifs/ubifs.c
@@ -273,135 +273,6 @@ int __init ubifs_compressors_init(void)
  * ubifsls...
  */
 
-#ifndef __BAREBOX__
-static int filldir(struct ubifs_info *c, const char *name, int namlen,
-		   u64 ino, unsigned int d_type)
-{
-	struct inode *inode;
-	char filetime[32];
-
-	switch (d_type) {
-	case UBIFS_ITYPE_REG:
-		printf("\t");
-		break;
-	case UBIFS_ITYPE_DIR:
-		printf("<DIR>\t");
-		break;
-	case UBIFS_ITYPE_LNK:
-		printf("<LNK>\t");
-		break;
-	default:
-		printf("other\t");
-		break;
-	}
-
-	inode = ubifs_iget(c->vfs_sb, ino);
-	if (IS_ERR(inode)) {
-		printf("%s: Error in ubifs_iget(), ino=%lld ret=%p!\n",
-		       __func__, ino, inode);
-		return -1;
-	}
-	ctime_r((time_t *)&inode->i_mtime, filetime);
-	printf("%9lld  %24.24s  ", inode->i_size, filetime);
-#ifndef __BAREBOX__
-	ubifs_iput(inode);
-#endif
-
-	printf("%s\n", name);
-
-	return 0;
-}
-
-static int ubifs_printdir(struct file *file, void *dirent)
-{
-	int err, over = 0;
-	struct qstr nm;
-	union ubifs_key key;
-	struct ubifs_dent_node *dent;
-	struct inode *dir = file->f_path.dentry->d_inode;
-	struct ubifs_info *c = dir->i_sb->s_fs_info;
-
-	dbg_gen("dir ino %lu, f_pos %#llx", dir->i_ino, file->f_pos);
-
-	if (file->f_pos > UBIFS_S_KEY_HASH_MASK || file->f_pos == 2)
-		/*
-		 * The directory was seek'ed to a senseless position or there
-		 * are no more entries.
-		 */
-		return 0;
-
-	if (file->f_pos == 1) {
-		/* Find the first entry in TNC and save it */
-		lowest_dent_key(c, &key, dir->i_ino);
-		nm.name = NULL;
-		dent = ubifs_tnc_next_ent(c, &key, &nm);
-		if (IS_ERR(dent)) {
-			err = PTR_ERR(dent);
-			goto out;
-		}
-
-		file->f_pos = key_hash_flash(c, &dent->key);
-		file->private_data = dent;
-	}
-
-	dent = file->private_data;
-	if (!dent) {
-		/*
-		 * The directory was seek'ed to and is now readdir'ed.
-		 * Find the entry corresponding to @file->f_pos or the
-		 * closest one.
-		 */
-		dent_key_init_hash(c, &key, dir->i_ino, file->f_pos);
-		nm.name = NULL;
-		dent = ubifs_tnc_next_ent(c, &key, &nm);
-		if (IS_ERR(dent)) {
-			err = PTR_ERR(dent);
-			goto out;
-		}
-		file->f_pos = key_hash_flash(c, &dent->key);
-		file->private_data = dent;
-	}
-
-	while (1) {
-		dbg_gen("feed '%s', ino %llu, new f_pos %#x",
-			dent->name, (unsigned long long)le64_to_cpu(dent->inum),
-			key_hash_flash(c, &dent->key));
-		ubifs_assert(le64_to_cpu(dent->ch.sqnum) > ubifs_inode(dir)->creat_sqnum);
-
-		nm.len = le16_to_cpu(dent->nlen);
-		over = filldir(c, (char *)dent->name, nm.len,
-			       le64_to_cpu(dent->inum), dent->type);
-		if (over)
-			return 0;
-
-		/* Switch to the next entry */
-		key_read(c, &dent->key, &key);
-		nm.name = (char *)dent->name;
-		dent = ubifs_tnc_next_ent(c, &key, &nm);
-		if (IS_ERR(dent)) {
-			err = PTR_ERR(dent);
-			goto out;
-		}
-
-		kfree(file->private_data);
-		file->f_pos = key_hash_flash(c, &dent->key);
-		file->private_data = dent;
-		cond_resched();
-	}
-
-out:
-	if (err != -ENOENT) {
-		ubifs_err(c, "cannot find next direntry, error %d", err);
-		return err;
-	}
-
-	kfree(file->private_data);
-	file->private_data = NULL;
-	file->f_pos = 2;
-	return 0;
-}
-#endif
-
 static int ubifs_finddir(struct super_block *sb, char *dirname,
 			 unsigned long root_inum, unsigned long *inum)
 {
@@ -549,117 +420,6 @@ static unsigned long ubifs_findfile(struct super_block *sb, const char *filename
 	return 0;
 }
 
-#ifndef __BAREBOX__
-int ubifs_set_blk_dev(block_dev_desc_t *rbdd, disk_partition_t *info)
-{
-	if (rbdd) {
-		debug("UBIFS cannot be used with normal block devices\n");
-		return -1;
-	}
-
-	/*
-	 * Should never happen since get_device_and_partition() already checks
-	 * this, but better safe then sorry.
-	 */
-	if (!ubifs_is_mounted()) {
-		debug("UBIFS not mounted, use ubifsmount to mount volume first!\n");
-		return -1;
-	}
-
-	return 0;
-}
-
-int ubifs_ls(const char *filename)
-{
-	struct ubifs_info *c = ubifs_sb->s_fs_info;
-	struct file *file;
-	struct dentry *dentry;
-	struct inode *dir;
-	void *dirent = NULL;
-	unsigned long inum;
-	int ret = 0;
-
-	c->ubi = ubi_open_volume(c->vi.ubi_num, c->vi.vol_id, UBI_READONLY);
-	inum = ubifs_findfile(ubifs_sb, (char *)filename);
-	if (!inum) {
-		ret = -1;
-		goto out;
-	}
-
-	file = kzalloc(sizeof(struct file), 0);
-	dentry = kzalloc(sizeof(struct dentry), 0);
-	dir = kzalloc(sizeof(struct inode), 0);
-	if (!file || !dentry || !dir) {
-		printf("%s: Error, no memory for malloc!\n", __func__);
-		ret = -ENOMEM;
-		goto out_mem;
-	}
-
-	dir->i_sb = ubifs_sb;
-	file->f_path.dentry = dentry;
-	file->f_path.dentry->d_parent = dentry;
-	file->f_path.dentry->d_inode = dir;
-	file->f_path.dentry->d_inode->i_ino = inum;
-	file->f_pos = 1;
-	file->private_data = NULL;
-	ubifs_printdir(file, dirent);
-
-out_mem:
-	if (file)
-		free(file);
-	if (dentry)
-		free(dentry);
-	if (dir)
-		free(dir);
-
-out:
-	ubi_close_volume(c->ubi);
-	return ret;
-}
-
-int ubifs_exists(const char *filename)
-{
-	struct ubifs_info *c = ubifs_sb->s_fs_info;
-	unsigned long inum;
-
-	c->ubi = ubi_open_volume(c->vi.ubi_num, c->vi.vol_id, UBI_READONLY);
-	inum = ubifs_findfile(ubifs_sb, (char *)filename);
-	ubi_close_volume(c->ubi);
-
-	return inum != 0;
-}
-
-int ubifs_size(const char *filename, loff_t *size)
-{
-	struct ubifs_info *c = ubifs_sb->s_fs_info;
-	unsigned long inum;
-	struct inode *inode;
-	int err = 0;
-
-	c->ubi = ubi_open_volume(c->vi.ubi_num, c->vi.vol_id, UBI_READONLY);
-
-	inum = ubifs_findfile(ubifs_sb, (char *)filename);
-	if (!inum) {
-		err = -1;
-		goto out;
-	}
-
-	inode = ubifs_iget(ubifs_sb, inum);
-	if (IS_ERR(inode)) {
-		printf("%s: Error reading inode %ld!\n", __func__, inum);
-		err = PTR_ERR(inode);
-		goto out;
-	}
-
-	*size = inode->i_size;
-
-	ubifs_iput(inode);
-out:
-	ubi_close_volume(c->ubi);
-	return err;
-}
-#endif
-
 /*
  * ubifsload...
  */
@@ -718,241 +478,6 @@ dump:
 	return -EINVAL;
 }
 
-#ifndef __BAREBOX__
-static int do_readpage(struct ubifs_info *c, struct inode *inode,
-		       struct page *page, int last_block_size)
-{
-	void *addr;
-	int err = 0, i;
-	unsigned int block, beyond;
-	struct ubifs_data_node *dn;
-	loff_t i_size = inode->i_size;
-
-	dbg_gen("ino %lu, pg %lu, i_size %lld",
-		inode->i_ino, page->index, i_size);
-
-	addr = kmap(page);
-
-	block = page->index << UBIFS_BLOCKS_PER_PAGE_SHIFT;
-	beyond = (i_size + UBIFS_BLOCK_SIZE - 1) >> UBIFS_BLOCK_SHIFT;
-	if (block >= beyond) {
-		/* Reading beyond inode */
-		memset(addr, 0, PAGE_CACHE_SIZE);
-		goto out;
-	}
-
-	dn = kmalloc(UBIFS_MAX_DATA_NODE_SZ, GFP_NOFS);
-	if (!dn)
-		return -ENOMEM;
-
-	i = 0;
-	while (1) {
-		int ret;
-
-		if (block >= beyond) {
-			/* Reading beyond inode */
-			err = -ENOENT;
-			memset(addr, 0, UBIFS_BLOCK_SIZE);
-		} else {
-			/*
-			 * Reading last block? Make sure to not write beyond
-			 * the requested size in the destination buffer.
-			 */
-			if (((block + 1) == beyond) || last_block_size) {
-				void *buff;
-				int dlen;
-
-				/*
-				 * We need to buffer the data locally for the
-				 * last block. This is to not pad the
-				 * destination area to a multiple of
-				 * UBIFS_BLOCK_SIZE.
-				 */
-				buff = kzalloc(UBIFS_BLOCK_SIZE, 0);
-				if (!buff) {
-					printf("%s: Error, malloc fails!\n",
-					       __func__);
-					err = -ENOMEM;
-					break;
-				}
-
-				/* Read block-size into temp buffer */
-				ret = read_block(inode, buff, block, dn);
-				if (ret) {
-					err = ret;
-					if (err != -ENOENT) {
-						free(buff);
-						break;
-					}
-				}
-
-				if (last_block_size)
-					dlen = last_block_size;
-				else
-					dlen = le32_to_cpu(dn->size);
-
-				/* Now copy required size back to dest */
-				memcpy(addr, buff, dlen);
-
-				free(buff);
-			} else {
-				ret = read_block(inode, addr, block, dn);
-				if (ret) {
-					err = ret;
-					if (err != -ENOENT)
-						break;
-				}
-			}
-		}
-		if (++i >= UBIFS_BLOCKS_PER_PAGE)
-			break;
-		block += 1;
-		addr += UBIFS_BLOCK_SIZE;
-	}
-	if (err) {
-		if (err == -ENOENT) {
-			/* Not found, so it must be a hole */
-			dbg_gen("hole");
-			goto out_free;
-		}
-		ubifs_err(c, "cannot read page %lu of inode %lu, error %d",
-			  page->index, inode->i_ino, err);
-		goto error;
-	}
-
-out_free:
-	kfree(dn);
-out:
-	return 0;
-
-error:
-	kfree(dn);
-	return err;
-}
-
-int ubifs_read(const char *filename, void *buf, loff_t offset,
-	       loff_t size, loff_t *actread)
-{
-	struct ubifs_info *c = ubifs_sb->s_fs_info;
-	unsigned long inum;
-	struct inode *inode;
-	struct page page;
-	int err = 0;
-	int i;
-	int count;
-	int last_block_size = 0;
-
-	*actread = 0;
-
-	if (offset & (PAGE_SIZE - 1)) {
-		printf("ubifs: Error offset must be a multple of %d\n",
-		       PAGE_SIZE);
-		return -1;
-	}
-
-	c->ubi = ubi_open_volume(c->vi.ubi_num, c->vi.vol_id, UBI_READONLY);
-	/* ubifs_findfile will resolve symlinks, so we know that we get
-	 * the real file here */
-	inum = ubifs_findfile(ubifs_sb, (char *)filename);
-	if (!inum) {
-		err = -1;
-		goto out;
-	}
-
-	/*
-	 * Read file inode
-	 */
-	inode = ubifs_iget(ubifs_sb, inum);
-	if (IS_ERR(inode)) {
-		printf("%s: Error reading inode %ld!\n", __func__, inum);
-		err = PTR_ERR(inode);
-		goto out;
-	}
-
-	if (offset > inode->i_size) {
-		printf("ubifs: Error offset (%lld) > file-size (%lld)\n",
-		       offset, size);
-		err = -1;
-		goto put_inode;
-	}
-
-	/*
-	 * If no size was specified or if size bigger than filesize
-	 * set size to filesize
-	 */
-	if ((size == 0) || (size > (inode->i_size - offset)))
-		size = inode->i_size - offset;
-
-	count = (size + UBIFS_BLOCK_SIZE - 1) >> UBIFS_BLOCK_SHIFT;
-
-	page.addr = buf;
-	page.index = offset / PAGE_SIZE;
-	page.inode = inode;
-	for (i = 0; i < count; i++) {
-		/*
-		 * Make sure to not read beyond the requested size
-		 */
-		if (((i + 1) == count) && (size < inode->i_size))
-			last_block_size = size - (i * PAGE_SIZE);
-
-		err = do_readpage(c, inode, &page, last_block_size);
-		if (err)
-			break;
-
-		page.addr += PAGE_SIZE;
-		page.index++;
-	}
-
-	if (err) {
-		printf("Error reading file '%s'\n", filename);
-		*actread = i * PAGE_SIZE;
-	} else {
-		*actread = size;
-	}
-
-put_inode:
-	ubifs_iput(inode);
-
-out:
-	ubi_close_volume(c->ubi);
-	return err;
-}
-
-void ubifs_close(void)
-{
-}
-
-/* Compat wrappers for common/cmd_ubifs.c */
-int ubifs_load(char *filename, u32 addr, u32 size)
-{
-	loff_t actread;
-	int err;
-
-	printf("Loading file '%s' to addr 0x%08x...\n", filename, addr);
-
-	err = ubifs_read(filename, (void *)addr, 0, size, &actread);
-	if (err == 0) {
-		setenv_hex("filesize", actread);
-		printf("Done\n");
-	}
-
-	return err;
-}
-#endif
-
-void uboot_ubifs_umount(void)
-{
-	if (ubifs_sb) {
-		printf("Unmounting UBIFS volume %s!\n",
-		       ((struct ubifs_info *)(ubifs_sb->s_fs_info))->vi.name);
-		ubifs_umount(ubifs_sb->s_fs_info);
-		ubifs_sb = NULL;
-	}
-}
-
-
-
-
 struct ubifs_file {
 	struct inode *inode;
 	void *buf;
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
