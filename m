Delivery-date: Fri, 06 Jun 2025 10:59:47 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uNSvT-004KA7-14
	for lore@lore.pengutronix.de;
	Fri, 06 Jun 2025 10:59:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uNSvM-0004EL-Sb
	for lore@pengutronix.de; Fri, 06 Jun 2025 10:59:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XtUXFqDWDY9zyA8I43IwLdRphZJoD3SSFBHkjG/LUF0=; b=S+kPafzNGMPrkA+Cx6IUaIHfVX
	tzKGCyE47O2hZugu/mbeDsi02+BjwNLQNYj8iVH0sXaZkL7+rG74KAlhrnDCHtt2TNS929vkLzj7l
	lFTWL8Hoi3J7hyMtF8R0JDmdRG8KIYhC5/CNNH193FAfQT3KoM03qTMt3v8ounTa3Iyf3GYkJNIWm
	sDtC16qpgpzURqRT0W8DmuuuUKPEnet5IIej4wOr6hzn0DDd9aF8UAAePmQyNjjDZn1vvOAIywnvt
	GklNpQuSazGgS+TGFX7jPSVwpEwJB47VaOVUzoWf1g1AcU7bDD6xl/GUSQ4s7iGjwFidl7qqCpXJH
	zFcCuAVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNSuA-0000000HSS5-2H4O;
	Fri, 06 Jun 2025 08:58:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNSu2-0000000HSLH-0DSB
	for barebox@lists.infradead.org;
	Fri, 06 Jun 2025 08:58:21 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uNSu0-0002si-AA; Fri, 06 Jun 2025 10:58:16 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Fri,  6 Jun 2025 10:58:10 +0200
Message-Id: <20250606085813.2183260-8-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250606085813.2183260-1-a.fatoum@barebox.org>
References: <20250606085813.2183260-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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
Subject: [PATCH 07/10] net: add support for 9P protocol
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The Plan 9 Filesystem Protocol is a network protocol developed for the
Plan 9 from Bell Labs distributed operating system.

It's most common transports are via TCP and VirtFS. Linux recently
gained support for it over USB gadget as well.

As we have no TCP support in barebox yet, add here support for the
file system and Virt I/O transport with usb9pfs to follow.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 include/linux/completion.h     |    3 +
 include/linux/gfp.h            |    2 +
 include/linux/idr.h            |    3 +
 include/net/9p/9p.h            |  559 +++++++++
 include/net/9p/client.h        |  297 +++++
 include/net/9p/transport.h     |   73 ++
 include/printf.h               |   11 +
 include/uapi/linux/virtio_9p.h |   44 +
 net/9p/Kconfig                 |   32 +
 net/9p/Makefile                |   11 +
 net/9p/client.c                | 1932 ++++++++++++++++++++++++++++++++
 net/9p/mod.c                   |  180 +++
 net/9p/protocol.c              |  802 +++++++++++++
 net/9p/protocol.h              |   19 +
 net/9p/trans_virtio.c          |  426 +++++++
 net/Kconfig                    |    2 +
 net/Makefile                   |    1 +
 17 files changed, 4397 insertions(+)
 create mode 100644 include/net/9p/9p.h
 create mode 100644 include/net/9p/client.h
 create mode 100644 include/net/9p/transport.h
 create mode 100644 include/uapi/linux/virtio_9p.h
 create mode 100644 net/9p/Kconfig
 create mode 100644 net/9p/Makefile
 create mode 100644 net/9p/client.c
 create mode 100644 net/9p/mod.c
 create mode 100644 net/9p/protocol.c
 create mode 100644 net/9p/protocol.h
 create mode 100644 net/9p/trans_virtio.c

diff --git a/include/linux/completion.h b/include/linux/completion.h
index e897e4f65b8b..a7b5c064e411 100644
--- a/include/linux/completion.h
+++ b/include/linux/completion.h
@@ -42,6 +42,9 @@ static inline int wait_for_completion_interruptible(struct completion *x)
 	return 0;
 }
 
+#define wait_for_completion_killable	\
+	wait_for_completion_interruptible
+
 static inline bool completion_done(struct completion *x)
 {
 	return x->done;
diff --git a/include/linux/gfp.h b/include/linux/gfp.h
index 799c2e461278..b2f0f48ee8f6 100644
--- a/include/linux/gfp.h
+++ b/include/linux/gfp.h
@@ -7,6 +7,8 @@
 #define GFP_KERNEL	0
 #define GFP_NOFS	0
 #define GFP_USER	0
+#define GFP_ATOMIC	0
+#define GFP_NOWAIT	0
 #define __GFP_NOWARN	0
 
 #endif
diff --git a/include/linux/idr.h b/include/linux/idr.h
index 8573a2b05ee6..07adde713477 100644
--- a/include/linux/idr.h
+++ b/include/linux/idr.h
@@ -59,6 +59,9 @@ static inline void *idr_find(struct idr *head, int id)
 	return idr ? idr->ptr : NULL;
 }
 
+static inline void idr_preload(gfp_t gfp_mask) {}
+static inline void idr_preload_end(void) {}
+
 int idr_alloc(struct idr *, void *ptr, int start, int end, gfp_t);
 int __must_check idr_alloc_u32(struct idr *, void *ptr, u32 *id,
 				unsigned long max, gfp_t);
