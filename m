Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f177.google.com ([209.85.217.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TK3ZK-0006w9-16
 for barebox@lists.infradead.org; Fri, 05 Oct 2012 08:47:38 +0000
Received: by mail-lb0-f177.google.com with SMTP id gi11so1099815lbb.36
 for <barebox@lists.infradead.org>; Fri, 05 Oct 2012 01:47:37 -0700 (PDT)
MIME-Version: 1.0
Date: Fri, 5 Oct 2012 10:47:37 +0200
Message-ID: <CAOQ7t2YLyb=fx6CBEkXc1_OXhLmcJOMUm15DKEhL08yvQMSu_Q@mail.gmail.com>
From: Carlo Caione <carlo.caione@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/4] Add support for ARM1176
To: barebox@lists.infradead.org

Signed-off-by: Carlo Caione <carlo.caione@gmail.com>
---
 arch/arm/cpu/Kconfig | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm/cpu/Kconfig b/arch/arm/cpu/Kconfig
index f55e862..108253b 100644
--- a/arch/arm/cpu/Kconfig
+++ b/arch/arm/cpu/Kconfig
@@ -8,6 +8,11 @@ config CPU_32
 # which CPUs we support in the kernel image, and the compiler instruction
 # optimiser behaviour.

+# ARM1176
+config CPU_ARM1176
+	bool
+	select CPU_V6
+
 # ARM920T
 config CPU_ARM920T
 	bool
-- 
1.7.12.2

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
