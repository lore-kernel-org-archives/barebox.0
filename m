Delivery-date: Wed, 02 Apr 2025 10:36:51 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tztac-007Kqw-32
	for lore@lore.pengutronix.de;
	Wed, 02 Apr 2025 10:36:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tztab-0003Oh-5i
	for lore@pengutronix.de; Wed, 02 Apr 2025 10:36:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=izOudIYNdl6zqe6o6Fn2mKFuDBvbRcmFQXkKc48RHDU=; b=G7J/QiJAh0LyIVljH/nexhZsON
	EWQM/lFrndiUcLZkkDKTIfaEu5MDtIyOPRDd9CO2EmcPdpjwW/YRMViPCCcIcE90cqA7vzFsOxYZt
	Ho7wiHfyff8m5N+chwWQJG4VTHEZ1SJAObh1cA0qG8yTWECfeWdRVVWNTq+vA1Y3/r8oW3A+YbiFZ
	65wQURWqHpTQdZbs3tpgQ+OLA/F+iyAO6B7UVyX4YeiUkwisff3E95JfAEkD+9CfJ+vz7XgJZ1QgI
	0nXuWKmP3sPkY1aVgyk8HrIGPAG/nym27+3IBQ7I1+ET4rWk2reExZ+wXHuEpEwRSngZQRMmQCMli
	HDjQKwYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzta0-00000005Y8b-1a74;
	Wed, 02 Apr 2025 08:36:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tztZw-00000005Y7O-3pJG
	for barebox@lists.infradead.org;
	Wed, 02 Apr 2025 08:36:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tztZv-0003Cf-FC; Wed, 02 Apr 2025 10:36:07 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tztZv-002uCz-0t;
	Wed, 02 Apr 2025 10:36:07 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tztZv-00Avli-0Y;
	Wed, 02 Apr 2025 10:36:07 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  2 Apr 2025 10:36:05 +0200
Message-Id: <20250402083606.2605313-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250402_013609_719687_87C5CC7A 
X-CRM114-Status: GOOD (  25.00  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] net: nfs: retire nfs command in favor of filesystem
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

In addition to the tftp and nfs filesystems, we also have tftp and nfs
commands. The TFTP command mounts the TFTP file system internally, but
the NFS command contains a separate NFS implementation that we inherited
from U-Boot.

The nfs command's NFS implementation has, except for two bug fixes, seen
no development since the addition of the file system, so let's remove
it and keep only a single NFS implementation around.

Along with its removal, we also remove the symbol from all configs that
already enable the NFS filesystem implementation. Removal for other
configs will follow separately.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/user/networking.rst        |   3 +-
 arch/arm/configs/at91_multi_defconfig    |   1 -
 arch/arm/configs/multi_v7_defconfig      |   1 -
 arch/arm/configs/multi_v8_defconfig      |   1 -
 arch/arm/configs/omap_defconfig          |   1 -
 arch/arm/configs/rockchip_v7a_defconfig  |   1 -
 arch/arm/configs/rockchip_v8_defconfig   |   1 -
 arch/arm/configs/zynqmp_defconfig        |   1 -
 arch/mips/configs/ath79_defconfig        |   1 -
 arch/riscv/configs/litex_linux_defconfig |   1 -
 arch/riscv/configs/rv64i_defconfig       |   1 -
 arch/riscv/configs/virt32_defconfig      |   1 -
 arch/sandbox/configs/sandbox_defconfig   |   1 -
 arch/x86/configs/efi_defconfig           |   1 -
 net/Makefile                             |   1 -
 net/nfs.c                                | 739 -----------------------
 16 files changed, 1 insertion(+), 755 deletions(-)
 delete mode 100644 net/nfs.c

diff --git a/Documentation/user/networking.rst b/Documentation/user/networking.rst
index 44d07f6ed521..6997da10dbea 100644
--- a/Documentation/user/networking.rst
+++ b/Documentation/user/networking.rst
@@ -134,8 +134,7 @@ or:
 Network filesystems
 -------------------
 
-barebox supports NFS and TFTP both with commands (:ref:`nfs <command_nfs>` and
-:ref:`tftp <command_tftp>`) and as filesystem implementations; see
+barebox supports NFS and TFTP as filesystem implementations; see
 :ref:`filesystems_nfs` and :ref:`filesystems_tftp` for more information. After
 the network device has been brought up, a network filesystem can be mounted
 with:
diff --git a/arch/arm/configs/at91_multi_defconfig b/arch/arm/configs/at91_multi_defconfig
index 01e4526329f4..20afbe92395f 100644
--- a/arch/arm/configs/at91_multi_defconfig
+++ b/arch/arm/configs/at91_multi_defconfig
@@ -90,7 +90,6 @@ CONFIG_CMD_OF_PROPERTY=y
 CONFIG_CMD_OFTREE=y
 CONFIG_CMD_TIME=y
 CONFIG_NET=y
