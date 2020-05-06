Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWFF4-0005vq-2q
 for barebox@lists.infradead.org; Wed, 06 May 2020 08:17:25 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  6 May 2020 10:17:07 +0200
Message-Id: <20200506081716.20143-4-s.hauer@pengutronix.de>
In-Reply-To: <20200506081716.20143-1-s.hauer@pengutronix.de>
References: <20200506081716.20143-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 04/13] arm: mxs: Add Kconfig option for device tree boards
To: Barebox List <barebox@lists.infradead.org>

Boards supporting device tree have to make sure OFTREE and OFDEVICE are
selected. Add a convenience option pulling in the right options and
select it from the boards.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-mxs/Kconfig | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm/mach-mxs/Kconfig b/arch/arm/mach-mxs/Kconfig
index b3a7c6259c..f7d13569ea 100644
--- a/arch/arm/mach-mxs/Kconfig
+++ b/arch/arm/mach-mxs/Kconfig
@@ -9,6 +9,11 @@ config ARCH_TEXT_BASE
 	default 0x47000000 if MACH_MX28EVK
 	default 0x47000000 if MACH_CFA10036
 
+config ARCH_MXS_OF_SUPPORT
+	bool
+	select OFTREE
+	select OFDEVICE
+
 comment "Freescale i.MX System-on-Chip"
 
 choice
@@ -57,12 +62,14 @@ config MACH_TX28
 config MACH_MX28EVK
 	bool "mx28-evk"
 	select MXS_OCOTP
+	select ARCH_MXS_OF_SUPPORT
 	help
 	  Say Y here if you are using the Freescale i.MX28-EVK board
 
 config MACH_DUCKBILL
 	bool "Duckbill"
 	select MXS_OCOTP
+	select ARCH_MXS_OF_SUPPORT
 	help
 	  Say Y here if you are using the I2SE Duckbill board
 
-- 
2.26.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
