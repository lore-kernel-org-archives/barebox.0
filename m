Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heBzb-0006rj-PX
 for barebox@lists.infradead.org; Fri, 21 Jun 2019 05:21:44 +0000
Received: by mail-lj1-x241.google.com with SMTP id 131so4821867ljf.4
 for <barebox@lists.infradead.org>; Thu, 20 Jun 2019 22:21:43 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri, 21 Jun 2019 08:21:36 +0300
Message-Id: <20190621052138.12246-3-antonynpavlov@gmail.com>
In-Reply-To: <20190621052138.12246-1-antonynpavlov@gmail.com>
References: <20190621052138.12246-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/4] Documentation: user manual: update MIPS-specific targets
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 Documentation/user/barebox.rst | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/Documentation/user/barebox.rst b/Documentation/user/barebox.rst
index d82163a886..c021a4c743 100644
--- a/Documentation/user/barebox.rst
+++ b/Documentation/user/barebox.rst
@@ -112,11 +112,12 @@ targets, followed by the MIPS-specific ones:
   Architecture specific targets (mips):
     No architecture specific help defined for mips
 
+    ath79_defconfig          - Build for ath79
+    bcm47xx_defconfig        - Build for bcm47xx
+    gxemul-malta_defconfig   - Build for gxemul-malta
     loongson-ls1b_defconfig  - Build for loongson-ls1b
-    ritmix-rzx50_defconfig   - Build for ritmix-rzx50
-    tplink-mr3020_defconfig  - Build for tplink-mr3020
-    dlink-dir-320_defconfig  - Build for dlink-dir-320
     qemu-malta_defconfig     - Build for qemu-malta
+    xburst_defconfig         - Build for xburst
 
 barebox supports building for multiple boards with a single config. If you
 can't find your board in the list, it may be supported by one of the multi-board
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