-CONFIG_NET_NFS=y
 CONFIG_OF_BAREBOX_DRIVERS=y
 CONFIG_OF_BAREBOX_ENV_IN_FS=y
 CONFIG_DRIVER_NET_MACB=y
diff --git a/arch/arm/configs/multi_v7_defconfig b/arch/arm/configs/multi_v7_defconfig
index a95342dda626..760a7aeca980 100644
--- a/arch/arm/configs/multi_v7_defconfig
+++ b/arch/arm/configs/multi_v7_defconfig
@@ -198,7 +198,6 @@ CONFIG_CMD_OF_OVERLAY=y
 CONFIG_CMD_OFTREE=y
 CONFIG_CMD_TIME=y
 CONFIG_NET=y
-CONFIG_NET_NFS=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_FASTBOOT=y
 CONFIG_OF_BAREBOX_DRIVERS=y
diff --git a/arch/arm/configs/multi_v8_defconfig b/arch/arm/configs/multi_v8_defconfig
index d099c3f686c4..a4685a90f850 100644
--- a/arch/arm/configs/multi_v8_defconfig
+++ b/arch/arm/configs/multi_v8_defconfig
@@ -143,7 +143,6 @@ CONFIG_CMD_OF_OVERLAY=y
 CONFIG_CMD_OFTREE=y
 CONFIG_CMD_TIME=y
 CONFIG_NET=y
-CONFIG_NET_NFS=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_SNTP=y
 CONFIG_NET_FASTBOOT=y
diff --git a/arch/arm/configs/omap_defconfig b/arch/arm/configs/omap_defconfig
index 2383ffcb2c37..5c86a8f47a8f 100644
--- a/arch/arm/configs/omap_defconfig
+++ b/arch/arm/configs/omap_defconfig
@@ -94,7 +94,6 @@ CONFIG_CMD_OF_FIXUP_STATUS=y
 CONFIG_CMD_OFTREE=y
 CONFIG_CMD_TIME=y
 CONFIG_NET=y
-CONFIG_NET_NFS=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_OF_BAREBOX_DRIVERS=y
 CONFIG_DRIVER_SERIAL_NS16550=y
diff --git a/arch/arm/configs/rockchip_v7a_defconfig b/arch/arm/configs/rockchip_v7a_defconfig
index 378ceb0e43f4..67f5b5e8446f 100644
--- a/arch/arm/configs/rockchip_v7a_defconfig
+++ b/arch/arm/configs/rockchip_v7a_defconfig
@@ -72,7 +72,6 @@ CONFIG_CMD_OF_DISPLAY_TIMINGS=y
 CONFIG_CMD_OFTREE=y
 CONFIG_CMD_TIME=y
 CONFIG_NET=y
-CONFIG_NET_NFS=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_OFDEVICE=y
 CONFIG_OF_BAREBOX_DRIVERS=y
diff --git a/arch/arm/configs/rockchip_v8_defconfig b/arch/arm/configs/rockchip_v8_defconfig
index 95900368cc02..ac73b7f50d70 100644
--- a/arch/arm/configs/rockchip_v8_defconfig
+++ b/arch/arm/configs/rockchip_v8_defconfig
@@ -88,7 +88,6 @@ CONFIG_CMD_OF_DISPLAY_TIMINGS=y
 CONFIG_CMD_OFTREE=y
 CONFIG_CMD_TIME=y
 CONFIG_NET=y
-CONFIG_NET_NFS=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_OF_BAREBOX_DRIVERS=y
 CONFIG_AIODEV=y
diff --git a/arch/arm/configs/zynqmp_defconfig b/arch/arm/configs/zynqmp_defconfig
index 36a51dc8ad4b..7af6b2301ad8 100644
--- a/arch/arm/configs/zynqmp_defconfig
+++ b/arch/arm/configs/zynqmp_defconfig
@@ -49,7 +49,6 @@ CONFIG_CMD_OF_OVERLAY=y
 CONFIG_CMD_OFTREE=y
 CONFIG_CMD_TIME=y
 CONFIG_NET=y
-CONFIG_NET_NFS=y
 CONFIG_OF_BAREBOX_DRIVERS=y
 CONFIG_OF_BAREBOX_ENV_IN_FS=y
 CONFIG_OF_OVERLAY_LIVE=y
