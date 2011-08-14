Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo3.mail-out.ovh.net ([46.105.57.200]
	helo=mo3.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QscbJ-0001GF-Er
	for barebox@lists.infradead.org; Sun, 14 Aug 2011 15:27:46 +0000
Received: from mail191.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo3.mail-out.ovh.net (Postfix) with SMTP id 2DFCDFFA359
	for <barebox@lists.infradead.org>;
	Sun, 14 Aug 2011 17:19:14 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun, 14 Aug 2011 16:59:52 +0200
Message-Id: <1313333992-27572-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1313333992-27572-1-git-send-email-plagnioj@jcrosoft.com>
References: <1313333992-27572-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/2] x86/generic_pc: fix missing switch to resource
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/x86/boards/x86_generic/generic_pc.c |   14 +++-----------
 1 files changed, 3 insertions(+), 11 deletions(-)

diff --git a/arch/x86/boards/x86_generic/generic_pc.c b/arch/x86/boards/x86_generic/generic_pc.c
index 7a93d9b..0ddf883 100644
--- a/arch/x86/boards/x86_generic/generic_pc.c
+++ b/arch/x86/boards/x86_generic/generic_pc.c
@@ -30,12 +30,6 @@
 #include <asm/syslib.h>
 #include <ns16550.h>
 
-static struct device_d bios_disk_dev = {
-	.id		= -1,
-	.name		= "biosdrive",
-	.size		= 0,	/* auto guess */
-};
-
 /*
  * These datas are from the MBR, created by the linker and filled by the
  * setup tool while installing barebox on the disk drive
@@ -54,12 +48,10 @@ static int devices_init(void)
 {
 	int rc;
 
-	sdram_dev.size = bios_get_memsize();	/* extended memory only */
-	sdram_dev.size <<= 10;
-
-	add_mem_device("ram0", 0x0, 16 * 1024 * 1024,
+	/* extended memory only */
+	add_mem_device("ram0", 0x0, bios_get_memsize() << 10,
 		       IORESOURCE_MEM_WRITEABLE);
-	register_device(&bios_disk_dev);
+	add_generic_device("biosdrive", -1, NULL, 0, 0, IORESOURCE_MEM, NULL);
 
 	if (pers_env_size != PATCH_AREA_PERS_SIZE_UNUSED) {
 		rc = devfs_add_partition("biosdisk0",
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
