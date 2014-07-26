Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x231.google.com ([2a00:1450:4010:c03::231])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XB5bP-0006QD-68
 for barebox@lists.infradead.org; Sat, 26 Jul 2014 17:17:47 +0000
Received: by mail-la0-f49.google.com with SMTP id hz20so4050628lab.22
 for <barebox@lists.infradead.org>; Sat, 26 Jul 2014 10:17:24 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sat, 26 Jul 2014 21:17:11 +0400
Message-Id: <1406395031-8756-2-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1406395031-8756-1-git-send-email-antonynpavlov@gmail.com>
References: <1406395031-8756-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 2/2] Makefile: clean barebox.zynq
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Makefile b/Makefile
index 0fde711..3d08818 100644
--- a/Makefile
+++ b/Makefile
@@ -992,7 +992,7 @@ CLEAN_FILES +=	barebox System.map include/generated/barebox_default_env.h \
                 .tmp_version .tmp_barebox* barebox.bin barebox.map barebox.S \
 		.tmp_kallsyms* common/barebox_default_env* barebox.ldr \
 		scripts/bareboxenv-target barebox-flash-image \
-		barebox.srec barebox.s5p barebox.ubl \
+		barebox.srec barebox.s5p barebox.ubl barebox.zynq \
 		barebox.uimage barebox.spi barebox.kwb barebox.kwbuart \
 		barebox.efi
 
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
