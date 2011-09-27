Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1R8T1o-0001mz-DF
	for barebox@lists.infradead.org; Tue, 27 Sep 2011 08:28:44 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 27 Sep 2011 10:28:27 +0200
Message-Id: <1317112109-23311-13-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1317112109-23311-1-git-send-email-s.hauer@pengutronix.de>
References: <1317112109-23311-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 12/14] pcm030: fix /dev/self0 and /dev/env0
To: barebox@lists.infradead.org

/dev/self0 and /dev/env0 are in the last MB of nor flash. The
offset depends on the size of the flash, so detect this at
runtime.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/ppc/boards/pcm030/pcm030.c |   14 +++++++++++---
 1 files changed, 11 insertions(+), 3 deletions(-)

diff --git a/arch/ppc/boards/pcm030/pcm030.c b/arch/ppc/boards/pcm030/pcm030.c
index d1d84d2..61fb116 100644
--- a/arch/ppc/boards/pcm030/pcm030.c
+++ b/arch/ppc/boards/pcm030/pcm030.c
@@ -36,6 +36,8 @@
 #include <partition.h>
 #include <memory.h>
 #include <sizes.h>
+#include <linux/stat.h>
+#include <fs.h>
 
 static struct mpc5xxx_fec_platform_data fec_info = {
 	.xcv_type = MII100,
@@ -44,12 +46,14 @@ static struct mpc5xxx_fec_platform_data fec_info = {
 static int devices_init (void)
 {
 	unsigned long sdramsize;
+	struct stat s;
+	int ret;
 
 	/*
 	 * Flash can be 16MB or 32MB, setup for the last 32MB no matter
 	 * what we find later.
 	 */
-	mpc5200_setup_cs(MPC5200_BOOTCS, 0xfe000000, SZ_32M, 0x0001dd00);
+	mpc5200_setup_cs(MPC5200_BOOTCS, 0xfe000000, SZ_32M, 0x0008fd00);
 	add_cfi_flash_device(-1, 0xfe000000, 32 * 1024 * 1024, 0);
 
 	sdramsize = mpc5200_get_sdram_size(0) + mpc5200_get_sdram_size(1);
@@ -58,8 +62,12 @@ static int devices_init (void)
 	add_generic_device("fec_mpc5xxx", -1, NULL, MPC5XXX_FEC, 0,
 			   IORESOURCE_MEM, &fec_info);
 
-	devfs_add_partition("nor0", 0x00f00000, 0x40000, PARTITION_FIXED, "self0");
-	devfs_add_partition("nor0", 0x00f60000, 0x20000, PARTITION_FIXED, "env0");
+	ret = stat("/dev/nor0", &s);
+	if (ret)
+		return 0;
+
+	devfs_add_partition("nor0", s.st_size - SZ_1M, SZ_512K, PARTITION_FIXED, "self0");
+	devfs_add_partition("nor0", s.st_size - SZ_512K, SZ_512K, PARTITION_FIXED, "env0");
 
 	return 0;
 }
-- 
1.7.6.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
