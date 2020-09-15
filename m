Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kIA1m-0007hP-7W
 for barebox@lists.infradead.org; Tue, 15 Sep 2020 12:25:44 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 15 Sep 2020 14:25:32 +0200
Message-Id: <20200915122539.18744-4-s.hauer@pengutronix.de>
In-Reply-To: <20200915122539.18744-1-s.hauer@pengutronix.de>
References: <20200915122539.18744-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 03/10] openrisc: Add prototypes for functions called from
 assembly
To: Barebox List <barebox@lists.infradead.org>

Some functions are called from assembly only. There's no prototype
for them so this leads to -Wmissing-prototypes warnings. Add a prototype
right aboce the functions to avoid these warnings.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/openrisc/cpu/exceptions.c | 3 +++
 arch/openrisc/lib/board.c      | 3 +++
 2 files changed, 6 insertions(+)

diff --git a/arch/openrisc/cpu/exceptions.c b/arch/openrisc/cpu/exceptions.c
index d01fbfbb1c..4c52feb51c 100644
--- a/arch/openrisc/cpu/exceptions.c
+++ b/arch/openrisc/cpu/exceptions.c
@@ -69,6 +69,9 @@ static void exception_hang(int vect)
 	hang();
 }
 
+/* Called from assembly */
+void exception_handler(int vect);
+
 void exception_handler(int vect)
 {
 	int exception = vect >> 8;
diff --git a/arch/openrisc/lib/board.c b/arch/openrisc/lib/board.c
index 67ea96fc02..9591120fee 100644
--- a/arch/openrisc/lib/board.c
+++ b/arch/openrisc/lib/board.c
@@ -19,6 +19,9 @@
 #include <memory.h>
 #include <asm-generic/memory_layout.h>
 
+/* Called from assembly */
+void openrisc_start_barebox(void);
+
 void __noreturn openrisc_start_barebox(void)
 {
 	mem_malloc_init((void *)(OPENRISC_SOPC_TEXT_BASE - MALLOC_SIZE),
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
