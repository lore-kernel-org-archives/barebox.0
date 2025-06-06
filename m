Delivery-date: Fri, 06 Jun 2025 10:59:36 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uNSvI-004K9U-0b
	for lore@lore.pengutronix.de;
	Fri, 06 Jun 2025 10:59:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uNSv8-00040l-5J
	for lore@pengutronix.de; Fri, 06 Jun 2025 10:59:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eVJZc876nsE8j7zoVOrv2GgvJMZaDreGf/atnpZu9ic=; b=XEyQsWGlnv+OgmpWqy4PEJSLO/
	ZBs6LtExuOPQ3xlbtX1R8c9e5jH/pEZi7R43Wmy3y22Z8s9DWYDdtLYAH5eLwQ/omIHivweyHlRTh
	zZFq3Ux//3jvrfrhN02IujZSvYxGfnp5CkSYOQUH2inUMoasE4PU/lUWKXNvDRJK+2jpJFF6n60No
	ZfbM0XLPjuVJ6/8liP9dlsYtJLR6R7u7PwejECpGET8dm2hOpZ5MHTC7KwmAiREX9swaF/HlS/REC
	2HW2DZLW3ss+d5OuVn4EdaYisXpNIeEbHdD0dXym1Sl4khSNR2b/ZP6iVa6TSTbzc/5qxbPItC6K3
	mUO/x2Aw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNSuC-0000000HSVU-1sul;
	Fri, 06 Jun 2025 08:58:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNSu2-0000000HSLl-1n2f
	for barebox@lists.infradead.org;
	Fri, 06 Jun 2025 08:58:22 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uNSu1-0002si-1M; Fri, 06 Jun 2025 10:58:17 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Fri,  6 Jun 2025 10:58:11 +0200
Message-Id: <20250606085813.2183260-9-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250606085813.2183260-1-a.fatoum@barebox.org>
References: <20250606085813.2183260-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250606_015818_950710_8AF70219 
X-CRM114-Status: GOOD (  35.64  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 08/10] fs: add new 9P2000.l (Plan 9) File system support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Building on top of the networking implementation added in the previous
commit, write it to the barebox file system support.

The new file system is both readable and writable and has been tested
against Qemu and NFS Ganesha.

Note that symlink usage in Qemu results in ELOOP, but doesn't in
Ganesha.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 Documentation/user/virtio.rst |  32 +-
 common/startup.c              |   3 +
 fs/9p/Kconfig                 |  18 ++
 fs/9p/Makefile                |  12 +
 fs/9p/fid.c                   | 295 +++++++++++++++++
 fs/9p/fid.h                   |  37 +++
 fs/9p/v9fs.c                  | 373 ++++++++++++++++++++++
 fs/9p/v9fs.h                  | 183 +++++++++++
 fs/9p/v9fs_vfs.h              |  74 +++++
 fs/9p/vfs_addr.c              | 111 +++++++
 fs/9p/vfs_dir.c               | 172 ++++++++++
 fs/9p/vfs_file.c              |  67 ++++
 fs/9p/vfs_inode.c             | 279 ++++++++++++++++
 fs/9p/vfs_inode_dotl.c        | 579 ++++++++++++++++++++++++++++++++++
 fs/9p/vfs_super.c             | 243 ++++++++++++++
 fs/Kconfig                    |   2 +
 fs/Makefile                   |   1 +
 fs/fs.c                       |   9 +
 include/linux/fs.h            |  47 +++
 include/linux/limits.h        |   1 +
 include/linux/module.h        |   1 +
 include/linux/stat.h          |   4 +
 22 files changed, 2541 insertions(+), 2 deletions(-)
 create mode 100644 fs/9p/Kconfig
 create mode 100644 fs/9p/Makefile
 create mode 100644 fs/9p/fid.c
 create mode 100644 fs/9p/fid.h
 create mode 100644 fs/9p/v9fs.c
 create mode 100644 fs/9p/v9fs.h
 create mode 100644 fs/9p/v9fs_vfs.h
 create mode 100644 fs/9p/vfs_addr.c
 create mode 100644 fs/9p/vfs_dir.c
 create mode 100644 fs/9p/vfs_file.c
 create mode 100644 fs/9p/vfs_inode.c
 create mode 100644 fs/9p/vfs_inode_dotl.c
 create mode 100644 fs/9p/vfs_super.c

diff --git a/Documentation/user/virtio.rst b/Documentation/user/virtio.rst
index 046e5dac8225..4a46713f66aa 100644
--- a/Documentation/user/virtio.rst
+++ b/Documentation/user/virtio.rst
@@ -34,8 +34,15 @@ specification. Therefore most operations including device initialization,
 queues configuration and buffer transfers are nearly identical. Both MMIO
 and non-legacy PCI are supported in barebox.
 
-The VirtIO spec defines a lots of VirtIO device types, however at present only
-block, network, console, input and RNG devices are supported.
+The VirtIO spec defines a lots of VirtIO device types. barebox currently
+supports the following:
+
+  * Block
+  * Network
+  * Console
+  * Random Number Generator (RNG)
+  * Input
+  * File System (virtfs/9p)
 
 Build Instructions
 ------------------
@@ -86,3 +93,24 @@ Depending on QEMU version used, it may be required to add
 
 .. _VirtIO: http://docs.oasis-open.org/virtio/virtio/v1.0/virtio-v1.0.pdf
 .. _qemu: https://www.qemu.org
+
+VirtFS
+~~~~~~
+
+The current working directory can be passed to the guest via the ``virtio-9p``
+device::
+
+  qemu-system-aarch64 -kernel barebox-dt-2nd.img -machine virt,highmem=off \
+                       -fsdev local,security_model=mapped,id=fsdev0,path=. \
+                       -device virtio-9p-pci,id=fs0,fsdev=fsdev0,mount_tag=hostshare
+                       -cpu cortex-a57 -m 1024M -nographic \
+                       -serial mon:stdio -trace file=/dev/null
+
+The file system can then be mounted in bareboxvia::
+
+  mkdir -p /mnt/9p/hostshare
+  mount -t 9p -o trans=virtio hostshare /mnt/9p/hostshare
+
+For ease of use, automounts units will automatically be created in ``/mnt/9p/``,
+so for a given ``mount_tag``, the file system wil automatically be mounted
+on first access to ``/mnt/9p/$mount_tag`` in barebox.
diff --git a/common/startup.c b/common/startup.c
index c9e99d47fbd7..49eaa4edc6d4 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -75,6 +75,9 @@ static int mount_root(void)
 		automount_add("/mnt/smhfs", "mount -t smhfs /dev/null /mnt/smhfs");
 	}
 
+	if (IS_ENABLED(CONFIG_9P_FS))
+		mkdir("/mnt/9p", 0);
+
 	return 0;
 }
 fs_initcall(mount_root);
