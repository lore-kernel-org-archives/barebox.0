Delivery-date: Fri, 06 Jun 2025 10:59:13 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uNSuv-004K7a-0a
	for lore@lore.pengutronix.de;
	Fri, 06 Jun 2025 10:59:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uNSuq-0003ht-Tf
	for lore@pengutronix.de; Fri, 06 Jun 2025 10:59:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=uIsus2rsUA6pCu0f2OzkAZSt1d0XvPbYSVu0arm0UEw=; b=ie8Xz+BmKyvPcP2L6dYzvD0i7Y
	xOL3Tnb5xC/J3FGWbaxA2NROa02YUOL58K+DM+vPTWH/0fpDagubOIA6fVnq2DF0K3csSFTaRt2Sa
	OCQfGDACAIGNGmPUEbGchOZpkE665f4pjmL46YUyMq+BTB3PA0hFEE7JTfKsehsqG3yut6ALtCRQv
	URvfIPxJifCTtNj0NiUe4H3QNM6zLxcDVXhICyyWu6pvN0Y3SKimFjlN8etybiJilDoV7asZcQOXj
	O038Y63R7ata5n+SHKboxL52OKrxhKAh91kyuPfXC23VPZCBFWhm/eUM7FGr2cRwWX0hEm5C/XlFu
	86HYH96g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNSu4-0000000HSN8-2qno;
	Fri, 06 Jun 2025 08:58:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNSu0-0000000HSK5-3KiF
	for barebox@lists.infradead.org;
	Fri, 06 Jun 2025 08:58:18 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uNSty-0002si-Ie
	for barebox@lists.infradead.org; Fri, 06 Jun 2025 10:58:14 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Date: Fri,  6 Jun 2025 10:58:03 +0200
Message-Id: <20250606085813.2183260-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250606_015816_835260_5611D047 
X-CRM114-Status: GOOD (  10.77  )
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
Subject: [PATCH 00/10] fs: add virtfs (Plan 9 ove Virt I/O)
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

In preparation for adding usb9pfs support to barebox, this series adds
9PFS over Virt I/O, which is nifty for passing files to (and from, FS
is writable) barebox running in Qemu.

Ahmad Fatoum (10):
  tftp: centralize 2 sec d_revalidate optimization to new netfs lib
  Port Linux __cleanup() based guard infrastructure
  lib: idr: implement Linux idr_alloc/_u32 API
  lib: add iov_iter I/O vector iterator support
  lib: add parser code for mount options
  include: add definitions for UID/GID/DEV
  net: add support for 9P protocol
  fs: add new 9P2000.l (Plan 9) File system support
  fs: 9p: enable 9P over Virt I/O transport in defconfigs
  test: add support for --fs option in QEMU

 Documentation/user/virtio.rst       |   32 +-
 Makefile                            |    3 -
 arch/arm/configs/multi_v7_defconfig |    4 +
 arch/arm/configs/multi_v8_defconfig |    4 +
 arch/riscv/configs/rv64i_defconfig  |    4 +
 arch/riscv/configs/virt32_defconfig |    4 +
 common/startup.c                    |    3 +
 conftest.py                         |   15 +
 drivers/firmware/arm_scmi/bus.c     |    5 +-
 drivers/firmware/arm_scmi/driver.c  |   10 +-
 fs/9p/Kconfig                       |   18 +
 fs/9p/Makefile                      |   12 +
 fs/9p/fid.c                         |  295 ++++
 fs/9p/fid.h                         |   37 +
 fs/9p/v9fs.c                        |  373 ++++++
 fs/9p/v9fs.h                        |  183 +++
 fs/9p/v9fs_vfs.h                    |   74 +
 fs/9p/vfs_addr.c                    |  111 ++
 fs/9p/vfs_dir.c                     |  172 +++
 fs/9p/vfs_file.c                    |   67 +
 fs/9p/vfs_inode.c                   |  279 ++++
 fs/9p/vfs_inode_dotl.c              |  579 ++++++++
 fs/9p/vfs_super.c                   |  243 ++++
 fs/Kconfig                          |    6 +
 fs/Makefile                         |    2 +
 fs/fs.c                             |    9 +
 fs/netfs.c                          |   25 +
 fs/tftp.c                           |   35 +-
 include/linux/cleanup.h             |  401 ++++++
 include/linux/compiler-clang.h      |   11 +
 include/linux/compiler_types.h      |    6 +
 include/linux/completion.h          |    3 +
 include/linux/fs.h                  |   47 +
 include/linux/gfp.h                 |    2 +
 include/linux/idr.h                 |    8 +-
 include/linux/kdev_t.h              |   22 +
 include/linux/limits.h              |    1 +
 include/linux/module.h              |    1 +
 include/linux/mutex.h               |    8 +-
 include/linux/netfs.h               |   78 ++
 include/linux/parser.h              |   42 +
 include/linux/spinlock.h            |   17 +-
 include/linux/stat.h                |    4 +
 include/linux/uidgid.h              |   59 +
 include/linux/uidgid_types.h        |   15 +
 include/linux/uio.h                 |  305 +++++
 include/net/9p/9p.h                 |  559 ++++++++
 include/net/9p/client.h             |  297 ++++
 include/net/9p/transport.h          |   73 +
 include/printf.h                    |   11 +
 include/uapi/linux/uio.h            |   23 +
 include/uapi/linux/virtio_9p.h      |   44 +
 lib/Makefile                        |    2 +
 lib/idr.c                           |  116 +-
 lib/iov_iter.c                      |  245 ++++
 lib/parser.c                        |  363 +++++
 net/9p/Kconfig                      |   32 +
 net/9p/Makefile                     |   11 +
 net/9p/client.c                     | 1932 +++++++++++++++++++++++++++
 net/9p/mod.c                        |  180 +++
 net/9p/protocol.c                   |  802 +++++++++++
 net/9p/protocol.h                   |   19 +
 net/9p/trans_virtio.c               |  426 ++++++
 net/Kconfig                         |    2 +
 net/Makefile                        |    1 +
 test/self/idr.c                     |    5 +
 66 files changed, 8715 insertions(+), 62 deletions(-)
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
 create mode 100644 fs/netfs.c
 create mode 100644 include/linux/cleanup.h
 create mode 100644 include/linux/kdev_t.h
 create mode 100644 include/linux/netfs.h
 create mode 100644 include/linux/parser.h
 create mode 100644 include/linux/uidgid.h
 create mode 100644 include/linux/uidgid_types.h
 create mode 100644 include/linux/uio.h
 create mode 100644 include/net/9p/9p.h
 create mode 100644 include/net/9p/client.h
 create mode 100644 include/net/9p/transport.h
 create mode 100644 include/uapi/linux/uio.h
 create mode 100644 include/uapi/linux/virtio_9p.h
 create mode 100644 lib/iov_iter.c
 create mode 100644 lib/parser.c
 create mode 100644 net/9p/Kconfig
 create mode 100644 net/9p/Makefile
 create mode 100644 net/9p/client.c
 create mode 100644 net/9p/mod.c
 create mode 100644 net/9p/protocol.c
 create mode 100644 net/9p/protocol.h
 create mode 100644 net/9p/trans_virtio.c

-- 
2.39.5