diff --git a/arch/mips/configs/ath79_defconfig b/arch/mips/configs/ath79_defconfig
index 64321ceddd9e..520743fb29dc 100644
--- a/arch/mips/configs/ath79_defconfig
+++ b/arch/mips/configs/ath79_defconfig
@@ -61,7 +61,6 @@ CONFIG_CMD_OF_PROPERTY=y
 CONFIG_CMD_OFTREE=y
 CONFIG_CMD_TIME=y
 CONFIG_NET=y
-CONFIG_NET_NFS=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_SNTP=y
 CONFIG_OFDEVICE=y
diff --git a/arch/riscv/configs/litex_linux_defconfig b/arch/riscv/configs/litex_linux_defconfig
index 8e19964890c0..07c840938ad5 100644
--- a/arch/riscv/configs/litex_linux_defconfig
+++ b/arch/riscv/configs/litex_linux_defconfig
@@ -44,7 +44,6 @@ CONFIG_CMD_OF_DUMP=y
 CONFIG_CMD_TIME=y
 CONFIG_CMD_DHRYSTONE=y
 CONFIG_NET=y
-CONFIG_NET_NFS=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_DRIVER_NET_LITEETH=y
 CONFIG_AR8327N_PHY=y
diff --git a/arch/riscv/configs/rv64i_defconfig b/arch/riscv/configs/rv64i_defconfig
index 7f18ec08f37a..32b681d17c61 100644
--- a/arch/riscv/configs/rv64i_defconfig
+++ b/arch/riscv/configs/rv64i_defconfig
@@ -91,7 +91,6 @@ CONFIG_CMD_TIME=y
 CONFIG_CMD_STATE=y
 CONFIG_CMD_DHRYSTONE=y
 CONFIG_NET=y
-CONFIG_NET_NFS=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_FASTBOOT=y
 CONFIG_OF_BAREBOX_DRIVERS=y
diff --git a/arch/riscv/configs/virt32_defconfig b/arch/riscv/configs/virt32_defconfig
index b5044cf34aa5..c56f9053fb3c 100644
--- a/arch/riscv/configs/virt32_defconfig
+++ b/arch/riscv/configs/virt32_defconfig
@@ -78,7 +78,6 @@ CONFIG_CMD_TIME=y
 CONFIG_CMD_STATE=y
 CONFIG_CMD_DHRYSTONE=y
 CONFIG_NET=y
-CONFIG_NET_NFS=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_FASTBOOT=y
 CONFIG_OF_BAREBOX_DRIVERS=y
diff --git a/arch/sandbox/configs/sandbox_defconfig b/arch/sandbox/configs/sandbox_defconfig
index 4cc9d9982c1a..f8897afa19b1 100644
--- a/arch/sandbox/configs/sandbox_defconfig
+++ b/arch/sandbox/configs/sandbox_defconfig
@@ -93,7 +93,6 @@ CONFIG_CMD_DHRYSTONE=y
 CONFIG_CMD_SPD_DECODE=y
 CONFIG_CMD_SEED=y
 CONFIG_NET=y
-CONFIG_NET_NFS=y
 CONFIG_NET_SNTP=y
 CONFIG_NET_FASTBOOT=y
 CONFIG_FEATURE_CONTROLLER=y
diff --git a/arch/x86/configs/efi_defconfig b/arch/x86/configs/efi_defconfig
index 73614dd4b466..57e1080195c2 100644
--- a/arch/x86/configs/efi_defconfig
+++ b/arch/x86/configs/efi_defconfig
@@ -68,7 +68,6 @@ CONFIG_CMD_OFTREE=y
 CONFIG_CMD_TIME=y
 CONFIG_CMD_STATE=y
 CONFIG_NET=y
-CONFIG_NET_NFS=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_OFDEVICE=y
 CONFIG_OF_BAREBOX_DRIVERS=y
diff --git a/net/Makefile b/net/Makefile
index c93d0772c3e4..2837dc25682e 100644
--- a/net/Makefile
+++ b/net/Makefile
@@ -3,7 +3,6 @@
 obj-y			+= lib.o
 obj-$(CONFIG_NET)	+= eth.o
 obj-$(CONFIG_NET)	+= net.o
-obj-$(CONFIG_NET_NFS)	+= nfs.o
 obj-$(CONFIG_NET_DHCP)	+= dhcp.o
 obj-$(CONFIG_NET_SNTP)	+= sntp.o
 obj-$(CONFIG_CMD_PING)	+= ping.o
