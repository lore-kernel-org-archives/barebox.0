Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wy0-f177.google.com ([74.125.82.177])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1QLid4-0000bW-V9
	for barebox@lists.infradead.org; Sun, 15 May 2011 21:13:35 +0000
Received: by wyb28 with SMTP id 28so3829523wyb.36
	for <barebox@lists.infradead.org>; Sun, 15 May 2011 14:13:32 -0700 (PDT)
From: franck.jullien@gmail.com
Date: Sun, 15 May 2011 23:13:29 +0200
Message-Id: <1305494009-3939-1-git-send-email-franck.jullien@gmail.com>
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
Subject: [Nios2]: Change generic board flash partitions
To: barebox@lists.infradead.org

From: Franck JULLIEN <franck.jullien@gmail.com>

Signed-off-by: Franck JULLIEN <franck.jullien@gmail.com>
---
 arch/nios2/boards/generic/env/config |    2 +-
 arch/nios2/boards/generic/generic.c  |    4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/nios2/boards/generic/env/config b/arch/nios2/boards/generic/env/config
index df7d09e..18500ed 100644
--- a/arch/nios2/boards/generic/env/config
+++ b/arch/nios2/boards/generic/env/config
@@ -9,7 +9,7 @@ ip=none
 
 autoboot_timeout=3
 
-nor_parts="256k(barebox),128k(env),4M(kernel),-(rootfs)"
+nor_parts="128k(env),768k(fpga),256k(barebox),-(kernel)"
 
 # set a fancy prompt (if support is compiled in)
 PS1="\e[1;33mbarebox@\e[1;32mgeneric:\w\e[0m "
diff --git a/arch/nios2/boards/generic/generic.c b/arch/nios2/boards/generic/generic.c
index 7e939ce..8d2cc72 100644
--- a/arch/nios2/boards/generic/generic.c
+++ b/arch/nios2/boards/generic/generic.c
@@ -55,8 +55,8 @@ static int comBoard_devices_init(void)
 	register_device(&mac_dev);
 	/*register_device(&epcs_flash_device);*/
 
-	devfs_add_partition("nor0", 0x00000, 0x40000, PARTITION_FIXED, "self0");
-	devfs_add_partition("nor0", 0x40000, 0x20000, PARTITION_FIXED, "env0");
+	devfs_add_partition("nor0", 0xe0000, 0x40000, PARTITION_FIXED, "self0");
+	devfs_add_partition("nor0", 0x00000, 0x20000, PARTITION_FIXED, "env0");
 
 	protect_file("/dev/env0", 1);
 
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
