Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp22.mail.ru ([94.100.176.175])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1STRVb-0007Kc-EJ
 for barebox@lists.infradead.org; Sun, 13 May 2012 05:38:20 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sun, 13 May 2012 09:38:04 +0400
Message-Id: <1336887485-11941-3-git-send-email-shc_work@mail.ru>
In-Reply-To: <1336887485-11941-1-git-send-email-shc_work@mail.ru>
References: <1336887485-11941-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 3/4] PCM038: Remove unused includes
To: barebox@lists.infradead.org


Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/boards/pcm038/pcm038.c |    3 ---
 1 files changed, 0 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boards/pcm038/pcm038.c b/arch/arm/boards/pcm038/pcm038.c
index 7814244..4f0a60a 100644
--- a/arch/arm/boards/pcm038/pcm038.c
+++ b/arch/arm/boards/pcm038/pcm038.c
@@ -30,15 +30,12 @@
 #include <generated/mach-types.h>
 #include <partition.h>
 #include <fs.h>
-#include <fcntl.h>
 #include <nand.h>
-#include <command.h>
 #include <spi/spi.h>
 #include <io.h>
 #include <mach/imx-nand.h>
 #include <mach/imx-pll.h>
 #include <mach/imxfb.h>
-#include <asm/mmu.h>
 #include <i2c/i2c.h>
 #include <usb/ulpi.h>
 #include <mach/spi.h>
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