diff --git a/net/nfs.c b/net/nfs.c
deleted file mode 100644
index 68c35e11f6a9..000000000000
--- a/net/nfs.c
+++ /dev/null
@@ -1,739 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-
-/*
- * NFS support driver - based on etherboot and barebox's tftp.c
- *
- * Masami Komiya <mkomiya@sonare.it> 2004
- *
- */
-
-/* NOTE: the NFS code is heavily inspired by the NetBSD netboot code (read:
- * large portions are copied verbatim) as distributed in OSKit 0.97.  A few
- * changes were necessary to adapt the code to Etherboot and to fix several
- * inconsistencies.  Also the RPC message preparation is done "by hand" to
- * avoid adding netsprintf() which I find hard to understand and use.  */
-
-/* NOTE 2: Etherboot does not care about things beyond the kernel image, so
- * it loads the kernel image off the boot server (ARP_SERVER) and does not
- * access the client root disk (root-path in dhcpd.conf), which would use
- * ARP_ROOTSERVER.  The root disk is something the operating system we are
- * about to load needs to use.	This is different from the OSKit 0.97 logic.  */
-
-/* NOTE 3: Symlink handling introduced by Anselm M Hoffmeister, 2003-July-14
- * If a symlink is encountered, it is followed as far as possible (recursion
- * possible, maximum 16 steps). There is no clearing of ".."'s inside the
- * path, so please DON'T DO THAT. thx. */
-
-#include <common.h>
-#include <command.h>
-#include <clock.h>
-#include <net.h>
-#include <malloc.h>
-#include <libgen.h>
-#include <fs.h>
-#include <fcntl.h>
-#include <errno.h>
-#include <progress.h>
-#include <linux/err.h>
-
-#define SUNRPC_PORT     111
-
-#define PROG_PORTMAP    100000
-#define PROG_NFS        100003
-#define PROG_MOUNT      100005
-
-#define MSG_CALL        0
-#define MSG_REPLY       1
-
-#define PORTMAP_GETPORT 3
-
-#define MOUNT_ADDENTRY  1
-#define MOUNT_UMOUNTALL 4
-
-#define NFS_LOOKUP      4
-#define NFS_READLINK    5
-#define NFS_READ        6
-
-#define NFS_FHSIZE      32
-
-enum nfs_stat {
-	NFS_OK		= 0,
-	NFSERR_PERM	= 1,
-	NFSERR_NOENT	= 2,
-	NFSERR_IO	= 5,
-	NFSERR_NXIO	= 6,
-	NFSERR_ACCES	= 13,
-	NFSERR_EXIST	= 17,
-	NFSERR_NODEV	= 19,
-	NFSERR_NOTDIR	= 20,
-	NFSERR_ISDIR	= 21,
-	NFSERR_FBIG	= 27,
-	NFSERR_NOSPC	= 28,
-	NFSERR_ROFS	= 30,
-	NFSERR_NAMETOOLONG=63,
-	NFSERR_NOTEMPTY	= 66,
-	NFSERR_DQUOT	= 69,
-	NFSERR_STALE	= 70,
-	NFSERR_WFLUSH	= 99,
-};
-
-/* Block size used for NFS read accesses.  A RPC reply packet (including  all
- * headers) must fit within a single Ethernet frame to avoid fragmentation.
- * Chosen to be a power of two, as most NFS servers are optimized for this.  */
-#define NFS_READ_SIZE   1024
-
-struct rpc_call {
-	uint32_t id;
-	uint32_t type;
-	uint32_t rpcvers;
-	uint32_t prog;
-	uint32_t vers;
-	uint32_t proc;
-	uint32_t data[0];
-};
-
-struct rpc_reply {
-	uint32_t id;
-	uint32_t type;
-	uint32_t rstatus;
-	uint32_t verifier;
-	uint32_t v2;
-	uint32_t astatus;
-	uint32_t data[0];
-};
-
-struct rpc_t {
-	union {
-		struct {
-			uint32_t id;
-			uint32_t type;
-			uint32_t rpcvers;
-			uint32_t prog;
-			uint32_t vers;
-			uint32_t proc;
-			uint32_t data[1];
-		} call;
-		struct {
-			uint32_t id;
-			uint32_t type;
-			uint32_t rstatus;
-			uint32_t verifier;
-			uint32_t v2;
-			uint32_t astatus;
-			uint32_t data[19];
-		} reply;
-	} u;
-};
-
-#define NFS_TIMEOUT 15
-
-static unsigned long rpc_id = 0;
-static int nfs_offset = -1;
-static uint64_t nfs_timer_start;
-static int nfs_err;
-
-static char dirfh[NFS_FHSIZE];	/* file handle of directory */
-static char filefh[NFS_FHSIZE]; /* file handle of kernel image */
-
-static int	nfs_server_mount_port;
-static int	nfs_server_nfs_port;
-static int	nfs_state;
-#define STATE_PRCLOOKUP_PROG_MOUNT_REQ	1
-#define STATE_PRCLOOKUP_PROG_NFS_REQ	2
-#define STATE_MOUNT_REQ			3
-#define STATE_UMOUNT_REQ		4
-#define STATE_LOOKUP_REQ		5
-#define STATE_READ_REQ			6
-#define STATE_READLINK_REQ		7
-#define STATE_DONE			8
-
-static const char *nfs_filename;
-static char *nfs_path;
-static char nfs_path_buff[2048];
-
-static int net_store_fd;
-static struct net_connection *nfs_con;
-
-/**************************************************************************
-RPC_ADD_CREDENTIALS - Add RPC authentication/verifier entries
-**************************************************************************/
-static uint32_t *rpc_add_credentials(uint32_t *p)
-{
-	int hl;
-	int hostnamelen = 0;
-
-	/* Here's the executive summary on authentication requirements of the
-	 * various NFS server implementations:	Linux accepts both AUTH_NONE
-	 * and AUTH_UNIX authentication (also accepts an empty hostname field
-	 * in the AUTH_UNIX scheme).  *BSD refuses AUTH_NONE, but accepts
-	 * AUTH_UNIX (also accepts an empty hostname field in the AUTH_UNIX
-	 * scheme).  To be safe, use AUTH_UNIX and pass the hostname if we have
-	 * it (if the BOOTP/DHCP reply didn't give one, just use an empty
-	 * hostname).  */
-
-	hl = (hostnamelen + 3) & ~3;
-
-	/* Provide an AUTH_UNIX credential.  */
-	*p++ = htonl(1);		/* AUTH_UNIX */
-	*p++ = htonl(hl+20);		/* auth length */
-	*p++ = htonl(0);		/* stamp */
-	*p++ = htonl(hostnamelen);	/* hostname string */
-
-	if (hostnamelen & 3)
-		*(p + hostnamelen / 4) = 0; /* add zero padding */
-
-	/* memcpy(p, hostname, hostnamelen); */ /* empty hostname */
-
-	p += hl / 4;
-	*p++ = 0;			/* uid */
-	*p++ = 0;			/* gid */
-	*p++ = 0;			/* auxiliary gid list */
-
-	/* Provide an AUTH_NONE verifier.  */
-	*p++ = 0;			/* AUTH_NONE */
-	*p++ = 0;			/* auth length */
-
-	return p;
-}
-
-/**************************************************************************
-RPC_LOOKUP - Lookup RPC Port numbers
-**************************************************************************/
-static int rpc_req(int rpc_prog, int rpc_proc, uint32_t *data, int datalen)
-{
-	struct rpc_call pkt;
-	unsigned long id;
-	int sport;
-	int ret;
-	unsigned char *payload = net_udp_get_payload(nfs_con);
-
-	id = ++rpc_id;
-	pkt.id = htonl(id);
-	pkt.type = htonl(MSG_CALL);
-	pkt.rpcvers = htonl(2);	/* use RPC version 2 */
-	pkt.prog = htonl(rpc_prog);
-	pkt.vers = htonl(2);	/* portmapper is version 2 */
-	pkt.proc = htonl(rpc_proc);
-
-	memcpy(payload, &pkt, sizeof(pkt));
-	memcpy(payload + sizeof(pkt), data, datalen * sizeof(uint32_t));
-
-	if (rpc_prog == PROG_PORTMAP)
-		sport = SUNRPC_PORT;
-	else if (rpc_prog == PROG_MOUNT)
-		sport = nfs_server_mount_port;
-	else
-		sport = nfs_server_nfs_port;
-
-	nfs_con->udp->uh_dport = htons(sport);
-	ret = net_udp_send(nfs_con, sizeof(pkt) + datalen * sizeof(uint32_t));
-
-	return ret;
-}
-
-/**************************************************************************
-RPC_LOOKUP - Lookup RPC Port numbers
-**************************************************************************/
-static void rpc_lookup_req(int prog, int ver)
-{
-	uint32_t data[16];
-
-	data[0] = 0; data[1] = 0;	/* auth credential */
-	data[2] = 0; data[3] = 0;	/* auth verifier */
-	data[4] = htonl(prog);
-	data[5] = htonl(ver);
-	data[6] = htonl(17);	/* IP_UDP */
-	data[7] = 0;
-
-	rpc_req(PROG_PORTMAP, PORTMAP_GETPORT, data, 8);
-}
-
-/**************************************************************************
-NFS_MOUNT - Mount an NFS Filesystem
-**************************************************************************/
-static void nfs_mount_req(char *path)
-{
-	uint32_t data[1024];
-	uint32_t *p;
-	int len;
-	int pathlen;
-
-	pathlen = strlen (path);
-
-	p = &(data[0]);
-	p = rpc_add_credentials(p);
-
-	*p++ = htonl(pathlen);
-	if (pathlen & 3)
-		*(p + pathlen / 4) = 0;
-	memcpy (p, path, pathlen);
-	p += (pathlen + 3) / 4;
-
-	len = p - &(data[0]);
-
-	rpc_req(PROG_MOUNT, MOUNT_ADDENTRY, data, len);
-}
-
-/**************************************************************************
-NFS_UMOUNTALL - Unmount all our NFS Filesystems on the Server
-**************************************************************************/
-static void nfs_umountall_req(void)
-{
-	uint32_t data[1024];
-	uint32_t *p;
-	int len;
-
-	if (nfs_server_mount_port < 0)
-		/* Nothing mounted, nothing to umount */
-		return;
-
-	p = &(data[0]);
-	p = rpc_add_credentials(p);
-
-	len = p - &(data[0]);
-
-	rpc_req(PROG_MOUNT, MOUNT_UMOUNTALL, data, len);
-}
-
-/***************************************************************************
- * NFS_READLINK (AH 2003-07-14)
- * This procedure is called when read of the first block fails -
- * this probably happens when it's a directory or a symlink
- * In case of successful readlink(), the dirname is manipulated,
- * so that inside the nfs() function a recursion can be done.
- **************************************************************************/
-static void nfs_readlink_req(void)
-{
-	uint32_t data[1024];
-	uint32_t *p;
-	int len;
-
-	p = &(data[0]);
-	p = rpc_add_credentials(p);
-
-	memcpy (p, filefh, NFS_FHSIZE);
-	p += (NFS_FHSIZE / 4);
-
-	len = p - &(data[0]);
-
-	rpc_req(PROG_NFS, NFS_READLINK, data, len);
-}
-
-/**************************************************************************
-NFS_LOOKUP - Lookup Pathname
-**************************************************************************/
-static void nfs_lookup_req(const char *fname)
-{
-	uint32_t data[1024];
-	uint32_t *p;
-	int len;
-	int fnamelen;
-
-	fnamelen = strlen (fname);
-
-	p = &(data[0]);
-	p = rpc_add_credentials(p);
-
-	memcpy (p, dirfh, NFS_FHSIZE);
-	p += (NFS_FHSIZE / 4);
-	*p++ = htonl(fnamelen);
-	if (fnamelen & 3)
-		*(p + fnamelen / 4) = 0;
-	memcpy (p, fname, fnamelen);
-	p += (fnamelen + 3) / 4;
-
-	len = p - &(data[0]);
-
-	rpc_req(PROG_NFS, NFS_LOOKUP, data, len);
-}
-
-/**************************************************************************
-NFS_READ - Read File on NFS Server
-**************************************************************************/
-static void nfs_read_req(int offset, int readlen)
-{
-	uint32_t data[1024];
-	uint32_t *p;
-	int len;
-
-	p = &(data[0]);
-	p = rpc_add_credentials(p);
-
-	memcpy (p, filefh, NFS_FHSIZE);
-	p += (NFS_FHSIZE / 4);
-	*p++ = htonl(offset);
-	*p++ = htonl(readlen);
-	*p++ = 0;
-
-	len = p - &(data[0]);
-
-	rpc_req(PROG_NFS, NFS_READ, data, len);
-}
-
-/**************************************************************************
-RPC request dispatcher
-**************************************************************************/
-static void nfs_send(void)
-{
-	debug("%s\n", __func__);
-
-	switch (nfs_state) {
-	case STATE_PRCLOOKUP_PROG_MOUNT_REQ:
-		rpc_lookup_req(PROG_MOUNT, 1);
-		break;
-	case STATE_PRCLOOKUP_PROG_NFS_REQ:
-		rpc_lookup_req(PROG_NFS, 2);
-		break;
-	case STATE_MOUNT_REQ:
-		nfs_mount_req(nfs_path);
-		break;
-	case STATE_UMOUNT_REQ:
-		nfs_umountall_req();
-		break;
-	case STATE_LOOKUP_REQ:
-		nfs_lookup_req(nfs_filename);
-		break;
-	case STATE_READ_REQ:
-		nfs_read_req(nfs_offset, NFS_READ_SIZE);
-		break;
-	case STATE_READLINK_REQ:
-		nfs_readlink_req();
-		break;
-	}
-
-	nfs_timer_start = get_time_ns();
-}
-
-static int rpc_check_reply(unsigned char *pkt, int isnfs)
-{
-	uint32_t *data;
-	int nfserr;
-	struct rpc_reply rpc;
-
-	memcpy(&rpc, pkt, sizeof(rpc));
-
-	if (ntohl(rpc.id) != rpc_id)
-		return -EINVAL;
-
-	if (rpc.rstatus  ||
-	    rpc.verifier ||
-	    rpc.astatus ) {
-		return -EINVAL;
-	}
-
-	if (!isnfs)
-		return 0;
-
-	data = (uint32_t *)(pkt + sizeof(struct rpc_reply));
-	nfserr = ntohl(net_read_uint32(data));
-
-	debug("%s: state: %d, err %d\n", __func__, nfs_state, -nfserr);
-
-	if (nfserr <= 30)
-		/* These nfs codes correspond with those in errno.h */
-		return -nfserr;
-	if (nfserr == NFSERR_STALE)
-		return -ESTALE;
-
-	return -EINVAL;
-}
-
-static int rpc_lookup_reply(int prog, unsigned char *pkt, unsigned len)
-{
-	uint32_t port;
-	int ret;
-
-	ret = rpc_check_reply(pkt, 0);
-	if (ret)
-		return ret;
-
-	port = net_read_uint32((uint32_t *)(pkt + sizeof(struct rpc_reply)));
-	switch (prog) {
-	case PROG_MOUNT:
-		nfs_server_mount_port = ntohl(port);
-		break;
-	case PROG_NFS:
-		nfs_server_nfs_port = ntohl(port);
-		break;
-	}
-
-	return 0;
-}
-
-static int nfs_mount_reply(unsigned char *pkt, unsigned len)
-{
-	int ret;
-
-	ret = rpc_check_reply(pkt, 1);
-	if (ret)
-		return ret;
-
-	memcpy(dirfh, pkt + sizeof(struct rpc_reply) + 4, NFS_FHSIZE);
-
-	return 0;
-}
-
-static int nfs_umountall_reply(unsigned char *pkt, unsigned len)
-{
-	int ret;
-
-	ret = rpc_check_reply(pkt, 0);
-	if (ret)
-		return ret;
-
-	memset(dirfh, 0, sizeof(dirfh));
-
-	return 0;
-}
-
-static int nfs_lookup_reply(unsigned char *pkt, unsigned len)
-{
-	int ret;
-
-	ret = rpc_check_reply(pkt, 1);
-	if (ret)
-		return ret;
-
-	memcpy(filefh, pkt + sizeof(struct rpc_reply) + 4, NFS_FHSIZE);
-
-	return 0;
-}
-
-static int nfs_readlink_reply(unsigned char *pkt, unsigned len)
-{
-	uint32_t *data;
-	char *path;
-	unsigned int rlen;
-	int ret;
-
-	ret = rpc_check_reply(pkt, 1);
-	if (ret)
-		return ret;
-
-	data = (uint32_t *)(pkt + sizeof(struct rpc_reply));
-
-	data++;
-
-	rlen = ntohl(net_read_uint32(data)); /* new path length */
-
-	rlen = max_t(unsigned int, rlen,
-		     len - sizeof(struct rpc_reply) - sizeof(uint32_t));
-
-	data++;
-	path = (char *)data;
-
-	if (*path != '/') {
-		strcat(nfs_path, "/");
-		strncat(nfs_path, path, rlen);
-	} else {
-		memcpy(nfs_path, path, rlen);
-		nfs_path[rlen] = 0;
-	}
-	return 0;
-}
-
-static int nfs_read_reply(unsigned char *pkt, unsigned len)
-{
-	unsigned int rlen;
-	uint32_t *data;
-	int ret;
-
-	debug("%s\n", __func__);
-
-	ret = rpc_check_reply(pkt, 1);
-	if (ret)
-		return ret;
-
-	data = (uint32_t *)(pkt + sizeof(struct rpc_reply));
-
-	if (!nfs_offset) {
-		uint32_t filesize = ntohl(net_read_uint32(data + 6));
-		init_progression_bar(filesize);
-	}
-
-	rlen = ntohl(net_read_uint32(data + 18));
-
-	rlen = max_t(unsigned int, rlen, len - 19);
-
-	ret = write(net_store_fd, (char *)(data + 19), rlen);
-	if (ret < 0) {
-		perror("write");
-		return ret;
-	}
-
-	return rlen;
-}
-
-/**************************************************************************
-Interfaces of barebox
-**************************************************************************/
-
-static void nfs_handler(void *ctx, char *packet, unsigned len)
-{
-	char *pkt = net_eth_to_udp_payload(packet);
-	int ret;
-
-	debug("%s\n", __func__);
-
-	switch (nfs_state) {
-	case STATE_PRCLOOKUP_PROG_MOUNT_REQ:
-		ret = rpc_lookup_reply(PROG_MOUNT, pkt, len);
-		if (ret)
-			goto err_out;
-		nfs_state = STATE_PRCLOOKUP_PROG_NFS_REQ;
-		break;
-
-	case STATE_PRCLOOKUP_PROG_NFS_REQ:
-		ret = rpc_lookup_reply(PROG_NFS, pkt, len);
-		if (ret)
-			goto err_out;
-		nfs_state = STATE_MOUNT_REQ;
-		break;
-
-	case STATE_MOUNT_REQ:
-		ret = nfs_mount_reply(pkt, len);
-		if (ret)
-			goto err_out;
-
-		nfs_state = STATE_LOOKUP_REQ;
-		break;
-
-	case STATE_UMOUNT_REQ:
-		ret = nfs_umountall_reply(pkt, len);
-		if (ret)
-			nfs_err = ret;
-		nfs_state = STATE_DONE;
-		return;
-
-	case STATE_LOOKUP_REQ:
-		ret = nfs_lookup_reply(pkt, len);
-		if (ret)
-			goto err_umount;
-
-		nfs_state = STATE_READ_REQ;
-		nfs_offset = 0;
-		break;
-
-	case STATE_READLINK_REQ:
-		ret = nfs_readlink_reply(pkt, len);
-		if (ret)
-			goto err_umount;
-
-		debug("Symlink --> %s\n", nfs_path);
-
-		nfs_filename = kbasename(nfs_path);
-		nfs_path     = dirname(nfs_path);
-
-		nfs_state = STATE_MOUNT_REQ;
-		break;
-
-	case STATE_READ_REQ:
-		ret = nfs_read_reply(pkt, len);
-		nfs_timer_start = get_time_ns();
-		if (ret > 0)
-			nfs_offset += ret;
-		else if (ret == -EISDIR || ret == -EINVAL)
-			/* symbolic link */
-			nfs_state = STATE_READLINK_REQ;
-		else
-			goto err_umount;
-		show_progress(nfs_offset);
-		break;
-	}
-
-	nfs_send();
-
-	return;
-
-err_umount:
-	nfs_state = STATE_UMOUNT_REQ;
-	nfs_err = ret;
-	nfs_send();
-	return;
-
-err_out:
-	nfs_state = STATE_DONE;
-	nfs_err = ret;
-}
-
-static void nfs_start(char *p)
-{
-	debug("%s\n", __func__);
-
-	nfs_path = (char *)nfs_path_buff;
-
-	strcpy(nfs_path, p);
-
-	nfs_filename = kbasename (nfs_path);
-	nfs_path     = dirname (nfs_path);
-
-	printf("\nFilename '%s/%s'.\n", nfs_path, nfs_filename);
-
-	nfs_state = STATE_PRCLOOKUP_PROG_MOUNT_REQ;
-
-	nfs_send();
-}
-
-static int do_nfs(int argc, char *argv[])
-{
-	char  *localfile;
-	char  *remotefile;
-
-	if (argc < 2)
-		return COMMAND_ERROR_USAGE;
-
-	remotefile = argv[1];
-
-	if (argc == 2)
-		localfile = basename(remotefile);
-	else
-		localfile = argv[2];
-
-	net_store_fd = open(localfile, O_WRONLY | O_CREAT);
-	if (net_store_fd < 0) {
-		perror("open");
-		return 1;
-	}
-
-	nfs_con = net_udp_new(net_get_serverip(), 0, nfs_handler, NULL);
-	if (IS_ERR(nfs_con)) {
-		nfs_err = PTR_ERR(nfs_con);
-		goto err_udp;
-	}
-	net_udp_bind(nfs_con, 1000);
-
-	nfs_err = 0;
-
-	nfs_start(remotefile);
-
-	while (nfs_state != STATE_DONE) {
-		if (ctrlc()) {
-			nfs_err = -EINTR;
-			break;
-		}
-		net_poll();
-		if (is_timeout(nfs_timer_start, NFS_TIMEOUT * SECOND)) {
-			show_progress(-1);
-			nfs_send();
-		}
-	}
-
-	net_unregister(nfs_con);
-err_udp:
-	close(net_store_fd);
-	if (nfs_err) {
-		printf("NFS failed: %s\n", strerror(-nfs_err));
-		unlink(localfile);
-	}
-
-	printf("\n");
-
-	return nfs_err == 0 ? 0 : 1;
-}
-
-BAREBOX_CMD_START(nfs)
-	.cmd		= do_nfs,
-	BAREBOX_CMD_DESC("boot image over NFS")
-	BAREBOX_CMD_OPTS("FILE [LOCALFILE]")
-	BAREBOX_CMD_GROUP(CMD_GRP_NET)
-BAREBOX_CMD_END
-- 
2.39.5