diff --git a/fs/9p/Kconfig b/fs/9p/Kconfig
new file mode 100644
index 000000000000..0e43e2a4ac10
--- /dev/null
+++ b/fs/9p/Kconfig
@@ -0,0 +1,18 @@
+# SPDX-License-Identifier: GPL-2.0-only
+config 9P_FS
+	tristate "Plan 9 Resource Sharing Support (9P2000)"
+	depends on NET_9P
+	help
+	  If you say Y here, you will get experimental support for
+	  Plan 9 resource sharing via the 9P2000 protocol.
+
+	  See <http://v9fs.sf.net> for more information.
+
+	  If unsure, say N.
+
+config 9P_FS_WRITE
+	tristate "9P2000 Write Support"
+	depends on 9P_FS
+	select FS_WRITABLE
+	help
+	  Enable support for writing in 9P filesystems.
diff --git a/fs/9p/Makefile b/fs/9p/Makefile
new file mode 100644
index 000000000000..820e253f3f9d
--- /dev/null
+++ b/fs/9p/Makefile
@@ -0,0 +1,12 @@
+# SPDX-License-Identifier: GPL-2.0
+obj-$(CONFIG_9P_FS) := 9p.o
+
+9p-objs := \
+	vfs_super.o \
+	vfs_inode.o \
+	vfs_inode_dotl.o \
+	vfs_addr.o \
+	vfs_file.o \
+	vfs_dir.o \
+	v9fs.o \
+	fid.o
diff --git a/fs/9p/fid.c b/fs/9p/fid.c
new file mode 100644
index 000000000000..de754ca5fdc9
--- /dev/null
+++ b/fs/9p/fid.c
@@ -0,0 +1,295 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * V9FS FID Management
+ *
+ *  Copyright (C) 2007 by Latchesar Ionkov <lucho@ionkov.net>
+ *  Copyright (C) 2005, 2006 by Eric Van Hensbergen <ericvh@gmail.com>
+ */
+
+#include <linux/module.h>
+#include <linux/errno.h>
+#include <linux/minmax.h>
+#include <linux/fs.h>
+#include <linux/slab.h>
+#include <linux/sched.h>
+#include <net/9p/9p.h>
+#include <net/9p/client.h>
+
+#include "v9fs.h"
+#include "v9fs_vfs.h"
+#include "fid.h"
+
+static inline void __add_fid(struct dentry *dentry, struct p9_fid *fid)
+{
+	hlist_add_head(&fid->dlist, (struct hlist_head *)&dentry->d_fsdata);
+}
+
+/**
+ * v9fs_fid_add - add a fid to a dentry
+ * @dentry: dentry that the fid is being added to
+ * @pfid: fid to add, NULLed out
+ *
+ */
+void v9fs_fid_add(struct dentry *dentry, struct p9_fid **pfid)
+{
+	struct p9_fid *fid = *pfid;
+
+	spin_lock(&dentry->d_lock);
+	__add_fid(dentry, fid);
+	spin_unlock(&dentry->d_lock);
+
+	*pfid = NULL;
+}
+
+/**
+ * v9fs_fid_find_inode - search for an open fid off of the inode list
+ * @inode: return a fid pointing to a specific inode
+ * @want_writeable: only consider fids which are writeable
+ * @uid: return a fid belonging to the specified user
+ * @any: ignore uid as a selection criteria
+ *
+ */
+struct p9_fid *v9fs_fid_find_inode(struct inode *inode, bool want_writeable,
+	kuid_t uid, bool any)
+{
+	struct hlist_head *h;
+	struct p9_fid *fid, *ret = NULL;
+
+	p9_debug(P9_DEBUG_VFS, " inode: %p\n", inode);
+
+	spin_lock(&inode->i_lock);
+	h = (struct hlist_head *)&inode->i_private;
+	hlist_for_each_entry(fid, h, ilist) {
+		if (want_writeable) {
+			p9_debug(P9_DEBUG_VFS, " mode: %x not writeable?\n",
+						fid->mode);
+			continue;
+		}
+		p9_fid_get(fid);
+		ret = fid;
+		break;
+	}
+	spin_unlock(&inode->i_lock);
+	return ret;
+}
+
+/**
+ * v9fs_open_fid_add - add an open fid to an inode
+ * @inode: inode that the fid is being added to
+ * @pfid: fid to add, NULLed out
+ *
+ */
+
+void v9fs_open_fid_add(struct inode *inode, struct p9_fid **pfid)
+{
+	struct p9_fid *fid = *pfid;
+
+	spin_lock(&inode->i_lock);
+	hlist_add_head(&fid->ilist, (struct hlist_head *)&inode->i_private);
+	spin_unlock(&inode->i_lock);
+
+	*pfid = NULL;
+}
+
+
+/**
+ * v9fs_fid_find - retrieve a fid that belongs to the specified uid
+ * @dentry: dentry to look for fid in
+ * @uid: return fid that belongs to the specified user
+ * @any: if non-zero, return any fid associated with the dentry
+ *
+ */
+
+static struct p9_fid *v9fs_fid_find(struct dentry *dentry, kuid_t uid, int any)
+{
+	struct p9_fid *fid, *ret;
+
+	p9_debug(P9_DEBUG_VFS, " dentry: %s (%p) uid %d any %d\n",
+		 dentry->d_name.name, dentry, from_kuid(uid),
+		 any);
+	ret = NULL;
+	/* we'll recheck under lock if there's anything to look in */
+	if (dentry->d_fsdata) {
+		struct hlist_head *h = (struct hlist_head *)&dentry->d_fsdata;
+
+		spin_lock(&dentry->d_lock);
+		hlist_for_each_entry(fid, h, dlist) {
+			if (any || uid_eq(fid->uid, uid)) {
+				ret = fid;
+				p9_fid_get(ret);
+				break;
+			}
+		}
+		spin_unlock(&dentry->d_lock);
+	} else {
+		if (dentry->d_inode)
+			ret = v9fs_fid_find_inode(dentry->d_inode, false, uid, any);
+	}
+
+	return ret;
+}
+
+/*
+ * We need to hold v9ses->rename_sem as long as we hold references
+ * to returned path array. Array element contain pointers to
+ * dentry names.
+ */
+static int build_path_from_dentry(struct v9fs_session_info *v9ses,
+				  struct dentry *dentry, const unsigned char ***names)
+{
+	int n = 0, i;
+	const unsigned char **wnames;
+	struct dentry *ds;
+
+	for (ds = dentry; !IS_ROOT(ds); ds = ds->d_parent)
+		n++;
+
+	wnames = kmalloc_array(n, sizeof(char *), GFP_KERNEL);
+	if (!wnames)
+		goto err_out;
+
+	for (ds = dentry, i = (n-1); i >= 0; i--, ds = ds->d_parent)
+		wnames[i] = ds->d_name.name;
+
+	*names = wnames;
+	return n;
+err_out:
+	return -ENOMEM;
+}
+
+static struct p9_fid *v9fs_fid_lookup_with_uid(struct dentry *dentry,
+					       kuid_t uid, int any)
+{
+	struct dentry *ds;
+	const unsigned char **wnames, *uname;
+	int i, n, l, access;
+	struct v9fs_session_info *v9ses;
+	struct p9_fid *fid, *root_fid, *old_fid;
+
+	v9ses = v9fs_dentry2v9ses(dentry);
+	access = v9ses->flags & V9FS_ACCESS_MASK;
+	fid = v9fs_fid_find(dentry, uid, any);
+	if (fid)
+		return fid;
+	/*
+	 * we don't have a matching fid. To do a TWALK we need
+	 * parent fid. We need to prevent rename when we want to
+	 * look at the parent.
+	 */
+	down_read(&v9ses->rename_sem);
+	ds = dentry->d_parent;
+	fid = v9fs_fid_find(ds, uid, any);
+	if (fid) {
+		/* Found the parent fid do a lookup with that */
+		old_fid = fid;
+
+		fid = p9_client_walk(old_fid, 1, &dentry->d_name.name, 1);
+		p9_fid_put(old_fid);
+		goto fid_out;
+	}
+	up_read(&v9ses->rename_sem);
+
+	/* start from the root and try to do a lookup */
+	root_fid = v9fs_fid_find(dentry->d_sb->s_root, uid, any);
+	if (!root_fid) {
+		/* the user is not attached to the fs yet */
+		if (access == V9FS_ACCESS_SINGLE)
+			return ERR_PTR(-EPERM);
+
+		uname = NULL;
+
+		fid = p9_client_attach(v9ses->clnt, NULL, uname, uid,
+				       v9ses->aname);
+		if (IS_ERR(fid))
+			return fid;
+
+		root_fid = p9_fid_get(fid);
+		v9fs_fid_add(dentry->d_sb->s_root, &fid);
+	}
+	/* If we are root ourself just return that */
+	if (dentry->d_sb->s_root == dentry)
+		return root_fid;
+
+	/*
+	 * Do a multipath walk with attached root.
+	 * When walking parent we need to make sure we
+	 * don't have a parallel rename happening
+	 */
+	down_read(&v9ses->rename_sem);
+	n  = build_path_from_dentry(v9ses, dentry, &wnames);
+	if (n < 0) {
+		fid = ERR_PTR(n);
+		goto err_out;
+	}
+	fid = root_fid;
+	old_fid = root_fid;
+	i = 0;
+	while (i < n) {
+		l = min(n - i, P9_MAXWELEM);
+		/*
+		 * We need to hold rename lock when doing a multipath
+		 * walk to ensure none of the path components change
+		 */
+		fid = p9_client_walk(old_fid, l, &wnames[i],
+				     old_fid == root_fid /* clone */);
+		/* non-cloning walk will return the same fid */
+		if (fid != old_fid) {
+			p9_fid_put(old_fid);
+			old_fid = fid;
+		}
+		if (IS_ERR(fid)) {
+			kfree(wnames);
+			goto err_out;
+		}
+		i += l;
+	}
+	kfree(wnames);
+fid_out:
+	if (!IS_ERR(fid)) {
+		__add_fid(dentry, fid);
+		p9_fid_get(fid);
+	}
+err_out:
+	up_read(&v9ses->rename_sem);
+	return fid;
+}
+
+/**
+ * v9fs_fid_lookup - lookup for a fid, try to walk if not found
+ * @dentry: dentry to look for fid in
+ *
+ * Look for a fid in the specified dentry for the current user.
+ * If no fid is found, try to create one walking from a fid from the parent
+ * dentry (if it has one), or the root dentry. If the user haven't accessed
+ * the fs yet, attach now and walk from the root.
+ */
+
+struct p9_fid *v9fs_fid_lookup(struct dentry *dentry)
+{
+	kuid_t uid;
+	int  any, access;
+	struct v9fs_session_info *v9ses;
+
+	v9ses = v9fs_dentry2v9ses(dentry);
+	access = v9ses->flags & V9FS_ACCESS_MASK;
+	switch (access) {
+	case V9FS_ACCESS_SINGLE:
+	case V9FS_ACCESS_USER:
+	case V9FS_ACCESS_CLIENT:
+		uid = make_kuid(0);
+		any = 0;
+		break;
+
+	case V9FS_ACCESS_ANY:
+		uid = v9ses->uid;
+		any = 1;
+		break;
+
+	default:
+		uid = INVALID_UID;
+		any = 0;
+		break;
+	}
+	return v9fs_fid_lookup_with_uid(dentry, uid, any);
+}
+
diff --git a/fs/9p/fid.h b/fs/9p/fid.h
new file mode 100644
index 000000000000..b537ee8deb8f
--- /dev/null
+++ b/fs/9p/fid.h
@@ -0,0 +1,37 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * V9FS FID Management
+ *
+ *  Copyright (C) 2005 by Eric Van Hensbergen <ericvh@gmail.com>
+ */
+#ifndef FS_9P_FID_H
+#define FS_9P_FID_H
+#include <linux/list.h>
+#include "v9fs.h"
+
+struct p9_fid *v9fs_fid_find_inode(struct inode *inode, bool want_writeable,
+	kuid_t uid, bool any);
+struct p9_fid *v9fs_fid_lookup(struct dentry *dentry);
+static inline struct p9_fid *v9fs_parent_fid(struct dentry *dentry)
+{
+	return v9fs_fid_lookup(dentry->d_parent);
+}
+void v9fs_fid_add(struct dentry *dentry, struct p9_fid **fid);
+void v9fs_open_fid_add(struct inode *inode, struct p9_fid **fid);
+static inline struct p9_fid *clone_fid(struct p9_fid *fid)
+{
+	return IS_ERR(fid) ? fid :  p9_client_walk(fid, 0, NULL, 1);
+}
+static inline struct p9_fid *v9fs_fid_clone(struct dentry *dentry)
+{
+	struct p9_fid *fid, *nfid;
+
+	fid = v9fs_fid_lookup(dentry);
+	if (!fid || IS_ERR(fid))
+		return fid;
+
+	nfid = clone_fid(fid);
+	p9_fid_put(fid);
+	return nfid;
+}
+#endif
diff --git a/fs/9p/v9fs.c b/fs/9p/v9fs.c
new file mode 100644
index 000000000000..568c4f4bc946
--- /dev/null
+++ b/fs/9p/v9fs.c
@@ -0,0 +1,373 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ *  This file contains functions assisting in mapping VFS to 9P2000
+ *
+ *  Copyright (C) 2004-2008 by Eric Van Hensbergen <ericvh@gmail.com>
+ *  Copyright (C) 2002 by Ron Minnich <rminnich@lanl.gov>
+ */
+
+#define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
+
+#include <linux/module.h>
+#include <linux/errno.h>
+#include <linux/fs.h>
+#include <linux/sched.h>
+#include <linux/uidgid.h>
+#include <linux/kstrtox.h>
+#include <linux/parser.h>
+#include <linux/printk.h>
+#include <linux/slab.h>
+#include <net/9p/9p.h>
+#include <net/9p/client.h>
+#include <net/9p/transport.h>
+#include "v9fs.h"
+#include "v9fs_vfs.h"
+
+static DEFINE_SPINLOCK(v9fs_sessionlist_lock);
+static LIST_HEAD(v9fs_sessionlist);
+
+/*
+ * Option Parsing (code inspired by NFS code)
+ *  NOTE: each transport will parse its own options
+ */
+
+enum {
+	/* Options that take integer arguments */
+	Opt_debug, Opt_dfltuid, Opt_dfltgid, Opt_afid,
+	/* String options */
+	Opt_uname, Opt_remotename,
+	/* Access options */
+	Opt_access,
+	/* Error token */
+	Opt_err
+};
+
+static const match_table_t tokens = {
+	{Opt_debug, "debug=%x"},
+	{Opt_dfltuid, "dfltuid=%u"},
+	{Opt_dfltgid, "dfltgid=%u"},
+	{Opt_afid, "afid=%u"},
+	{Opt_uname, "uname=%s"},
+	{Opt_remotename, "aname=%s"},
+	{Opt_access, "access=%s"},
+	{Opt_err, NULL}
+};
+
+/*
+ * Display the mount options in /proc/mounts.
+ */
+int v9fs_show_options(struct dentry *root)
+{
+	struct v9fs_session_info *v9ses = root->d_sb->s_fs_info;
+
+	/* TODO: generate Linux bootarg */
+
+	if (v9ses->debug)
+		printf(",debug=%x", v9ses->debug);
+	printf(",dfltuid=%u",
+		   from_kuid(v9ses->dfltuid));
+	printf(",dfltgid=%u",
+		   from_kgid(v9ses->dfltgid));
+	if (v9ses->afid != ~0)
+		printf(",afid=%u", v9ses->afid);
+	if (strcmp(v9ses->uname, V9FS_DEFUSER) != 0)
+		printf(",uname=%s", v9ses->uname);
+	if (strcmp(v9ses->aname, V9FS_DEFANAME) != 0)
+		printf(",aname=%s", v9ses->aname);
+
+	switch (v9ses->flags & V9FS_ACCESS_MASK) {
+	case V9FS_ACCESS_USER:
+		printf(",access=user");
+		break;
+	case V9FS_ACCESS_ANY:
+		printf(",access=any");
+		break;
+	case V9FS_ACCESS_CLIENT:
+		printf(",access=client");
+		break;
+	case V9FS_ACCESS_SINGLE:
+		printf(",access=%u",
+			   from_kuid(v9ses->uid));
+		break;
+	}
+
+	return p9_show_client_options(v9ses->clnt);
+}
+
+/**
+ * v9fs_parse_options - parse mount options into session structure
+ * @v9ses: existing v9fs session information
+ * @opts: The mount option string
+ *
+ * Return 0 upon success, -ERRNO upon failure.
+ */
+
+static int v9fs_parse_options(struct v9fs_session_info *v9ses, char *opts)
+{
+	char *options, *tmp_options;
+	substring_t args[MAX_OPT_ARGS];
+	char *p;
+	int option = 0;
+	char *s;
+	int ret = 0;
+
+	/* setup defaults */
+	v9ses->afid = ~0;
+	v9ses->debug = 0;
+
+	if (!opts)
+		return 0;
+
+	tmp_options = kstrdup(opts, GFP_KERNEL);
+	if (!tmp_options) {
+		ret = -ENOMEM;
+		goto fail_option_alloc;
+	}
+	options = tmp_options;
+
+	while ((p = strsep(&options, ",")) != NULL) {
+		int token, r;
+
+		if (!*p)
+			continue;
+
+		token = match_token(p, tokens, args);
+		switch (token) {
+		case Opt_debug:
+			r = match_int(&args[0], &option);
+			if (r < 0) {
+				p9_debug(P9_DEBUG_ERROR,
+					 "integer field, but no integer?\n");
+				ret = r;
+			} else {
+				v9ses->debug = option;
+#ifdef CONFIG_NET_9P_DEBUG
+				p9_debug_level = option;
+#endif
+			}
+			break;
+
+		case Opt_dfltuid:
+			r = match_int(&args[0], &option);
+			if (r < 0) {
+				p9_debug(P9_DEBUG_ERROR,
+					 "integer field, but no integer?\n");
+				ret = r;
+				continue;
+			}
+			v9ses->dfltuid = make_kuid(option);
+			break;
+		case Opt_dfltgid:
+			r = match_int(&args[0], &option);
+			if (r < 0) {
+				p9_debug(P9_DEBUG_ERROR,
+					 "integer field, but no integer?\n");
+				ret = r;
+				continue;
+			}
+			v9ses->dfltgid = make_kgid(option);
+			break;
+		case Opt_afid:
+			r = match_int(&args[0], &option);
+			if (r < 0) {
+				p9_debug(P9_DEBUG_ERROR,
+					 "integer field, but no integer?\n");
+				ret = r;
+			} else {
+				v9ses->afid = option;
+			}
+			break;
+		case Opt_uname:
+			kfree(v9ses->uname);
+			v9ses->uname = match_strdup(&args[0]);
+			if (!v9ses->uname) {
+				ret = -ENOMEM;
+				goto free_and_return;
+			}
+			break;
+		case Opt_remotename:
+			kfree(v9ses->aname);
+			v9ses->aname = match_strdup(&args[0]);
+			if (!v9ses->aname) {
+				ret = -ENOMEM;
+				goto free_and_return;
+			}
+			break;
+		case Opt_access:
+			s = match_strdup(&args[0]);
+			if (!s) {
+				ret = -ENOMEM;
+				p9_debug(P9_DEBUG_ERROR,
+					 "problem allocating copy of access arg\n");
+				goto free_and_return;
+			}
+
+			v9ses->flags &= ~V9FS_ACCESS_MASK;
+			if (strcmp(s, "user") == 0)
+				v9ses->flags |= V9FS_ACCESS_USER;
+			else if (strcmp(s, "any") == 0)
+				v9ses->flags |= V9FS_ACCESS_ANY;
+			else if (strcmp(s, "client") == 0) {
+				v9ses->flags |= V9FS_ACCESS_CLIENT;
+			} else {
+				uid_t uid;
+
+				v9ses->flags |= V9FS_ACCESS_SINGLE;
+				r = kstrtouint(s, 10, &uid);
+				if (r) {
+					ret = r;
+					pr_info("Unknown access argument %s: %d\n",
+						s, r);
+					kfree(s);
+					continue;
+				}
+				v9ses->uid = make_kuid(uid);
+			}
+
+			kfree(s);
+			break;
+
+		default:
+			continue;
+		}
+	}
+
+free_and_return:
+	kfree(tmp_options);
+fail_option_alloc:
+	return ret;
+}
+
+/**
+ * v9fs_session_init - initialize session
+ * @v9ses: session information structure
+ * @dev_name: device being mounted
+ * @data: options
+ *
+ */
+
+struct p9_fid *v9fs_session_init(struct v9fs_session_info *v9ses,
+		  const char *dev_name, char *data)
+{
+	struct p9_fid *fid;
+	int rc = -ENOMEM;
+
+	v9ses->uname = kstrdup(V9FS_DEFUSER, GFP_KERNEL);
+	if (!v9ses->uname)
+		goto err_names;
+
+	v9ses->aname = kstrdup(V9FS_DEFANAME, GFP_KERNEL);
+	if (!v9ses->aname)
+		goto err_names;
+	init_rwsem(&v9ses->rename_sem);
+
+	v9ses->uid = INVALID_UID;
+	v9ses->dfltuid = V9FS_DEFUID;
+	v9ses->dfltgid = V9FS_DEFGID;
+
+	v9ses->clnt = p9_client_create(dev_name, data);
+	if (IS_ERR(v9ses->clnt)) {
+		rc = PTR_ERR(v9ses->clnt);
+		p9_debug(P9_DEBUG_ERROR, "problem initializing 9p client\n");
+		goto err_names;
+	}
+
+	v9ses->flags = V9FS_ACCESS_USER;
+
+	v9ses->flags = V9FS_ACCESS_CLIENT;
+	v9ses->flags |= V9FS_PROTO_2000L;
+
+	rc = v9fs_parse_options(v9ses, data);
+	if (rc < 0)
+		goto err_clnt;
+
+	v9ses->maxdata = v9ses->clnt->msize - P9_IOHDRSZ;
+
+	fid = p9_client_attach(v9ses->clnt, NULL, v9ses->uname, INVALID_UID,
+							v9ses->aname);
+	if (IS_ERR(fid)) {
+		rc = PTR_ERR(fid);
+		p9_debug(P9_DEBUG_ERROR, "cannot attach\n");
+		goto err_clnt;
+	}
+
+	if ((v9ses->flags & V9FS_ACCESS_MASK) == V9FS_ACCESS_SINGLE)
+		fid->uid = v9ses->uid;
+	else
+		fid->uid = INVALID_UID;
+
+	spin_lock(&v9fs_sessionlist_lock);
+	list_add(&v9ses->slist, &v9fs_sessionlist);
+	spin_unlock(&v9fs_sessionlist_lock);
+
+	return fid;
+
+err_clnt:
+	p9_client_destroy(v9ses->clnt);
+err_names:
+	kfree(v9ses->uname);
+	kfree(v9ses->aname);
+	return ERR_PTR(rc);
+}
+
+/**
+ * v9fs_session_close - shutdown a session
+ * @v9ses: session information structure
+ *
+ */
+
+void v9fs_session_close(struct v9fs_session_info *v9ses)
+{
+	if (v9ses->clnt) {
+		p9_client_destroy(v9ses->clnt);
+		v9ses->clnt = NULL;
+	}
+
+	kfree(v9ses->uname);
+	kfree(v9ses->aname);
+
+	spin_lock(&v9fs_sessionlist_lock);
+	list_del(&v9ses->slist);
+	spin_unlock(&v9fs_sessionlist_lock);
+}
+
+/**
+ * v9fs_session_cancel - terminate a session
+ * @v9ses: session to terminate
+ *
+ * mark transport as disconnected and cancel all pending requests.
+ */
+
+void v9fs_session_cancel(struct v9fs_session_info *v9ses)
+{
+	p9_debug(P9_DEBUG_ERROR, "cancel session %p\n", v9ses);
+	p9_client_disconnect(v9ses->clnt);
+}
+
+/**
+ * v9fs_session_begin_cancel - Begin terminate of a session
+ * @v9ses: session to terminate
+ *
+ * After this call we don't allow any request other than clunk.
+ */
+
+void v9fs_session_begin_cancel(struct v9fs_session_info *v9ses)
+{
+	p9_debug(P9_DEBUG_ERROR, "begin cancel session %p\n", v9ses);
+	p9_client_begin_disconnect(v9ses->clnt);
+}
+
+static int init_v9fs(void)
+{
+	pr_info("Installing v9fs 9p2000 file system support\n");
+	/* TODO: Setup list of registered transport modules */
+
+	return register_fs_driver(&v9fs_driver);
+}
+coredevice_initcall(init_v9fs);
+
+MODULE_AUTHOR("Latchesar Ionkov <lucho@ionkov.net>");
+MODULE_AUTHOR("Eric Van Hensbergen <ericvh@gmail.com>");
+MODULE_AUTHOR("Ron Minnich <rminnich@lanl.gov>");
+MODULE_DESCRIPTION("9P Client File System");
+MODULE_LICENSE("GPL");
diff --git a/fs/9p/v9fs.h b/fs/9p/v9fs.h
new file mode 100644
index 000000000000..2100fbcfa5de
--- /dev/null
+++ b/fs/9p/v9fs.h
@@ -0,0 +1,183 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * V9FS definitions.
+ *
+ *  Copyright (C) 2004-2008 by Eric Van Hensbergen <ericvh@gmail.com>
+ *  Copyright (C) 2002 by Ron Minnich <rminnich@lanl.gov>
+ */
+#ifndef FS_9P_V9FS_H
+#define FS_9P_V9FS_H
+
+#include <linux/types.h>
+#include <linux/uidgid.h>
+#include <linux/netfs.h>
+#include <fs.h>
+
+/**
+ * enum p9_session_flags - option flags for each 9P session
+ * @V9FS_PROTO_2000U: whether or not to use 9P2000.u extensions
+ * @V9FS_PROTO_2000L: whether or not to use 9P2000.l extensions
+ * @V9FS_ACCESS_SINGLE: only the mounting user can access the hierarchy
+ * @V9FS_ACCESS_USER: a new attach will be issued for every user (default)
+ * @V9FS_ACCESS_CLIENT: Just like user, but access check is performed on client.
+ * @V9FS_ACCESS_ANY: use a single attach for all users
+ * @V9FS_ACCESS_MASK: bit mask of different ACCESS options
+ *
+ * Session flags reflect options selected by users at mount time
+ */
+#define	V9FS_ACCESS_ANY (V9FS_ACCESS_SINGLE | \
+			 V9FS_ACCESS_USER |   \
+			 V9FS_ACCESS_CLIENT)
+#define V9FS_ACCESS_MASK V9FS_ACCESS_ANY
+
+enum p9_session_flags {
+	V9FS_PROTO_2000U    = 0x01,
+	V9FS_PROTO_2000L    = 0x02,
+	V9FS_ACCESS_SINGLE  = 0x04,
+	V9FS_ACCESS_USER    = 0x08,
+	V9FS_ACCESS_CLIENT  = 0x10,
+	V9FS_SYNC           = 0x200
+};
+
+/**
+ * enum p9_cache_shortcuts - human readable cache preferences
+ * @CACHE_SC_NONE: disable all caches
+ *
+ */
+
+enum p9_cache_shortcuts {
+	CACHE_SC_NONE       = 0b00000000,
+};
+
+/**
+ * enum p9_cache_bits - possible values of ->cache
+ * @CACHE_NONE: caches disabled
+ *
+ */
+
+enum p9_cache_bits {
+	CACHE_NONE          = 0b00000000,
+};
+
+/**
+ * struct v9fs_session_info - per-instance session information
+ * @flags: session options of type &p9_session_flags
+ * @debug: debug level
+ * @afid: authentication handle
+ * @cache: cache mode of type &p9_cache_bits
+ * @cachetag: the tag of the cache associated with this session
+ * @fscache: session cookie associated with FS-Cache
+ * @uname: string user name to mount hierarchy as
+ * @aname: mount specifier for remote hierarchy
+ * @maxdata: maximum data to be sent/recvd per protocol message
+ * @dfltuid: default numeric userid to mount hierarchy as
+ * @dfltgid: default numeric groupid to mount hierarchy as
+ * @uid: if %V9FS_ACCESS_SINGLE, the numeric uid which mounted the hierarchy
+ * @clnt: reference to 9P network client instantiated for this session
+ * @slist: reference to list of registered 9p sessions
+ *
+ * This structure holds state for each session instance established during
+ * a sys_mount() .
+ *
+ * Bugs: there seems to be a lot of state which could be condensed and/or
+ * removed.
+ */
+
+struct v9fs_session_info {
+	/* options */
+	unsigned int flags;
+	unsigned short debug;
+	unsigned int afid;
+
+	char *uname;		/* user name to mount as */
+	char *aname;		/* name of remote hierarchy being mounted */
+	unsigned int maxdata;	/* max data for client interface */
+	kuid_t dfltuid;		/* default uid/muid for legacy support */
+	kgid_t dfltgid;		/* default gid for legacy support */
+	kuid_t uid;		/* if ACCESS_SINGLE, the uid that has access */
+	struct p9_client *clnt;	/* 9p client */
+	struct list_head slist; /* list of sessions registered with v9fs */
+	struct rw_semaphore rename_sem;
+	long session_lock_timeout; /* retry interval for blocking locks */
+};
+
+struct v9fs_inode {
+	struct netfs_inode netfs; /* Netfslib context and vfs inode */
+	struct p9_qid qid;
+};
+
+static inline struct v9fs_inode *V9FS_I(const struct inode *inode)
+{
+	return container_of(inode, struct v9fs_inode, netfs.inode);
+}
+
+struct dentry;
+struct inode;
+struct super_block;
+
+extern int v9fs_show_options(struct dentry *root);
+
+struct p9_fid *v9fs_session_init(struct v9fs_session_info *v9ses,
+				 const char *dev_name, char *data);
+extern void v9fs_session_close(struct v9fs_session_info *v9ses);
+extern void v9fs_session_cancel(struct v9fs_session_info *v9ses);
+extern void v9fs_session_begin_cancel(struct v9fs_session_info *v9ses);
+extern struct dentry *v9fs_vfs_lookup(struct inode *dir, struct dentry *dentry,
+				      unsigned int flags);
+extern int v9fs_vfs_unlink(struct inode *i, struct dentry *d);
+extern int v9fs_vfs_rmdir(struct inode *i, struct dentry *d);
+extern const struct inode_operations v9fs_dir_inode_operations_dotl;
+extern const struct inode_operations v9fs_file_inode_operations_dotl;
+extern const struct inode_operations v9fs_symlink_inode_operations_dotl;
+extern struct inode *v9fs_fid_iget_dotl(struct super_block *sb,
+						struct p9_fid *fid, bool new);
+
+int v9fs_read(struct device *dev, struct file *f, void *buf,
+	      size_t insize);
+
+int v9fs_write(struct device *dev, struct file *f, const void *buf,
+	       size_t insize);
+
+/* other default globals */
+#define V9FS_PORT	564
+#define V9FS_DEFUSER	"nobody"
+#define V9FS_DEFANAME	""
+#define V9FS_DEFUID	KUIDT_INIT(-2)
+#define V9FS_DEFGID	KGIDT_INIT(-2)
+
+static inline struct v9fs_session_info *v9fs_inode2v9ses(struct inode *inode)
+{
+	return inode->i_sb->s_fs_info;
+}
+
+static inline struct v9fs_session_info *v9fs_dentry2v9ses(struct dentry *dentry)
+{
+	return dentry->d_sb->s_fs_info;
+}
+
+static inline int v9fs_proto_dotu(struct v9fs_session_info *v9ses)
+{
+	return false;
+}
+
+static inline int v9fs_proto_dotl(struct v9fs_session_info *v9ses)
+{
+	return true;
+}
+
+/**
+ * v9fs_get_inode_from_fid - Helper routine to populate an inode by
+ * issuing a attribute request
+ * @v9ses: session information
+ * @fid: fid to issue attribute request for
+ * @sb: superblock on which to create inode
+ *
+ */
+static inline struct inode *
+v9fs_get_inode_from_fid(struct v9fs_session_info *v9ses, struct p9_fid *fid,
+			struct super_block *sb, bool new)
+{
+	return v9fs_fid_iget_dotl(sb, fid, new);
+}
+
+#endif
diff --git a/fs/9p/v9fs_vfs.h b/fs/9p/v9fs_vfs.h
new file mode 100644
index 000000000000..aa97032521b8
--- /dev/null
+++ b/fs/9p/v9fs_vfs.h
@@ -0,0 +1,74 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * V9FS VFS extensions.
+ *
+ *  Copyright (C) 2004 by Eric Van Hensbergen <ericvh@gmail.com>
+ *  Copyright (C) 2002 by Ron Minnich <rminnich@lanl.gov>
+ */
+#ifndef FS_9P_V9FS_VFS_H
+#define FS_9P_V9FS_VFS_H
+
+#include <fs.h>
+#include <linux/netfs.h>
+
+/* plan9 semantics are that created files are implicitly opened.
+ * But linux semantics are that you call create, then open.
+ * the plan9 approach is superior as it provides an atomic
+ * open.
+ * we track the create fid here. When the file is opened, if fidopen is
+ * non-zero, we use the fid and can skip some steps.
+ * there may be a better way to do this, but I don't know it.
+ * one BAD way is to clunk the fid on create, then open it again:
+ * you lose the atomicity of file open
+ */
+
+extern struct fs_driver v9fs_driver;
+struct v9fs_session_info;
+struct p9_qid;
+struct p9_fid;
+struct p9_stat_dotl;
+struct p9_wstat;
+
+extern const struct file_operations v9fs_file_operations_dotl;
+extern const struct file_operations v9fs_dir_operations_dotl;
+
+struct super_block;
+struct inode *v9fs_alloc_inode(struct super_block *sb);
+void v9fs_free_inode(struct inode *inode);
+void v9fs_set_netfs_context(struct inode *inode);
+int v9fs_mount(struct device *dev);
+void v9fs_umount(struct device *dev);
+int v9fs_init_inode(struct v9fs_session_info *v9ses,
+		    struct inode *inode, struct p9_qid *qid, umode_t mode, dev_t rdev);
+#if (BITS_PER_LONG == 32)
+#define QID2INO(q) ((ino_t) (((q)->path+2) ^ (((q)->path) >> 32)))
+#else
+#define QID2INO(q) ((ino_t) ((q)->path+2))
+#endif
+
+void v9fs_stat2inode_dotl(struct p9_stat_dotl *stat, struct inode *inode);
+int v9fs_dir_release(struct inode *inode, struct file *file);
+int v9fs_file_open(struct inode *inode, struct file *file);
+
+int v9fs_file_fsync_dotl(struct device *dev, struct file *filp);
+static inline void v9fs_invalidate_inode_attr(struct inode *inode)
+{
+	netfs_invalidate_inode_attr(netfs_inode(inode));
+}
+
+int v9fs_open_to_dotl_flags(int flags);
+
+static inline void v9fs_i_size_write(struct inode *inode, loff_t i_size)
+{
+	/*
+	 * 32-bit need the lock, concurrent updates could break the
+	 * sequences and make i_size_read() loop forever.
+	 * 64-bit updates are atomic and can skip the locking.
+	 */
+	if (sizeof(i_size) > sizeof(long))
+		spin_lock(&inode->i_lock);
+	i_size_write(inode, i_size);
+	if (sizeof(i_size) > sizeof(long))
+		spin_unlock(&inode->i_lock);
+}
+#endif
diff --git a/fs/9p/vfs_addr.c b/fs/9p/vfs_addr.c
new file mode 100644
index 000000000000..70bb1a04f83c
--- /dev/null
+++ b/fs/9p/vfs_addr.c
@@ -0,0 +1,111 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * This file contians vfs address (mmap) ops for 9P2000.
+ *
+ *  Copyright (C) 2005 by Eric Van Hensbergen <ericvh@gmail.com>
+ *  Copyright (C) 2002 by Ron Minnich <rminnich@lanl.gov>
+ */
+
+#include <linux/module.h>
+#include <linux/errno.h>
+#include <linux/fs.h>
+#include <linux/stat.h>
+#include <linux/string.h>
+#include <linux/pagemap.h>
+#include <linux/sched.h>
+#include <linux/uio.h>
+#include <linux/netfs.h>
+#include <net/9p/9p.h>
+#include <net/9p/client.h>
+
+#include "v9fs.h"
+#include "v9fs_vfs.h"
+#include "fid.h"
+
+/**
+ * v9fs_init_request - Initialise a request
+ * @rreq: The read request
+ * @file: The file being read from
+ */
+static int v9fs_init_request(struct netfs_io_request *rreq, struct file *file)
+{
+	struct p9_fid *fid;
+	bool writing = rreq->origin == NETFS_WRITETHROUGH;
+
+	if (file) {
+		fid = file->private_data;
+		if (!fid)
+			goto no_fid;
+		p9_fid_get(fid);
+	} else {
+		fid = v9fs_fid_find_inode(rreq->inode, writing, INVALID_UID, true);
+		if (!fid)
+			goto no_fid;
+	}
+
+	rreq->netfs_priv = fid;
+	return 0;
+
+no_fid:
+	WARN_ONCE(1, "folio expected an open fid inode->i_ino=%lx\n",
+		  rreq->inode->i_ino);
+	return -EINVAL;
+}
+
+/**
+ * v9fs_free_request - Cleanup request initialized by v9fs_init_rreq
+ * @rreq: The I/O request to clean up
+ */
+static void v9fs_free_request(struct netfs_io_request *rreq)
+{
+	struct p9_fid *fid = rreq->netfs_priv;
+
+	p9_fid_put(fid);
+}
+
+int v9fs_read(struct device *dev, struct file *f, void *buf,
+	      size_t insize)
+{
+	struct netfs_io_request rreq = {
+		.origin = NETFS_READPAGE,
+		.inode = f->f_inode,
+	};
+	struct kvec kv = {.iov_base = buf, .iov_len = insize};
+	struct iov_iter to;
+	int len, err;
+
+	err = v9fs_init_request(&rreq, f);
+	if (err)
+		return err;
+
+	iov_iter_kvec(&to, ITER_DEST, &kv, 1, insize);
+
+	len = p9_client_read(rreq.netfs_priv, f->f_pos, &to, &err);
+
+	v9fs_free_request(&rreq);
+	return len ?: err;
+}
+
+int v9fs_write(struct device *dev, struct file *f, const void *buf,
+	       size_t insize)
+{
+	struct netfs_io_request rreq = {
+		.origin = NETFS_WRITETHROUGH,
+		.inode = f->f_inode,
+	};
+	struct kvec kv = {.iov_base = (void *)buf, .iov_len = insize};
+	struct iov_iter from;
+	int len, err;
+
+	err = v9fs_init_request(&rreq, f);
+	if (err)
+		return err;
+
+	iov_iter_kvec(&from, ITER_SOURCE, &kv, 1, insize);
+
+	len = p9_client_write(rreq.netfs_priv, f->f_pos, &from, &err);
+
+	v9fs_free_request(&rreq);
+	return len ?: err;
+}
+
diff --git a/fs/9p/vfs_dir.c b/fs/9p/vfs_dir.c
new file mode 100644
index 000000000000..179d83620c22
--- /dev/null
+++ b/fs/9p/vfs_dir.c
@@ -0,0 +1,172 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * This file contains vfs directory ops for the 9P2000 protocol.
+ *
+ *  Copyright (C) 2004 by Eric Van Hensbergen <ericvh@gmail.com>
+ *  Copyright (C) 2002 by Ron Minnich <rminnich@lanl.gov>
+ */
+
+#include <linux/module.h>
+#include <linux/errno.h>
+#include <linux/fs.h>
+#include <linux/stat.h>
+#include <linux/string.h>
+#include <linux/sched.h>
+#include <linux/slab.h>
+#include <linux/uio.h>
+#include <net/9p/9p.h>
+#include <net/9p/client.h>
+
+#include "v9fs.h"
+#include "v9fs_vfs.h"
+#include "fid.h"
+
+/**
+ * struct p9_rdir - readdir accounting
+ * @head: start offset of current dirread buffer
+ * @tail: end offset of current dirread buffer
+ * @buf: dirread buffer
+ *
+ * private structure for keeping track of readdir
+ * allocated on demand
+ */
+
+struct p9_rdir {
+	int head;
+	int tail;
+	uint8_t buf[];
+};
+
+/**
+ * dt_type - return file type
+ * @mistat: mistat structure
+ *
+ */
+
+static inline int dt_type(struct p9_wstat *mistat)
+{
+	unsigned long perm = mistat->mode;
+	int rettype = DT_REG;
+
+	if (perm & P9_DMDIR)
+		rettype = DT_DIR;
+	if (perm & P9_DMSYMLINK)
+		rettype = DT_LNK;
+
+	return rettype;
+}
+
+/**
+ * v9fs_alloc_rdir_buf - Allocate buffer used for read and readdir
+ * @filp: opened file structure
+ * @buflen: Length in bytes of buffer to allocate
+ *
+ */
+
+static struct p9_rdir *v9fs_alloc_rdir_buf(struct file *filp, int buflen)
+{
+	struct p9_fid *fid = filp->private_data;
+
+	if (!fid->rdir)
+		fid->rdir = kzalloc(sizeof(struct p9_rdir) + buflen, GFP_KERNEL);
+	return fid->rdir;
+}
+
+/**
+ * v9fs_dir_readdir_dotl - iterate through a directory
+ * @file: opened file structure
+ * @ctx: actor we feed the entries to
+ *
+ */
+static int v9fs_dir_readdir_dotl(struct file *file, struct dir_context *ctx)
+{
+	int err = 0;
+	struct p9_fid *fid;
+	int buflen;
+	struct p9_rdir *rdir;
+	struct p9_dirent curdirent;
+
+	p9_debug(P9_DEBUG_VFS, "name %s\n", file->path);
+	fid = file->private_data;
+
+	buflen = fid->clnt->msize - P9_READDIRHDRSZ;
+
+	rdir = v9fs_alloc_rdir_buf(file, buflen);
+	if (!rdir)
+		return -ENOMEM;
+
+	while (1) {
+		if (rdir->tail == rdir->head) {
+			err = p9_client_readdir(fid, rdir->buf, buflen,
+						ctx->pos);
+			if (err <= 0)
+				return err;
+
+			rdir->head = 0;
+			rdir->tail = err;
+		}
+
+		while (rdir->head < rdir->tail) {
+			err = p9dirent_read(fid->clnt, rdir->buf + rdir->head,
+					    rdir->tail - rdir->head,
+					    &curdirent);
+			if (err < 0) {
+				p9_debug(P9_DEBUG_VFS, "returned %d\n", err);
+				return -EIO;
+			}
+
+			dir_emit(ctx, curdirent.d_name,
+				 strlen(curdirent.d_name),
+				 QID2INO(&curdirent.qid),
+				 curdirent.d_type);
+
+			ctx->pos = curdirent.d_off;
+			rdir->head += err;
+		}
+	}
+}
+
+
+/**
+ * v9fs_dir_release - close a directory or a file
+ * @inode: inode of the directory or file
+ * @filp: file pointer to a directory or file
+ *
+ */
+
+int v9fs_dir_release(struct inode *inode, struct file *filp)
+{
+	struct p9_fid *fid;
+	int retval = 0, put_err;
+
+	fid = filp->private_data;
+	p9_debug(P9_DEBUG_VFS, "inode: %p filp: %p fid: %d\n",
+		 inode, filp, fid ? fid->fid : -1);
+
+	if (fid) {
+		spin_lock(&inode->i_lock);
+		hlist_del(&fid->ilist);
+		spin_unlock(&inode->i_lock);
+		put_err = p9_fid_put(fid);
+		retval = retval < 0 ? retval : put_err;
+	}
+
+	return retval;
+}
+
+int v9fs_file_fsync_dotl(struct device *dev, struct file *filp)
+{
+        struct p9_fid *fid;
+
+        p9_debug(P9_DEBUG_VFS, "filp %p datasync\n", filp);
+
+        fid = filp->private_data;
+
+        return p9_client_fsync(fid, true);
+}
+
+const struct file_operations v9fs_dir_operations_dotl = {
+	.iterate = v9fs_dir_readdir_dotl,
+	.open = v9fs_file_open,
+	.release = v9fs_dir_release,
+};
diff --git a/fs/9p/vfs_file.c b/fs/9p/vfs_file.c
new file mode 100644
index 000000000000..2a44a773263c
--- /dev/null
+++ b/fs/9p/vfs_file.c
@@ -0,0 +1,67 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * This file contians vfs file ops for 9P2000.
+ *
+ *  Copyright (C) 2004 by Eric Van Hensbergen <ericvh@gmail.com>
+ *  Copyright (C) 2002 by Ron Minnich <rminnich@lanl.gov>
+ */
+
+#include <linux/module.h>
+#include <linux/errno.h>
+#include <linux/fs.h>
+#include <linux/sched.h>
+#include <linux/stat.h>
+#include <linux/string.h>
+#include <linux/list.h>
+#include <linux/pagemap.h>
+#include <linux/uaccess.h>
+#include <linux/uio.h>
+#include <linux/slab.h>
+#include <net/9p/9p.h>
+#include <net/9p/client.h>
+
+#include "v9fs.h"
+#include "v9fs_vfs.h"
+#include "fid.h"
+
+/**
+ * v9fs_file_open - open a file (or directory)
+ * @inode: inode to be opened
+ * @file: file being opened
+ *
+ */
+
+int v9fs_file_open(struct inode *inode, struct file *file)
+{
+	int err;
+	struct v9fs_session_info *v9ses;
+	struct p9_fid *fid;
+	int omode;
+
+	p9_debug(P9_DEBUG_VFS, "inode: %p file: %p\n", inode, file);
+	v9ses = v9fs_inode2v9ses(inode);
+	omode = v9fs_open_to_dotl_flags(file->f_flags);
+	fid = file->private_data;
+
+	if (!fid) {
+		fid = v9fs_fid_clone(file->f_dentry);
+		if (IS_ERR(fid))
+			return PTR_ERR(fid);
+
+		err = p9_client_open(fid, omode);
+		if (err < 0) {
+			p9_fid_put(fid);
+			return err;
+		}
+
+		file->private_data = fid;
+	}
+
+	v9fs_open_fid_add(inode, &fid);
+	return 0;
+}
+
+const struct file_operations v9fs_file_operations_dotl = {
+	.open = v9fs_file_open,
+	.release = v9fs_dir_release,
+};
diff --git a/fs/9p/vfs_inode.c b/fs/9p/vfs_inode.c
new file mode 100644
index 000000000000..458442c4692b
--- /dev/null
+++ b/fs/9p/vfs_inode.c
@@ -0,0 +1,279 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * This file contains vfs inode ops for the 9P2000 protocol.
+ *
+ *  Copyright (C) 2004 by Eric Van Hensbergen <ericvh@gmail.com>
+ *  Copyright (C) 2002 by Ron Minnich <rminnich@lanl.gov>
+ */
+
+#define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
+
+#include <linux/module.h>
+#include <linux/errno.h>
+#include <linux/fs.h>
+#include <linux/pagemap.h>
+#include <linux/netfs.h>
+#include <linux/stat.h>
+#include <linux/string.h>
+#include <linux/namei.h>
+#include <linux/sched.h>
+#include <linux/slab.h>
+#include <net/9p/9p.h>
+#include <net/9p/client.h>
+
+#include "v9fs.h"
+#include "v9fs_vfs.h"
+#include "fid.h"
+
+/**
+ * v9fs_alloc_inode - helper function to allocate an inode
+ * @sb: The superblock to allocate the inode from
+ */
+struct inode *v9fs_alloc_inode(struct super_block *sb)
+{
+	struct v9fs_inode *v9inode;
+
+	v9inode = xzalloc(sizeof(*v9inode));
+
+	mutex_init(&v9inode->v_mutex);
+	return &v9inode->netfs.inode;
+}
+
+/**
+ * v9fs_free_inode - destroy an inode
+ * @inode: The inode to be freed
+ */
+
+void v9fs_free_inode(struct inode *inode)
+{
+	struct v9fs_inode *v9inode = V9FS_I(inode);
+
+	free(v9inode);
+}
+
+/*
+ * Set parameters for the netfs library
+ */
+void v9fs_set_netfs_context(struct inode *inode)
+{
+	struct v9fs_inode *v9inode = V9FS_I(inode);
+	netfs_inode_init(&v9inode->netfs);
+}
+
+int v9fs_init_inode(struct v9fs_session_info *v9ses,
+		    struct inode *inode, struct p9_qid *qid, umode_t mode, dev_t rdev)
+{
+	int err = 0;
+	struct v9fs_inode *v9inode = V9FS_I(inode);
+
+	v9inode->qid = *qid;
+
+	inode_init_owner(inode, NULL, mode);
+	inode->i_blocks = 0;
+	inode->i_private = NULL;
+
+	switch (mode & S_IFMT) {
+	case S_IFIFO:
+	case S_IFBLK:
+	case S_IFCHR:
+	case S_IFSOCK:
+	case S_IFREG:
+		inode->i_op = &v9fs_file_inode_operations_dotl;
+		inode->i_fop = &v9fs_file_operations_dotl;
+
+		break;
+	case S_IFLNK:
+		inode->i_op = &v9fs_symlink_inode_operations_dotl;
+
+		break;
+	case S_IFDIR:
+		inc_nlink(inode);
+		inode->i_op = &v9fs_dir_inode_operations_dotl;
+		inode->i_fop = &v9fs_dir_operations_dotl;
+
+		break;
+	default:
+		p9_debug(P9_DEBUG_ERROR, "BAD mode 0x%hx S_IFMT 0x%x\n",
+			 mode, mode & S_IFMT);
+		err = -EINVAL;
+		goto error;
+	}
+error:
+	return err;
+
+}
+
+/**
+ * v9fs_at_to_dotl_flags- convert Linux specific AT flags to
+ * plan 9 AT flag.
+ * @flags: flags to convert
+ */
+static int v9fs_at_to_dotl_flags(int flags)
+{
+	int rflags = 0;
+
+	if (flags & AT_REMOVEDIR)
+		rflags |= P9_DOTL_AT_REMOVEDIR;
+
+	return rflags;
+}
+
+/**
+ * v9fs_dec_count - helper functon to drop i_nlink.
+ *
+ * If a directory had nlink <= 2 (including . and ..), then we should not drop
+ * the link count, which indicates the underlying exported fs doesn't maintain
+ * nlink accurately. e.g.
+ * - overlayfs sets nlink to 1 for merged dir
+ * - ext4 (with dir_nlink feature enabled) sets nlink to 1 if a dir has more
+ *   than EXT4_LINK_MAX (65000) links.
+ *
+ * @inode: inode whose nlink is being dropped
+ */
+static void v9fs_dec_count(struct inode *inode)
+{
+	if (!S_ISDIR(inode->i_mode) || inode->i_nlink > 2) {
+		if (inode->i_nlink) {
+			drop_nlink(inode);
+		} else {
+			p9_debug(P9_DEBUG_VFS,
+						"WARNING: unexpected i_nlink zero %d inode %ld\n",
+						inode->i_nlink, inode->i_ino);
+		}
+	}
+}
+
+/**
+ * v9fs_remove - helper function to remove files and directories
+ * @dir: directory inode that is being deleted
+ * @dentry:  dentry that is being deleted
+ * @flags: removing a directory
+ *
+ */
+
+static int v9fs_remove(struct inode *dir, struct dentry *dentry, int flags)
+{
+	struct inode *inode;
+	int retval = -EOPNOTSUPP;
+	struct p9_fid *v9fid, *dfid;
+	struct v9fs_session_info *v9ses;
+
+	p9_debug(P9_DEBUG_VFS, "inode: %p dentry: %p rmdir: %x\n",
+		 dir, dentry, flags);
+
+	v9ses = v9fs_inode2v9ses(dir);
+	inode = d_inode(dentry);
+	dfid = v9fs_parent_fid(dentry);
+	if (IS_ERR(dfid)) {
+		retval = PTR_ERR(dfid);
+		p9_debug(P9_DEBUG_VFS, "fid lookup failed %d\n", retval);
+		return retval;
+	}
+	retval = p9_client_unlinkat(dfid, dentry->d_name.name,
+				    v9fs_at_to_dotl_flags(flags));
+	p9_fid_put(dfid);
+	if (retval == -EOPNOTSUPP) {
+		/* Try the one based on path */
+		v9fid = v9fs_fid_clone(dentry);
+		if (IS_ERR(v9fid))
+			return PTR_ERR(v9fid);
+		retval = p9_client_remove(v9fid);
+	}
+	if (!retval) {
+		/*
+		 * directories on unlink should have zero
+		 * link count
+		 */
+		if (flags & AT_REMOVEDIR) {
+			clear_nlink(inode);
+			v9fs_dec_count(dir);
+		} else
+			v9fs_dec_count(inode);
+
+		v9fs_invalidate_inode_attr(inode);
+		v9fs_invalidate_inode_attr(dir);
+	}
+	return retval;
+}
+
+/**
+ * v9fs_vfs_lookup - VFS lookup hook to "walk" to a new inode
+ * @dir:  inode that is being walked from
+ * @dentry: dentry that is being walked to?
+ * @flags: lookup flags (unused)
+ *
+ */
+
+struct dentry *v9fs_vfs_lookup(struct inode *dir, struct dentry *dentry,
+			       unsigned int flags)
+{
+	struct v9fs_session_info *v9ses;
+	struct p9_fid *dfid, *fid;
+	struct inode *inode;
+	const unsigned char *name;
+
+	p9_debug(P9_DEBUG_VFS, "dir: %p dentry: (%s) %p flags: %x\n",
+		 dir, dentry->d_name.name, dentry, flags);
+
+	if (dentry->d_name.len > NAME_MAX)
+		return ERR_PTR(-ENAMETOOLONG);
+
+	v9ses = v9fs_inode2v9ses(dir);
+	/* We can walk d_parent because we hold the dir->i_mutex */
+	dfid = v9fs_parent_fid(dentry);
+	if (IS_ERR(dfid))
+		return ERR_CAST(dfid);
+
+	/*
+	 * Make sure we don't use a wrong inode due to parallel
+	 * unlink. For cached mode create calls request for new
+	 * inode. But with cache disabled, lookup should do this.
+	 */
+	name = dentry->d_name.name;
+	fid = p9_client_walk(dfid, 1, &name, 1);
+	p9_fid_put(dfid);
+	if (fid == ERR_PTR(-ENOENT))
+		inode = NULL;
+	else if (IS_ERR(fid))
+		inode = ERR_CAST(fid);
+	else
+		inode = v9fs_get_inode_from_fid(v9ses, fid, dir->i_sb, false);
+	/*
+	 * If we had a rename on the server and a parallel lookup
+	 * for the new name, then make sure we instantiate with
+	 * the new name. ie look up for a/b, while on server somebody
+	 * moved b under k and client parallely did a lookup for
+	 * k/b.
+	 */
+	if (!IS_ERR(inode)) {
+		d_add(dentry, inode);
+		if (!IS_ERR(fid))
+			v9fs_fid_add(dentry, &fid);
+	}
+
+	return NULL;
+}
+
+/**
+ * v9fs_vfs_unlink - VFS unlink hook to delete an inode
+ * @i:  inode that is being unlinked
+ * @d: dentry that is being unlinked
+ *
+ */
+
+int v9fs_vfs_unlink(struct inode *i, struct dentry *d)
+{
+	return v9fs_remove(i, d, 0);
+}
+
+/**
+ * v9fs_vfs_rmdir - VFS unlink hook to delete a directory
+ * @i:  inode that is being unlinked
+ * @d: dentry that is being unlinked
+ *
+ */
+
+int v9fs_vfs_rmdir(struct inode *i, struct dentry *d)
+{
+	return v9fs_remove(i, d, AT_REMOVEDIR);
+}
diff --git a/fs/9p/vfs_inode_dotl.c b/fs/9p/vfs_inode_dotl.c
new file mode 100644
index 000000000000..2eb3cc9274bc
--- /dev/null
+++ b/fs/9p/vfs_inode_dotl.c
@@ -0,0 +1,579 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * This file contains vfs inode ops for the 9P2000.L protocol.
+ *
+ *  Copyright (C) 2004 by Eric Van Hensbergen <ericvh@gmail.com>
+ *  Copyright (C) 2002 by Ron Minnich <rminnich@lanl.gov>
+ */
+
+#include <linux/module.h>
+#include <linux/errno.h>
+#include <linux/fs.h>
+#include <linux/uidgid.h>
+#include <linux/pagemap.h>
+#include <linux/stat.h>
+#include <linux/string.h>
+#include <linux/kdev_t.h>
+#include <linux/namei.h>
+#include <linux/sched.h>
+#include <linux/slab.h>
+#include <net/9p/9p.h>
+#include <net/9p/client.h>
+
+#include "v9fs.h"
+#include "v9fs_vfs.h"
+#include "fid.h"
+
+static int
+v9fs_vfs_mknod_dotl(struct inode *dir,
+		    struct dentry *dentry, umode_t omode, dev_t rdev);
+
+/**
+ * v9fs_get_fsgid_for_create - Helper function to get the gid for a new object
+ * @dir_inode: The directory inode
+ *
+ * Helper function to get the gid for creating a
+ * new file system object. This checks the S_ISGID to determine the owning
+ * group of the new file system object.
+ */
+
+static kgid_t v9fs_get_fsgid_for_create(struct inode *dir_inode)
+{
+	BUG_ON(dir_inode == NULL);
+
+	if (dir_inode->i_mode & S_ISGID) {
+		/* set_gid bit is set.*/
+		return make_kgid(dir_inode->i_gid);
+	}
+	return make_kgid(0);
+}
+
+struct inode *
+v9fs_fid_iget_dotl(struct super_block *sb, struct p9_fid *fid, bool new)
+{
+	int retval;
+	struct inode *inode;
+	struct p9_stat_dotl *st;
+	struct v9fs_session_info *v9ses = sb->s_fs_info;
+
+	inode = iget_locked(sb, QID2INO(&fid->qid));
+	if (unlikely(!inode))
+		return ERR_PTR(-ENOMEM);
+	if (!(inode->i_state & I_NEW)) {
+		if (!new)
+			goto done;
+		else /* deal with race condition in inode number reuse */
+			return ERR_PTR(-EBUSY);
+	}
+
+	/*
+	 * initialize the inode with the stat info
+	 * FIXME!! we may need support for stale inodes
+	 * later.
+	 */
+	st = p9_client_getattr_dotl(fid, P9_STATS_BASIC | P9_STATS_GEN);
+	if (IS_ERR(st)) {
+		retval = PTR_ERR(st);
+		goto error;
+	}
+
+	retval = v9fs_init_inode(v9ses, inode, &fid->qid,
+				 st->st_mode, new_decode_dev(st->st_rdev));
+	v9fs_stat2inode_dotl(st, inode);
+	kfree(st);
+	if (retval)
+		goto error;
+
+	v9fs_set_netfs_context(inode);
+
+done:
+	return inode;
+error:
+	iget_failed(inode);
+	return ERR_PTR(retval);
+}
+
+struct dotl_openflag_map {
+	int open_flag;
+	int dotl_flag;
+};
+
+static int v9fs_mapped_dotl_flags(int flags)
+{
+	int i;
+	int rflags = 0;
+	struct dotl_openflag_map dotl_oflag_map[] = {
+		{ O_CREAT,	P9_DOTL_CREATE },
+		{ O_EXCL,	P9_DOTL_EXCL },
+	/*
+	 * fs.c __write emulates O_APPEND by calling ->truncate first,
+	 * so repeating append operation here, means we set an offset
+	 * twice as big as intended.
+	 * TODO: find out how Linux handles it, but for now skipping
+	 * it seems t do the job.
+	 *
+	 *	{ O_APPEND,	P9_DOTL_APPEND },
+	 */
+		{ O_DIRECTORY,	P9_DOTL_DIRECTORY },
+		{ O_NOFOLLOW,	P9_DOTL_NOFOLLOW },
+	};
+	for (i = 0; i < ARRAY_SIZE(dotl_oflag_map); i++) {
+		if (flags & dotl_oflag_map[i].open_flag)
+			rflags |= dotl_oflag_map[i].dotl_flag;
+	}
+	return rflags;
+}
+
+/**
+ * v9fs_open_to_dotl_flags- convert Linux specific open flags to
+ * plan 9 open flag.
+ * @flags: flags to convert
+ */
+int v9fs_open_to_dotl_flags(int flags)
+{
+	int rflags = 0;
+
+	/*
+	 * We have same bits for P9_DOTL_READONLY, P9_DOTL_WRONLY
+	 * and P9_DOTL_NOACCESS
+	 */
+	rflags |= flags & O_ACCMODE;
+	rflags |= v9fs_mapped_dotl_flags(flags);
+
+	return rflags;
+}
+
+/**
+ * v9fs_vfs_create_dotl - VFS hook to create files for 9P2000.L protocol.
+ * @dir: directory inode that is being created
+ * @dentry:  dentry that is being deleted
+ * @omode: create permissions
+ * @excl: True if the file must not yet exist
+ *
+ */
+static __maybe_unused int
+v9fs_vfs_create_dotl(struct inode *dir,
+		     struct dentry *dentry, umode_t omode)
+{
+	return v9fs_vfs_mknod_dotl(dir, dentry, omode, 0);
+}
+
+/**
+ * v9fs_vfs_mkdir_dotl - VFS mkdir hook to create a directory
+ * @dir:  inode that is being unlinked
+ * @dentry: dentry that is being unlinked
+ * @omode: mode for new directory
+ *
+ */
+
+static __maybe_unused
+int v9fs_vfs_mkdir_dotl(struct inode *dir, struct dentry *dentry,
+			umode_t omode)
+{
+	int err;
+	struct p9_fid *fid = NULL, *dfid = NULL;
+	kgid_t gid;
+	const unsigned char *name;
+	umode_t mode;
+	struct inode *inode;
+	struct p9_qid qid;
+
+	p9_debug(P9_DEBUG_VFS, "name %s\n", dentry->d_name.name);
+
+	omode |= S_IFDIR;
+	if (dir->i_mode & S_ISGID)
+		omode |= S_ISGID;
+
+	dfid = v9fs_parent_fid(dentry);
+	if (IS_ERR(dfid)) {
+		err = PTR_ERR(dfid);
+		p9_debug(P9_DEBUG_VFS, "fid lookup failed %d\n", err);
+		goto error;
+	}
+
+	gid = v9fs_get_fsgid_for_create(dir);
+	mode = omode;
+	name = dentry->d_name.name;
+	err = p9_client_mkdir_dotl(dfid, name, mode, gid, &qid);
+	if (err < 0)
+		goto error;
+	fid = p9_client_walk(dfid, 1, &name, 1);
+	if (IS_ERR(fid)) {
+		err = PTR_ERR(fid);
+		p9_debug(P9_DEBUG_VFS, "p9_client_walk failed %d\n",
+			 err);
+		goto error;
+	}
+
+	/* instantiate inode and assign the unopened fid to the dentry */
+	inode = v9fs_fid_iget_dotl(dir->i_sb, fid, true);
+	if (IS_ERR(inode)) {
+		err = PTR_ERR(inode);
+		p9_debug(P9_DEBUG_VFS, "inode creation failed %d\n",
+			 err);
+		goto error;
+	}
+	v9fs_fid_add(dentry, &fid);
+	d_instantiate(dentry, inode);
+	err = 0;
+	inc_nlink(dir);
+	v9fs_invalidate_inode_attr(dir);
+error:
+	p9_fid_put(fid);
+	p9_fid_put(dfid);
+	return err;
+}
+
+/*
+ * Attribute flags.
+ */
+#define P9_ATTR_MODE		(1 << 0)
+#define P9_ATTR_UID		(1 << 1)
+#define P9_ATTR_GID		(1 << 2)
+#define P9_ATTR_SIZE		(1 << 3)
+#define P9_ATTR_ATIME		(1 << 4)
+#define P9_ATTR_MTIME		(1 << 5)
+#define P9_ATTR_CTIME		(1 << 6)
+#define P9_ATTR_ATIME_SET	(1 << 7)
+#define P9_ATTR_MTIME_SET	(1 << 8)
+
+struct dotl_iattr_map {
+	int iattr_valid;
+	int p9_iattr_valid;
+};
+
+static int v9fs_mapped_iattr_valid(int iattr_valid)
+{
+	int i;
+	int p9_iattr_valid = 0;
+	struct dotl_iattr_map dotl_iattr_map[] = {
+		{ ATTR_SIZE,		P9_ATTR_SIZE },
+	};
+	for (i = 0; i < ARRAY_SIZE(dotl_iattr_map); i++) {
+		if (iattr_valid & dotl_iattr_map[i].iattr_valid)
+			p9_iattr_valid |= dotl_iattr_map[i].p9_iattr_valid;
+	}
+	return p9_iattr_valid;
+}
+
+/**
+ * v9fs_vfs_setattr_dotl - set file metadata
+ * @dentry: file whose metadata to set
+ * @iattr: metadata assignment structure
+ *
+ */
+
+static int v9fs_vfs_setattr_dotl(struct dentry *dentry, struct iattr *iattr)
+{
+	int retval, use_dentry = 0;
+	struct inode *inode = d_inode(dentry);
+	struct p9_fid *fid = NULL;
+	struct p9_iattr_dotl p9attr = {
+		.uid = INVALID_UID,
+		.gid = INVALID_GID,
+	};
+
+	p9_debug(P9_DEBUG_VFS, "\n");
+
+	p9attr.valid = v9fs_mapped_iattr_valid(iattr->ia_valid);
+	if (iattr->ia_valid & ATTR_SIZE)
+		p9attr.size = iattr->ia_size;
+
+	if (iattr->ia_valid & ATTR_FILE) {
+		fid = iattr->ia_file->private_data;
+		WARN_ON(!fid);
+	}
+	if (!fid) {
+		fid = v9fs_fid_lookup(dentry);
+		use_dentry = 1;
+	}
+	if (IS_ERR(fid))
+		return PTR_ERR(fid);
+
+	retval = p9_client_setattr(fid, &p9attr);
+	if (retval < 0) {
+		if (use_dentry)
+			p9_fid_put(fid);
+		return retval;
+	}
+
+	if ((iattr->ia_valid & ATTR_SIZE) && iattr->ia_size !=
+		 i_size_read(inode)) {
+		truncate_setsize(inode, iattr->ia_size);
+	}
+
+	v9fs_invalidate_inode_attr(inode);
+	mark_inode_dirty(inode);
+	if (use_dentry)
+		p9_fid_put(fid);
+
+	return 0;
+}
+
+static __maybe_unused int
+v9fs_truncate(struct device *dev, struct file *f, loff_t size)
+{
+	struct iattr iattr = {
+		.ia_valid = ATTR_SIZE | ATTR_FILE,
+		.ia_size = size,
+		.ia_file = f,
+	};
+
+	return v9fs_vfs_setattr_dotl(f->f_dentry, &iattr);
+}
+
+/**
+ * v9fs_stat2inode_dotl - populate an inode structure with stat info
+ * @stat: stat structure
+ * @inode: inode to populate
+ *
+ */
+
+void
+v9fs_stat2inode_dotl(struct p9_stat_dotl *stat, struct inode *inode)
+{
+	umode_t mode;
+
+	if ((stat->st_result_mask & P9_STATS_BASIC) == P9_STATS_BASIC) {
+		inode->i_uid = from_kuid(stat->st_uid);
+		inode->i_gid = from_kgid(stat->st_gid);
+		set_nlink(inode, stat->st_nlink);
+
+		mode = stat->st_mode & S_IALLUGO;
+		mode |= inode->i_mode & ~S_IALLUGO;
+		inode->i_mode = mode;
+
+		v9fs_i_size_write(inode, stat->st_size);
+		inode->i_blocks = stat->st_blocks;
+	} else {
+		if (stat->st_result_mask & P9_STATS_UID)
+			inode->i_uid = from_kuid(stat->st_uid);
+		if (stat->st_result_mask & P9_STATS_GID)
+			inode->i_gid = from_kgid(stat->st_gid);
+		if (stat->st_result_mask & P9_STATS_NLINK)
+			set_nlink(inode, stat->st_nlink);
+		if (stat->st_result_mask & P9_STATS_MODE) {
+			mode = stat->st_mode & S_IALLUGO;
+			mode |= inode->i_mode & ~S_IALLUGO;
+			inode->i_mode = mode;
+		}
+		if (stat->st_result_mask & P9_STATS_SIZE) {
+			v9fs_i_size_write(inode, stat->st_size);
+		}
+		if (stat->st_result_mask & P9_STATS_BLOCKS)
+			inode->i_blocks = stat->st_blocks;
+	}
+	if (stat->st_result_mask & P9_STATS_GEN)
+		inode->i_generation = stat->st_gen;
+}
+
+static __maybe_unused int
+v9fs_vfs_symlink_dotl(struct inode *dir,
+		      struct dentry *dentry, const char *symname)
+{
+	int err;
+	kgid_t gid;
+	const unsigned char *name;
+	struct p9_qid qid;
+	struct p9_fid *dfid;
+	struct p9_fid *fid = NULL;
+
+	name = dentry->d_name.name;
+	p9_debug(P9_DEBUG_VFS, "%lu,%s,%s\n", dir->i_ino, name, symname);
+
+	dfid = v9fs_parent_fid(dentry);
+	if (IS_ERR(dfid)) {
+		err = PTR_ERR(dfid);
+		p9_debug(P9_DEBUG_VFS, "fid lookup failed %d\n", err);
+		return err;
+	}
+
+	gid = v9fs_get_fsgid_for_create(dir);
+
+	/* Server doesn't alter fid on TSYMLINK. Hence no need to clone it. */
+	err = p9_client_symlink(dfid, name, symname, gid, &qid);
+
+	if (err < 0) {
+		p9_debug(P9_DEBUG_VFS, "p9_client_symlink failed %d\n", err);
+		goto error;
+	}
+
+	v9fs_invalidate_inode_attr(dir);
+
+error:
+	p9_fid_put(fid);
+	p9_fid_put(dfid);
+	return err;
+}
+
+/**
+ * v9fs_vfs_link_dotl - create a hardlink for dotl
+ * @old_dentry: dentry for file to link to
+ * @dir: inode destination for new link
+ * @dentry: dentry for link
+ *
+ */
+
+static __maybe_unused int
+v9fs_vfs_link_dotl(struct dentry *old_dentry, struct inode *dir,
+		struct dentry *dentry)
+{
+	int err;
+	struct p9_fid *dfid, *oldfid;
+	struct v9fs_session_info *v9ses;
+
+	p9_debug(P9_DEBUG_VFS, "dir ino: %lu, old_name: %s, new_name: %s\n",
+		 dir->i_ino, old_dentry->d_name.name, dentry->d_name.name);
+
+	v9ses = v9fs_inode2v9ses(dir);
+	dfid = v9fs_parent_fid(dentry);
+	if (IS_ERR(dfid))
+		return PTR_ERR(dfid);
+
+	oldfid = v9fs_fid_lookup(old_dentry);
+	if (IS_ERR(oldfid)) {
+		p9_fid_put(dfid);
+		return PTR_ERR(oldfid);
+	}
+
+	err = p9_client_link(dfid, oldfid, dentry->d_name.name);
+
+	p9_fid_put(dfid);
+	p9_fid_put(oldfid);
+	if (err < 0) {
+		p9_debug(P9_DEBUG_VFS, "p9_client_link failed %d\n", err);
+		return err;
+	}
+
+	v9fs_invalidate_inode_attr(dir);
+	ihold(d_inode(old_dentry));
+	d_instantiate(dentry, d_inode(old_dentry));
+
+	return err;
+}
+
+/**
+ * v9fs_vfs_mknod_dotl - create a special file
+ * @dir: inode destination for new link
+ * @dentry: dentry for file
+ * @omode: mode for creation
+ * @rdev: device associated with special file
+ *
+ */
+static int
+v9fs_vfs_mknod_dotl(struct inode *dir,
+		    struct dentry *dentry, umode_t omode, dev_t rdev)
+{
+	int err;
+	kgid_t gid;
+	const unsigned char *name;
+	umode_t mode;
+	struct p9_fid *fid = NULL, *dfid = NULL;
+	struct inode *inode;
+	struct p9_qid qid;
+
+	p9_debug(P9_DEBUG_VFS, " %lu,%s mode: %x MAJOR: %u MINOR: %u\n",
+		 dir->i_ino, dentry->d_name.name, omode,
+		 MAJOR(rdev), MINOR(rdev));
+
+	dfid = v9fs_parent_fid(dentry);
+	if (IS_ERR(dfid)) {
+		err = PTR_ERR(dfid);
+		p9_debug(P9_DEBUG_VFS, "fid lookup failed %d\n", err);
+		goto error;
+	}
+
+	gid = v9fs_get_fsgid_for_create(dir);
+	mode = omode;
+	name = dentry->d_name.name;
+
+	err = p9_client_mknod_dotl(dfid, name, mode, rdev, gid, &qid);
+	if (err < 0)
+		goto error;
+
+	v9fs_invalidate_inode_attr(dir);
+	fid = p9_client_walk(dfid, 1, &name, 1);
+	if (IS_ERR(fid)) {
+		err = PTR_ERR(fid);
+		p9_debug(P9_DEBUG_VFS, "p9_client_walk failed %d\n",
+			 err);
+		goto error;
+	}
+	inode = v9fs_fid_iget_dotl(dir->i_sb, fid, true);
+	if (IS_ERR(inode)) {
+		err = PTR_ERR(inode);
+		p9_debug(P9_DEBUG_VFS, "inode creation failed %d\n",
+			 err);
+		goto error;
+	}
+	v9fs_fid_add(dentry, &fid);
+	d_instantiate(dentry, inode);
+	err = 0;
+error:
+	p9_fid_put(fid);
+	p9_fid_put(dfid);
+
+	return err;
+}
+
+/**
+ * v9fs_vfs_get_link_dotl - follow a symlink path
+ * @dentry: dentry for symlink
+ * @inode: inode for symlink
+ * @done: destructor for return value
+ */
+
+static const char *
+v9fs_vfs_get_link_dotl(struct dentry *dentry,
+		       struct inode *inode)
+{
+	struct p9_fid *fid;
+	char *target;
+	int retval;
+
+	if (!dentry)
+		return ERR_PTR(-ECHILD);
+
+	p9_debug(P9_DEBUG_VFS, "%s\n", dentry->d_name.name);
+
+	fid = v9fs_fid_lookup(dentry);
+	if (IS_ERR(fid))
+		return ERR_CAST(fid);
+	retval = p9_client_readlink(fid, &target);
+	p9_fid_put(fid);
+	if (retval)
+		return ERR_PTR(retval);
+	return target;
+}
+
+const struct inode_operations v9fs_dir_inode_operations_dotl = {
+	.lookup = v9fs_vfs_lookup,
+#ifdef CONFIG_9P_FS_WRITE
+	.create = v9fs_vfs_create_dotl,
+	.link = v9fs_vfs_link_dotl,
+	.symlink = v9fs_vfs_symlink_dotl,
+	.unlink = v9fs_vfs_unlink,
+	.mkdir = v9fs_vfs_mkdir_dotl,
+	.rmdir = v9fs_vfs_rmdir,
+#endif
+};
+
+const struct inode_operations v9fs_file_inode_operations_dotl;
+
+const struct inode_operations v9fs_symlink_inode_operations_dotl = {
+	.get_link = v9fs_vfs_get_link_dotl,
+};
+
+struct fs_driver v9fs_driver = {
+	.read      = v9fs_read,
+#ifdef CONFIG_9P_FS_WRITE
+	.write     = v9fs_write,
+	.truncate  = v9fs_truncate,
+	.flush     = v9fs_file_fsync_dotl,
+#endif
+	.drv = {
+		.probe  = v9fs_mount,
+		.remove = v9fs_umount,
+		.name = "9p",
+	}
+};
diff --git a/fs/9p/vfs_super.c b/fs/9p/vfs_super.c
new file mode 100644
index 000000000000..6a451d9ef514
--- /dev/null
+++ b/fs/9p/vfs_super.c
@@ -0,0 +1,243 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ *
+ *  Copyright (C) 2004 by Eric Van Hensbergen <ericvh@gmail.com>
+ *  Copyright (C) 2002 by Ron Minnich <rminnich@lanl.gov>
+ */
+
+#include <linux/kernel.h>
+#include <linux/module.h>
+#include <linux/errno.h>
+#include <linux/fs.h>
+#include <linux/stat.h>
+#include <linux/string.h>
+#include <linux/pagemap.h>
+#include <linux/mount.h>
+#include <linux/sched.h>
+#include <linux/slab.h>
+#include <linux/stat.h>
+#include <linux/magic.h>
+#include <net/9p/9p.h>
+#include <net/9p/client.h>
+#include <net/9p/transport.h>
+
+#include "v9fs.h"
+#include "v9fs_vfs.h"
+#include "fid.h"
+
+static const struct super_operations v9fs_super_ops_dotl;
+
+static void v9fs_devinfo(struct device *dev);
+
+/**
+ * v9fs_set_super - set the superblock
+ * @s: super block
+ * @data: file system specific data
+ *
+ */
+
+static void v9fs_set_super(struct super_block *s, void *data)
+{
+	s->s_fs_info = data;
+}
+
+/**
+ * v9fs_fill_super - populate superblock with info
+ * @sb: superblock
+ * @v9ses: session information
+ *
+ */
+
+static int
+v9fs_fill_super(struct super_block *sb, struct v9fs_session_info *v9ses)
+{
+	sb->s_maxbytes = MAX_LFS_FILESIZE;
+	sb->s_blocksize_bits = fls(v9ses->maxdata - 1);
+	sb->s_blocksize = 1 << sb->s_blocksize_bits;
+	sb->s_magic = V9FS_MAGIC;
+	sb->s_op = &v9fs_super_ops_dotl;
+
+	return 0;
+}
+
+static void v9fs_set_rootarg(struct v9fs_session_info *v9ses,
+			     struct fs_device *fsdev)
+{
+	const char *tag, *trans, *path;
+	char *str;
+
+	tag = v9ses->clnt->trans_tag;
+	trans = v9ses->clnt->trans_mod->name;
+	path = v9ses->aname;
+
+	str = basprintf("root=%s rootfstype=9p rootflags=trans=%s,msize=%d,"
+			"cache=loose,uname=%s,dfltuid=0,dfltgid=0,aname=%s",
+			tag, trans, v9ses->clnt->msize, tag, path);
+
+	fsdev_set_linux_rootarg(fsdev, str);
+
+	free(str);
+}
+
+/**
+ * v9fs_mount - mount a superblock
+ * @flags: mount flags
+ * @dev_name: device name that was mounted
+ * @data: mount options
+ *
+ */
+
+int v9fs_mount(struct device *dev)
+{
+	struct fs_device *fsdev = dev_to_fs_device(dev);
+	void *data = fsdev->options;
+	struct super_block *sb = &fsdev->sb;
+	struct inode *inode = NULL;
+	struct dentry *root = NULL;
+	struct v9fs_session_info *v9ses = NULL;
+	struct p9_fid *fid;
+	int retval = 0;
+
+	p9_debug(P9_DEBUG_VFS, "\n");
+
+	v9ses = kzalloc(sizeof(struct v9fs_session_info), GFP_KERNEL);
+	if (!v9ses)
+		return -ENOMEM;
+
+	fid = v9fs_session_init(v9ses, fsdev->backingstore, data);
+	if (IS_ERR(fid)) {
+		retval = PTR_ERR(fid);
+		goto free_session;
+	}
+
+	v9fs_set_super(sb, v9ses);
+
+	retval = v9fs_fill_super(sb, v9ses);
+	if (retval)
+		goto release_sb;
+
+	sb->s_d_op = &netfs_dentry_operations_timed;
+
+	inode = v9fs_get_inode_from_fid(v9ses, fid, sb, true);
+	if (IS_ERR(inode)) {
+		retval = PTR_ERR(inode);
+		goto release_sb;
+	}
+
+	root = d_make_root(inode);
+	if (!root) {
+		retval = -ENOMEM;
+		goto release_sb;
+	}
+	sb->s_root = root;
+	v9fs_fid_add(root, &fid);
+
+	p9_debug(P9_DEBUG_VFS, " simple set mount, return 0\n");
+
+	dev->priv = sb;
+	devinfo_add(dev, v9fs_devinfo);
+
+	v9fs_set_rootarg(v9ses, fsdev);
+
+	return 0;
+free_session:
+	kfree(v9ses);
+	return retval;
+
+release_sb:
+	/*
+	 * we will do the session_close and root dentry release
+	 * in the below call. But we need to clunk fid, because we haven't
+	 * attached the fid to dentry so it won't get clunked
+	 * automatically.
+	 */
+	p9_fid_put(fid);
+	return retval;
+}
+
+/**
+ * v9fs_kill_super - Kill Superblock
+ * @s: superblock
+ *
+ */
+
+static void v9fs_kill_super(struct super_block *s)
+{
+	struct v9fs_session_info *v9ses = s->s_fs_info;
+
+	p9_debug(P9_DEBUG_VFS, " %p\n", s);
+
+	v9fs_session_cancel(v9ses);
+	v9fs_session_close(v9ses);
+	kfree(v9ses);
+	s->s_fs_info = NULL;
+	p9_debug(P9_DEBUG_VFS, "exiting kill_super\n");
+}
+
+static void
+v9fs_umount_begin(struct super_block *sb)
+{
+	struct v9fs_session_info *v9ses;
+
+	v9ses = sb->s_fs_info;
+	v9fs_session_begin_cancel(v9ses);
+}
+
+void v9fs_umount(struct device *dev)
+{
+	struct super_block *sb = dev->priv;
+
+	devinfo_del(dev, v9fs_devinfo);
+	v9fs_umount_begin(sb);
+	v9fs_kill_super(sb);
+}
+
+static void v9fs_statfs(struct device *dev, struct dentry *dentry)
+{
+	struct v9fs_session_info *v9ses;
+	struct p9_fid *fid;
+	struct p9_rstatfs rs;
+	int res;
+
+	fid = v9fs_fid_lookup(dentry);
+	if (IS_ERR(fid)) {
+		res = PTR_ERR(fid);
+		goto done;
+	}
+
+	v9ses = v9fs_dentry2v9ses(dentry);
+	res = p9_client_statfs(fid, &rs);
+	if (res == 0) {
+		printf("File system stats:\n");
+		printf("  type = %u\n", rs.type);
+		printf("  bsize = %u\n", rs.bsize);
+		printf("  blocks = %llu\n", rs.blocks);
+		printf("  bfree = %llu\n", rs.bfree);
+		printf("  bavail = %llu\n", rs.bavail);
+		printf("  files = %llu\n", rs.files);
+		printf("  ffree = %llu\n", rs.ffree);
+		printf("  fsid = %llu\n", rs.fsid);
+		printf("  namelen = %u\n", rs.namelen);
+	}
+	if (res != -ENOSYS)
+		goto done;
+done:
+	p9_fid_put(fid);
+	if (res)
+		dev_warn(dev, "statfs failed; %pe\n", ERR_PTR(res));
+}
+
+static void v9fs_devinfo(struct device *dev)
+{
+	struct super_block *sb = dev->priv;
+	struct dentry *root = sb->s_root;
+
+	v9fs_statfs(dev, root);
+}
+
+static const struct super_operations v9fs_super_ops_dotl = {
+	.alloc_inode = v9fs_alloc_inode,
+	.destroy_inode = v9fs_free_inode,
+};
+
+MODULE_ALIAS_FS("9p");
diff --git a/fs/Kconfig b/fs/Kconfig
index f94488e643bf..e86420f9c259 100644
--- a/fs/Kconfig
+++ b/fs/Kconfig
@@ -81,6 +81,8 @@ config FS_NFS
 	bool
 	prompt "nfs support"
 
