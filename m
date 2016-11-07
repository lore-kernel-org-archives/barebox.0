Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x243.google.com ([2a00:1450:4010:c07::243])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c3fp9-0007kn-Kq
 for barebox@lists.infradead.org; Mon, 07 Nov 2016 09:02:40 +0000
Received: by mail-lf0-x243.google.com with SMTP id o141so7482122lff.1
 for <barebox@lists.infradead.org>; Mon, 07 Nov 2016 01:02:18 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon,  7 Nov 2016 12:02:10 +0300
Message-Id: <20161107090210.21176-1-antonynpavlov@gmail.com>
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
Subject: [PATCH] MIPS: drop redundant start_barebox() declaration
To: barebox@lists.infradead.org

The start_barebox() function is defined in the <common.h> header file.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/boot/main_entry.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/mips/boot/main_entry.c b/arch/mips/boot/main_entry.c
index 015150bf..43a78c2 100644
--- a/arch/mips/boot/main_entry.c
+++ b/arch/mips/boot/main_entry.c
@@ -25,7 +25,6 @@
 #include <asm/mipsregs.h>
 #include <asm/addrspace.h>
 
-extern void start_barebox(void);
 extern void handle_reserved(void);
 
 void main_entry(void);
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
