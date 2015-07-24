Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZIcu8-0002hG-B4
 for barebox@lists.infradead.org; Fri, 24 Jul 2015 13:20:49 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps (TLS1.2:RSA_AES_128_CBC_SHA1:128)
 (Exim 4.80) (envelope-from <mgr@pengutronix.de>) id 1ZIb2H-0000Ni-T8
 for barebox@lists.infradead.org; Fri, 24 Jul 2015 13:21:05 +0200
Received: from mgr by dude.hi.pengutronix.de with local (Exim 4.86_RC4)
 (envelope-from <mgr@pengutronix.de>) id 1ZIctl-0000bs-5M
 for barebox@lists.infradead.org; Fri, 24 Jul 2015 15:20:25 +0200
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Date: Fri, 24 Jul 2015 15:20:24 +0200
Message-Id: <1437744024-2203-1-git-send-email-m.grzeschik@pengutronix.de>
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
Subject: [PATCH] xload: fix use after free
To: barebox@lists.infradead.org

The variable partname is used in the error path for debugging.
We have to free it after this use.

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
 arch/arm/mach-omap/xload.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-omap/xload.c b/arch/arm/mach-omap/xload.c
index 85c9120..3a33d6e 100644
--- a/arch/arm/mach-omap/xload.c
+++ b/arch/arm/mach-omap/xload.c
@@ -118,13 +118,14 @@ static void *omap_xload_boot_mmc(void)
 
 	ret = mount(partname, "fat", "/", NULL);
 
-	free(partname);
-
 	if (ret) {
 		printf("Unable to mount %s (%d)\n", partname, ret);
+		free(partname);
 		return NULL;
 	}
 
+	free(partname);
+
 	buf = read_file("/barebox.bin", &len);
 	if (!buf) {
 		printf("could not read barebox.bin from sd card\n");
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