+source "fs/9p/Kconfig"
+
 config FS_EFI
 	depends on EFI_PAYLOAD
 	select FS_LEGACY
diff --git a/fs/Makefile b/fs/Makefile
index b6a44ff82a38..de6e356d1897 100644
--- a/fs/Makefile
+++ b/fs/Makefile
@@ -14,6 +14,7 @@ obj-$(CONFIG_FS_UBIFS)	+= ubifs/
 obj-$(CONFIG_FS_TFTP)	+= tftp.o
 obj-$(CONFIG_FS_OMAP4_USBBOOT)	+= omap4_usbbootfs.o
 obj-$(CONFIG_FS_NFS)	+= nfs.o
+obj-$(CONFIG_9P_FS)	+= 9p/
 obj-$(CONFIG_FS_BPKFS) += bpkfs.o
 obj-$(CONFIG_FS_UIMAGEFS)	+= uimagefs.o
 obj-$(CONFIG_FS_EFI)	 += efi.o
diff --git a/fs/fs.c b/fs/fs.c
index 465fd617c2ba..b6fc8557d054 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -1382,6 +1382,15 @@ struct inode *iget(struct inode *inode)
 	return inode;
 }
 
+/*
+ * get additional reference to inode; caller must already hold one.
+ */
+void ihold(struct inode *inode)
+{
+	WARN_ON(++inode->i_count < 2);
+}
+EXPORT_SYMBOL(ihold);
+
 /* dcache.c */
 
 /*
diff --git a/include/linux/fs.h b/include/linux/fs.h
index 7461eb367d07..7ae52d476d26 100644
--- a/include/linux/fs.h
+++ b/include/linux/fs.h
@@ -5,6 +5,7 @@
 
 #include <linux/list.h>
 #include <linux/time.h>
+#include <linux/stat.h>
 #include <linux/mount.h>
 #include <linux/path.h>
 #include <linux/spinlock.h>
@@ -239,6 +240,25 @@ struct file {
 	void			*private_data;
 };
 
+/*
+ * Attribute flags.  These should be or-ed together to figure out what
+ * has been changed!
+ */
+#define ATTR_SIZE	(1 << 3)
+#define ATTR_FILE	(1 << 13)
+
+struct iattr {
+	unsigned int	ia_valid;
+	loff_t		ia_size;
+
+	/*
+	 * Not an attribute, but an auxiliary info for filesystems wanting to
+	 * implement an ftruncate() like method.  NOTE: filesystem should
+	 * check for (ia_valid & ATTR_FILE), and not for (ia_file != NULL).
+	 */
+	struct file	*ia_file;
+};
+
 struct super_operations {
 	struct inode *(*alloc_inode)(struct super_block *sb);
 	void (*destroy_inode)(struct inode *);
@@ -393,10 +413,21 @@ static inline loff_t i_size_read(const struct inode *inode)
 	return inode->i_size;
 }
 
