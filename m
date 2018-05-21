Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x243.google.com ([2a00:1450:400c:c09::243])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fKjPK-00035Y-BN
 for barebox@lists.infradead.org; Mon, 21 May 2018 11:55:20 +0000
Received: by mail-wm0-x243.google.com with SMTP id m129-v6so26046910wmb.3
 for <barebox@lists.infradead.org>; Mon, 21 May 2018 04:55:09 -0700 (PDT)
From: Peter Mamonov <pmamonov@gmail.com>
Date: Mon, 21 May 2018 14:54:38 +0300
Message-Id: <20180521115438.26493-13-pmamonov@gmail.com>
In-Reply-To: <20180521115438.26493-1-pmamonov@gmail.com>
References: <20180521115438.26493-1-pmamonov@gmail.com>
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
Subject: [PATCH v2 12/12] fixup! MIPS: import optimized string functions from
 Linux
To: barebox@lists.infradead.org
Cc: Peter Mamonov <pmamonov@gmail.com>

Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
---
 arch/mips/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
index ef23837f4..ce63ec1ae 100644
--- a/arch/mips/Kconfig
+++ b/arch/mips/Kconfig
@@ -342,6 +342,7 @@ config NMON_HELP
 
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
