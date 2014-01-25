Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp35.i.mail.ru ([94.100.177.95])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W790M-0006z4-IQ
 for barebox@lists.infradead.org; Sat, 25 Jan 2014 19:35:01 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sat, 25 Jan 2014 23:34:21 +0400
Message-Id: <1390678468-28378-5-git-send-email-shc_work@mail.ru>
In-Reply-To: <1390678468-28378-1-git-send-email-shc_work@mail.ru>
References: <1390678468-28378-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 05/12] ARM: PBL: Use __iomem specifier for memory pointer
To: barebox@lists.infradead.org

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/cpu/start-pbl.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/cpu/start-pbl.c b/arch/arm/cpu/start-pbl.c
index 3ef0118..ef6bb9d 100644
--- a/arch/arm/cpu/start-pbl.c
+++ b/arch/arm/cpu/start-pbl.c
@@ -45,8 +45,8 @@ void __naked __section(.text_head_entry) pbl_start(void)
 	barebox_arm_head();
 }
 
-extern void *input_data;
-extern void *input_data_end;
+extern void __iomem *input_data;
+extern void __iomem *input_data_end;
 
 static noinline __noreturn void __barebox_arm_entry(uint32_t membase,
 		uint32_t memsize, uint32_t boarddata)
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