+static inline void i_size_write(struct inode *inode, loff_t i_size)
+{
+	inode->i_size = i_size;
+}
+
+static inline void truncate_setsize(struct inode *inode, loff_t i_size)
+{
+	i_size_write(inode, i_size);
+}
+
 struct inode *new_inode(struct super_block *sb);
 unsigned int get_next_ino(void);
 void iput(struct inode *);
 struct inode *iget(struct inode *);
+void ihold(struct inode *inode);
 void inc_nlink(struct inode *inode);
 void clear_nlink(struct inode *inode);
 void set_nlink(struct inode *inode, unsigned int nlink);
@@ -476,4 +507,20 @@ const char *simple_get_link(struct dentry *dentry, struct inode *inode);
 struct inode *iget_locked(struct super_block *, unsigned long);
 void iget_failed(struct inode *inode);
 
+static inline void inode_init_owner(struct inode *inode,
+				    const struct inode *dir, umode_t mode)
+{
+	if (dir && dir->i_mode & S_ISGID) {
+		inode->i_gid = dir->i_gid;
+
+		/* Directories are special, and always inherit S_ISGID */
+		if (S_ISDIR(mode))
+			mode |= S_ISGID;
+	}
+
+	inode->i_mode = mode;
+}
+
+static inline void mark_inode_dirty(struct inode *inode) {}
+
 #endif /* _LINUX_FS_H */
