Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cJGoA-00028U-6B
 for barebox@lists.infradead.org; Tue, 20 Dec 2016 09:34:09 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.84_2)
 (envelope-from <l.stach@pengutronix.de>) id 1cJGnl-00039l-2t
 for barebox@lists.infradead.org; Tue, 20 Dec 2016 10:33:41 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Tue, 20 Dec 2016 10:33:38 +0100
Message-Id: <20161220093340.14404-7-l.stach@pengutronix.de>
In-Reply-To: <20161220093340.14404-1-l.stach@pengutronix.de>
References: <20161220093340.14404-1-l.stach@pengutronix.de>
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
Subject: [PATCH 7/9] arm: pbl: rename linker script for uncompressed image data
To: barebox@lists.infradead.org

This has been missed in commit 5e61dd3fb550
(Add comp_copy function for use with CONFIG_IMAGE_COMPRESSION_NONE).

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/pbl/piggy.comp_copy.S | 6 ++++++
 arch/arm/pbl/piggy.shipped.S   | 6 ------
 2 files changed, 6 insertions(+), 6 deletions(-)
 create mode 100644 arch/arm/pbl/piggy.comp_copy.S
 delete mode 100644 arch/arm/pbl/piggy.shipped.S

diff --git a/arch/arm/pbl/piggy.comp_copy.S b/arch/arm/pbl/piggy.comp_copy.S
new file mode 100644
index 000000000000..2b5a812ded9c
--- /dev/null
+++ b/arch/arm/pbl/piggy.comp_copy.S
@@ -0,0 +1,6 @@
+	.section .piggydata,#alloc
+	.globl	input_data
+input_data:
+	.incbin	"arch/arm/pbl/piggy.comp_copy"
+	.globl	input_data_end
+input_data_end:
diff --git a/arch/arm/pbl/piggy.shipped.S b/arch/arm/pbl/piggy.shipped.S
deleted file mode 100644
index dbc2569de5c5..000000000000
--- a/arch/arm/pbl/piggy.shipped.S
+++ /dev/null
@@ -1,6 +0,0 @@
-	.section .piggydata,#alloc
-	.globl  input_data
-input_data:
-	.incbin "arch/arm/pbl/piggy.shipped"
-	.globl  input_data_end
-input_data_end:
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
