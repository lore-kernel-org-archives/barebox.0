Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVCOA-0001nB-Fh
 for barebox@lists.infradead.org; Mon, 27 May 2019 09:57:59 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <afa@pengutronix.de>) id 1hVCO3-000224-Og
 for barebox@lists.infradead.org; Mon, 27 May 2019 11:57:47 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1hVCO2-0003E2-TY
 for barebox@lists.infradead.org; Mon, 27 May 2019 11:57:46 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 27 May 2019 11:57:36 +0200
Message-Id: <20190527095744.5923-11-a.fatoum@pengutronix.de>
In-Reply-To: <20190527095744.5923-1-a.fatoum@pengutronix.de>
References: <20190527095744.5923-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 10/18] scripts: use "compiler.h" endianness helpers
To: barebox@lists.infradead.org

<endian.h> may not exist on other systems, don't include it
directly, but include "compiler.h", which either includes
it or provides a suitable alternative if possible.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 scripts/fix_size.c      | 3 ++-
 scripts/imx/imx-image.c | 2 +-
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/scripts/fix_size.c b/scripts/fix_size.c
index cb074e3cbc85..e33edecf6591 100644
--- a/scripts/fix_size.c
+++ b/scripts/fix_size.c
@@ -9,7 +9,8 @@
 #include <unistd.h>
 #include <stdint.h>
 #include <fcntl.h>
-#include <endian.h>
+
+#include "compiler.h"
 
 int main(int argc, char**argv)
 {
diff --git a/scripts/imx/imx-image.c b/scripts/imx/imx-image.c
index a7f1421fa371..3a7b1c0ab2e1 100644
--- a/scripts/imx/imx-image.c
+++ b/scripts/imx/imx-image.c
@@ -26,10 +26,10 @@
 #include <sys/types.h>
 #include <sys/stat.h>
 #include <fcntl.h>
-#include <endian.h>
 #include <linux/kernel.h>
 #include <sys/file.h>
 #include <mach/imx_cpu_types.h>
+#include "../compiler.h"
 
 #include "imx.h"
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
