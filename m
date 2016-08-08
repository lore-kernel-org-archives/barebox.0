Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x242.google.com ([2a00:1450:400c:c09::242])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bWinH-0006JH-SG
 for barebox@lists.infradead.org; Mon, 08 Aug 2016 11:32:32 +0000
Received: by mail-wm0-x242.google.com with SMTP id i5so14855845wmg.2
 for <barebox@lists.infradead.org>; Mon, 08 Aug 2016 04:32:11 -0700 (PDT)
From: Vicente Bergas <vicencb@gmail.com>
Date: Mon,  8 Aug 2016 13:31:43 +0200
Message-Id: <20160808113143.8048-1-vicencb@gmail.com>
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
Subject: [PATCH 1/1] [PATCH] fix ARMv8 interference with ARMv7
To: barebox@lists.infradead.org
Cc: Vicente Bergas <vicencb@gmail.com>

CONFIG_CPU_V8 is checked against 'y' and 'n', but the case when the
variable is unset is not considered.
This patch only checks the variable against a single value 'y' so the
logic is always coherent even when the variable is unset.

Signed-off-by: Vicente Bergas <vicencb@gmail.com>
Tested-by: Vicente Bergas <vicencb@gmail.com>
---
 arch/arm/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 9fc3cd3..1ab35b9 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -21,7 +21,7 @@ endif
 # at least some of the code would be executed with MMU off, lets be
 # conservative and instruct the compiler not to generate any unaligned
 # accesses
-ifeq ($(CONFIG_CPU_V8),n)
+ifneq ($(CONFIG_CPU_V8),y)
 CFLAGS += -mno-unaligned-access
 endif
 
-- 
2.9.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
