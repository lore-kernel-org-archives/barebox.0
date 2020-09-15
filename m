Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kIB2S-0004Ha-G8
 for barebox@lists.infradead.org; Tue, 15 Sep 2020 13:30:29 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 15 Sep 2020 15:30:24 +0200
Message-Id: <20200915133024.26058-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH v2] fixup! sandbox: hostfile: support registering images as
 barebox block devices
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - sent out unsquashed commit by mistake
---
 arch/sandbox/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/sandbox/Kconfig b/arch/sandbox/Kconfig
index 0c1c7bd73a01..26011720df22 100644
--- a/arch/sandbox/Kconfig
+++ b/arch/sandbox/Kconfig
@@ -9,6 +9,7 @@ config SANDBOX
 	select HAS_DMA
 	select BLOCK
 	select BLOCK_WRITE
+	select PARTITION_DISK
 	default y
 
 config ARCH_TEXT_BASE
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
