Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr0-x241.google.com ([2a00:1450:400c:c0c::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fL9Io-0003Gy-8h
 for barebox@lists.infradead.org; Tue, 22 May 2018 15:34:26 +0000
Received: by mail-wr0-x241.google.com with SMTP id r13-v6so8643417wrj.10
 for <barebox@lists.infradead.org>; Tue, 22 May 2018 08:34:07 -0700 (PDT)
From: Peter Mamonov <pmamonov@gmail.com>
Date: Tue, 22 May 2018 18:33:42 +0300
Message-Id: <20180522153342.24933-13-pmamonov@gmail.com>
In-Reply-To: <20180522153342.24933-1-pmamonov@gmail.com>
References: <20180522153342.24933-1-pmamonov@gmail.com>
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
Subject: [PATCH v3 12/12] MIPS: don't use optimized string functions for MIPS64
To: barebox@lists.infradead.org
Cc: Peter Mamonov <pmamonov@gmail.com>

Barebox port of optimized string functions from Linux lacks support for MIPS64.

Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
---
 arch/mips/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
index da613eb39..359f67883 100644
--- a/arch/mips/Kconfig
+++ b/arch/mips/Kconfig
@@ -341,6 +341,7 @@ config NMON_HELP
 
 config MIPS_OPTIMIZED_STRING_FUNCTIONS
 	bool "use assembler optimized string functions"
+	depends on !64BIT
 	default y
 	help
 	  Say yes here to use assembler optimized memcpy / memset functions.
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
