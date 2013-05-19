Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-x234.google.com ([2a00:1450:4013:c01::234])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ue8HV-0005pY-VY
 for barebox@lists.infradead.org; Sun, 19 May 2013 18:24:33 +0000
Received: by mail-ea0-f180.google.com with SMTP id g10so3392097eak.11
 for <barebox@lists.infradead.org>; Sun, 19 May 2013 11:24:05 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Sun, 19 May 2013 20:23:45 +0200
Message-Id: <1368987835-13323-2-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1368987835-13323-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1368987835-13323-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 01/11] arm: mvebu: add more visible SoC separators to Kconfig
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

This just add more visible separators between each subconfig of the
supported Marvell EBU SoCs.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
---
 arch/arm/mach-mvebu/Kconfig |   16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm/mach-mvebu/Kconfig b/arch/arm/mach-mvebu/Kconfig
index 1d46f87..400e41b 100644
--- a/arch/arm/mach-mvebu/Kconfig
+++ b/arch/arm/mach-mvebu/Kconfig
@@ -40,6 +40,10 @@ config ARCH_KIRKWOOD
 
 endchoice
 
+#
+# Armada 370 SoC boards
+#
+
 if ARCH_ARMADA_370
 
 choice
@@ -52,6 +56,10 @@ endchoice
 
 endif # ARCH_ARMADA_370
 
+#
+# Armada XP SoC boards
+#
+
 if ARCH_ARMADA_XP
 
 choice
@@ -67,6 +75,10 @@ endchoice
 
 endif # ARCH_ARMADA_XP
 
+#
+# Dove 88AP510 SoC boards
+#
+
 if ARCH_DOVE
 
 choice
@@ -79,6 +91,10 @@ endchoice
 
 endif # ARCH_DOVE
 
+#
+# Kirkwood SoC boards
+#
+
 if ARCH_KIRKWOOD
 
 choice
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
