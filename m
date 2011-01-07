Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PbDKM-0001IA-CK
	for barebox@lists.infradead.org; Fri, 07 Jan 2011 14:30:03 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  7 Jan 2011 15:29:57 +0100
Message-Id: <1294410597-25824-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1294410597-25824-1-git-send-email-s.hauer@pengutronix.de>
References: <1294410597-25824-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/3] ARM scb9328: increase barebox partition size
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/scb9328/scb9328.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/arch/arm/boards/scb9328/scb9328.c b/arch/arm/boards/scb9328/scb9328.c
index 4c08c50..35c7fdf 100644
--- a/arch/arm/boards/scb9328/scb9328.c
+++ b/arch/arm/boards/scb9328/scb9328.c
@@ -93,7 +93,7 @@ static int scb9328_devices_init(void) {
 	register_device(&sdram_dev);
 	register_device(&dm9000_dev);
 
-	devfs_add_partition("nor0", 0x00000, 0x20000, PARTITION_FIXED, "self0");
+	devfs_add_partition("nor0", 0x00000, 0x40000, PARTITION_FIXED, "self0");
 	devfs_add_partition("nor0", 0x40000, 0x20000, PARTITION_FIXED, "env0");
 	protect_file("/dev/env0", 1);
 
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
