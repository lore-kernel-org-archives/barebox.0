Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x231.google.com ([2a00:1450:400c:c05::231])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zhmz4-0005o0-Hf
 for barebox@lists.infradead.org; Thu, 01 Oct 2015 23:09:55 +0000
Received: by wicfx3 with SMTP id fx3so11255038wic.1
 for <barebox@lists.infradead.org>; Thu, 01 Oct 2015 16:09:33 -0700 (PDT)
From: Vicente Bergas <vicencb@gmail.com>
Date: Fri,  2 Oct 2015 00:08:39 +0100
Message-Id: <1443740919-6341-3-git-send-email-vicencb@gmail.com>
In-Reply-To: <1443740919-6341-1-git-send-email-vicencb@gmail.com>
References: <20151001060447.GG7858@pengutronix.de>
 <1443740919-6341-1-git-send-email-vicencb@gmail.com>
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
Subject: [PATCH 2/2] xload: be more flexible when searching for second stage
 bootloader.
To: barebox@lists.infradead.org, s.hauer@pengutronix.de
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
 arch/arm/mach-omap/xload.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-omap/xload.c b/arch/arm/mach-omap/xload.c
index ebcbcbc..8805930 100644
--- a/arch/arm/mach-omap/xload.c
+++ b/arch/arm/mach-omap/xload.c
@@ -117,7 +117,7 @@ static void *omap_xload_boot_mmc(void)
 
 	partname = asprintf("%s.0", diskdev);
 
-	ret = mount(partname, "fat", "/", NULL);
+	ret = mount(partname, NULL, "/", NULL);
 
 	if (ret) {
 		printf("Unable to mount %s (%d)\n", partname, ret);
@@ -128,6 +128,8 @@ static void *omap_xload_boot_mmc(void)
 	free(partname);
 
 	buf = read_file("/barebox.bin", &len);
+	if (!buf)
+		buf = read_file("/boot/barebox.bin", &len);
 	if (!buf) {
 		printf("could not read barebox.bin from sd card\n");
 		return NULL;
-- 
2.6.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
