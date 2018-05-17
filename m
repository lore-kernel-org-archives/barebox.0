Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr0-x244.google.com ([2a00:1450:400c:c0c::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fJJRa-0002jF-7N
 for barebox@lists.infradead.org; Thu, 17 May 2018 13:59:48 +0000
Received: by mail-wr0-x244.google.com with SMTP id 94-v6so5809812wrf.5
 for <barebox@lists.infradead.org>; Thu, 17 May 2018 06:59:39 -0700 (PDT)
From: Peter Mamonov <pmamonov@gmail.com>
Date: Thu, 17 May 2018 16:58:50 +0300
Message-Id: <20180517135858.16202-8-pmamonov@gmail.com>
In-Reply-To: <20180517135858.16202-1-pmamonov@gmail.com>
References: <20180517135858.16202-1-pmamonov@gmail.com>
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
Subject: [RFC PATCH 07/15] mips: 64BIT selects PHYS_ADDR_T_64BIT
To: barebox@lists.infradead.org
Cc: Peter Mamonov <pmamonov@gmail.com>

Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
---
 arch/mips/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
index c2c555dc3..deeda62ea 100644
--- a/arch/mips/Kconfig
+++ b/arch/mips/Kconfig
@@ -275,6 +275,7 @@ config 64BIT
 	bool "64-bit barebox"
 	depends on CPU_SUPPORTS_64BIT_KERNEL && SYS_SUPPORTS_64BIT_KERNEL
 	select ARCH_DMA_ADDR_T_64BIT
+	select PHYS_ADDR_T_64BIT
 	help
 	  Select this option if you want to build a 64-bit barebox.
 
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
