Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x235.google.com ([2a00:1450:4010:c04::235])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZEECw-00042F-Q7
 for barebox@lists.infradead.org; Sun, 12 Jul 2015 10:10:03 +0000
Received: by lbnk3 with SMTP id k3so110980036lbn.1
 for <barebox@lists.infradead.org>; Sun, 12 Jul 2015 03:09:38 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sun, 12 Jul 2015 13:09:18 +0300
Message-Id: <1436695758-20331-2-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1436695758-20331-1-git-send-email-antonynpavlov@gmail.com>
References: <1436695758-20331-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] fixup! exitcall: move arch_shutdown to exitcall infrastructure
To: barebox@lists.infradead.org
Cc: Herve Codina <Herve.CODINA@celad.com>

---
fix whitespaces
---
 arch/blackfin/include/asm/common.h | 2 --
 arch/blackfin/lib/board.c          | 1 -
 arch/nios2/lib/board.c             | 1 -
 arch/openrisc/lib/board.c          | 1 -
 4 files changed, 5 deletions(-)

diff --git a/arch/blackfin/include/asm/common.h b/arch/blackfin/include/asm/common.h
index 5760fb9..443adf7 100644
--- a/arch/blackfin/include/asm/common.h
+++ b/arch/blackfin/include/asm/common.h
@@ -1,3 +1 @@
-
 /* nothing special */
-
diff --git a/arch/blackfin/lib/board.c b/arch/blackfin/lib/board.c
index 4731887..3a04f28 100644
--- a/arch/blackfin/lib/board.c
+++ b/arch/blackfin/lib/board.c
@@ -46,4 +46,3 @@ static void arch_shutdown(void)
 	icache_disable();
 }
 archshutdown_exitcall(arch_shutdown);
-
diff --git a/arch/nios2/lib/board.c b/arch/nios2/lib/board.c
index c04dda9..537675c 100644
--- a/arch/nios2/lib/board.c
+++ b/arch/nios2/lib/board.c
@@ -30,4 +30,3 @@ void __noreturn nios_start_barebox(void)
 
 	start_barebox();
 }
-
diff --git a/arch/openrisc/lib/board.c b/arch/openrisc/lib/board.c
index ff527e2..25bcc05 100644
--- a/arch/openrisc/lib/board.c
+++ b/arch/openrisc/lib/board.c
@@ -29,4 +29,3 @@ void __noreturn openrisc_start_barebox(void)
 
 	start_barebox();
 }
-
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
