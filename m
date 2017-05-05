Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x243.google.com ([2a00:1450:4010:c07::243])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d6bVn-0005RN-1T
 for barebox@lists.infradead.org; Fri, 05 May 2017 11:35:06 +0000
Received: by mail-lf0-x243.google.com with SMTP id q24so315448lfb.1
 for <barebox@lists.infradead.org>; Fri, 05 May 2017 04:34:46 -0700 (PDT)
Received: from localhost.localdomain (t109.niisi.ras.ru. [193.232.173.109])
 by smtp.gmail.com with ESMTPSA id h14sm981892ljb.46.2017.05.05.04.34.43
 for <barebox@lists.infradead.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 05 May 2017 04:34:43 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri,  5 May 2017 14:34:35 +0300
Message-Id: <20170505113435.19928-6-antonynpavlov@gmail.com>
In-Reply-To: <20170505113435.19928-1-antonynpavlov@gmail.com>
References: <20170505113435.19928-1-antonynpavlov@gmail.com>
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
Subject: [PATCH 5/5] MIPS: start.S: put entry code into the ".text_entry"
 section
To: barebox@lists.infradead.org

The ".text_bare_init" section is not intended to be used
for storing entry code.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/boot/start.S | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/mips/boot/start.S b/arch/mips/boot/start.S
index 0828ee4927..e937e89af1 100644
--- a/arch/mips/boot/start.S
+++ b/arch/mips/boot/start.S
@@ -20,7 +20,7 @@
 #include <asm/pbl_macros.h>
 
 	.set noreorder
-	.section ".text_bare_init"
+	.section ".text_entry"
 	.align 4
 
 EXPORT(_start)
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
