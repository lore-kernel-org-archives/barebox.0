Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 9.mo6.mail-out.ovh.net ([87.98.171.146])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Y3U6J-0004PL-5s
 for barebox@lists.infradead.org; Tue, 23 Dec 2014 18:22:33 +0000
Received: from mail179.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo6.mail-out.ovh.net (Postfix) with SMTP id 6F2D8FFA1E3
 for <barebox@lists.infradead.org>; Tue, 23 Dec 2014 19:22:09 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 23 Dec 2014 19:21:53 +0100
Message-Id: <1419358918-25569-4-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1419358918-25569-1-git-send-email-plagnioj@jcrosoft.com>
References: <20141223170709.GA15818@ns203013.ovh.net>
 <1419358918-25569-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 4/9] versatilepb: move barebox to 32 MiB and use zImage
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/versatile/env/config | 4 ++--
 arch/arm/mach-versatile/Kconfig      | 3 +++
 2 files changed, 5 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/versatile/env/config b/arch/arm/boards/versatile/env/config
index 667dce3..1bc575b 100644
--- a/arch/arm/boards/versatile/env/config
+++ b/arch/arm/boards/versatile/env/config
@@ -19,8 +19,8 @@ rootfs_loc=initrd
 rootfs_type=ubifs
 rootfsimage=root.$rootfs_type
 
-#kernelimage=zImage
-kernelimage=uImage
+kernelimage=zImage
+#kernelimage=uImage
 #kernelimage=Image
 #kernelimage=Image.lzo
 
diff --git a/arch/arm/mach-versatile/Kconfig b/arch/arm/mach-versatile/Kconfig
index 9a1bf95..9ad1869 100644
--- a/arch/arm/mach-versatile/Kconfig
+++ b/arch/arm/mach-versatile/Kconfig
@@ -1,6 +1,9 @@
 
 if ARCH_VERSATILE
 
+config ARCH_TEXT_BASE
+	default 0x02000000
+
 choice
 	prompt "ARM Board type"
 
-- 
2.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