diff --git a/include/linux/limits.h b/include/linux/limits.h
index 2318e4f606d5..8c6f2d398b23 100644
--- a/include/linux/limits.h
+++ b/include/linux/limits.h
@@ -38,5 +38,6 @@
 #define S64_MIN		((s64)(-S64_MAX - 1))
 
 #define PATH_MAX       1024
+#define NAME_MAX       255	/* # chars in a file name */
 
 #endif /* _LINUX_LIMITS_H */
diff --git a/include/linux/module.h b/include/linux/module.h
index 6a8ef6d6eccc..77bcc57a271a 100644
--- a/include/linux/module.h
+++ b/include/linux/module.h
@@ -13,5 +13,6 @@
 #define MODULE_DEVICE_TABLE(bus, table)
 #define MODULE_ALIAS_DSA_TAG_DRIVER(drv)
 #define MODULE_ALIAS_CRYPTO(alias)
+#define MODULE_ALIAS_FS(alias)
 
 #endif
diff --git a/include/linux/stat.h b/include/linux/stat.h
index fc3dd222a673..6ee05b52873f 100644
--- a/include/linux/stat.h
+++ b/include/linux/stat.h
@@ -45,6 +45,10 @@ extern "C" {
 #define S_IXOTH 00001		/* execute/search permission for other */
 
 #define S_IRWXUGO	(S_IRWXU|S_IRWXG|S_IRWXO)
+#define S_IALLUGO	(S_ISUID|S_ISGID|S_ISVTX|S_IRWXUGO)
+#define S_IRUGO		(S_IRUSR|S_IRGRP|S_IROTH)
+#define S_IWUGO		(S_IWUSR|S_IWGRP|S_IWOTH)
+#define S_IXUGO		(S_IXUSR|S_IXGRP|S_IXOTH)
 
 struct stat {
 	unsigned long st_ino;
-- 
2.39.5



