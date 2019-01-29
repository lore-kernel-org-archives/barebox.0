Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1goQOo-0003ip-OG
 for barebox@lists.infradead.org; Tue, 29 Jan 2019 10:13:48 +0000
Received: by mail-wm1-x343.google.com with SMTP id m1so17147241wml.2
 for <barebox@lists.infradead.org>; Tue, 29 Jan 2019 02:13:46 -0800 (PST)
From: thomas.haemmerle1988@gmail.com
Date: Tue, 29 Jan 2019 11:13:36 +0100
Message-Id: <1548756816-808-1-git-send-email-thomas.haemmerle1988@gmail.com>
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
Subject: [PATCH] ARM: zynqmp: select macb driver
To: barebox@lists.infradead.org
Cc: Thomas Haemmerle <thomas.haemmerle1988@gmail.com>

From: Thomas Haemmerle <thomas.haemmerle1988@gmail.com>

macb supports Xilinx ZynqMP GEM, so select HAS_MACB by default.

Signed-off-by: Thomas Haemmerle <thomas.haemmerle1988@gmail.com>
---
 arch/arm/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index c1f385b..f5c1471 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -257,6 +257,7 @@ config ARCH_ZYNQMP
 	select OFTREE
 	select RELOCATABLE
 	select SYS_SUPPORTS_64BIT_KERNEL
+	select HAS_MACB
 
 config ARCH_QEMU
 	bool "ARM QEMU boards"
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
