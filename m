Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x236.google.com ([2a00:1450:400c:c05::236])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZgCeL-0007K1-FA
 for barebox@lists.infradead.org; Sun, 27 Sep 2015 14:09:58 +0000
Received: by wicge5 with SMTP id ge5so73494114wic.0
 for <barebox@lists.infradead.org>; Sun, 27 Sep 2015 07:09:35 -0700 (PDT)
From: Vicente Bergas <vicencb@gmail.com>
Date: Sun, 27 Sep 2015 15:08:51 +0100
Message-Id: <1443362931-1881-1-git-send-email-vicencb@gmail.com>
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
Subject: [PATCH] xload: be more flexible when searching for second stage
 bootloader.
To: barebox@lists.infradead.org
Cc: Vicente Bergas <vicencb@gmail.com>

A first stage bootloader can read fat and ext4 filesystems, and
even both can be compiled-in at the same time.
But then xload has a hardcoded fat filesystem mount option which
renders ext4 unusable.
This patch tries to mount it as ext4 if the fat attempt fails.

Then, a typical use case of an ext4 formatted filesystem
is it to be a standard linux filesystem, which contains
boot-related files in /boot. So, when searching for the second stage
bootloader, try /boot/barebox.bin after not finding it in /barebox.bin

Signed-off-by: Vicente Bergas <vicencb@gmail.com>
---
 arch/arm/mach-omap/xload.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/mach-omap/xload.c b/arch/arm/mach-omap/xload.c
index ebcbcbc..c5e29f8 100644
--- a/arch/arm/mach-omap/xload.c
+++ b/arch/arm/mach-omap/xload.c
@@ -118,6 +118,8 @@ static void *omap_xload_boot_mmc(void)
 	partname = asprintf("%s.0", diskdev);
 
 	ret = mount(partname, "fat", "/", NULL);
+	if (ret)
+		ret = mount(partname, "ext4", "/", NULL);
 
 	if (ret) {
 		printf("Unable to mount %s (%d)\n", partname, ret);
@@ -128,6 +130,8 @@ static void *omap_xload_boot_mmc(void)
 	free(partname);
 
 	buf = read_file("/barebox.bin", &len);
+	if (!buf)
+		buf = read_file("/boot/barebox.bin", &len);
 	if (!buf) {
 		printf("could not read barebox.bin from sd card\n");
 		return NULL;
-- 
2.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
