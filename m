Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x244.google.com ([2607:f8b0:400e:c00::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fTffC-0004VY-Dt
 for barebox@lists.infradead.org; Fri, 15 Jun 2018 03:44:40 +0000
Received: by mail-pf0-x244.google.com with SMTP id r11-v6so4223217pfl.6
 for <barebox@lists.infradead.org>; Thu, 14 Jun 2018 20:44:31 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 14 Jun 2018 20:44:04 -0700
Message-Id: <20180615034409.22180-6-andrew.smirnov@gmail.com>
In-Reply-To: <20180615034409.22180-1-andrew.smirnov@gmail.com>
References: <20180615034409.22180-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v7 05/10] ARM: Specify HAVE_PBL_IMAGE for CPU_64
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/cpu/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/cpu/Kconfig b/arch/arm/cpu/Kconfig
index d889e9afb..2359c56b3 100644
--- a/arch/arm/cpu/Kconfig
+++ b/arch/arm/cpu/Kconfig
@@ -12,6 +12,7 @@ config CPU_32
 config CPU_64
 	bool
 	select PHYS_ADDR_T_64BIT
+	select HAVE_PBL_IMAGE
 
 # Select CPU types depending on the architecture selected. This selects
 # which CPUs we support in the kernel image, and the compiler instruction
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
