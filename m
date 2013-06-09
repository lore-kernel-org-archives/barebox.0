Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp35.i.mail.ru ([94.100.177.95])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UlbAw-0002Gr-T6
 for barebox@lists.infradead.org; Sun, 09 Jun 2013 08:40:36 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sun,  9 Jun 2013 12:40:08 +0400
Message-Id: <1370767208-22789-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH] ARM: pcm038: Fix partition size definitions
To: barebox@lists.infradead.org


Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/boards/pcm038/pcm038.c | 18 ++++++++----------
 1 file changed, 8 insertions(+), 10 deletions(-)

diff --git a/arch/arm/boards/pcm038/pcm038.c b/arch/arm/boards/pcm038/pcm038.c
index 372aea5..49677c2 100644
--- a/arch/arm/boards/pcm038/pcm038.c
+++ b/arch/arm/boards/pcm038/pcm038.c
@@ -332,22 +332,20 @@ static int pcm038_devices_init(void)
 
 	switch (bootsource_get()) {
 	case BOOTSOURCE_NAND:
-		devfs_add_partition("nand0", 0x00000, 0x80000,
-					DEVFS_PARTITION_FIXED, "self_raw");
+		devfs_add_partition("nand0", 0, SZ_512K,
+				    DEVFS_PARTITION_FIXED, "self_raw");
 		dev_add_bb_dev("self_raw", "self0");
-
-		devfs_add_partition("nand0", 0x80000, 0x100000,
-					DEVFS_PARTITION_FIXED, "env_raw");
+		devfs_add_partition("nand0", SZ_512K, SZ_128K,
+				    DEVFS_PARTITION_FIXED, "env_raw");
 		dev_add_bb_dev("env_raw", "env0");
 		envdev = "NAND";
 		break;
 	default:
-		devfs_add_partition("nor0", 0x00000, 0x80000,
-					DEVFS_PARTITION_FIXED, "self0");
-		devfs_add_partition("nor0", 0x80000, 0x100000,
-					DEVFS_PARTITION_FIXED, "env0");
+		devfs_add_partition("nor0", 0, SZ_512K,
+				    DEVFS_PARTITION_FIXED, "self0");
+		devfs_add_partition("nor0", SZ_512K, SZ_128K,
+				    DEVFS_PARTITION_FIXED, "env0");
 		protect_file("/dev/env0", 1);
-
 		envdev = "NOR";
 	}
 
-- 
1.8.1.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
