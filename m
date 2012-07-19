Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp1.mail.ru ([94.100.176.129])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Srsgb-0004q3-SV
 for barebox@lists.infradead.org; Thu, 19 Jul 2012 15:30:46 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Thu, 19 Jul 2012 19:30:15 +0400
Message-Id: <1342711817-866-4-git-send-email-shc_work@mail.ru>
In-Reply-To: <1342711817-866-1-git-send-email-shc_work@mail.ru>
References: <1342711817-866-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 4/6] tx51: Unused mc13xxx.h include removed
To: barebox@lists.infradead.org


Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/boards/karo-tx51/tx51.c |    1 -
 1 files changed, 0 insertions(+), 1 deletions(-)

diff --git a/arch/arm/boards/karo-tx51/tx51.c b/arch/arm/boards/karo-tx51/tx51.c
index 096683a..5adaaa6 100644
--- a/arch/arm/boards/karo-tx51/tx51.c
+++ b/arch/arm/boards/karo-tx51/tx51.c
@@ -32,7 +32,6 @@
 #include <fcntl.h>
 #include <nand.h>
 #include <spi/spi.h>
-#include <mfd/mc13xxx.h>
 #include <io.h>
 #include <asm/mmu.h>
 #include <mach/imx5.h>
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
