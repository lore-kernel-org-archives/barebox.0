Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x243.google.com ([2a00:1450:4010:c07::243])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d6bVn-0005R8-1V
 for barebox@lists.infradead.org; Fri, 05 May 2017 11:35:07 +0000
Received: by mail-lf0-x243.google.com with SMTP id q70so319187lfi.0
 for <barebox@lists.infradead.org>; Fri, 05 May 2017 04:34:42 -0700 (PDT)
Received: from localhost.localdomain (t109.niisi.ras.ru. [193.232.173.109])
 by smtp.gmail.com with ESMTPSA id h14sm981892ljb.46.2017.05.05.04.34.39
 for <barebox@lists.infradead.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 05 May 2017 04:34:39 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri,  5 May 2017 14:34:31 +0300
Message-Id: <20170505113435.19928-2-antonynpavlov@gmail.com>
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
Subject: [PATCH 1/5] MIPS: start*.S: drop redundant .text
To: barebox@lists.infradead.org

`.text' is equivalent to the `.section .text' directive.
The `.text' directive just before `.section ".text_bare_init"'
or just before `.section ".text_head_entry"' is redundant
so drop it.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/boot/start-pbl.S | 1 -
 arch/mips/boot/start.S     | 1 -
 2 files changed, 2 deletions(-)

diff --git a/arch/mips/boot/start-pbl.S b/arch/mips/boot/start-pbl.S
index b6d127a039..d6e8231a73 100644
--- a/arch/mips/boot/start-pbl.S
+++ b/arch/mips/boot/start-pbl.S
@@ -25,7 +25,6 @@
 #include <board/board_pbl_start.h>
 
 	.set noreorder
-	.text
 	.section ".text_head_entry"
 	.align 4
 
diff --git a/arch/mips/boot/start.S b/arch/mips/boot/start.S
index 1ddce9533e..0828ee4927 100644
--- a/arch/mips/boot/start.S
+++ b/arch/mips/boot/start.S
@@ -20,7 +20,6 @@
 #include <asm/pbl_macros.h>
 
 	.set noreorder
-	.text
 	.section ".text_bare_init"
 	.align 4
 
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