diff --git a/include/net/9p/9p.h b/include/net/9p/9p.h
new file mode 100644
index 000000000000..edf61c4117a4
--- /dev/null
+++ b/include/net/9p/9p.h
@@ -0,0 +1,559 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * 9P protocol definitions.
+ *
+ *  Copyright (C) 2005 by Latchesar Ionkov <lucho@ionkov.net>
+ *  Copyright (C) 2004 by Eric Van Hensbergen <ericvh@gmail.com>
+ *  Copyright (C) 2002 by Ron Minnich <rminnich@lanl.gov>
+ */
+
+#ifndef NET_9P_H
+#define NET_9P_H
+
+#include <linux/types.h>
+#include <linux/uidgid_types.h>
+
+/**
+ * enum p9_debug_flags - bits for mount time debug parameter
+ * @P9_DEBUG_ERROR: more verbose error messages including original error string
+ * @P9_DEBUG_9P: 9P protocol tracing
+ * @P9_DEBUG_VFS: VFS API tracing
+ * @P9_DEBUG_CONV: protocol conversion tracing
+ * @P9_DEBUG_MUX: trace management of concurrent transactions
+ * @P9_DEBUG_TRANS: transport tracing
+ * @P9_DEBUG_SLABS: memory management tracing
+ * @P9_DEBUG_FCALL: verbose dump of protocol messages
+ * @P9_DEBUG_FID: fid allocation/deallocation tracking
+ * @P9_DEBUG_PKT: packet marshalling/unmarshalling
+ * @P9_DEBUG_FSC: FS-cache tracing
+ * @P9_DEBUG_VPKT: Verbose packet debugging (full packet dump)
+ *
+ * These flags are passed at mount time to turn on various levels of
+ * verbosity and tracing which will be output to the system logs.
+ */
+
+enum p9_debug_flags {
+	P9_DEBUG_ERROR =	(1<<0),
+	P9_DEBUG_9P =		(1<<2),
+	P9_DEBUG_VFS =		(1<<3),
+	P9_DEBUG_CONV =		(1<<4),
+	P9_DEBUG_MUX =		(1<<5),
+	P9_DEBUG_TRANS =	(1<<6),
+	P9_DEBUG_SLABS =	(1<<7),
+	P9_DEBUG_FCALL =	(1<<8),
+	P9_DEBUG_FID =		(1<<9),
+	P9_DEBUG_PKT =		(1<<10),
+	P9_DEBUG_FSC =		(1<<11),
+	P9_DEBUG_VPKT =		(1<<12),
+	P9_DEBUG_CACHE =	(1<<13),
+	P9_DEBUG_MMAP =		(1<<14),
+};
+
+#ifdef CONFIG_NET_9P_DEBUG
+extern unsigned int p9_debug_level;
+__printf(3, 4)
+void _p9_debug(enum p9_debug_flags level, const char *func,
+	       const char *fmt, ...);
+#define p9_debug(level, fmt, ...)			\
+	_p9_debug(level, __func__, fmt, ##__VA_ARGS__)
+#else
+#define p9_debug(level, fmt, ...)			\
+	no_printk(fmt, ##__VA_ARGS__)
+#endif
+
+/**
+ * enum p9_msg_t - 9P message types
+ * @P9_TLERROR: not used
+ * @P9_RLERROR: response for any failed request for 9P2000.L
+ * @P9_TSTATFS: file system status request
+ * @P9_RSTATFS: file system status response
+ * @P9_TSYMLINK: make symlink request
+ * @P9_RSYMLINK: make symlink response
+ * @P9_TMKNOD: create a special file object request
+ * @P9_RMKNOD: create a special file object response
+ * @P9_TLCREATE: prepare a handle for I/O on an new file for 9P2000.L
+ * @P9_RLCREATE: response with file access information for 9P2000.L
+ * @P9_TRENAME: rename request
+ * @P9_RRENAME: rename response
+ * @P9_TMKDIR: create a directory request
+ * @P9_RMKDIR: create a directory response
+ * @P9_TVERSION: version handshake request
+ * @P9_RVERSION: version handshake response
+ * @P9_TAUTH: request to establish authentication channel
+ * @P9_RAUTH: response with authentication information
+ * @P9_TATTACH: establish user access to file service
+ * @P9_RATTACH: response with top level handle to file hierarchy
+ * @P9_TERROR: not used
+ * @P9_RERROR: response for any failed request
+ * @P9_TFLUSH: request to abort a previous request
+ * @P9_RFLUSH: response when previous request has been cancelled
+ * @P9_TWALK: descend a directory hierarchy
+ * @P9_RWALK: response with new handle for position within hierarchy
+ * @P9_TOPEN: prepare a handle for I/O on an existing file
+ * @P9_ROPEN: response with file access information
+ * @P9_TCREATE: prepare a handle for I/O on a new file
+ * @P9_RCREATE: response with file access information
+ * @P9_TREAD: request to transfer data from a file or directory
+ * @P9_RREAD: response with data requested
+ * @P9_TWRITE: reuqest to transfer data to a file
+ * @P9_RWRITE: response with out much data was transferred to file
+ * @P9_TCLUNK: forget about a handle to an entity within the file system
+ * @P9_RCLUNK: response when server has forgotten about the handle
+ * @P9_TREMOVE: request to remove an entity from the hierarchy
+ * @P9_RREMOVE: response when server has removed the entity
+ * @P9_TSTAT: request file entity attributes
+ * @P9_RSTAT: response with file entity attributes
+ * @P9_TWSTAT: request to update file entity attributes
+ * @P9_RWSTAT: response when file entity attributes are updated
+ *
+ * There are 14 basic operations in 9P2000, paired as
+ * requests and responses.  The one special case is ERROR
+ * as there is no @P9_TERROR request for clients to transmit to
+ * the server, but the server may respond to any other request
+ * with an @P9_RERROR.
+ *
+ * See Also: http://plan9.bell-labs.com/sys/man/5/INDEX.html
+ */
+
+enum p9_msg_t {
+	P9_TLERROR = 6,
+	P9_RLERROR,
+	P9_TSTATFS = 8,
+	P9_RSTATFS,
+	P9_TLOPEN = 12,
+	P9_RLOPEN,
+	P9_TLCREATE = 14,
+	P9_RLCREATE,
+	P9_TSYMLINK = 16,
+	P9_RSYMLINK,
+	P9_TMKNOD = 18,
+	P9_RMKNOD,
+	P9_TRENAME = 20,
+	P9_RRENAME,
+	P9_TREADLINK = 22,
+	P9_RREADLINK,
+	P9_TGETATTR = 24,
+	P9_RGETATTR,
+	P9_TSETATTR = 26,
+	P9_RSETATTR,
+	P9_TXATTRWALK = 30,
+	P9_RXATTRWALK,
+	P9_TXATTRCREATE = 32,
+	P9_RXATTRCREATE,
+	P9_TREADDIR = 40,
+	P9_RREADDIR,
+	P9_TFSYNC = 50,
+	P9_RFSYNC,
+	P9_TLOCK = 52,
+	P9_RLOCK,
+	P9_TGETLOCK = 54,
+	P9_RGETLOCK,
+	P9_TLINK = 70,
+	P9_RLINK,
+	P9_TMKDIR = 72,
+	P9_RMKDIR,
+	P9_TRENAMEAT = 74,
+	P9_RRENAMEAT,
+	P9_TUNLINKAT = 76,
+	P9_RUNLINKAT,
+	P9_TVERSION = 100,
+	P9_RVERSION,
+	P9_TAUTH = 102,
+	P9_RAUTH,
+	P9_TATTACH = 104,
+	P9_RATTACH,
+	P9_TERROR = 106,
+	P9_RERROR,
+	P9_TFLUSH = 108,
+	P9_RFLUSH,
+	P9_TWALK = 110,
+	P9_RWALK,
+	P9_TOPEN = 112,
+	P9_ROPEN,
+	P9_TCREATE = 114,
+	P9_RCREATE,
+	P9_TREAD = 116,
+	P9_RREAD,
+	P9_TWRITE = 118,
+	P9_RWRITE,
+	P9_TCLUNK = 120,
+	P9_RCLUNK,
+	P9_TREMOVE = 122,
+	P9_RREMOVE,
+	P9_TSTAT = 124,
+	P9_RSTAT,
+	P9_TWSTAT = 126,
+	P9_RWSTAT,
+};
+
+/**
+ * enum p9_open_mode_t - 9P open modes
+ * @P9_OREAD: open file for reading only
+ * @P9_OWRITE: open file for writing only
+ * @P9_ORDWR: open file for reading or writing
+ * @P9_OEXEC: open file for execution
+ * @P9_OTRUNC: truncate file to zero-length before opening it
+ * @P9_OREXEC: close the file when an exec(2) system call is made
+ * @P9_ORCLOSE: remove the file when the file is closed
+ * @P9_OAPPEND: open the file and seek to the end
+ * @P9_OEXCL: only create a file, do not open it
+ *
+ * 9P open modes differ slightly from Posix standard modes.
+ * In particular, there are extra modes which specify different
+ * semantic behaviors than may be available on standard Posix
+ * systems.  For example, @P9_OREXEC and @P9_ORCLOSE are modes that
+ * most likely will not be issued from the Linux VFS client, but may
+ * be supported by servers.
+ *
+ * See Also: http://plan9.bell-labs.com/magic/man2html/2/open
+ */
+
+enum p9_open_mode_t {
+	P9_OREAD = 0x00,
+	P9_OWRITE = 0x01,
+	P9_ORDWR = 0x02,
+	P9_OEXEC = 0x03,
+	P9_OTRUNC = 0x10,
+	P9_OREXEC = 0x20,
+	P9_ORCLOSE = 0x40,
+	P9_OAPPEND = 0x80,
+	P9_OEXCL = 0x1000,
+	P9L_MODE_MASK = 0x1FFF, /* don't send anything under this to server */
+};
+
+/**
+ * enum p9_perm_t - 9P permissions
+ * @P9_DMDIR: mode bit for directories
+ * @P9_DMAPPEND: mode bit for is append-only
+ * @P9_DMEXCL: mode bit for excluse use (only one open handle allowed)
+ * @P9_DMMOUNT: mode bit for mount points
+ * @P9_DMAUTH: mode bit for authentication file
+ * @P9_DMTMP: mode bit for non-backed-up files
+ * @P9_DMSYMLINK: mode bit for symbolic links (9P2000.u)
+ * @P9_DMLINK: mode bit for hard-link (9P2000.u)
+ * @P9_DMDEVICE: mode bit for device files (9P2000.u)
+ * @P9_DMNAMEDPIPE: mode bit for named pipe (9P2000.u)
+ * @P9_DMSOCKET: mode bit for socket (9P2000.u)
+ * @P9_DMSETUID: mode bit for setuid (9P2000.u)
+ * @P9_DMSETGID: mode bit for setgid (9P2000.u)
+ * @P9_DMSETVTX: mode bit for sticky bit (9P2000.u)
+ *
+ * 9P permissions differ slightly from Posix standard modes.
+ *
+ * See Also: http://plan9.bell-labs.com/magic/man2html/2/stat
+ */
+enum p9_perm_t {
+	P9_DMDIR = 0x80000000,
+	P9_DMAPPEND = 0x40000000,
+	P9_DMEXCL = 0x20000000,
+	P9_DMMOUNT = 0x10000000,
+	P9_DMAUTH = 0x08000000,
+	P9_DMTMP = 0x04000000,
+/* 9P2000.u extensions */
+	P9_DMSYMLINK = 0x02000000,
+	P9_DMLINK = 0x01000000,
+	P9_DMDEVICE = 0x00800000,
+	P9_DMNAMEDPIPE = 0x00200000,
+	P9_DMSOCKET = 0x00100000,
+	P9_DMSETUID = 0x00080000,
+	P9_DMSETGID = 0x00040000,
+	P9_DMSETVTX = 0x00010000,
+};
+
+/* 9p2000.L open flags */
+#define P9_DOTL_RDONLY        00000000
+#define P9_DOTL_WRONLY        00000001
+#define P9_DOTL_RDWR          00000002
+#define P9_DOTL_NOACCESS      00000003
+#define P9_DOTL_CREATE        00000100
+#define P9_DOTL_EXCL          00000200
+#define P9_DOTL_NOCTTY        00000400
+#define P9_DOTL_TRUNC         00001000
+#define P9_DOTL_APPEND        00002000
+#define P9_DOTL_NONBLOCK      00004000
+#define P9_DOTL_DSYNC         00010000
+#define P9_DOTL_FASYNC        00020000
+#define P9_DOTL_DIRECT        00040000
+#define P9_DOTL_LARGEFILE     00100000
+#define P9_DOTL_DIRECTORY     00200000
+#define P9_DOTL_NOFOLLOW      00400000
+#define P9_DOTL_NOATIME       01000000
+#define P9_DOTL_CLOEXEC       02000000
+#define P9_DOTL_SYNC          04000000
+
+/* 9p2000.L at flags */
+#define P9_DOTL_AT_REMOVEDIR		0x200
+
+/* 9p2000.L lock type */
+#define P9_LOCK_TYPE_RDLCK 0
+#define P9_LOCK_TYPE_WRLCK 1
+#define P9_LOCK_TYPE_UNLCK 2
+
+/**
+ * enum p9_qid_t - QID types
+ * @P9_QTDIR: directory
+ * @P9_QTAPPEND: append-only
+ * @P9_QTEXCL: excluse use (only one open handle allowed)
+ * @P9_QTMOUNT: mount points
+ * @P9_QTAUTH: authentication file
+ * @P9_QTTMP: non-backed-up files
+ * @P9_QTSYMLINK: symbolic links (9P2000.u)
+ * @P9_QTLINK: hard-link (9P2000.u)
+ * @P9_QTFILE: normal files
+ *
+ * QID types are a subset of permissions - they are primarily
+ * used to differentiate semantics for a file system entity via
+ * a jump-table.  Their value is also the most significant 16 bits
+ * of the permission_t
+ *
+ * See Also: http://plan9.bell-labs.com/magic/man2html/2/stat
+ */
+enum p9_qid_t {
+	P9_QTDIR = 0x80,
+	P9_QTAPPEND = 0x40,
+	P9_QTEXCL = 0x20,
+	P9_QTMOUNT = 0x10,
+	P9_QTAUTH = 0x08,
+	P9_QTTMP = 0x04,
+	P9_QTSYMLINK = 0x02,
+	P9_QTLINK = 0x01,
+	P9_QTFILE = 0x00,
+};
+
+/* 9P Magic Numbers */
+#define P9_NOTAG	((u16)(~0))
+#define P9_NOFID	((u32)(~0))
+#define P9_MAXWELEM	16
+
+/* Minimal header size: size[4] type[1] tag[2] */
+#define P9_HDRSZ	7
+
+/* ample room for Twrite/Rread header */
+#define P9_IOHDRSZ	24
+
+/* Room for readdir header */
+#define P9_READDIRHDRSZ	24
+
+/* size of header for zero copy read/write */
+#define P9_ZC_HDR_SZ 4096
+
+/* maximum length of an error string */
+#define P9_ERRMAX 128
+
+/**
+ * struct p9_qid - file system entity information
+ * @type: 8-bit type &p9_qid_t
+ * @version: 16-bit monotonically incrementing version number
+ * @path: 64-bit per-server-unique ID for a file system element
+ *
+ * qids are identifiers used by 9P servers to track file system
+ * entities.  The type is used to differentiate semantics for operations
+ * on the entity (ie. read means something different on a directory than
+ * on a file).  The path provides a server unique index for an entity
+ * (roughly analogous to an inode number), while the version is updated
+ * every time a file is modified and can be used to maintain cache
+ * coherency between clients and serves.
+ * Servers will often differentiate purely synthetic entities by setting
+ * their version to 0, signaling that they should never be cached and
+ * should be accessed synchronously.
+ *
+ * See Also://plan9.bell-labs.com/magic/man2html/2/stat
+ */
+
+struct p9_qid {
+	u8 type;
+	u32 version;
+	u64 path;
+};
+
+/**
+ * struct p9_wstat - file system metadata information
+ * @size: length prefix for this stat structure instance
+ * @type: the type of the server (equivalent to a major number)
+ * @dev: the sub-type of the server (equivalent to a minor number)
+ * @qid: unique id from the server of type &p9_qid
+ * @mode: Plan 9 format permissions of type &p9_perm_t
+ * @atime: Last access/read time
+ * @mtime: Last modify/write time
+ * @length: file length
+ * @name: last element of path (aka filename)
+ * @uid: owner name
+ * @gid: group owner
+ * @muid: last modifier
+ * @extension: area used to encode extended UNIX support
+ * @n_uid: numeric user id of owner (part of 9p2000.u extension)
+ * @n_gid: numeric group id (part of 9p2000.u extension)
+ * @n_muid: numeric user id of laster modifier (part of 9p2000.u extension)
+ *
+ * See Also: http://plan9.bell-labs.com/magic/man2html/2/stat
+ */
+
+struct p9_wstat {
+	u16 size;
+	u16 type;
+	u32 dev;
+	struct p9_qid qid;
+	u32 mode;
+	u32 atime;
+	u32 mtime;
+	u64 length;
+	const char *name;
+	const char *uid;
+	const char *gid;
+	const char *muid;
+	char *extension;	/* 9p2000.u extensions */
+	kuid_t n_uid;		/* 9p2000.u extensions */
+	kgid_t n_gid;		/* 9p2000.u extensions */
+	kuid_t n_muid;		/* 9p2000.u extensions */
+};
+
+struct p9_stat_dotl {
+	u64 st_result_mask;
+	struct p9_qid qid;
+	u32 st_mode;
+	kuid_t st_uid;
+	kgid_t st_gid;
+	u64 st_nlink;
+	u64 st_rdev;
+	u64 st_size;
+	u64 st_blksize;
+	u64 st_blocks;
+	u64 st_atime_sec;
+	u64 st_atime_nsec;
+	u64 st_mtime_sec;
+	u64 st_mtime_nsec;
+	u64 st_ctime_sec;
+	u64 st_ctime_nsec;
+	u64 st_btime_sec;
+	u64 st_btime_nsec;
+	u64 st_gen;
+	u64 st_data_version;
+};
+
+#define P9_STATS_MODE		0x00000001ULL
+#define P9_STATS_NLINK		0x00000002ULL
+#define P9_STATS_UID		0x00000004ULL
+#define P9_STATS_GID		0x00000008ULL
+#define P9_STATS_RDEV		0x00000010ULL
+#define P9_STATS_ATIME		0x00000020ULL
+#define P9_STATS_MTIME		0x00000040ULL
+#define P9_STATS_CTIME		0x00000080ULL
+#define P9_STATS_INO		0x00000100ULL
+#define P9_STATS_SIZE		0x00000200ULL
+#define P9_STATS_BLOCKS		0x00000400ULL
+
+#define P9_STATS_BTIME		0x00000800ULL
+#define P9_STATS_GEN		0x00001000ULL
+#define P9_STATS_DATA_VERSION	0x00002000ULL
+
+#define P9_STATS_BASIC		0x000007ffULL /* Mask for fields up to BLOCKS */
+#define P9_STATS_ALL		0x00003fffULL /* Mask for All fields above */
+
+/**
+ * struct p9_iattr_dotl - P9 inode attribute for setattr
+ * @valid: bitfield specifying which fields are valid
+ *         same as in struct iattr
+ * @mode: File permission bits
+ * @uid: user id of owner
+ * @gid: group id
+ * @size: File size
+ * @atime_sec: Last access time, seconds
+ * @atime_nsec: Last access time, nanoseconds
+ * @mtime_sec: Last modification time, seconds
+ * @mtime_nsec: Last modification time, nanoseconds
+ */
+
+struct p9_iattr_dotl {
+	u32 valid;
+	u32 mode;
+	kuid_t uid;
+	kgid_t gid;
+	u64 size;
+	u64 atime_sec;
+	u64 atime_nsec;
+	u64 mtime_sec;
+	u64 mtime_nsec;
+};
+
+#define P9_LOCK_SUCCESS 0
+#define P9_LOCK_BLOCKED 1
+#define P9_LOCK_ERROR 2
+#define P9_LOCK_GRACE 3
+
+#define P9_LOCK_FLAGS_BLOCK 1
+#define P9_LOCK_FLAGS_RECLAIM 2
+
+/* struct p9_flock: POSIX lock structure
+ * @type - type of lock
+ * @flags - lock flags
+ * @start - starting offset of the lock
+ * @length - number of bytes
+ * @proc_id - process id which wants to take lock
+ * @client_id - client id
+ */
+
+struct p9_flock {
+	u8 type;
+	u32 flags;
+	u64 start;
+	u64 length;
+	u32 proc_id;
+	char *client_id;
+};
+
+/* struct p9_getlock: getlock structure
+ * @type - type of lock
+ * @start - starting offset of the lock
+ * @length - number of bytes
+ * @proc_id - process id which wants to take lock
+ * @client_id - client id
+ */
+
+struct p9_getlock {
+	u8 type;
+	u64 start;
+	u64 length;
+	u32 proc_id;
+	char *client_id;
+};
+
+struct p9_rstatfs {
+	u32 type;
+	u32 bsize;
+	u64 blocks;
+	u64 bfree;
+	u64 bavail;
+	u64 files;
+	u64 ffree;
+	u64 fsid;
+	u32 namelen;
+};
+
+/**
+ * struct p9_fcall - primary packet structure
+ * @size: prefixed length of the structure
+ * @id: protocol operating identifier of type &p9_msg_t
+ * @tag: transaction id of the request
+ * @offset: used by marshalling routines to track current position in buffer
+ * @capacity: used by marshalling routines to track total malloc'd capacity
+ * @sdata: payload
+ *
+ * &p9_fcall represents the structure for all 9P RPC
+ * transactions.  Requests are packaged into fcalls, and reponses
+ * must be extracted from them.
+ *
+ * See Also: http://plan9.bell-labs.com/magic/man2html/2/fcall
+ */
+
+struct p9_fcall {
+	u32 size;
+	u8 id;
+	u16 tag;
+
+	size_t offset;
+	size_t capacity;
+
+	struct kmem_cache *cache;
+	u8 *sdata;
+};
+#endif /* NET_9P_H */
diff --git a/include/net/9p/client.h b/include/net/9p/client.h
new file mode 100644
index 000000000000..aac21bdac07a
--- /dev/null
+++ b/include/net/9p/client.h
@@ -0,0 +1,297 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * 9P Client Definitions
+ *
+ *  Copyright (C) 2008 by Eric Van Hensbergen <ericvh@gmail.com>
+ *  Copyright (C) 2007 by Latchesar Ionkov <lucho@ionkov.net>
+ */
+
+#ifndef NET_9P_CLIENT_H
+#define NET_9P_CLIENT_H
+
+#include <linux/completion.h>
+#include <linux/refcount.h>
+#include <linux/spinlock.h>
+#include <net/9p/9p.h>
+#include <linux/idr.h>
+
+/* Number of requests per row */
+#define P9_ROW_MAXTAG 255
+
+/** enum p9_proto_versions - 9P protocol versions
+ * @p9_proto_legacy: 9P Legacy mode, pre-9P2000.u
+ * @p9_proto_2000u: 9P2000.u extension
+ * @p9_proto_2000L: 9P2000.L extension
+ */
+
+enum p9_proto_versions {
+	p9_proto_legacy,
+	p9_proto_2000u,
+	p9_proto_2000L,
+};
+
+
+/**
+ * enum p9_trans_status - different states of underlying transports
+ * @Connected: transport is connected and healthy
+ * @Disconnected: transport has been disconnected
+ * @Hung: transport is connected by wedged
+ *
+ * This enumeration details the various states a transport
+ * instatiation can be in.
+ */
+
+enum p9_trans_status {
+	Connected,
+	BeginDisconnect,
+	Disconnected,
+	Hung,
+};
+
+/**
+ * enum p9_req_status_t - status of a request
+ * @REQ_STATUS_ALLOC: request has been allocated but not sent
+ * @REQ_STATUS_UNSENT: request waiting to be sent
+ * @REQ_STATUS_SENT: request sent to server
+ * @REQ_STATUS_RCVD: response received from server
+ * @REQ_STATUS_FLSHD: request has been flushed
+ * @REQ_STATUS_ERROR: request encountered an error on the client side
+ */
+
+enum p9_req_status_t {
+	REQ_STATUS_ALLOC,
+	REQ_STATUS_UNSENT,
+	REQ_STATUS_SENT,
+	REQ_STATUS_RCVD,
+	REQ_STATUS_FLSHD,
+	REQ_STATUS_ERROR,
+};
+
+/**
+ * struct p9_req_t - request slots
+ * @status: status of this request slot
+ * @t_err: transport error
+ * @wq: wait_queue for the client to block on for this request
+ * @tc: the request fcall structure
+ * @rc: the response fcall structure
+ * @req_list: link for higher level objects to chain requests
+ */
+struct p9_req_t {
+	int status;
+	int t_err;
+	refcount_t refcount;
+	struct completion completion;
+	struct p9_fcall tc;
+	struct p9_fcall rc;
+	struct list_head req_list;
+};
+
+/**
+ * struct p9_client - per client instance state
+ * @lock: protect @fids and @reqs
+ * @msize: maximum data size negotiated by protocol
+ * @proto_version: 9P protocol version to use
+ * @trans_mod: module API instantiated with this client
+ * @status: connection state
+ * @trans: tranport instance state and API
+ * @fids: All active FID handles
+ * @reqs: All active requests.
+ * @name: node name used as client id
+ *
+ * The client structure is used to keep track of various per-client
+ * state that has been instantiated.
+ */
+struct p9_client {
+	spinlock_t lock;
+	unsigned int msize;
+	unsigned char proto_version;
+	struct p9_trans_module *trans_mod;
+	const char *trans_tag;
+	enum p9_trans_status status;
+	void *trans;
+	struct kmem_cache *fcall_cache;
+
+	union {
+		struct {
+			int rfd;
+			int wfd;
+		} fd;
+		struct {
+			u16 port;
+			bool privport;
+
+		} tcp;
+	} trans_opts;
+
+	struct idr fids;
+	struct idr reqs;
+
+	char name[64 + 1];
+};
+
+/**
+ * struct p9_fid - file system entity handle
+ * @clnt: back pointer to instantiating &p9_client
+ * @fid: numeric identifier for this handle
+ * @mode: current mode of this fid (enum?)
+ * @qid: the &p9_qid server identifier this handle points to
+ * @iounit: the server reported maximum transaction size for this file
+ * @uid: the numeric uid of the local user who owns this handle
+ * @rdir: readdir accounting structure (allocated on demand)
+ * @dlist: per-dentry fid tracking
+ *
+ * TODO: This needs lots of explanation.
+ */
+enum fid_source {
+	FID_FROM_OTHER,
+	FID_FROM_INODE,
+	FID_FROM_DENTRY,
+};
+
+struct p9_fid {
+	struct p9_client *clnt;
+	u32 fid;
+	refcount_t count;
+	int mode;
+	struct p9_qid qid;
+	u32 iounit;
+	kuid_t uid;
+
+	void *rdir;
+
+	struct hlist_node dlist;	/* list of all fids attached to a dentry */
+	struct hlist_node ilist;
+};
+
+/**
+ * struct p9_dirent - directory entry structure
+ * @qid: The p9 server qid for this dirent
+ * @d_off: offset to the next dirent
+ * @d_type: type of file
+ * @d_name: file name
+ */
+
+struct p9_dirent {
+	struct p9_qid qid;
+	u64 d_off;
+	unsigned char d_type;
+	char d_name[256];
+};
+
+struct iov_iter;
+
+int p9_show_client_options(struct p9_client *clnt);
+int p9_client_statfs(struct p9_fid *fid, struct p9_rstatfs *sb);
+int p9_client_rename(struct p9_fid *fid, struct p9_fid *newdirfid,
+		     const char *name);
+int p9_client_renameat(struct p9_fid *olddirfid, const char *old_name,
+		       struct p9_fid *newdirfid, const char *new_name);
+struct p9_client *p9_client_create(const char *dev_name, char *options);
+void p9_client_destroy(struct p9_client *clnt);
+void p9_client_disconnect(struct p9_client *clnt);
+void p9_client_begin_disconnect(struct p9_client *clnt);
+struct p9_fid *p9_client_attach(struct p9_client *clnt, struct p9_fid *afid,
+				const char *uname, kuid_t n_uname, const char *aname);
+struct p9_fid *p9_client_walk(struct p9_fid *oldfid, uint16_t nwname,
+		const unsigned char * const *wnames, int clone);
+int p9_client_open(struct p9_fid *fid, int mode);
+int p9_client_fcreate(struct p9_fid *fid, const char *name, u32 perm, int mode,
+							char *extension);
+int p9_client_link(struct p9_fid *fid, struct p9_fid *oldfid, const char *newname);
+int p9_client_symlink(struct p9_fid *fid, const char *name, const char *symname,
+		kgid_t gid, struct p9_qid *qid);
+int p9_client_create_dotl(struct p9_fid *ofid, const char *name, u32 flags, u32 mode,
+		kgid_t gid, struct p9_qid *qid);
+int p9_client_clunk(struct p9_fid *fid);
+int p9_client_fsync(struct p9_fid *fid, int datasync);
+int p9_client_remove(struct p9_fid *fid);
+int p9_client_unlinkat(struct p9_fid *dfid, const char *name, int flags);
+int p9_client_read(struct p9_fid *fid, u64 offset, struct iov_iter *to, int *err);
+int p9_client_read_once(struct p9_fid *fid, u64 offset, struct iov_iter *to,
+		int *err);
+int p9_client_write(struct p9_fid *fid, u64 offset, struct iov_iter *from, int *err);
+int p9_client_readdir(struct p9_fid *fid, char *data, u32 count, u64 offset);
+int p9dirent_read(struct p9_client *clnt, char *buf, int len,
+		  struct p9_dirent *dirent);
+struct p9_wstat *p9_client_stat(struct p9_fid *fid);
+int p9_client_wstat(struct p9_fid *fid, struct p9_wstat *wst);
+int p9_client_setattr(struct p9_fid *fid, struct p9_iattr_dotl *attr);
+
+struct p9_stat_dotl *p9_client_getattr_dotl(struct p9_fid *fid,
+							u64 request_mask);
+
+int p9_client_mknod_dotl(struct p9_fid *oldfid, const char *name, int mode,
+			dev_t rdev, kgid_t gid, struct p9_qid *qid);
+int p9_client_mkdir_dotl(struct p9_fid *fid, const char *name, int mode,
+				kgid_t gid, struct p9_qid *qid);
+int p9_client_lock_dotl(struct p9_fid *fid, struct p9_flock *flock, u8 *status);
+int p9_client_getlock_dotl(struct p9_fid *fid, struct p9_getlock *fl);
+void p9_fcall_fini(struct p9_fcall *fc);
+struct p9_req_t *p9_tag_lookup(struct p9_client *c, u16 tag);
+
+static inline void p9_req_get(struct p9_req_t *r)
+{
+	refcount_inc(&r->refcount);
+}
+
+static inline int p9_req_try_get(struct p9_req_t *r)
+{
+	return refcount_inc_not_zero(&r->refcount);
+}
+
+int p9_req_put(struct p9_client *c, struct p9_req_t *r);
+
+/* fid reference counting helpers:
+ *  - fids used for any length of time should always be referenced through
+ *    p9_fid_get(), and released with p9_fid_put()
+ *  - v9fs_fid_lookup() or similar will automatically call get for you
+ *    and also require a put
+ *  - the *_fid_add() helpers will stash the fid in the inode,
+ *    at which point it is the responsibility of evict_inode()
+ *    to call the put
+ *  - the last put will automatically send a clunk to the server
+ */
+static inline struct p9_fid *p9_fid_get(struct p9_fid *fid)
+{
+	refcount_inc(&fid->count);
+
+	return fid;
+}
+
+static inline int p9_fid_put(struct p9_fid *fid)
+{
+	if (!fid || IS_ERR(fid))
+		return 0;
+
+	if (!refcount_dec_and_test(&fid->count))
+		return 0;
+
+	return p9_client_clunk(fid);
+}
+
+void p9_client_cb(struct p9_client *c, struct p9_req_t *req, int status);
+
+int p9_parse_header(struct p9_fcall *pdu, int32_t *size, int8_t *type,
+		    int16_t *tag, int rewind);
+int p9stat_read(struct p9_client *clnt, char *buf, int len,
+		struct p9_wstat *st);
+void p9stat_free(struct p9_wstat *stbuf);
+
+static inline int p9_is_proto_dotu(struct p9_client *clnt)
+{
+	return false;
+}
+static inline int p9_is_proto_dotl(struct p9_client *clnt)
+{
+	return true;
+}
+struct p9_fid *p9_client_xattrwalk(struct p9_fid *file_fid,
+				   const char *attr_name, u64 *attr_size);
+int p9_client_xattrcreate(struct p9_fid *fid, const char *name,
+			  u64 attr_size, int flags);
+int p9_client_readlink(struct p9_fid *fid, char **target);
+
+int p9_client_init(void);
+void p9_client_exit(void);
+
+#endif /* NET_9P_CLIENT_H */
diff --git a/include/net/9p/transport.h b/include/net/9p/transport.h
new file mode 100644
index 000000000000..9f5f9345f3f5
--- /dev/null
+++ b/include/net/9p/transport.h
@@ -0,0 +1,73 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Transport Definition
+ *
+ *  Copyright (C) 2005 by Latchesar Ionkov <lucho@ionkov.net>
+ *  Copyright (C) 2004-2008 by Eric Van Hensbergen <ericvh@gmail.com>
+ */
+
+#ifndef NET_9P_TRANSPORT_H
+#define NET_9P_TRANSPORT_H
+
+#include <linux/module.h>
+#include <linux/list.h>
+
+#define P9_DEF_MIN_RESVPORT	(665U)
+#define P9_DEF_MAX_RESVPORT	(1023U)
+
+struct p9_client;
+struct p9_req_t;
+struct iov_iter;
+
+/**
+ * struct p9_trans_module - transport module interface
+ * @list: used to maintain a list of currently available transports
+ * @name: the human-readable name of the transport
+ * @maxsize: transport provided maximum packet size
+ * @pooled_rbuffers: currently only set for RDMA transport which pulls the
+ *                   response buffers from a shared pool, and accordingly
+ *                   we're less flexible when choosing the response message
+ *                   size in this case
+ * @def: set if this transport should be considered the default
+ * @create: member function to create a new connection on this transport
+ * @close: member function to discard a connection on this transport
+ * @request: member function to issue a request to the transport
+ * @poll: member function to poll for completed requests
+ * @cancel: member function to cancel a request (if it hasn't been sent)
+ * @cancelled: member function to notify that a cancelled request will not
+ *             receive a reply
+ *
+ * This is the basic API for a transport module which is registered by the
+ * transport module with the 9P core network module and used by the client
+ * to instantiate a new connection on a transport.
+ *
+ * The transport module list is protected by v9fs_trans_lock.
+ */
+
+struct p9_trans_module {
+	struct list_head list;
+	char *name;		/* name of transport */
+	int maxsize;		/* max message size of transport */
+	bool pooled_rbuffers;
+	int def;		/* this transport should be default */
+	struct module *owner;
+	int (*create)(struct p9_client *client,
+		      const char *devname, char *args);
+	void (*close)(struct p9_client *client);
+	int (*request)(struct p9_client *client, struct p9_req_t *req);
+	int (*poll)(struct p9_client *client);
+	int (*cancel)(struct p9_client *client, struct p9_req_t *req);
+	int (*cancelled)(struct p9_client *client, struct p9_req_t *req);
+	int (*show_options)(struct p9_client *client);
+};
+
+void v9fs_register_trans(struct p9_trans_module *m);
+void v9fs_unregister_trans(struct p9_trans_module *m);
+struct p9_trans_module *v9fs_get_trans_by_name(const char *s);
+struct p9_trans_module *v9fs_get_default_trans(void);
+static inline void v9fs_put_trans(struct p9_trans_module *m) {}
+
+#define MODULE_ALIAS_9P(transport) \
+	MODULE_ALIAS("9p-" transport)
+
+#endif /* NET_9P_TRANSPORT_H */
diff --git a/include/printf.h b/include/printf.h
index 83da06201a3a..d111afacb63e 100644
--- a/include/printf.h
+++ b/include/printf.h
@@ -32,6 +32,17 @@ void __noreturn panic_no_stacktrace(const char *fmt, ...) __printf(1, 2);
 
 #define printk			printf
 
+/*
+ * Dummy printk for disabled debugging statements to use whilst maintaining
+ * gcc's format checking.
+ */
+#define no_printk(fmt, ...)				\
+({							\
+	if (0)						\
+		printk(fmt, ##__VA_ARGS__);		\
+	0;						\
+})
+
 enum {
 	DUMP_PREFIX_NONE,
 	DUMP_PREFIX_ADDRESS,
diff --git a/include/uapi/linux/virtio_9p.h b/include/uapi/linux/virtio_9p.h
new file mode 100644
index 000000000000..374b68f8ac6e
--- /dev/null
+++ b/include/uapi/linux/virtio_9p.h
@@ -0,0 +1,44 @@
+#ifndef _LINUX_VIRTIO_9P_H
+#define _LINUX_VIRTIO_9P_H
+/* This header is BSD licensed so anyone can use the definitions to implement
+ * compatible drivers/servers.
+ *
+ * Redistribution and use in source and binary forms, with or without
+ * modification, are permitted provided that the following conditions
+ * are met:
+ * 1. Redistributions of source code must retain the above copyright
+ *    notice, this list of conditions and the following disclaimer.
+ * 2. Redistributions in binary form must reproduce the above copyright
+ *    notice, this list of conditions and the following disclaimer in the
+ *    documentation and/or other materials provided with the distribution.
+ * 3. Neither the name of IBM nor the names of its contributors
+ *    may be used to endorse or promote products derived from this software
+ *    without specific prior written permission.
+ * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS ``AS IS'' AND
+ * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
+ * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
+ * ARE DISCLAIMED.  IN NO EVENT SHALL IBM OR CONTRIBUTORS BE LIABLE
+ * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
+ * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
+ * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
+ * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
+ * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
+ * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
+ * SUCH DAMAGE. */
+#include <linux/virtio_types.h>
+#include <linux/virtio_ids.h>
+#include <linux/virtio_config.h>
+
+/* The feature bitmap for virtio 9P */
+
+/* The mount point is specified in a config variable */
+#define VIRTIO_9P_MOUNT_TAG 0
+
+struct virtio_9p_config {
+	/* length of the tag name */
+	__virtio16 tag_len;
+	/* non-NULL terminated tag name */
+	__u8 tag[];
+} __attribute__((packed));
+
+#endif /* _LINUX_VIRTIO_9P_H */
diff --git a/net/9p/Kconfig b/net/9p/Kconfig
new file mode 100644
index 000000000000..ebb9ff91b723
--- /dev/null
+++ b/net/9p/Kconfig
@@ -0,0 +1,32 @@
+# SPDX-License-Identifier: GPL-2.0-only
+#
+# 9P protocol configuration
+#
+
+menuconfig NET_9P
+	tristate "Plan 9 Resource Sharing Support (9P2000)"
+	select NETFS_SUPPORT
+	select IDR
+	help
+	  If you say Y here, you will get experimental support for
+	  Plan 9 resource sharing via the 9P2000 protocol.
+
+	  See <http://v9fs.sf.net> for more information.
+
+	  If unsure, say N.
+
+if NET_9P
+
+config NET_9P_VIRTIO
+	depends on VIRTIO
+	tristate "9P Virtio Transport"
+	help
+	  This builds support for a transports between
+	  guest partitions and a host partition.
+
+config NET_9P_DEBUG
+	bool "Debug information"
+	help
+	  Say Y if you want the 9P subsystem to log debug information.
+
+endif
diff --git a/net/9p/Makefile b/net/9p/Makefile
new file mode 100644
index 000000000000..10bf41d773be
--- /dev/null
+++ b/net/9p/Makefile
@@ -0,0 +1,11 @@
+# SPDX-License-Identifier: GPL-2.0
+obj-$(CONFIG_NET_9P) := 9pnet.o
+obj-$(CONFIG_NET_9P_VIRTIO) += 9pnet_virtio.o
+
+9pnet-objs := \
+	mod.o \
+	client.o \
+	protocol.o
+
+9pnet_virtio-objs := \
+	trans_virtio.o \
diff --git a/net/9p/client.c b/net/9p/client.c
new file mode 100644
index 000000000000..1fae8092f97e
--- /dev/null
+++ b/net/9p/client.c
@@ -0,0 +1,1932 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * 9P Client
+ *
+ *  Copyright (C) 2008 by Eric Van Hensbergen <ericvh@gmail.com>
+ *  Copyright (C) 2007 by Latchesar Ionkov <lucho@ionkov.net>
+ */
+
+#define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
+
+#include <linux/errno.h>
+#include <linux/kdev_t.h>
+#include <linux/fs.h>
+#include <linux/idr.h>
+#include <linux/spinlock.h>
+#include <linux/mutex.h>
+#include <linux/printk.h>
+#include <linux/slab.h>
+#include <linux/uaccess.h>
+#include <linux/uidgid.h>
+#include <linux/uio.h>
+#include <linux/kernel.h>
+#include <linux/completion.h>
+#include <net/9p/9p.h>
+#include <linux/parser.h>
+#include <net/9p/client.h>
+#include <net/9p/transport.h>
+#include <barebox-info.h>
+#include <stdio.h>
+#include "protocol.h"
+
+/* DEFAULT MSIZE = 32 pages worth of payload + P9_HDRSZ +
+ * room for write (16 extra) or read (11 extra) operands.
+ */
+
+#define DEFAULT_MSIZE ((128 * 1024) + P9_IOHDRSZ)
+
+/* Client Option Parsing (code inspired by NFS code)
+ *  - a little lazy - parse all client options
+ */
+
+enum {
+	Opt_msize,
+	Opt_trans,
+	Opt_err,
+};
+
+static const match_table_t tokens = {
+	{Opt_msize, "msize=%u"},
+	{Opt_trans, "trans=%s"},
+	{Opt_err, NULL},
+};
+
+int p9_show_client_options(struct p9_client *clnt)
+{
+	if (clnt->msize != DEFAULT_MSIZE)
+		printf(",msize=%u", clnt->msize);
+	printf(",trans=%s", clnt->trans_mod->name);
+
+	if (clnt->trans_mod->show_options)
+		return clnt->trans_mod->show_options(clnt);
+	return 0;
+}
+EXPORT_SYMBOL(p9_show_client_options);
+
+/* Some error codes are taken directly from the server replies,
+ * make sure they are valid.
+ */
+static int safe_errno(int err)
+{
+	if (err > 0 || err < -MAX_ERRNO) {
+		p9_debug(P9_DEBUG_ERROR, "Invalid error code %d\n", err);
+		return -EPROTO;
+	}
+	return err;
+}
+
+/**
+ * parse_opts - parse mount options into client structure
+ * @opts: options string passed from mount
+ * @clnt: existing v9fs client information
+ *
+ * Return 0 upon success, -ERRNO upon failure
+ */
+
+static int parse_opts(char *opts, struct p9_client *clnt)
+{
+	char *options, *tmp_options;
+	char *p;
+	substring_t args[MAX_OPT_ARGS];
+	int option;
+	char *s;
+	int ret = 0;
+
+	clnt->proto_version = p9_proto_2000L;
+	clnt->msize = DEFAULT_MSIZE;
+
+	if (!opts)
+		return 0;
+
+	tmp_options = kstrdup(opts, GFP_KERNEL);
+	if (!tmp_options)
+		return -ENOMEM;
+	options = tmp_options;
+
+	while ((p = strsep(&options, ",")) != NULL) {
+		int token, r;
+
+		if (!*p)
+			continue;
+		token = match_token(p, tokens, args);
+		switch (token) {
+		case Opt_msize:
+			r = match_int(&args[0], &option);
+			if (r < 0) {
+				p9_debug(P9_DEBUG_ERROR,
+					 "integer field, but no integer?\n");
+				ret = r;
+				continue;
+			}
+			if (option < 4096) {
+				p9_debug(P9_DEBUG_ERROR,
+					 "msize should be at least 4k\n");
+				ret = -EINVAL;
+				continue;
+			}
+			clnt->msize = option;
+			break;
+		case Opt_trans:
+			s = match_strdup(&args[0]);
+			if (!s) {
+				ret = -ENOMEM;
+				p9_debug(P9_DEBUG_ERROR,
+					 "problem allocating copy of trans arg\n");
+				goto free_and_return;
+			}
+
+			v9fs_put_trans(clnt->trans_mod);
+			clnt->trans_mod = v9fs_get_trans_by_name(s);
+			if (!clnt->trans_mod) {
+				pr_info("Could not find request transport: %s\n",
+					s);
+				ret = -EINVAL;
+			}
+			kfree(s);
+			break;
+		default:
+			continue;
+		}
+	}
+
+free_and_return:
+	if (ret)
+		v9fs_put_trans(clnt->trans_mod);
+	kfree(tmp_options);
+	return ret;
+}
+
+static int p9_fcall_init(struct p9_client *c, struct p9_fcall *fc,
+			 int alloc_msize)
+{
+	fc->sdata = kmalloc(alloc_msize, GFP_NOFS);
+	if (!fc->sdata)
+		return -ENOMEM;
+	fc->capacity = alloc_msize;
+	fc->id = 0;
+	fc->tag = P9_NOTAG;
+	return 0;
+}
+
+void p9_fcall_fini(struct p9_fcall *fc)
+{
+	kfree(fc->sdata);
+}
+EXPORT_SYMBOL(p9_fcall_fini);
+
+/**
+ * p9_tag_alloc - Allocate a new request.
+ * @c: Client session.
+ * @type: Transaction type.
+ * @t_size: Buffer size for holding this request
+ * (automatic calculation by format template if 0).
+ * @r_size: Buffer size for holding server's reply on this request
+ * (automatic calculation by format template if 0).
+ * @fmt: Format template for assembling 9p request message
+ * (see p9pdu_vwritef).
+ * @ap: Variable arguments to be fed to passed format template
+ * (see p9pdu_vwritef).
+ *
+ * Context: Process context.
+ * Return: Pointer to new request.
+ */
+static struct p9_req_t *
+p9_tag_alloc(struct p9_client *c, int8_t type, uint t_size, uint r_size,
+	      const char *fmt, va_list ap)
+{
+	struct p9_req_t *req = malloc(sizeof(*req));
+	int alloc_tsize;
+	int alloc_rsize;
+	int tag;
+	va_list apc;
+
+	va_copy(apc, ap);
+	alloc_tsize = min_t(size_t, c->msize,
+			    t_size ?: p9_msg_buf_size(c, type, fmt, apc));
+	va_end(apc);
+
+	alloc_rsize = min_t(size_t, c->msize,
+			    r_size ?: p9_msg_buf_size(c, type + 1, fmt, ap));
+
+	if (!req)
+		return ERR_PTR(-ENOMEM);
+
+	if (p9_fcall_init(c, &req->tc, alloc_tsize))
+		goto free_req;
+	if (p9_fcall_init(c, &req->rc, alloc_rsize))
+		goto free;
+
+	p9pdu_reset(&req->tc);
+	p9pdu_reset(&req->rc);
+	req->t_err = 0;
+	req->status = REQ_STATUS_ALLOC;
+	/* refcount needs to be set to 0 before inserting into the idr
+	 * so p9_tag_lookup does not accept a request that is not fully
+	 * initialized. refcount_set to 2 below will mark request ready.
+	 */
+	refcount_set(&req->refcount, 0);
+	init_completion(&req->completion);
+	INIT_LIST_HEAD(&req->req_list);
+
+	idr_preload(GFP_NOFS);
+	spin_lock_irq(&c->lock);
+	if (type == P9_TVERSION)
+		tag = idr_alloc(&c->reqs, req, P9_NOTAG, P9_NOTAG + 1,
+				GFP_NOWAIT);
+	else
+		tag = idr_alloc(&c->reqs, req, 0, P9_NOTAG, GFP_NOWAIT);
+	req->tc.tag = tag;
+	spin_unlock_irq(&c->lock);
+	idr_preload_end();
+	if (tag < 0)
+		goto free;
+
+	/* Init ref to two because in the general case there is one ref
+	 * that is put asynchronously by a writer thread, one ref
+	 * temporarily given by p9_tag_lookup and put by p9_client_cb
+	 * in the recv thread, and one ref put by p9_req_put in the
+	 * main thread. The only exception is virtio that does not use
+	 * p9_tag_lookup but does not have a writer thread either
+	 * (the write happens synchronously in the request
+	 * callback), so p9_client_cb eats the second ref there
+	 * as the pointer is duplicated directly by virtqueue_add_sgs()
+	 */
+	refcount_set(&req->refcount, 2);
+
+	return req;
+
+free:
+	p9_fcall_fini(&req->tc);
+	p9_fcall_fini(&req->rc);
+free_req:
+	free(req);
+	return ERR_PTR(-ENOMEM);
+}
+
+/**
+ * p9_tag_lookup - Look up a request by tag.
+ * @c: Client session.
+ * @tag: Transaction ID.
+ *
+ * Context: Any context.
+ * Return: A request, or %NULL if there is no request with that tag.
+ */
+struct p9_req_t *p9_tag_lookup(struct p9_client *c, u16 tag)
+{
+	struct p9_req_t *req;
+
+again:
+	req = idr_find(&c->reqs, tag);
+	if (req) {
+		if (!p9_req_try_get(req))
+			goto again;
+		if (req->tc.tag != tag) {
+			p9_req_put(c, req);
+			goto again;
+		}
+	}
+
+	return req;
+}
+EXPORT_SYMBOL(p9_tag_lookup);
+
+/**
+ * p9_tag_remove - Remove a tag.
+ * @c: Client session.
+ * @r: Request of reference.
+ *
+ * Context: Any context.
+ */
+static void p9_tag_remove(struct p9_client *c, struct p9_req_t *r)
+{
+	unsigned long flags;
+	u16 tag = r->tc.tag;
+
+	p9_debug(P9_DEBUG_MUX, "freeing clnt %p req %p tag: %d\n", c, r, tag);
+	spin_lock_irqsave(&c->lock, flags);
+	idr_remove(&c->reqs, tag);
+	spin_unlock_irqrestore(&c->lock, flags);
+}
+
+int p9_req_put(struct p9_client *c, struct p9_req_t *r)
+{
+	if (refcount_dec_and_test(&r->refcount)) {
+		p9_tag_remove(c, r);
+
+		p9_fcall_fini(&r->tc);
+		p9_fcall_fini(&r->rc);
+		free(r);
+		return 1;
+	}
+	return 0;
+}
+EXPORT_SYMBOL(p9_req_put);
+
+/**
+ * p9_tag_cleanup - cleans up tags structure and reclaims resources
+ * @c:  v9fs client struct
+ *
+ * This frees resources associated with the tags structure
+ *
+ */
+static void p9_tag_cleanup(struct p9_client *c)
+{
+	struct p9_req_t *req;
+	int id;
+
+	idr_for_each_entry(&c->reqs, req, id) {
+		pr_info("Tag %d still in use\n", id);
+		if (p9_req_put(c, req) == 0)
+			pr_warn("Packet with tag %d has still references",
+				req->tc.tag);
+	}
+}
+
+/**
+ * p9_client_cb - call back from transport to client
+ * @c: client state
+ * @req: request received
+ * @status: request status, one of REQ_STATUS_*
+ *
+ */
+void p9_client_cb(struct p9_client *c, struct p9_req_t *req, int status)
+{
+	p9_debug(P9_DEBUG_MUX, " tag %d\n", req->tc.tag);
+
+	WRITE_ONCE(req->status, status);
+
+	if (READ_ONCE(req->status) >= REQ_STATUS_RCVD)
+		complete(&req->completion);
+	p9_debug(P9_DEBUG_MUX, "wakeup: %d\n", req->tc.tag);
+	p9_req_put(c, req);
+}
+EXPORT_SYMBOL(p9_client_cb);
+
+/**
+ * p9_parse_header - parse header arguments out of a packet
+ * @pdu: packet to parse
+ * @size: size of packet
+ * @type: type of request
+ * @tag: tag of packet
+ * @rewind: set if we need to rewind offset afterwards
+ */
+
+int
+p9_parse_header(struct p9_fcall *pdu, int32_t *size, int8_t *type,
+		int16_t *tag, int rewind)
+{
+	s8 r_type;
+	s16 r_tag;
+	s32 r_size;
+	int offset = pdu->offset;
+	int err;
+
+	pdu->offset = 0;
+
+	err = p9pdu_readf(pdu, 0, "dbw", &r_size, &r_type, &r_tag);
+	if (err)
+		goto rewind_and_exit;
+
+	if (type)
+		*type = r_type;
+	if (tag)
+		*tag = r_tag;
+	if (size)
+		*size = r_size;
+
+	if (pdu->size != r_size || r_size < 7) {
+		err = -EINVAL;
+		goto rewind_and_exit;
+	}
+
+	pdu->id = r_type;
+	pdu->tag = r_tag;
+
+	p9_debug(P9_DEBUG_9P, "<<< size=%d type: %d tag: %d\n",
+		 pdu->size, pdu->id, pdu->tag);
+
+rewind_and_exit:
+	if (rewind)
+		pdu->offset = offset;
+	return err;
+}
+EXPORT_SYMBOL(p9_parse_header);
+
+/**
+ * p9_check_errors - check 9p packet for error return and process it
+ * @c: current client instance
+ * @req: request to parse and check for error conditions
+ *
+ * returns error code if one is discovered, otherwise returns 0
+ *
+ * this will have to be more complicated if we have multiple
+ * error packet types
+ */
+
+static int p9_check_errors(struct p9_client *c, struct p9_req_t *req)
+{
+	s8 type;
+	int err;
+	int ecode;
+
+	err = p9_parse_header(&req->rc, NULL, &type, NULL, 0);
+	if (req->rc.size > req->rc.capacity) {
+		pr_err("requested packet size too big: %d does not fit %zu (type=%d)\n",
+		       req->rc.size, req->rc.capacity, req->rc.id);
+		return -EIO;
+	}
+	/* dump the response from server
+	 * This should be after check errors which poplulate pdu_fcall.
+	 */
+	if (err) {
+		p9_debug(P9_DEBUG_ERROR, "couldn't parse header %d\n", err);
+		return err;
+	}
+	if (type != P9_RERROR && type != P9_RLERROR)
+		return 0;
+
+	err = p9pdu_readf(&req->rc, c->proto_version, "d", &ecode);
+	if (err)
+		goto out_err;
+	err = -ecode;
+
+	p9_debug(P9_DEBUG_9P, "<<< RLERROR (%d)\n", -ecode);
+
+	return err;
+
+out_err:
+	p9_debug(P9_DEBUG_ERROR, "couldn't parse error%d\n", err);
+
+	return err;
+}
+
+static struct p9_req_t *
+p9_client_rpc(struct p9_client *c, int8_t type, const char *fmt, ...);
+
+/**
+ * p9_client_flush - flush (cancel) a request
+ * @c: client state
+ * @oldreq: request to cancel
+ *
+ * This sents a flush for a particular request and links
+ * the flush request to the original request.  The current
+ * code only supports a single flush request although the protocol
+ * allows for multiple flush requests to be sent for a single request.
+ *
+ */
+
+static int p9_client_flush(struct p9_client *c, struct p9_req_t *oldreq)
+{
+	struct p9_req_t *req;
+	s16 oldtag;
+	int err;
+
+	err = p9_parse_header(&oldreq->tc, NULL, NULL, &oldtag, 1);
+	if (err)
+		return err;
+
+	p9_debug(P9_DEBUG_9P, ">>> TFLUSH tag %d\n", oldtag);
+
+	req = p9_client_rpc(c, P9_TFLUSH, "w", oldtag);
+	if (IS_ERR(req))
+		return PTR_ERR(req);
+
+	/* if we haven't received a response for oldreq,
+	 * remove it from the list
+	 */
+	if (READ_ONCE(oldreq->status) == REQ_STATUS_SENT) {
+		if (c->trans_mod->cancelled)
+			c->trans_mod->cancelled(c, oldreq);
+	}
+
+	p9_req_put(c, req);
+	return 0;
+}
+
+static struct p9_req_t *p9_client_prepare_req(struct p9_client *c,
+					      int8_t type, uint t_size, uint r_size,
+					      const char *fmt, va_list ap)
+{
+	int err;
+	struct p9_req_t *req;
+	va_list apc;
+
+	p9_debug(P9_DEBUG_MUX, "client %p op %d\n", c, type);
+
+	/* we allow for any status other than disconnected */
+	if (c->status == Disconnected)
+		return ERR_PTR(-EIO);
+
+	/* if status is begin_disconnected we allow only clunk request */
+	if (c->status == BeginDisconnect && type != P9_TCLUNK)
+		return ERR_PTR(-EIO);
+
+	va_copy(apc, ap);
+	req = p9_tag_alloc(c, type, t_size, r_size, fmt, apc);
+	va_end(apc);
+	if (IS_ERR(req))
+		return req;
+
+	/* marshall the data */
+	p9pdu_prepare(&req->tc, req->tc.tag, type);
+	err = p9pdu_vwritef(&req->tc, c->proto_version, fmt, ap);
+	if (err)
+		goto reterr;
+	p9pdu_finalize(c, &req->tc);
+	return req;
+reterr:
+	p9_req_put(c, req);
+	/* We have to put also the 2nd reference as it won't be used */
+	p9_req_put(c, req);
+	return ERR_PTR(err);
+}
+
+/**
+ * p9_client_rpc - issue a request and wait for a response
+ * @c: client session
+ * @type: type of request
+ * @fmt: protocol format string (see protocol.c)
+ *
+ * Returns request structure (which client must free using p9_req_put)
+ */
+
+static struct p9_req_t *
+p9_client_rpc(struct p9_client *c, int8_t type, const char *fmt, ...)
+{
+	va_list ap;
+	int err;
+	struct p9_req_t *req;
+	/* Passing zero for tsize/rsize to p9_client_prepare_req() tells it to
+	 * auto determine an appropriate (small) request/response size
+	 * according to actual message data being sent. Currently RDMA
+	 * transport is excluded from this response message size optimization,
+	 * as it would not cope with it, due to its pooled response buffers
+	 * (using an optimized request size for RDMA as well though).
+	 */
+	const uint tsize = 0;
+	const uint rsize = c->trans_mod->pooled_rbuffers ? c->msize : 0;
+
+	va_start(ap, fmt);
+	req = p9_client_prepare_req(c, type, tsize, rsize, fmt, ap);
+	va_end(ap);
+	if (IS_ERR(req))
+		return req;
+
+
+	err = c->trans_mod->request(c, req);
+	if (err < 0) {
+		/* write won't happen */
+		p9_req_put(c, req);
+		if (err != -ERESTARTSYS && err != -EFAULT)
+			c->status = Disconnected;
+		goto recalc_sigpending;
+	}
+again:
+	do {
+		c->trans_mod->poll(c);
+	} while (!completion_done(&req->completion) && !(err = ctrlc()));
+
+	if (err)
+		err = -ERESTARTSYS;
+
+	if (err == -ERESTARTSYS && c->status == Connected &&
+	    type == P9_TFLUSH) {
+		goto again;
+	}
+
+	if (READ_ONCE(req->status) == REQ_STATUS_ERROR) {
+		p9_debug(P9_DEBUG_ERROR, "req_status error %d\n", req->t_err);
+		err = req->t_err;
+	}
+	if (err == -ERESTARTSYS && c->status == Connected) {
+		p9_debug(P9_DEBUG_MUX, "flushing\n");
+
+		if (c->trans_mod->cancel(c, req))
+			p9_client_flush(c, req);
+
+		/* if we received the response anyway, don't signal error */
+		if (READ_ONCE(req->status) == REQ_STATUS_RCVD)
+			err = 0;
+	}
+recalc_sigpending:
+	if (err < 0)
+		goto reterr;
+
+	err = p9_check_errors(c, req);
+	if (!err)
+		return req;
+reterr:
+	p9_req_put(c, req);
+	return ERR_PTR(safe_errno(err));
+}
+
+static struct p9_fid *p9_fid_create(struct p9_client *clnt)
+{
+	int ret;
+	struct p9_fid *fid;
+
+	p9_debug(P9_DEBUG_FID, "clnt %p\n", clnt);
+	fid = kzalloc(sizeof(*fid), GFP_KERNEL);
+	if (!fid)
+		return NULL;
+
+	fid->mode = -1;
+	fid->clnt = clnt;
+	refcount_set(&fid->count, 1);
+
+	idr_preload(GFP_KERNEL);
+	spin_lock_irq(&clnt->lock);
+	ret = idr_alloc_u32(&clnt->fids, fid, &fid->fid, P9_NOFID - 1,
+			    GFP_NOWAIT);
+	spin_unlock_irq(&clnt->lock);
+	idr_preload_end();
+	if (!ret)
+		return fid;
+
+	kfree(fid);
+	return NULL;
+}
+
+static void p9_fid_destroy(struct p9_fid *fid)
+{
+	struct p9_client *clnt;
+	unsigned long flags;
+
+	p9_debug(P9_DEBUG_FID, "fid %d\n", fid->fid);
+	clnt = fid->clnt;
+	spin_lock_irqsave(&clnt->lock, flags);
+	idr_remove(&clnt->fids, fid->fid);
+	spin_unlock_irqrestore(&clnt->lock, flags);
+	kfree(fid->rdir);
+	kfree(fid);
+}
+
+static int p9_client_version(struct p9_client *c)
+{
+	int err;
+	struct p9_req_t *req;
+	char *version = NULL;
+	int msize;
+
+	p9_debug(P9_DEBUG_9P, ">>> TVERSION msize %d protocol %d\n",
+		 c->msize, c->proto_version);
+
+	switch (c->proto_version) {
+	case p9_proto_2000L:
+		req = p9_client_rpc(c, P9_TVERSION, "ds",
+				    c->msize, "9P2000.L");
+		break;
+	case p9_proto_2000u:
+		req = p9_client_rpc(c, P9_TVERSION, "ds",
+				    c->msize, "9P2000.u");
+		break;
+	case p9_proto_legacy:
+		req = p9_client_rpc(c, P9_TVERSION, "ds",
+				    c->msize, "9P2000");
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	if (IS_ERR(req))
+		return PTR_ERR(req);
+
+	err = p9pdu_readf(&req->rc, c->proto_version, "ds", &msize, &version);
+	if (err) {
+		p9_debug(P9_DEBUG_9P, "version error %d\n", err);
+		goto error;
+	}
+
+	p9_debug(P9_DEBUG_9P, "<<< RVERSION msize %d %s\n", msize, version);
+	if (strncmp(version, "9P2000.L", 8)) {
+		p9_debug(P9_DEBUG_ERROR,
+			 "server returned an unknown/unsupported version: %s\n", version);
+		err = -EREMOTEIO;
+		goto error;
+	}
+
+	if (msize < 4096) {
+		p9_debug(P9_DEBUG_ERROR,
+			 "server returned a msize < 4096: %d\n", msize);
+		err = -EREMOTEIO;
+		goto error;
+	}
+	if (msize < c->msize)
+		c->msize = msize;
+
+error:
+	kfree(version);
+	p9_req_put(c, req);
+
+	return err;
+}
+
+struct p9_client *p9_client_create(const char *dev_name, char *options)
+{
+	int err;
+	struct p9_client *clnt;
+
+	clnt = kmalloc(sizeof(*clnt), GFP_KERNEL);
+	if (!clnt)
+		return ERR_PTR(-ENOMEM);
+
+	clnt->trans_mod = NULL;
+	clnt->trans = NULL;
+
+	memcpy(clnt->name, release_string, strlen(release_string) + 1);
+
+	spin_lock_init(&clnt->lock);
+	idr_init(&clnt->fids);
+	idr_init(&clnt->reqs);
+
+	err = parse_opts(options, clnt);
+	if (err < 0)
+		goto free_client;
+
+	if (!clnt->trans_mod)
+		clnt->trans_mod = v9fs_get_default_trans();
+
+	if (!clnt->trans_mod) {
+		err = -EPROTONOSUPPORT;
+		p9_debug(P9_DEBUG_ERROR,
+			 "No transport defined or default transport\n");
+		goto free_client;
+	}
+
+	p9_debug(P9_DEBUG_MUX, "clnt %p trans %p msize %d protocol %d\n",
+		 clnt, clnt->trans_mod, clnt->msize, clnt->proto_version);
+
+	err = clnt->trans_mod->create(clnt, dev_name, options);
+	if (err)
+		goto put_trans;
+
+	if (clnt->msize > clnt->trans_mod->maxsize) {
+		clnt->msize = clnt->trans_mod->maxsize;
+		pr_info("Limiting 'msize' to %d as this is the maximum "
+			"supported by transport %s\n",
+			clnt->msize, clnt->trans_mod->name
+		);
+	}
+
+	if (clnt->msize < 4096) {
+		p9_debug(P9_DEBUG_ERROR,
+			 "Please specify a msize of at least 4k\n");
+		err = -EINVAL;
+		goto close_trans;
+	}
+
+	err = p9_client_version(clnt);
+	if (err)
+		goto close_trans;
+
+	return clnt;
+
+close_trans:
+	clnt->trans_mod->close(clnt);
+put_trans:
+	v9fs_put_trans(clnt->trans_mod);
+free_client:
+	kfree(clnt);
+	return ERR_PTR(err);
+}
+EXPORT_SYMBOL(p9_client_create);
+
+void p9_client_destroy(struct p9_client *clnt)
+{
+	struct p9_fid *fid;
+	int id;
+
+	p9_debug(P9_DEBUG_MUX, "clnt %p\n", clnt);
+
+	if (clnt->trans_mod)
+		clnt->trans_mod->close(clnt);
+
+	v9fs_put_trans(clnt->trans_mod);
+
+	idr_for_each_entry(&clnt->fids, fid, id) {
+		pr_info("Found fid %d not clunked\n", fid->fid);
+		p9_fid_destroy(fid);
+	}
+
+	p9_tag_cleanup(clnt);
+
+	kfree(clnt);
+}
+EXPORT_SYMBOL(p9_client_destroy);
+
+void p9_client_disconnect(struct p9_client *clnt)
+{
+	p9_debug(P9_DEBUG_9P, "clnt %p\n", clnt);
+	clnt->status = Disconnected;
+}
+EXPORT_SYMBOL(p9_client_disconnect);
+
+void p9_client_begin_disconnect(struct p9_client *clnt)
+{
+	p9_debug(P9_DEBUG_9P, "clnt %p\n", clnt);
+	clnt->status = BeginDisconnect;
+}
+EXPORT_SYMBOL(p9_client_begin_disconnect);
+
+struct p9_fid *p9_client_attach(struct p9_client *clnt, struct p9_fid *afid,
+				const char *uname, kuid_t n_uname,
+				const char *aname)
+{
+	int err;
+	struct p9_req_t *req;
+	struct p9_fid *fid;
+	struct p9_qid qid;
+
+	p9_debug(P9_DEBUG_9P, ">>> TATTACH afid %d uname %s aname %s\n",
+		 afid ? afid->fid : -1, uname, aname);
+	fid = p9_fid_create(clnt);
+	if (!fid) {
+		err = -ENOMEM;
+		goto error;
+	}
+	fid->uid = n_uname;
+
+	req = p9_client_rpc(clnt, P9_TATTACH, "ddss?u", fid->fid,
+			    afid ? afid->fid : P9_NOFID, uname, aname, n_uname);
+	if (IS_ERR(req)) {
+		err = PTR_ERR(req);
+		goto error;
+	}
+
+	err = p9pdu_readf(&req->rc, clnt->proto_version, "Q", &qid);
+	if (err) {
+		p9_req_put(clnt, req);
+		goto error;
+	}
+
+	p9_debug(P9_DEBUG_9P, "<<< RATTACH qid %x.%llx.%x\n",
+		 qid.type, qid.path, qid.version);
+
+	memmove(&fid->qid, &qid, sizeof(struct p9_qid));
+
+	p9_req_put(clnt, req);
+	return fid;
+
+error:
+	if (fid)
+		p9_fid_destroy(fid);
+	return ERR_PTR(err);
+}
+EXPORT_SYMBOL(p9_client_attach);
+
+struct p9_fid *p9_client_walk(struct p9_fid *oldfid, uint16_t nwname,
+			      const unsigned char * const *wnames, int clone)
+{
+	int err;
+	struct p9_client *clnt;
+	struct p9_fid *fid;
+	struct p9_qid *wqids;
+	struct p9_req_t *req;
+	u16 nwqids, count;
+
+	wqids = NULL;
+	clnt = oldfid->clnt;
+	if (clone) {
+		fid = p9_fid_create(clnt);
+		if (!fid) {
+			err = -ENOMEM;
+			goto error;
+		}
+
+		fid->uid = oldfid->uid;
+	} else {
+		fid = oldfid;
+	}
+
+	p9_debug(P9_DEBUG_9P, ">>> TWALK fids %d,%d nwname %ud wname[0] %s\n",
+		 oldfid->fid, fid->fid, nwname, wnames ? wnames[0] : NULL);
+	req = p9_client_rpc(clnt, P9_TWALK, "ddT", oldfid->fid, fid->fid,
+			    nwname, wnames);
+	if (IS_ERR(req)) {
+		err = PTR_ERR(req);
+		goto error;
+	}
+
+	err = p9pdu_readf(&req->rc, clnt->proto_version, "R", &nwqids, &wqids);
+	if (err) {
+		p9_req_put(clnt, req);
+		goto clunk_fid;
+	}
+	p9_req_put(clnt, req);
+
+	p9_debug(P9_DEBUG_9P, "<<< RWALK nwqid %d:\n", nwqids);
+
+	if (nwqids != nwname) {
+		err = -ENOENT;
+		goto clunk_fid;
+	}
+
+	for (count = 0; count < nwqids; count++)
+		p9_debug(P9_DEBUG_9P, "<<<     [%d] %x.%llx.%x\n",
+			 count, wqids[count].type,
+			 wqids[count].path,
+			 wqids[count].version);
+
+	if (nwname)
+		memmove(&fid->qid, &wqids[nwqids - 1], sizeof(struct p9_qid));
+	else
+		memmove(&fid->qid, &oldfid->qid, sizeof(struct p9_qid));
+
+	kfree(wqids);
+	return fid;
+
+clunk_fid:
+	kfree(wqids);
+	p9_fid_put(fid);
+	fid = NULL;
+
+error:
+	if (fid && fid != oldfid)
+		p9_fid_destroy(fid);
+
+	return ERR_PTR(err);
+}
+EXPORT_SYMBOL(p9_client_walk);
+
+int p9_client_open(struct p9_fid *fid, int mode)
+{
+	int err;
+	struct p9_client *clnt;
+	struct p9_req_t *req;
+	struct p9_qid qid;
+	int iounit;
+
+	clnt = fid->clnt;
+	p9_debug(P9_DEBUG_9P, ">>> %s fid %d mode %d\n",
+		 p9_is_proto_dotl(clnt) ? "TLOPEN" : "TOPEN", fid->fid, mode);
+
+	if (fid->mode != -1)
+		return -EINVAL;
+
+	if (p9_is_proto_dotl(clnt))
+		req = p9_client_rpc(clnt, P9_TLOPEN, "dd", fid->fid, mode & P9L_MODE_MASK);
+	else
+		req = p9_client_rpc(clnt, P9_TOPEN, "db", fid->fid, mode & P9L_MODE_MASK);
+	if (IS_ERR(req)) {
+		err = PTR_ERR(req);
+		goto error;
+	}
+
+	err = p9pdu_readf(&req->rc, clnt->proto_version, "Qd", &qid, &iounit);
+	if (err)
+		goto free_and_error;
+
+	p9_debug(P9_DEBUG_9P, "<<< %s qid %x.%llx.%x iounit %x\n",
+		 p9_is_proto_dotl(clnt) ? "RLOPEN" : "ROPEN",  qid.type,
+		 qid.path, qid.version, iounit);
+
+	memmove(&fid->qid, &qid, sizeof(struct p9_qid));
+	fid->mode = mode;
+	fid->iounit = iounit;
+
+free_and_error:
+	p9_req_put(clnt, req);
+error:
+	return err;
+}
+EXPORT_SYMBOL(p9_client_open);
+
+int p9_client_create_dotl(struct p9_fid *ofid, const char *name, u32 flags,
+			  u32 mode, kgid_t gid, struct p9_qid *qid)
+{
+	int err;
+	struct p9_client *clnt;
+	struct p9_req_t *req;
+	int iounit;
+
+	p9_debug(P9_DEBUG_9P,
+		 ">>> TLCREATE fid %d name %s flags %d mode %d gid %d\n",
+		 ofid->fid, name, flags, mode,
+		 from_kgid(gid));
+	clnt = ofid->clnt;
+
+	if (ofid->mode != -1)
+		return -EINVAL;
+
+	req = p9_client_rpc(clnt, P9_TLCREATE, "dsddg", ofid->fid, name, flags,
+			    mode & P9L_MODE_MASK, gid);
+	if (IS_ERR(req)) {
+		err = PTR_ERR(req);
+		goto error;
+	}
+
+	err = p9pdu_readf(&req->rc, clnt->proto_version, "Qd", qid, &iounit);
+	if (err)
+		goto free_and_error;
+
+	p9_debug(P9_DEBUG_9P, "<<< RLCREATE qid %x.%llx.%x iounit %x\n",
+		 qid->type, qid->path, qid->version, iounit);
+
+	memmove(&ofid->qid, qid, sizeof(struct p9_qid));
+	ofid->mode = flags;
+	ofid->iounit = iounit;
+
+free_and_error:
+	p9_req_put(clnt, req);
+error:
+	return err;
+}
+EXPORT_SYMBOL(p9_client_create_dotl);
+
+int p9_client_fcreate(struct p9_fid *fid, const char *name, u32 perm, int mode,
+		     char *extension)
+{
+	int err;
+	struct p9_client *clnt;
+	struct p9_req_t *req;
+	struct p9_qid qid;
+	int iounit;
+
+	p9_debug(P9_DEBUG_9P, ">>> TCREATE fid %d name %s perm %d mode %d\n",
+		 fid->fid, name, perm, mode);
+	clnt = fid->clnt;
+
+	if (fid->mode != -1)
+		return -EINVAL;
+
+	req = p9_client_rpc(clnt, P9_TCREATE, "dsdb?s", fid->fid, name, perm,
+			    mode & P9L_MODE_MASK, extension);
+	if (IS_ERR(req)) {
+		err = PTR_ERR(req);
+		goto error;
+	}
+
+	err = p9pdu_readf(&req->rc, clnt->proto_version, "Qd", &qid, &iounit);
+	if (err)
+		goto free_and_error;
+
+	p9_debug(P9_DEBUG_9P, "<<< RCREATE qid %x.%llx.%x iounit %x\n",
+		 qid.type, qid.path, qid.version, iounit);
+
+	memmove(&fid->qid, &qid, sizeof(struct p9_qid));
+	fid->mode = mode;
+	fid->iounit = iounit;
+
+free_and_error:
+	p9_req_put(clnt, req);
+error:
+	return err;
+}
+EXPORT_SYMBOL(p9_client_fcreate);
+
+int p9_client_symlink(struct p9_fid *dfid, const char *name,
+		      const char *symtgt, kgid_t gid, struct p9_qid *qid)
+{
+	int err;
+	struct p9_client *clnt;
+	struct p9_req_t *req;
+
+	p9_debug(P9_DEBUG_9P, ">>> TSYMLINK dfid %d name %s  symtgt %s\n",
+		 dfid->fid, name, symtgt);
+	clnt = dfid->clnt;
+
+	req = p9_client_rpc(clnt, P9_TSYMLINK, "dssg", dfid->fid, name, symtgt,
+			    gid);
+	if (IS_ERR(req)) {
+		err = PTR_ERR(req);
+		goto error;
+	}
+
+	err = p9pdu_readf(&req->rc, clnt->proto_version, "Q", qid);
+	if (err)
+		goto free_and_error;
+
+	p9_debug(P9_DEBUG_9P, "<<< RSYMLINK qid %x.%llx.%x\n",
+		 qid->type, qid->path, qid->version);
+
+free_and_error:
+	p9_req_put(clnt, req);
+error:
+	return err;
+}
+EXPORT_SYMBOL(p9_client_symlink);
+
+int p9_client_link(struct p9_fid *dfid, struct p9_fid *oldfid, const char *newname)
+{
+	struct p9_client *clnt;
+	struct p9_req_t *req;
+
+	p9_debug(P9_DEBUG_9P, ">>> TLINK dfid %d oldfid %d newname %s\n",
+		 dfid->fid, oldfid->fid, newname);
+	clnt = dfid->clnt;
+	req = p9_client_rpc(clnt, P9_TLINK, "dds", dfid->fid, oldfid->fid,
+			    newname);
+	if (IS_ERR(req))
+		return PTR_ERR(req);
+
+	p9_debug(P9_DEBUG_9P, "<<< RLINK\n");
+	p9_req_put(clnt, req);
+	return 0;
+}
+EXPORT_SYMBOL(p9_client_link);
+
+int p9_client_fsync(struct p9_fid *fid, int datasync)
+{
+	int err = 0;
+	struct p9_client *clnt;
+	struct p9_req_t *req;
+
+	p9_debug(P9_DEBUG_9P, ">>> TFSYNC fid %d datasync:%d\n",
+		 fid->fid, datasync);
+	clnt = fid->clnt;
+
+	req = p9_client_rpc(clnt, P9_TFSYNC, "dd", fid->fid, datasync);
+	if (IS_ERR(req)) {
+		err = PTR_ERR(req);
+		goto error;
+	}
+
+	p9_debug(P9_DEBUG_9P, "<<< RFSYNC fid %d\n", fid->fid);
+
+	p9_req_put(clnt, req);
+
+error:
+	return err;
+}
+EXPORT_SYMBOL(p9_client_fsync);
+
+int p9_client_clunk(struct p9_fid *fid)
+{
+	int err = 0;
+	struct p9_client *clnt;
+	struct p9_req_t *req;
+	int retries = 0;
+
+again:
+	p9_debug(P9_DEBUG_9P, ">>> TCLUNK fid %d (try %d)\n",
+		 fid->fid, retries);
+	clnt = fid->clnt;
+
+	req = p9_client_rpc(clnt, P9_TCLUNK, "d", fid->fid);
+	if (IS_ERR(req)) {
+		err = PTR_ERR(req);
+		goto error;
+	}
+
+	p9_debug(P9_DEBUG_9P, "<<< RCLUNK fid %d\n", fid->fid);
+
+	p9_req_put(clnt, req);
+error:
+	/* Fid is not valid even after a failed clunk
+	 * If interrupted, retry once then give up and
+	 * leak fid until umount.
+	 */
+	if (err == -ERESTARTSYS) {
+		if (retries++ == 0)
+			goto again;
+	} else {
+		p9_fid_destroy(fid);
+	}
+	return err;
+}
+EXPORT_SYMBOL(p9_client_clunk);
+
+int p9_client_remove(struct p9_fid *fid)
+{
+	int err = 0;
+	struct p9_client *clnt;
+	struct p9_req_t *req;
+
+	p9_debug(P9_DEBUG_9P, ">>> TREMOVE fid %d\n", fid->fid);
+	clnt = fid->clnt;
+
+	req = p9_client_rpc(clnt, P9_TREMOVE, "d", fid->fid);
+	if (IS_ERR(req)) {
+		err = PTR_ERR(req);
+		goto error;
+	}
+
+	p9_debug(P9_DEBUG_9P, "<<< RREMOVE fid %d\n", fid->fid);
+
+	p9_req_put(clnt, req);
+error:
+	if (err == -ERESTARTSYS)
+		p9_fid_put(fid);
+	else
+		p9_fid_destroy(fid);
+	return err;
+}
+EXPORT_SYMBOL(p9_client_remove);
+
+int p9_client_unlinkat(struct p9_fid *dfid, const char *name, int flags)
+{
+	int err = 0;
+	struct p9_req_t *req;
+	struct p9_client *clnt;
+
+	p9_debug(P9_DEBUG_9P, ">>> TUNLINKAT fid %d %s %d\n",
+		 dfid->fid, name, flags);
+
+	clnt = dfid->clnt;
+	req = p9_client_rpc(clnt, P9_TUNLINKAT, "dsd", dfid->fid, name, flags);
+	if (IS_ERR(req)) {
+		err = PTR_ERR(req);
+		goto error;
+	}
+	p9_debug(P9_DEBUG_9P, "<<< RUNLINKAT fid %d %s\n", dfid->fid, name);
+
+	p9_req_put(clnt, req);
+error:
+	return err;
+}
+EXPORT_SYMBOL(p9_client_unlinkat);
+
+int
+p9_client_read(struct p9_fid *fid, u64 offset, struct iov_iter *to, int *err)
+{
+	int total = 0;
+	*err = 0;
+
+	while (iov_iter_count(to)) {
+		int count;
+
+		count = p9_client_read_once(fid, offset, to, err);
+		if (!count || *err)
+			break;
+		offset += count;
+		total += count;
+	}
+	return total;
+}
+EXPORT_SYMBOL(p9_client_read);
+
+int
+p9_client_read_once(struct p9_fid *fid, u64 offset, struct iov_iter *to,
+		    int *err)
+{
+	struct p9_client *clnt = fid->clnt;
+	struct p9_req_t *req;
+	int count = iov_iter_count(to);
+	int rsize, received;
+	char *dataptr;
+
+	*err = 0;
+	p9_debug(P9_DEBUG_9P, ">>> TREAD fid %d offset %llu %zu\n",
+		 fid->fid, offset, iov_iter_count(to));
+
+	rsize = fid->iounit;
+	if (!rsize || rsize > clnt->msize - P9_IOHDRSZ)
+		rsize = clnt->msize - P9_IOHDRSZ;
+
+	if (count < rsize)
+		rsize = count;
+
+	req = p9_client_rpc(clnt, P9_TREAD, "dqd", fid->fid, offset,
+			    rsize);
+
+	if (IS_ERR(req)) {
+		*err = PTR_ERR(req);
+		return 0;
+	}
+
+	*err = p9pdu_readf(&req->rc, clnt->proto_version,
+			   "D", &received, &dataptr);
+	if (*err) {
+		p9_req_put(clnt, req);
+		return 0;
+	}
+	if (rsize < received) {
+		pr_err("bogus RREAD count (%d > %d)\n", received, rsize);
+		received = rsize;
+	}
+
+	p9_debug(P9_DEBUG_9P, "<<< RREAD count %d\n", received);
+
+	int n = copy_to_iter(dataptr, received, to);
+
+	if (n != received) {
+		*err = -EFAULT;
+		p9_req_put(clnt, req);
+		return n;
+	}
+
+	p9_req_put(clnt, req);
+	return received;
+}
+EXPORT_SYMBOL(p9_client_read_once);
+
+int
+p9_client_write(struct p9_fid *fid, u64 offset, struct iov_iter *from, int *err)
+{
+	struct p9_client *clnt = fid->clnt;
+	struct p9_req_t *req;
+	int total = 0;
+	*err = 0;
+
+	while (iov_iter_count(from)) {
+		int count = iov_iter_count(from);
+		int rsize = fid->iounit;
+		int written;
+
+		if (!rsize || rsize > clnt->msize - P9_IOHDRSZ)
+			rsize = clnt->msize - P9_IOHDRSZ;
+
+		if (count < rsize)
+			rsize = count;
+
+		p9_debug(P9_DEBUG_9P, ">>> TWRITE fid %d offset %llu count %d (/%d)\n",
+			 fid->fid, offset, rsize, count);
+
+		req = p9_client_rpc(clnt, P9_TWRITE, "dqV", fid->fid,
+				    offset, rsize, from);
+		if (IS_ERR(req)) {
+			iov_iter_revert(from, count - iov_iter_count(from));
+			*err = PTR_ERR(req);
+			break;
+		}
+
+		*err = p9pdu_readf(&req->rc, clnt->proto_version, "d", &written);
+		if (*err) {
+			iov_iter_revert(from, count - iov_iter_count(from));
+			p9_req_put(clnt, req);
+			break;
+		}
+		if (rsize < written) {
+			pr_err("bogus RWRITE count (%d > %d)\n", written, rsize);
+			written = rsize;
+		}
+
+		p9_debug(P9_DEBUG_9P, "<<< RWRITE count %d\n", written);
+
+		p9_req_put(clnt, req);
+		iov_iter_revert(from, count - written - iov_iter_count(from));
+		total += written;
+		offset += written;
+	}
+	return total;
+}
+EXPORT_SYMBOL(p9_client_write);
+
+struct p9_wstat *p9_client_stat(struct p9_fid *fid)
+{
+	int err;
+	struct p9_client *clnt;
+	struct p9_wstat *ret;
+	struct p9_req_t *req;
+	u16 ignored;
+
+	p9_debug(P9_DEBUG_9P, ">>> TSTAT fid %d\n", fid->fid);
+
+	ret = kmalloc(sizeof(*ret), GFP_KERNEL);
+	if (!ret)
+		return ERR_PTR(-ENOMEM);
+
+	clnt = fid->clnt;
+
+	req = p9_client_rpc(clnt, P9_TSTAT, "d", fid->fid);
+	if (IS_ERR(req)) {
+		err = PTR_ERR(req);
+		goto error;
+	}
+
+	err = p9pdu_readf(&req->rc, clnt->proto_version, "wS", &ignored, ret);
+	if (err) {
+		p9_req_put(clnt, req);
+		goto error;
+	}
+
+	p9_debug(P9_DEBUG_9P,
+		 "<<< RSTAT sz=%x type=%x dev=%x qid=%x.%llx.%x\n"
+		 "<<<    mode=%8.8x atime=%8.8x mtime=%8.8x length=%llx\n"
+		 "<<<    name=%s uid=%s gid=%s muid=%s extension=(%s)\n"
+		 "<<<    uid=%d gid=%d n_muid=%d\n",
+		 ret->size, ret->type, ret->dev, ret->qid.type, ret->qid.path,
+		 ret->qid.version, ret->mode,
+		 ret->atime, ret->mtime, ret->length,
+		 ret->name, ret->uid, ret->gid, ret->muid, ret->extension,
+		 from_kuid(ret->n_uid),
+		 from_kgid(ret->n_gid),
+		 from_kuid(ret->n_muid));
+
+	p9_req_put(clnt, req);
+	return ret;
+
+error:
+	kfree(ret);
+	return ERR_PTR(err);
+}
+EXPORT_SYMBOL(p9_client_stat);
+
+struct p9_stat_dotl *p9_client_getattr_dotl(struct p9_fid *fid,
+					    u64 request_mask)
+{
+	int err;
+	struct p9_client *clnt;
+	struct p9_stat_dotl *ret;
+	struct p9_req_t *req;
+
+	p9_debug(P9_DEBUG_9P, ">>> TGETATTR fid %d, request_mask %lld\n",
+		 fid->fid, request_mask);
+
+	ret = kmalloc(sizeof(*ret), GFP_KERNEL);
+	if (!ret)
+		return ERR_PTR(-ENOMEM);
+
+	clnt = fid->clnt;
+
+	req = p9_client_rpc(clnt, P9_TGETATTR, "dq", fid->fid, request_mask);
+	if (IS_ERR(req)) {
+		err = PTR_ERR(req);
+		goto error;
+	}
+
+	err = p9pdu_readf(&req->rc, clnt->proto_version, "A", ret);
+	if (err) {
+		p9_req_put(clnt, req);
+		goto error;
+	}
+
+	p9_debug(P9_DEBUG_9P, "<<< RGETATTR st_result_mask=%lld\n"
+		 "<<< qid=%x.%llx.%x\n"
+		 "<<< st_mode=%8.8x st_nlink=%llu\n"
+		 "<<< st_uid=%d st_gid=%d\n"
+		 "<<< st_rdev=%llx st_size=%llx st_blksize=%llu st_blocks=%llu\n"
+		 "<<< st_atime_sec=%lld st_atime_nsec=%lld\n"
+		 "<<< st_mtime_sec=%lld st_mtime_nsec=%lld\n"
+		 "<<< st_ctime_sec=%lld st_ctime_nsec=%lld\n"
+		 "<<< st_btime_sec=%lld st_btime_nsec=%lld\n"
+		 "<<< st_gen=%lld st_data_version=%lld\n",
+		 ret->st_result_mask,
+		 ret->qid.type, ret->qid.path, ret->qid.version,
+		 ret->st_mode, ret->st_nlink,
+		 from_kuid(ret->st_uid),
+		 from_kgid(ret->st_gid),
+		 ret->st_rdev, ret->st_size, ret->st_blksize, ret->st_blocks,
+		 ret->st_atime_sec, ret->st_atime_nsec,
+		 ret->st_mtime_sec, ret->st_mtime_nsec,
+		 ret->st_ctime_sec, ret->st_ctime_nsec,
+		 ret->st_btime_sec, ret->st_btime_nsec,
+		 ret->st_gen, ret->st_data_version);
+
+	p9_req_put(clnt, req);
+	return ret;
+
+error:
+	kfree(ret);
+	return ERR_PTR(err);
+}
+EXPORT_SYMBOL(p9_client_getattr_dotl);
+
+static int p9_client_statsize(struct p9_wstat *wst, int proto_version)
+{
+	int ret;
+
+	/* NOTE: size shouldn't include its own length */
+	/* size[2] type[2] dev[4] qid[13] */
+	/* mode[4] atime[4] mtime[4] length[8]*/
+	/* name[s] uid[s] gid[s] muid[s] */
+	ret = 2 + 4 + 13 + 4 + 4 + 4 + 8 + 2 + 2 + 2 + 2;
+
+	if (wst->name)
+		ret += strlen(wst->name);
+	if (wst->uid)
+		ret += strlen(wst->uid);
+	if (wst->gid)
+		ret += strlen(wst->gid);
+	if (wst->muid)
+		ret += strlen(wst->muid);
+
+	if (proto_version == p9_proto_2000u ||
+	    proto_version == p9_proto_2000L) {
+		/* extension[s] n_uid[4] n_gid[4] n_muid[4] */
+		ret += 2 + 4 + 4 + 4;
+		if (wst->extension)
+			ret += strlen(wst->extension);
+	}
+
+	return ret;
+}
+
+int p9_client_wstat(struct p9_fid *fid, struct p9_wstat *wst)
+{
+	int err = 0;
+	struct p9_req_t *req;
+	struct p9_client *clnt;
+
+	clnt = fid->clnt;
+	wst->size = p9_client_statsize(wst, clnt->proto_version);
+	p9_debug(P9_DEBUG_9P, ">>> TWSTAT fid %d\n",
+		 fid->fid);
+	p9_debug(P9_DEBUG_9P,
+		 "     sz=%x type=%x dev=%x qid=%x.%llx.%x\n"
+		 "     mode=%8.8x atime=%8.8x mtime=%8.8x length=%llx\n"
+		 "     name=%s uid=%s gid=%s muid=%s extension=(%s)\n"
+		 "     uid=%d gid=%d n_muid=%d\n",
+		 wst->size, wst->type, wst->dev, wst->qid.type,
+		 wst->qid.path, wst->qid.version,
+		 wst->mode, wst->atime, wst->mtime, wst->length,
+		 wst->name, wst->uid, wst->gid, wst->muid, wst->extension,
+		 from_kuid(wst->n_uid),
+		 from_kgid(wst->n_gid),
+		 from_kuid(wst->n_muid));
+
+	req = p9_client_rpc(clnt, P9_TWSTAT, "dwS",
+			    fid->fid, wst->size + 2, wst);
+	if (IS_ERR(req)) {
+		err = PTR_ERR(req);
+		goto error;
+	}
+
+	p9_debug(P9_DEBUG_9P, "<<< RWSTAT fid %d\n", fid->fid);
+
+	p9_req_put(clnt, req);
+error:
+	return err;
+}
+EXPORT_SYMBOL(p9_client_wstat);
+
+int p9_client_setattr(struct p9_fid *fid, struct p9_iattr_dotl *p9attr)
+{
+	int err = 0;
+	struct p9_req_t *req;
+	struct p9_client *clnt;
+
+	clnt = fid->clnt;
+	p9_debug(P9_DEBUG_9P, ">>> TSETATTR fid %d\n", fid->fid);
+	p9_debug(P9_DEBUG_9P, "    valid=%x mode=%x uid=%d gid=%d size=%lld\n",
+		 p9attr->valid, p9attr->mode,
+		 from_kuid(p9attr->uid),
+		 from_kgid(p9attr->gid),
+		 p9attr->size);
+	p9_debug(P9_DEBUG_9P, "    atime_sec=%lld atime_nsec=%lld\n",
+		 p9attr->atime_sec, p9attr->atime_nsec);
+	p9_debug(P9_DEBUG_9P, "    mtime_sec=%lld mtime_nsec=%lld\n",
+		 p9attr->mtime_sec, p9attr->mtime_nsec);
+
+	req = p9_client_rpc(clnt, P9_TSETATTR, "dI", fid->fid, p9attr);
+
+	if (IS_ERR(req)) {
+		err = PTR_ERR(req);
+		goto error;
+	}
+	p9_debug(P9_DEBUG_9P, "<<< RSETATTR fid %d\n", fid->fid);
+	p9_req_put(clnt, req);
+error:
+	return err;
+}
+EXPORT_SYMBOL(p9_client_setattr);
+
+int p9_client_statfs(struct p9_fid *fid, struct p9_rstatfs *sb)
+{
+	int err;
+	struct p9_req_t *req;
+	struct p9_client *clnt;
+
+	clnt = fid->clnt;
+
+	p9_debug(P9_DEBUG_9P, ">>> TSTATFS fid %d\n", fid->fid);
+
+	req = p9_client_rpc(clnt, P9_TSTATFS, "d", fid->fid);
+	if (IS_ERR(req)) {
+		err = PTR_ERR(req);
+		goto error;
+	}
+
+	err = p9pdu_readf(&req->rc, clnt->proto_version, "ddqqqqqqd", &sb->type,
+			  &sb->bsize, &sb->blocks, &sb->bfree, &sb->bavail,
+			  &sb->files, &sb->ffree, &sb->fsid, &sb->namelen);
+	if (err) {
+		p9_req_put(clnt, req);
+		goto error;
+	}
+
+	p9_debug(P9_DEBUG_9P,
+		 "<<< RSTATFS fid %d type 0x%x bsize %u blocks %llu bfree %llu bavail %llu files %llu ffree %llu fsid %llu namelen %u\n",
+		 fid->fid, sb->type, sb->bsize, sb->blocks, sb->bfree,
+		 sb->bavail, sb->files, sb->ffree, sb->fsid, sb->namelen);
+
+	p9_req_put(clnt, req);
+error:
+	return err;
+}
+EXPORT_SYMBOL(p9_client_statfs);
+
+int p9_client_rename(struct p9_fid *fid,
+		     struct p9_fid *newdirfid, const char *name)
+{
+	int err = 0;
+	struct p9_req_t *req;
+	struct p9_client *clnt;
+
+	clnt = fid->clnt;
+
+	p9_debug(P9_DEBUG_9P, ">>> TRENAME fid %d newdirfid %d name %s\n",
+		 fid->fid, newdirfid->fid, name);
+
+	req = p9_client_rpc(clnt, P9_TRENAME, "dds", fid->fid,
+			    newdirfid->fid, name);
+	if (IS_ERR(req)) {
+		err = PTR_ERR(req);
+		goto error;
+	}
+
+	p9_debug(P9_DEBUG_9P, "<<< RRENAME fid %d\n", fid->fid);
+
+	p9_req_put(clnt, req);
+error:
+	return err;
+}
+EXPORT_SYMBOL(p9_client_rename);
+
+int p9_client_renameat(struct p9_fid *olddirfid, const char *old_name,
+		       struct p9_fid *newdirfid, const char *new_name)
+{
+	int err = 0;
+	struct p9_req_t *req;
+	struct p9_client *clnt;
+
+	clnt = olddirfid->clnt;
+
+	p9_debug(P9_DEBUG_9P,
+		 ">>> TRENAMEAT olddirfid %d old name %s newdirfid %d new name %s\n",
+		 olddirfid->fid, old_name, newdirfid->fid, new_name);
+
+	req = p9_client_rpc(clnt, P9_TRENAMEAT, "dsds", olddirfid->fid,
+			    old_name, newdirfid->fid, new_name);
+	if (IS_ERR(req)) {
+		err = PTR_ERR(req);
+		goto error;
+	}
+
+	p9_debug(P9_DEBUG_9P, "<<< RRENAMEAT newdirfid %d new name %s\n",
+		 newdirfid->fid, new_name);
+
+	p9_req_put(clnt, req);
+error:
+	return err;
+}
+EXPORT_SYMBOL(p9_client_renameat);
+
+/* An xattrwalk without @attr_name gives the fid for the lisxattr namespace
+ */
+struct p9_fid *p9_client_xattrwalk(struct p9_fid *file_fid,
+				   const char *attr_name, u64 *attr_size)
+{
+	int err;
+	struct p9_req_t *req;
+	struct p9_client *clnt;
+	struct p9_fid *attr_fid;
+
+	clnt = file_fid->clnt;
+	attr_fid = p9_fid_create(clnt);
+	if (!attr_fid) {
+		err = -ENOMEM;
+		goto error;
+	}
+	p9_debug(P9_DEBUG_9P,
+		 ">>> TXATTRWALK file_fid %d, attr_fid %d name '%s'\n",
+		 file_fid->fid, attr_fid->fid, attr_name);
+
+	req = p9_client_rpc(clnt, P9_TXATTRWALK, "dds",
+			    file_fid->fid, attr_fid->fid, attr_name);
+	if (IS_ERR(req)) {
+		err = PTR_ERR(req);
+		goto error;
+	}
+	err = p9pdu_readf(&req->rc, clnt->proto_version, "q", attr_size);
+	if (err) {
+		p9_req_put(clnt, req);
+		goto clunk_fid;
+	}
+	p9_req_put(clnt, req);
+	p9_debug(P9_DEBUG_9P, "<<<  RXATTRWALK fid %d size %llu\n",
+		 attr_fid->fid, *attr_size);
+	return attr_fid;
+clunk_fid:
+	p9_fid_put(attr_fid);
+	attr_fid = NULL;
+error:
+	if (attr_fid && attr_fid != file_fid)
+		p9_fid_destroy(attr_fid);
+
+	return ERR_PTR(err);
+}
+EXPORT_SYMBOL_GPL(p9_client_xattrwalk);
+
+int p9_client_xattrcreate(struct p9_fid *fid, const char *name,
+			  u64 attr_size, int flags)
+{
+	int err = 0;
+	struct p9_req_t *req;
+	struct p9_client *clnt;
+
+	p9_debug(P9_DEBUG_9P,
+		 ">>> TXATTRCREATE fid %d name  %s size %llu flag %d\n",
+		 fid->fid, name, attr_size, flags);
+	clnt = fid->clnt;
+	req = p9_client_rpc(clnt, P9_TXATTRCREATE, "dsqd",
+			    fid->fid, name, attr_size, flags);
+	if (IS_ERR(req)) {
+		err = PTR_ERR(req);
+		goto error;
+	}
+	p9_debug(P9_DEBUG_9P, "<<< RXATTRCREATE fid %d\n", fid->fid);
+	p9_req_put(clnt, req);
+error:
+	return err;
+}
+EXPORT_SYMBOL_GPL(p9_client_xattrcreate);
+
+int p9_client_readdir(struct p9_fid *fid, char *data, u32 count, u64 offset)
+{
+	int err, rsize;
+	struct p9_client *clnt;
+	struct p9_req_t *req;
+	char *dataptr;
+
+	p9_debug(P9_DEBUG_9P, ">>> TREADDIR fid %d offset %llu count %d\n",
+		 fid->fid, offset, count);
+
+	clnt = fid->clnt;
+
+	rsize = fid->iounit;
+	if (!rsize || rsize > clnt->msize - P9_READDIRHDRSZ)
+		rsize = clnt->msize - P9_READDIRHDRSZ;
+
+	if (count < rsize)
+		rsize = count;
+
+	/* Don't bother zerocopy for small IO (< 1024) */
+	req = p9_client_rpc(clnt, P9_TREADDIR, "dqd", fid->fid,
+			    offset, rsize);
+	if (IS_ERR(req)) {
+		err = PTR_ERR(req);
+		goto error;
+	}
+
+	err = p9pdu_readf(&req->rc, clnt->proto_version, "D", &count, &dataptr);
+	if (err)
+		goto free_and_error;
+	if (rsize < count) {
+		pr_err("bogus RREADDIR count (%d > %d)\n", count, rsize);
+		count = rsize;
+	}
+
+	p9_debug(P9_DEBUG_9P, "<<< RREADDIR count %d\n", count);
+
+	memmove(data, dataptr, count);
+
+	p9_req_put(clnt, req);
+	return count;
+
+free_and_error:
+	p9_req_put(clnt, req);
+error:
+	return err;
+}
+EXPORT_SYMBOL(p9_client_readdir);
+
+int p9_client_mknod_dotl(struct p9_fid *fid, const char *name, int mode,
+			 dev_t rdev, kgid_t gid, struct p9_qid *qid)
+{
+	int err;
+	struct p9_client *clnt;
+	struct p9_req_t *req;
+
+	clnt = fid->clnt;
+	p9_debug(P9_DEBUG_9P,
+		 ">>> TMKNOD fid %d name %s mode %d major %d minor %d\n",
+		 fid->fid, name, mode, MAJOR(rdev), MINOR(rdev));
+	req = p9_client_rpc(clnt, P9_TMKNOD, "dsdddg", fid->fid, name, mode,
+			    MAJOR(rdev), MINOR(rdev), gid);
+	if (IS_ERR(req))
+		return PTR_ERR(req);
+
+	err = p9pdu_readf(&req->rc, clnt->proto_version, "Q", qid);
+	if (err)
+		goto error;
+	p9_debug(P9_DEBUG_9P, "<<< RMKNOD qid %x.%llx.%x\n",
+		 qid->type, qid->path, qid->version);
+
+error:
+	p9_req_put(clnt, req);
+	return err;
+}
+EXPORT_SYMBOL(p9_client_mknod_dotl);
+
+int p9_client_mkdir_dotl(struct p9_fid *fid, const char *name, int mode,
+			 kgid_t gid, struct p9_qid *qid)
+{
+	int err;
+	struct p9_client *clnt;
+	struct p9_req_t *req;
+
+	clnt = fid->clnt;
+	p9_debug(P9_DEBUG_9P, ">>> TMKDIR fid %d name %s mode %d gid %d\n",
+		 fid->fid, name, mode, from_kgid(gid));
+	req = p9_client_rpc(clnt, P9_TMKDIR, "dsdg",
+			    fid->fid, name, mode, gid);
+	if (IS_ERR(req))
+		return PTR_ERR(req);
+
+	err = p9pdu_readf(&req->rc, clnt->proto_version, "Q", qid);
+	if (err)
+		goto error;
+	p9_debug(P9_DEBUG_9P, "<<< RMKDIR qid %x.%llx.%x\n", qid->type,
+		 qid->path, qid->version);
+
+error:
+	p9_req_put(clnt, req);
+	return err;
+}
+EXPORT_SYMBOL(p9_client_mkdir_dotl);
+
+int p9_client_lock_dotl(struct p9_fid *fid, struct p9_flock *flock, u8 *status)
+{
+	int err;
+	struct p9_client *clnt;
+	struct p9_req_t *req;
+
+	clnt = fid->clnt;
+	p9_debug(P9_DEBUG_9P,
+		 ">>> TLOCK fid %d type %i flags %d start %lld length %lld proc_id %d client_id %s\n",
+		 fid->fid, flock->type, flock->flags, flock->start,
+		 flock->length, flock->proc_id, flock->client_id);
+
+	req = p9_client_rpc(clnt, P9_TLOCK, "dbdqqds", fid->fid, flock->type,
+			    flock->flags, flock->start, flock->length,
+			    flock->proc_id, flock->client_id);
+
+	if (IS_ERR(req))
+		return PTR_ERR(req);
+
+	err = p9pdu_readf(&req->rc, clnt->proto_version, "b", status);
+	if (err)
+		goto error;
+	p9_debug(P9_DEBUG_9P, "<<< RLOCK status %i\n", *status);
+error:
+	p9_req_put(clnt, req);
+	return err;
+}
+EXPORT_SYMBOL(p9_client_lock_dotl);
+
+int p9_client_getlock_dotl(struct p9_fid *fid, struct p9_getlock *glock)
+{
+	int err;
+	struct p9_client *clnt;
+	struct p9_req_t *req;
+
+	clnt = fid->clnt;
+	p9_debug(P9_DEBUG_9P,
+		 ">>> TGETLOCK fid %d, type %i start %lld length %lld proc_id %d client_id %s\n",
+		 fid->fid, glock->type, glock->start, glock->length,
+		 glock->proc_id, glock->client_id);
+
+	req = p9_client_rpc(clnt, P9_TGETLOCK, "dbqqds", fid->fid,
+			    glock->type, glock->start, glock->length,
+			    glock->proc_id, glock->client_id);
+
+	if (IS_ERR(req))
+		return PTR_ERR(req);
+
+	err = p9pdu_readf(&req->rc, clnt->proto_version, "bqqds", &glock->type,
+			  &glock->start, &glock->length, &glock->proc_id,
+			  &glock->client_id);
+	if (err)
+		goto error;
+	p9_debug(P9_DEBUG_9P,
+		 "<<< RGETLOCK type %i start %lld length %lld proc_id %d client_id %s\n",
+		 glock->type, glock->start, glock->length,
+		 glock->proc_id, glock->client_id);
+error:
+	p9_req_put(clnt, req);
+	return err;
+}
+EXPORT_SYMBOL(p9_client_getlock_dotl);
+
+int p9_client_readlink(struct p9_fid *fid, char **target)
+{
+	int err;
+	struct p9_client *clnt;
+	struct p9_req_t *req;
+
+	clnt = fid->clnt;
+	p9_debug(P9_DEBUG_9P, ">>> TREADLINK fid %d\n", fid->fid);
+
+	req = p9_client_rpc(clnt, P9_TREADLINK, "d", fid->fid);
+	if (IS_ERR(req))
+		return PTR_ERR(req);
+
+	err = p9pdu_readf(&req->rc, clnt->proto_version, "s", target);
+	if (err)
+		goto error;
+	p9_debug(P9_DEBUG_9P, "<<< RREADLINK target %s\n", *target);
+error:
+	p9_req_put(clnt, req);
+	return err;
+}
+EXPORT_SYMBOL(p9_client_readlink);
+
+int __init p9_client_init(void)
+{
+	return 0;
+}
+
+void __exit p9_client_exit(void)
+{
+}
diff --git a/net/9p/mod.c b/net/9p/mod.c
new file mode 100644
index 000000000000..ef071a1b490d
--- /dev/null
+++ b/net/9p/mod.c
@@ -0,0 +1,180 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ *  9P entry point
+ *
+ *  Copyright (C) 2007 by Latchesar Ionkov <lucho@ionkov.net>
+ *  Copyright (C) 2004 by Eric Van Hensbergen <ericvh@gmail.com>
+ *  Copyright (C) 2002 by Ron Minnich <rminnich@lanl.gov>
+ */
+
+#define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
+
+#include <linux/errno.h>
+#include <linux/sched.h>
+#include <linux/kernel.h>
+#include <globalvar.h>
+#include <magicvar.h>
+#include <net/9p/9p.h>
+#include <linux/fs.h>
+#include <linux/printk.h>
+#include <linux/string.h>
+#include <linux/parser.h>
+#include <net/9p/client.h>
+#include <net/9p/transport.h>
+#include <linux/list.h>
+#include <linux/spinlock.h>
+
+#ifdef CONFIG_NET_9P_DEBUG
+unsigned int p9_debug_level;	/* feature-rific global debug level  */
+BAREBOX_MAGICVAR(plan9debug, "9P debugging level");
+
+void _p9_debug(enum p9_debug_flags level, const char *func,
+	       const char *fmt, ...)
+{
+	struct va_format vaf;
+	va_list args;
+
+	if ((p9_debug_level & level) != level)
+		return;
+
+	va_start(args, fmt);
+
+	vaf.fmt = fmt;
+	vaf.va = &args;
+
+	if (level == P9_DEBUG_9P)
+		pr_notice("%pV", &vaf);
+	else
+		pr_notice("-- %s %pV", func, &vaf);
+
+	va_end(args);
+}
+EXPORT_SYMBOL(_p9_debug);
+
+static inline void p9_add_debug_globalvar(void)
+{
+	globalvar_add_simple_int("9p.debug", &p9_debug_level, "%d");
+}
+#else
+static inline void p9_add_debug_globalvar(void)
+{
+}
+#endif
+
+/* Dynamic Transport Registration Routines */
+
+static DEFINE_SPINLOCK(v9fs_trans_lock);
+static LIST_HEAD(v9fs_trans_list);
+
+/**
+ * v9fs_register_trans - register a new transport with 9p
+ * @m: structure describing the transport module and entry points
+ *
+ */
+void v9fs_register_trans(struct p9_trans_module *m)
+{
+	spin_lock(&v9fs_trans_lock);
+	list_add_tail(&m->list, &v9fs_trans_list);
+	spin_unlock(&v9fs_trans_lock);
+}
+EXPORT_SYMBOL(v9fs_register_trans);
+
+/**
+ * v9fs_unregister_trans - unregister a 9p transport
+ * @m: the transport to remove
+ *
+ */
+void v9fs_unregister_trans(struct p9_trans_module *m)
+{
+	spin_lock(&v9fs_trans_lock);
+	list_del_init(&m->list);
+	spin_unlock(&v9fs_trans_lock);
+}
+EXPORT_SYMBOL(v9fs_unregister_trans);
+
+/**
+ * v9fs_get_trans_by_name - get transport with the matching name
+ * @s: string identifying transport
+ *
+ */
+struct p9_trans_module *v9fs_get_trans_by_name(const char *s)
+{
+	struct p9_trans_module *t, *found = NULL;
+
+	spin_lock(&v9fs_trans_lock);
+
+	list_for_each_entry(t, &v9fs_trans_list, list)
+		if (strcmp(t->name, s) == 0) {
+			found = t;
+			break;
+		}
+
+	spin_unlock(&v9fs_trans_lock);
+
+	return found;
+}
+EXPORT_SYMBOL(v9fs_get_trans_by_name);
+
+static const char * const v9fs_default_transports[] = {
+	"virtio", "tcp", "fd", "unix", "xen", "rdma",
+};
+
+/**
+ * v9fs_get_default_trans - get the default transport
+ *
+ */
+
+struct p9_trans_module *v9fs_get_default_trans(void)
+{
+	struct p9_trans_module *t, *found = NULL;
+	int i;
+
+	spin_lock(&v9fs_trans_lock);
+
+	list_for_each_entry(t, &v9fs_trans_list, list)
+		if (t->def) {
+			found = t;
+			break;
+		}
+
+	if (!found)
+		list_for_each_entry(t, &v9fs_trans_list, list) {
+			found = t;
+			break;
+		}
+
+	spin_unlock(&v9fs_trans_lock);
+
+	for (i = 0; !found && i < ARRAY_SIZE(v9fs_default_transports); i++)
+		found = v9fs_get_trans_by_name(v9fs_default_transports[i]);
+
+	return found;
+}
+EXPORT_SYMBOL(v9fs_get_default_trans);
+
+/**
+ * init_p9 - Initialize module
+ *
+ */
+static int __init init_p9(void)
+{
+	int ret;
+
+	p9_add_debug_globalvar();
+
+	ret = p9_client_init();
+	if (ret)
+		return ret;
+
+	pr_info("Installing 9P2000 support\n");
+
+	return ret;
+}
+
+fs_initcall(init_p9)
+
+MODULE_AUTHOR("Latchesar Ionkov <lucho@ionkov.net>");
+MODULE_AUTHOR("Eric Van Hensbergen <ericvh@gmail.com>");
+MODULE_AUTHOR("Ron Minnich <rminnich@lanl.gov>");
+MODULE_LICENSE("GPL");
+MODULE_DESCRIPTION("Plan 9 Resource Sharing Support (9P2000)");
diff --git a/net/9p/protocol.c b/net/9p/protocol.c
new file mode 100644
index 000000000000..3ba3c19e64ec
--- /dev/null
+++ b/net/9p/protocol.c
@@ -0,0 +1,802 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * 9P Protocol Support Code
+ *
+ *  Copyright (C) 2008 by Eric Van Hensbergen <ericvh@gmail.com>
+ *
+ *  Base on code from Anthony Liguori <aliguori@us.ibm.com>
+ *  Copyright (C) 2008 by IBM, Corp.
+ */
+
+#include <linux/errno.h>
+#include <linux/kernel.h>
+#include <linux/uaccess.h>
+#include <linux/slab.h>
+#include <linux/sched.h>
+#include <linux/stddef.h>
+#include <linux/types.h>
+#include <linux/uidgid.h>
+#include <linux/uio.h>
+#include <net/9p/9p.h>
+#include <net/9p/client.h>
+#include "protocol.h"
+
+/* len[2] text[len] */
+#define P9_STRLEN(s) \
+	(2 + min_t(size_t, s ? strlen(s) : 0, USHRT_MAX))
+
+static inline void trace_9p_protocol_dump(struct p9_client *clnt,
+					  struct p9_fcall *pdu)
+{
+}
+
+/**
+ * p9_msg_buf_size - Returns a buffer size sufficiently large to hold the
+ * intended 9p message.
+ * @c: client
+ * @type: message type
+ * @fmt: format template for assembling request message
+ * (see p9pdu_vwritef)
+ * @ap: variable arguments to be fed to passed format template
+ * (see p9pdu_vwritef)
+ *
+ * Note: Even for response types (P9_R*) the format template and variable
+ * arguments must always be for the originating request type (P9_T*).
+ */
+size_t p9_msg_buf_size(struct p9_client *c, enum p9_msg_t type,
+			const char *fmt, va_list ap)
+{
+	/* size[4] type[1] tag[2] */
+	const int hdr = 4 + 1 + 2;
+	/* ename[s] errno[4] */
+	const int rerror_size = hdr + P9_ERRMAX + 4;
+	/* ecode[4] */
+	const int rlerror_size = hdr + 4;
+	const int err_size =
+		c->proto_version == p9_proto_2000L ? rlerror_size : rerror_size;
+
+	static_assert(NAME_MAX <= 4*1024, "p9_msg_buf_size() currently assumes "
+				  "a max. allowed directory entry name length of 4k");
+
+	switch (type) {
+
+	/* message types not used at all */
+	case P9_TERROR:
+	case P9_TLERROR:
+	case P9_TAUTH:
+	case P9_RAUTH:
+		BUG();
+
+	/* variable length & potentially large message types */
+	case P9_TATTACH:
+		BUG_ON(strcmp("ddss?u", fmt));
+		va_arg(ap, int32_t);
+		va_arg(ap, int32_t);
+		{
+			const char *uname = va_arg(ap, const char *);
+			const char *aname = va_arg(ap, const char *);
+			/* fid[4] afid[4] uname[s] aname[s] n_uname[4] */
+			return hdr + 4 + 4 + P9_STRLEN(uname) + P9_STRLEN(aname) + 4;
+		}
+	case P9_TWALK:
+		BUG_ON(strcmp("ddT", fmt));
+		va_arg(ap, int32_t);
+		va_arg(ap, int32_t);
+		{
+			uint i, nwname = va_arg(ap, int);
+			size_t wname_all;
+			const char **wnames = va_arg(ap, const char **);
+			for (i = 0, wname_all = 0; i < nwname; ++i) {
+				wname_all += P9_STRLEN(wnames[i]);
+			}
+			/* fid[4] newfid[4] nwname[2] nwname*(wname[s]) */
+			return hdr + 4 + 4 + 2 + wname_all;
+		}
+	case P9_RWALK:
+		BUG_ON(strcmp("ddT", fmt));
+		va_arg(ap, int32_t);
+		va_arg(ap, int32_t);
+		{
+			uint nwname = va_arg(ap, int);
+			/* nwqid[2] nwqid*(wqid[13]) */
+			return max_t(size_t, hdr + 2 + nwname * 13, err_size);
+		}
+	case P9_TCREATE:
+		BUG_ON(strcmp("dsdb?s", fmt));
+		va_arg(ap, int32_t);
+		{
+			const char *name = va_arg(ap, const char *);
+			if (c->proto_version == p9_proto_legacy) {
+				/* fid[4] name[s] perm[4] mode[1] */
+				return hdr + 4 + P9_STRLEN(name) + 4 + 1;
+			} else {
+				va_arg(ap, int32_t);
+				va_arg(ap, int);
+				{
+					const char *ext = va_arg(ap, const char *);
+					/* fid[4] name[s] perm[4] mode[1] extension[s] */
+					return hdr + 4 + P9_STRLEN(name) + 4 + 1 + P9_STRLEN(ext);
+				}
+			}
+		}
+	case P9_TLCREATE:
+		BUG_ON(strcmp("dsddg", fmt));
+		va_arg(ap, int32_t);
+		{
+			const char *name = va_arg(ap, const char *);
+			/* fid[4] name[s] flags[4] mode[4] gid[4] */
+			return hdr + 4 + P9_STRLEN(name) + 4 + 4 + 4;
+		}
+	case P9_RREAD:
+	case P9_RREADDIR:
+		BUG_ON(strcmp("dqd", fmt));
+		va_arg(ap, int32_t);
+		va_arg(ap, int64_t);
+		{
+			const int32_t count = va_arg(ap, int32_t);
+			/* count[4] data[count] */
+			return max_t(size_t, hdr + 4 + count, err_size);
+		}
+	case P9_TWRITE:
+		BUG_ON(strcmp("dqV", fmt));
+		va_arg(ap, int32_t);
+		va_arg(ap, int64_t);
+		{
+			const int32_t count = va_arg(ap, int32_t);
+			/* fid[4] offset[8] count[4] data[count] */
+			return hdr + 4 + 8 + 4 + count;
+		}
+	case P9_TRENAMEAT:
+		BUG_ON(strcmp("dsds", fmt));
+		va_arg(ap, int32_t);
+		{
+			const char *oldname, *newname;
+			oldname = va_arg(ap, const char *);
+			va_arg(ap, int32_t);
+			newname = va_arg(ap, const char *);
+			/* olddirfid[4] oldname[s] newdirfid[4] newname[s] */
+			return hdr + 4 + P9_STRLEN(oldname) + 4 + P9_STRLEN(newname);
+		}
+	case P9_TSYMLINK:
+		BUG_ON(strcmp("dssg", fmt));
+		va_arg(ap, int32_t);
+		{
+			const char *name = va_arg(ap, const char *);
+			const char *symtgt = va_arg(ap, const char *);
+			/* fid[4] name[s] symtgt[s] gid[4] */
+			return hdr + 4 + P9_STRLEN(name) + P9_STRLEN(symtgt) + 4;
+		}
+
+	case P9_RERROR:
+		return rerror_size;
+	case P9_RLERROR:
+		return rlerror_size;
+
+	/* small message types */
+	case P9_TWSTAT:
+	case P9_RSTAT:
+	case P9_RREADLINK:
+	case P9_TXATTRWALK:
+	case P9_TXATTRCREATE:
+	case P9_TLINK:
+	case P9_TMKDIR:
+	case P9_TMKNOD:
+	case P9_TRENAME:
+	case P9_TUNLINKAT:
+	case P9_TLOCK:
+		return 8 * 1024;
+
+	/* tiny message types */
+	default:
+		return 4 * 1024;
+
+	}
+}
+
+static int
+p9pdu_writef(struct p9_fcall *pdu, int proto_version, const char *fmt, ...);
+
+void p9stat_free(struct p9_wstat *stbuf)
+{
+	kfree(stbuf->name);
+	stbuf->name = NULL;
+	kfree(stbuf->uid);
+	stbuf->uid = NULL;
+	kfree(stbuf->gid);
+	stbuf->gid = NULL;
+	kfree(stbuf->muid);
+	stbuf->muid = NULL;
+	kfree(stbuf->extension);
+	stbuf->extension = NULL;
+}
+EXPORT_SYMBOL(p9stat_free);
+
+size_t pdu_read(struct p9_fcall *pdu, void *data, size_t size)
+{
+	size_t len = min(pdu->size - pdu->offset, size);
+
+	memcpy(data, &pdu->sdata[pdu->offset], len);
+	pdu->offset += len;
+	return size - len;
+}
+
+static size_t pdu_write(struct p9_fcall *pdu, const void *data, size_t size)
+{
+	size_t len = min(pdu->capacity - pdu->size, size);
+
+	memcpy(&pdu->sdata[pdu->size], data, len);
+	pdu->size += len;
+	return size - len;
+}
+
+static size_t
+pdu_write_u(struct p9_fcall *pdu, struct iov_iter *from, size_t size)
+{
+	size_t len = min(pdu->capacity - pdu->size, size);
+
+	if (!copy_from_iter_full(&pdu->sdata[pdu->size], len, from))
+		len = 0;
+
+	pdu->size += len;
+	return size - len;
+}
+
+/*	b - int8_t
+ *	w - int16_t
+ *	d - int32_t
+ *	q - int64_t
+ *	s - string
+ *	u - numeric uid
+ *	g - numeric gid
+ *	S - stat
+ *	Q - qid
+ *	D - data blob (int32_t size followed by void *, results are not freed)
+ *	T - array of strings (int16_t count, followed by strings)
+ *	R - array of qids (int16_t count, followed by qids)
+ *	A - stat for 9p2000.L (p9_stat_dotl)
+ *	? - if optional = 1, continue parsing
+ */
+
+static int
+p9pdu_vreadf(struct p9_fcall *pdu, int proto_version, const char *fmt,
+	     va_list ap)
+{
+	const char *ptr;
+	int errcode = 0;
+
+	for (ptr = fmt; *ptr; ptr++) {
+		switch (*ptr) {
+		case 'b':{
+				int8_t *val = va_arg(ap, int8_t *);
+				if (pdu_read(pdu, val, sizeof(*val))) {
+					errcode = -EFAULT;
+					break;
+				}
+			}
+			break;
+		case 'w':{
+				int16_t *val = va_arg(ap, int16_t *);
+				__le16 le_val;
+				if (pdu_read(pdu, &le_val, sizeof(le_val))) {
+					errcode = -EFAULT;
+					break;
+				}
+				*val = le16_to_cpu(le_val);
+			}
+			break;
+		case 'd':{
+				int32_t *val = va_arg(ap, int32_t *);
+				__le32 le_val;
+				if (pdu_read(pdu, &le_val, sizeof(le_val))) {
+					errcode = -EFAULT;
+					break;
+				}
+				*val = le32_to_cpu(le_val);
+			}
+			break;
+		case 'q':{
+				int64_t *val = va_arg(ap, int64_t *);
+				__le64 le_val;
+				if (pdu_read(pdu, &le_val, sizeof(le_val))) {
+					errcode = -EFAULT;
+					break;
+				}
+				*val = le64_to_cpu(le_val);
+			}
+			break;
+		case 's':{
+				char **sptr = va_arg(ap, char **);
+				uint16_t len;
+
+				errcode = p9pdu_readf(pdu, proto_version,
+								"w", &len);
+				if (errcode)
+					break;
+
+				*sptr = kmalloc(len + 1, GFP_NOFS);
+				if (*sptr == NULL) {
+					errcode = -ENOMEM;
+					break;
+				}
+				if (pdu_read(pdu, *sptr, len)) {
+					errcode = -EFAULT;
+					kfree(*sptr);
+					*sptr = NULL;
+				} else
+					(*sptr)[len] = 0;
+			}
+			break;
+		case 'u': {
+				kuid_t *uid = va_arg(ap, kuid_t *);
+				__le32 le_val;
+				if (pdu_read(pdu, &le_val, sizeof(le_val))) {
+					errcode = -EFAULT;
+					break;
+				}
+				*uid = make_kuid(le32_to_cpu(le_val));
+			} break;
+		case 'g': {
+				kgid_t *gid = va_arg(ap, kgid_t *);
+				__le32 le_val;
+				if (pdu_read(pdu, &le_val, sizeof(le_val))) {
+					errcode = -EFAULT;
+					break;
+				}
+				*gid = make_kgid(le32_to_cpu(le_val));
+			} break;
+		case 'Q':{
+				struct p9_qid *qid =
+				    va_arg(ap, struct p9_qid *);
+
+				errcode = p9pdu_readf(pdu, proto_version, "bdq",
+						      &qid->type, &qid->version,
+						      &qid->path);
+			}
+			break;
+		case 'S':{
+				struct p9_wstat *stbuf =
+				    va_arg(ap, struct p9_wstat *);
+
+				memset(stbuf, 0, sizeof(struct p9_wstat));
+				stbuf->n_uid = stbuf->n_muid = INVALID_UID;
+				stbuf->n_gid = INVALID_GID;
+
+				errcode =
+				    p9pdu_readf(pdu, proto_version,
+						"wwdQdddqssss?sugu",
+						&stbuf->size, &stbuf->type,
+						&stbuf->dev, &stbuf->qid,
+						&stbuf->mode, &stbuf->atime,
+						&stbuf->mtime, &stbuf->length,
+						&stbuf->name, &stbuf->uid,
+						&stbuf->gid, &stbuf->muid,
+						&stbuf->extension,
+						&stbuf->n_uid, &stbuf->n_gid,
+						&stbuf->n_muid);
+				if (errcode)
+					p9stat_free(stbuf);
+			}
+			break;
+		case 'D':{
+				uint32_t *count = va_arg(ap, uint32_t *);
+				void **data = va_arg(ap, void **);
+
+				errcode =
+				    p9pdu_readf(pdu, proto_version, "d", count);
+				if (!errcode) {
+					*count =
+					    min_t(uint32_t, *count,
+						  pdu->size - pdu->offset);
+					*data = &pdu->sdata[pdu->offset];
+				}
+			}
+			break;
+		case 'T':{
+				uint16_t *nwname = va_arg(ap, uint16_t *);
+				char ***wnames = va_arg(ap, char ***);
+
+				*wnames = NULL;
+
+				errcode = p9pdu_readf(pdu, proto_version,
+								"w", nwname);
+				if (!errcode) {
+					*wnames =
+					    kmalloc_array(*nwname,
+							  sizeof(char *),
+							  GFP_NOFS);
+					if (!*wnames)
+						errcode = -ENOMEM;
+					else
+						(*wnames)[0] = NULL;
+				}
+
+				if (!errcode) {
+					int i;
+
+					for (i = 0; i < *nwname; i++) {
+						errcode =
+						    p9pdu_readf(pdu,
+								proto_version,
+								"s",
+								&(*wnames)[i]);
+						if (errcode) {
+							(*wnames)[i] = NULL;
+							break;
+						}
+					}
+				}
+
+				if (errcode) {
+					if (*wnames) {
+						int i;
+
+						for (i = 0; i < *nwname; i++) {
+							if (!(*wnames)[i])
+								break;
+							kfree((*wnames)[i]);
+						}
+						kfree(*wnames);
+						*wnames = NULL;
+					}
+				}
+			}
+			break;
+		case 'R':{
+				uint16_t *nwqid = va_arg(ap, uint16_t *);
+				struct p9_qid **wqids =
+				    va_arg(ap, struct p9_qid **);
+
+				*wqids = NULL;
+
+				errcode =
+				    p9pdu_readf(pdu, proto_version, "w", nwqid);
+				if (!errcode) {
+					*wqids =
+					    kmalloc_array(*nwqid,
+							  sizeof(struct p9_qid),
+							  GFP_NOFS);
+					if (*wqids == NULL)
+						errcode = -ENOMEM;
+				}
+
+				if (!errcode) {
+					int i;
+
+					for (i = 0; i < *nwqid; i++) {
+						errcode =
+						    p9pdu_readf(pdu,
+								proto_version,
+								"Q",
+								&(*wqids)[i]);
+						if (errcode)
+							break;
+					}
+				}
+
+				if (errcode) {
+					kfree(*wqids);
+					*wqids = NULL;
+				}
+			}
+			break;
+		case 'A': {
+				struct p9_stat_dotl *stbuf =
+				    va_arg(ap, struct p9_stat_dotl *);
+
+				memset(stbuf, 0, sizeof(struct p9_stat_dotl));
+				errcode =
+				    p9pdu_readf(pdu, proto_version,
+					"qQdugqqqqqqqqqqqqqqq",
+					&stbuf->st_result_mask,
+					&stbuf->qid,
+					&stbuf->st_mode,
+					&stbuf->st_uid, &stbuf->st_gid,
+					&stbuf->st_nlink,
+					&stbuf->st_rdev, &stbuf->st_size,
+					&stbuf->st_blksize, &stbuf->st_blocks,
+					&stbuf->st_atime_sec,
+					&stbuf->st_atime_nsec,
+					&stbuf->st_mtime_sec,
+					&stbuf->st_mtime_nsec,
+					&stbuf->st_ctime_sec,
+					&stbuf->st_ctime_nsec,
+					&stbuf->st_btime_sec,
+					&stbuf->st_btime_nsec,
+					&stbuf->st_gen,
+					&stbuf->st_data_version);
+			}
+			break;
+		case '?':
+			if ((proto_version != p9_proto_2000u) &&
+				(proto_version != p9_proto_2000L))
+				return 0;
+			break;
+		default:
+			BUG();
+			break;
+		}
+
+		if (errcode)
+			break;
+	}
+
+	return errcode;
+}
+
+int
+p9pdu_vwritef(struct p9_fcall *pdu, int proto_version, const char *fmt,
+	va_list ap)
+{
+	const char *ptr;
+	int errcode = 0;
+
+	for (ptr = fmt; *ptr; ptr++) {
+		switch (*ptr) {
+		case 'b':{
+				int8_t val = va_arg(ap, int);
+				if (pdu_write(pdu, &val, sizeof(val)))
+					errcode = -EFAULT;
+			}
+			break;
+		case 'w':{
+				__le16 val = cpu_to_le16(va_arg(ap, int));
+				if (pdu_write(pdu, &val, sizeof(val)))
+					errcode = -EFAULT;
+			}
+			break;
+		case 'd':{
+				__le32 val = cpu_to_le32(va_arg(ap, int32_t));
+				if (pdu_write(pdu, &val, sizeof(val)))
+					errcode = -EFAULT;
+			}
+			break;
+		case 'q':{
+				__le64 val = cpu_to_le64(va_arg(ap, int64_t));
+				if (pdu_write(pdu, &val, sizeof(val)))
+					errcode = -EFAULT;
+			}
+			break;
+		case 's':{
+				const char *sptr = va_arg(ap, const char *);
+				uint16_t len = 0;
+				if (sptr)
+					len = min_t(size_t, strlen(sptr),
+								USHRT_MAX);
+
+				errcode = p9pdu_writef(pdu, proto_version,
+								"w", len);
+				if (!errcode && pdu_write(pdu, sptr, len))
+					errcode = -EFAULT;
+			}
+			break;
+		case 'u': {
+				kuid_t uid = va_arg(ap, kuid_t);
+				__le32 val = cpu_to_le32(
+						from_kuid(uid));
+				if (pdu_write(pdu, &val, sizeof(val)))
+					errcode = -EFAULT;
+			} break;
+		case 'g': {
+				kgid_t gid = va_arg(ap, kgid_t);
+				__le32 val = cpu_to_le32(
+						from_kgid(gid));
+				if (pdu_write(pdu, &val, sizeof(val)))
+					errcode = -EFAULT;
+			} break;
+		case 'Q':{
+				const struct p9_qid *qid =
+				    va_arg(ap, const struct p9_qid *);
+				errcode =
+				    p9pdu_writef(pdu, proto_version, "bdq",
+						 qid->type, qid->version,
+						 qid->path);
+			} break;
+		case 'S':{
+				const struct p9_wstat *stbuf =
+				    va_arg(ap, const struct p9_wstat *);
+				errcode =
+				    p9pdu_writef(pdu, proto_version,
+						 "wwdQdddqssss?sugu",
+						 stbuf->size, stbuf->type,
+						 stbuf->dev, &stbuf->qid,
+						 stbuf->mode, stbuf->atime,
+						 stbuf->mtime, stbuf->length,
+						 stbuf->name, stbuf->uid,
+						 stbuf->gid, stbuf->muid,
+						 stbuf->extension, stbuf->n_uid,
+						 stbuf->n_gid, stbuf->n_muid);
+			} break;
+		case 'V':{
+				uint32_t count = va_arg(ap, uint32_t);
+				struct iov_iter *from =
+						va_arg(ap, struct iov_iter *);
+				errcode = p9pdu_writef(pdu, proto_version, "d",
+									count);
+				if (!errcode && pdu_write_u(pdu, from, count))
+					errcode = -EFAULT;
+			}
+			break;
+		case 'T':{
+				uint16_t nwname = va_arg(ap, int);
+				const char **wnames = va_arg(ap, const char **);
+
+				errcode = p9pdu_writef(pdu, proto_version, "w",
+									nwname);
+				if (!errcode) {
+					int i;
+
+					for (i = 0; i < nwname; i++) {
+						errcode =
+						    p9pdu_writef(pdu,
+								proto_version,
+								 "s",
+								 wnames[i]);
+						if (errcode)
+							break;
+					}
+				}
+			}
+			break;
+		case 'R':{
+				uint16_t nwqid = va_arg(ap, int);
+				struct p9_qid *wqids =
+				    va_arg(ap, struct p9_qid *);
+
+				errcode = p9pdu_writef(pdu, proto_version, "w",
+									nwqid);
+				if (!errcode) {
+					int i;
+
+					for (i = 0; i < nwqid; i++) {
+						errcode =
+						    p9pdu_writef(pdu,
+								proto_version,
+								 "Q",
+								 &wqids[i]);
+						if (errcode)
+							break;
+					}
+				}
+			}
+			break;
+		case 'I':{
+				struct p9_iattr_dotl *p9attr = va_arg(ap,
+							struct p9_iattr_dotl *);
+
+				errcode = p9pdu_writef(pdu, proto_version,
+							"ddugqqqqq",
+							p9attr->valid,
+							p9attr->mode,
+							p9attr->uid,
+							p9attr->gid,
+							p9attr->size,
+							p9attr->atime_sec,
+							p9attr->atime_nsec,
+							p9attr->mtime_sec,
+							p9attr->mtime_nsec);
+			}
+			break;
+		case '?':
+			if ((proto_version != p9_proto_2000u) &&
+				(proto_version != p9_proto_2000L))
+				return 0;
+			break;
+		default:
+			BUG();
+			break;
+		}
+
+		if (errcode)
+			break;
+	}
+
+	return errcode;
+}
+
+int p9pdu_readf(struct p9_fcall *pdu, int proto_version, const char *fmt, ...)
+{
+	va_list ap;
+	int ret;
+
+	va_start(ap, fmt);
+	ret = p9pdu_vreadf(pdu, proto_version, fmt, ap);
+	va_end(ap);
+
+	return ret;
+}
+
+static int
+p9pdu_writef(struct p9_fcall *pdu, int proto_version, const char *fmt, ...)
+{
+	va_list ap;
+	int ret;
+
+	va_start(ap, fmt);
+	ret = p9pdu_vwritef(pdu, proto_version, fmt, ap);
+	va_end(ap);
+
+	return ret;
+}
+
+int p9stat_read(struct p9_client *clnt, char *buf, int len, struct p9_wstat *st)
+{
+	struct p9_fcall fake_pdu;
+	int ret;
+
+	fake_pdu.size = len;
+	fake_pdu.capacity = len;
+	fake_pdu.sdata = buf;
+	fake_pdu.offset = 0;
+
+	ret = p9pdu_readf(&fake_pdu, clnt->proto_version, "S", st);
+	if (ret) {
+		p9_debug(P9_DEBUG_9P, "<<< p9stat_read failed: %d\n", ret);
+		trace_9p_protocol_dump(clnt, &fake_pdu);
+		return ret;
+	}
+
+	return fake_pdu.offset;
+}
+EXPORT_SYMBOL(p9stat_read);
+
+int p9pdu_prepare(struct p9_fcall *pdu, int16_t tag, int8_t type)
+{
+	pdu->id = type;
+	return p9pdu_writef(pdu, 0, "dbw", 0, type, tag);
+}
+
+int p9pdu_finalize(struct p9_client *clnt, struct p9_fcall *pdu)
+{
+	int size = pdu->size;
+	int err;
+
+	pdu->size = 0;
+	err = p9pdu_writef(pdu, 0, "d", size);
+	pdu->size = size;
+
+	trace_9p_protocol_dump(clnt, pdu);
+	p9_debug(P9_DEBUG_9P, ">>> size=%d type: %d tag: %d\n",
+		 pdu->size, pdu->id, pdu->tag);
+
+	return err;
+}
+
+void p9pdu_reset(struct p9_fcall *pdu)
+{
+	pdu->offset = 0;
+	pdu->size = 0;
+}
+
+int p9dirent_read(struct p9_client *clnt, char *buf, int len,
+		  struct p9_dirent *dirent)
+{
+	struct p9_fcall fake_pdu;
+	int ret;
+	char *nameptr;
+
+	fake_pdu.size = len;
+	fake_pdu.capacity = len;
+	fake_pdu.sdata = buf;
+	fake_pdu.offset = 0;
+
+	ret = p9pdu_readf(&fake_pdu, clnt->proto_version, "Qqbs", &dirent->qid,
+			  &dirent->d_off, &dirent->d_type, &nameptr);
+	if (ret) {
+		p9_debug(P9_DEBUG_9P, "<<< p9dirent_read failed: %d\n", ret);
+		trace_9p_protocol_dump(clnt, &fake_pdu);
+		return ret;
+	}
+
+	ret = strscpy(dirent->d_name, nameptr, sizeof(dirent->d_name));
+	if (ret < 0) {
+		p9_debug(P9_DEBUG_ERROR,
+			 "On the wire dirent name too long: %s\n",
+			 nameptr);
+		kfree(nameptr);
+		return ret;
+	}
+	kfree(nameptr);
+
+	return fake_pdu.offset;
+}
+EXPORT_SYMBOL(p9dirent_read);
diff --git a/net/9p/protocol.h b/net/9p/protocol.h
new file mode 100644
index 000000000000..ad2283d1f96b
--- /dev/null
+++ b/net/9p/protocol.h
@@ -0,0 +1,19 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * 9P Protocol Support Code
+ *
+ *  Copyright (C) 2008 by Eric Van Hensbergen <ericvh@gmail.com>
+ *
+ *  Base on code from Anthony Liguori <aliguori@us.ibm.com>
+ *  Copyright (C) 2008 by IBM, Corp.
+ */
+
+size_t p9_msg_buf_size(struct p9_client *c, enum p9_msg_t type,
+			const char *fmt, va_list ap);
+int p9pdu_vwritef(struct p9_fcall *pdu, int proto_version, const char *fmt,
+		  va_list ap);
+int p9pdu_readf(struct p9_fcall *pdu, int proto_version, const char *fmt, ...);
+int p9pdu_prepare(struct p9_fcall *pdu, int16_t tag, int8_t type);
+int p9pdu_finalize(struct p9_client *clnt, struct p9_fcall *pdu);
+void p9pdu_reset(struct p9_fcall *pdu);
+size_t pdu_read(struct p9_fcall *pdu, void *data, size_t size);
diff --git a/net/9p/trans_virtio.c b/net/9p/trans_virtio.c
new file mode 100644
index 000000000000..1cbbca4a27a2
--- /dev/null
+++ b/net/9p/trans_virtio.c
@@ -0,0 +1,426 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * The Virtio 9p transport driver
+ *
+ * This is a block based transport driver based on the lguest block driver
+ * code.
+ *
+ *  Copyright (C) 2007, 2008 Eric Van Hensbergen, IBM Corporation
+ *
+ *  Based on virtio console driver
+ *  Copyright (C) 2006, 2007 Rusty Russell, IBM Corporation
+ */
+
+#define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
+
+#include <linux/module.h>
+#include <linux/errno.h>
+#include <linux/kernel.h>
+#include <linux/pagemap.h>
+#include <linux/uaccess.h>
+#include <linux/uio.h>
+#include <linux/mutex.h>
+#include <linux/slab.h>
+#include <linux/mutex.h>
+#include <linux/virtio_ring.h>
+#include <net/9p/9p.h>
+#include <linux/parser.h>
+#include <net/9p/client.h>
+#include <net/9p/transport.h>
+#include <linux/virtio.h>
+#include <linux/virtio_9p.h>
+
+#include <sys/stat.h>
+#include <fs.h>
+
+#define VIRTQUEUE_NUM	128
+
+/* a single mutex to manage channel initialization and attachment */
+static DEFINE_MUTEX(virtio_9p_lock);
+
+/**
+ * struct virtio_chan - per-instance transport information
+ * @inuse: whether the channel is in use
+ * @lock: protects multiple elements within this structure
+ * @client: client instance
+ * @vdev: virtio dev associated with this channel
+ * @vq: virtio queue associated with this channel
+ * @ring_bufs_avail: flag to indicate there is some available in the ring buf
+ * @sg: scatter gather list which is used to pack a request (protected?)
+ * @chan_list: linked list of channels
+ *
+ * We keep all per-channel information in a structure.
+ * This structure is allocated within the devices dev->mem space.
+ * A pointer to the structure will get put in the transport private.
+ *
+ */
+
+struct virtio_chan {
+	bool inuse;
+
+	spinlock_t lock;
+
+	struct p9_client *client;
+	struct virtio_device *vdev;
+	struct virtqueue *vq;
+	int ring_bufs_avail;
+	/* Scatterlist: can be too big for stack. */
+	struct scatterlist sg[VIRTQUEUE_NUM];
+	/**
+	 * @tag: name to identify a mount null terminated
+	 */
+	char *tag;
+
+	struct list_head chan_list;
+};
+
+static struct list_head virtio_chan_list;
+
+/**
+ * p9_virtio_close - reclaim resources of a channel
+ * @client: client instance
+ *
+ * This reclaims a channel by freeing its resources and
+ * resetting its inuse flag.
+ *
+ */
+
+static void p9_virtio_close(struct p9_client *client)
+{
+	struct virtio_chan *chan = client->trans;
+
+	mutex_lock(&virtio_9p_lock);
+	if (chan)
+		chan->inuse = false;
+	mutex_unlock(&virtio_9p_lock);
+}
+/* We don't currently allow canceling of virtio requests */
+static int p9_virtio_cancel(struct p9_client *client, struct p9_req_t *req)
+{
+	return 1;
+}
+
+/* Reply won't come, so drop req ref */
+static int p9_virtio_cancelled(struct p9_client *client, struct p9_req_t *req)
+{
+	p9_req_put(client, req);
+	return 0;
+}
+
+/**
+ * p9_virtio_request - issue a request
+ * @client: client instance issuing the request
+ * @req: request to be issued
+ *
+ */
+
+static int
+p9_virtio_request(struct p9_client *client, struct p9_req_t *req)
+{
+
+	int err;
+	int out_sgs, in_sgs;
+	unsigned long flags;
+	struct virtio_chan *chan = client->trans;
+	struct scatterlist *sgs[2];
+
+	p9_debug(P9_DEBUG_TRANS, "9p debug: virtio request\n");
+
+	WRITE_ONCE(req->status, REQ_STATUS_SENT);
+	spin_lock_irqsave(&chan->lock, flags);
+
+	out_sgs = in_sgs = 0;
+
+	/* Handle out VirtIO ring buffers */
+	if (req->tc.size) {
+		sg_init_one(chan->sg, req->tc.sdata, req->tc.size);
+		sgs[out_sgs++] = chan->sg;
+	}
+
+	if (req->rc.capacity) {
+		sg_init_one(&chan->sg[1], req->rc.sdata, req->rc.capacity);
+		sgs[out_sgs + in_sgs++] = &chan->sg[1];
+	}
+
+	err = virtqueue_add_sgs(chan->vq, sgs, out_sgs, in_sgs, req);
+	if (err < 0) {
+		spin_unlock_irqrestore(&chan->lock, flags);
+		p9_debug(P9_DEBUG_TRANS,
+			 "virtio rpc add_sgs returned failure\n");
+		return err == -ENOSPC ? -ENOSPC : -EIO;
+	}
+	virtqueue_kick(chan->vq);
+	spin_unlock_irqrestore(&chan->lock, flags);
+
+	p9_debug(P9_DEBUG_TRANS, "virtio request kicked\n");
+
+	return 0;
+}
+
+/**
+ * p9_virtio_poll - poll for request completion
+ * @client: client instance issuing the request
+ */
+
+static int
+p9_virtio_poll(struct p9_client *client)
+{
+	struct virtio_chan *chan = client->trans;
+	unsigned int len;
+	struct p9_req_t *req;
+
+	while ((req = virtqueue_get_buf(chan->vq, &len)) != NULL) {
+		p9_debug(P9_DEBUG_TRANS, ": request done\n");
+
+		if (len) {
+			req->rc.size = len;
+			p9_client_cb(chan->client, req, REQ_STATUS_RCVD);
+		}
+	}
+
+	return 0;
+}
+
+static void p9_mount_tag_show(struct device *dev)
+{
+	struct virtio_chan *chan;
+	struct virtio_device *vdev;
+	int tag_len;
+
+	vdev = dev_to_virtio(dev);
+	chan = vdev->priv;
+	tag_len = strlen(chan->tag);
+
+	printf("%.*s\n", tag_len + 1, chan->tag);
+}
+
+/**
+ * p9_virtio_probe - probe for existence of 9P virtio channels
+ * @vdev: virtio device to probe
+ *
+ * This probes for existing virtio channels.
+ *
+ */
+
+static int p9_virtio_probe(struct virtio_device *vdev)
+{
+	__u16 tag_len;
+	char *tag;
+	int err;
+	struct virtio_chan *chan;
+	char *path, *cmd;
+
+	if (!vdev->config->get_config) {
+		dev_err(&vdev->dev, "%s failure: config access disabled\n",
+			__func__);
+		return -EINVAL;
+	}
+
+	chan = kmalloc(sizeof(struct virtio_chan), GFP_KERNEL);
+	if (!chan) {
+		pr_err("Failed to allocate virtio 9P channel\n");
+		err = -ENOMEM;
+		goto fail;
+	}
+
+	chan->vdev = vdev;
+
+	/* We expect one virtqueue, for requests. */
+	err = virtio_find_vqs(vdev, 1, &chan->vq);
+	if (err)
+		goto out_free_chan;
+
+	chan->vq->vdev->priv = chan;
+	spin_lock_init(&chan->lock);
+
+	sg_init_table(chan->sg, VIRTQUEUE_NUM);
+
+	chan->inuse = false;
+	if (virtio_has_feature(vdev, VIRTIO_9P_MOUNT_TAG)) {
+		virtio_cread(vdev, struct virtio_9p_config, tag_len, &tag_len);
+	} else {
+		err = -EINVAL;
+		goto out_free_vq;
+	}
+	tag = kzalloc(tag_len + 1, GFP_KERNEL);
+	if (!tag) {
+		err = -ENOMEM;
+		goto out_free_vq;
+	}
+
+	virtio_cread_bytes(vdev, offsetof(struct virtio_9p_config, tag),
+			   tag, tag_len);
+	chan->tag = tag;
+
+	chan->ring_bufs_avail = 1;
+
+	virtio_device_ready(vdev);
+
+	mutex_lock(&virtio_9p_lock);
+	list_add_tail(&chan->chan_list, &virtio_chan_list);
+	mutex_unlock(&virtio_9p_lock);
+
+	devinfo_add(&vdev->dev, p9_mount_tag_show);
+
+	path = xasprintf("/mnt/9p/%s", chan->tag);
+	cmd = xasprintf("mount -t 9p -o trans=virtio %s %s", chan->tag, path);
+
+	if (mkdir(path, 0755) == 0) {
+		err = automount_add(path, cmd);
+		if (err)
+			dev_warn(&vdev->dev,
+				 "adding automountpoint at %s failed: %pe\n",
+				 path, ERR_PTR(err));
+	}
+
+	free(cmd);
+	free(path);
+
+	return 0;
+
+	kfree(tag);
+out_free_vq:
+	vdev->config->del_vqs(vdev);
+out_free_chan:
+	kfree(chan);
+fail:
+	return err;
+}
+
+
+/**
+ * p9_virtio_create - allocate a new virtio channel
+ * @client: client instance invoking this transport
+ * @devname: string identifying the channel to connect to (unused)
+ * @args: args passed from sys_mount() for per-transport options (unused)
+ *
+ * This sets up a transport channel for 9p communication.  Right now
+ * we only match the first available channel, but eventually we could look up
+ * alternate channels by matching devname versus a virtio_config entry.
+ * We use a simple reference count mechanism to ensure that only a single
+ * mount has a channel open at a time.
+ *
+ */
+
+static int
+p9_virtio_create(struct p9_client *client, const char *devname, char *args)
+{
+	struct virtio_chan *chan;
+	int ret = -ENOENT;
+	int found = 0;
+
+	if (devname == NULL)
+		return -EINVAL;
+
+	mutex_lock(&virtio_9p_lock);
+	list_for_each_entry(chan, &virtio_chan_list, chan_list) {
+		if (!strcmp(devname, chan->tag)) {
+			if (!chan->inuse) {
+				chan->inuse = true;
+				found = 1;
+				break;
+			}
+			ret = -EBUSY;
+		}
+	}
+	mutex_unlock(&virtio_9p_lock);
+
+	if (!found) {
+		pr_err("no channels available for device %s\n", devname);
+		return ret;
+	}
+
+	client->trans = (void *)chan;
+	client->status = Connected;
+	client->trans_tag = chan->tag;
+	chan->client = client;
+
+	return 0;
+}
+
+/**
+ * p9_virtio_remove - clean up resources associated with a virtio device
+ * @vdev: virtio device to remove
+ *
+ */
+
+static void p9_virtio_remove(struct virtio_device *vdev)
+{
+	struct virtio_chan *chan = vdev->priv;
+
+	mutex_lock(&virtio_9p_lock);
+
+	/* Remove self from list so we don't get new users. */
+	list_del(&chan->chan_list);
+
+	/* Wait for existing users to close. */
+	if (chan->inuse)
+		dev_emerg(&vdev->dev,
+			  "p9_virtio_remove: device in use.\n");
+
+	vdev->config->reset(vdev);
+	vdev->config->del_vqs(vdev);
+
+	kfree(chan->tag);
+	kfree(chan);
+}
+
+static struct virtio_device_id id_table[] = {
+	{ VIRTIO_ID_9P, VIRTIO_DEV_ANY_ID },
+	{ 0 },
+};
+
+static unsigned int features[] = {
+	VIRTIO_9P_MOUNT_TAG,
+};
+
+/* The standard "struct lguest_driver": */
+static struct virtio_driver p9_virtio_drv = {
+	.feature_table  = features,
+	.feature_table_size = ARRAY_SIZE(features),
+	.driver.name    = KBUILD_MODNAME,
+	.id_table	= id_table,
+	.probe		= p9_virtio_probe,
+	.remove		= p9_virtio_remove,
+};
+
+static struct p9_trans_module p9_virtio_trans = {
+	.name = "virtio",
+	.create = p9_virtio_create,
+	.close = p9_virtio_close,
+	.request = p9_virtio_request,
+	.poll = p9_virtio_poll,
+	.cancel = p9_virtio_cancel,
+	.cancelled = p9_virtio_cancelled,
+	/*
+	 * We leave one entry for input and one entry for response
+	 * headers. We also skip one more entry to accommodate, address
+	 * that are not at page boundary, that can result in an extra
+	 * page in zero copy.
+	 */
+	.maxsize = PAGE_SIZE * (VIRTQUEUE_NUM - 3),
+	.pooled_rbuffers = false,
+	.def = 1,
+};
+
+/* The standard init function */
+static int __init p9_virtio_init(void)
+{
+	int rc;
+
+	INIT_LIST_HEAD(&virtio_chan_list);
+
+	v9fs_register_trans(&p9_virtio_trans);
+	rc = virtio_driver_register(&p9_virtio_drv);
+	if (rc)
+		v9fs_unregister_trans(&p9_virtio_trans);
+
+	return rc;
+}
+device_initcall(p9_virtio_init);
+MODULE_ALIAS_9P("virtio");
+
+MODULE_DEVICE_TABLE(virtio, id_table);
+MODULE_AUTHOR("Eric Van Hensbergen <ericvh@gmail.com>");
+MODULE_DESCRIPTION("Virtio 9p Transport");
+MODULE_LICENSE("GPL");
diff --git a/net/Kconfig b/net/Kconfig
index b089806457d8..a37eff60a12f 100644
--- a/net/Kconfig
+++ b/net/Kconfig
@@ -59,4 +59,6 @@ config NET_FASTBOOT
 	  This option adds support for the UDP variant of the Fastboot
 	  protocol.
 
+source "net/9p/Kconfig"
+
 endif
diff --git a/net/Makefile b/net/Makefile
index 2837dc25682e..8994e08447f5 100644
--- a/net/Makefile
+++ b/net/Makefile
@@ -10,3 +10,4 @@ obj-$(CONFIG_NET_RESOLV)+= dns.o
 obj-$(CONFIG_NET_NETCONSOLE) += netconsole.o
 obj-$(CONFIG_NET_IFUP)	+= ifup.o
 obj-$(CONFIG_NET_FASTBOOT) += fastboot.o
+obj-$(CONFIG_NET_9P)	+= 9p/
-- 
2.39.5



