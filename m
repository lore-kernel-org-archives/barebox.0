Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp35.i.mail.ru ([94.100.177.95])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W790M-0006z3-IS
 for barebox@lists.infradead.org; Sat, 25 Jan 2014 19:35:05 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sat, 25 Jan 2014 23:34:20 +0400
Message-Id: <1390678468-28378-4-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 04/12] ARM: uncompress: Remove unused variable
To: barebox@lists.infradead.org

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/cpu/uncompress.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/arch/arm/cpu/uncompress.c b/arch/arm/cpu/uncompress.c
index 6d3302a..7397c7d 100644
--- a/arch/arm/cpu/uncompress.c
+++ b/arch/arm/cpu/uncompress.c
@@ -46,7 +46,6 @@ static int __attribute__((__used__))
 static void __noreturn noinline uncompress_start_payload(uint32_t membase,
 		uint32_t memsize, uint32_t boarddata)
 {
-	uint32_t offset;
 	uint32_t pg_len;
 	void __noreturn (*barebox)(uint32_t, uint32_t, uint32_t);
 	uint32_t endmem = membase + memsize;
@@ -61,9 +60,6 @@ static void __noreturn noinline uncompress_start_payload(uint32_t membase,
 	if (IS_ENABLED(CONFIG_PBL_RELOCATABLE))
 		relocate_to_current_adr();
 
-	/* Get offset between linked address and runtime address */
-	offset = get_runtime_offset();
-
 	if (IS_ENABLED(CONFIG_RELOCATABLE))
 		barebox_base = arm_barebox_image_place(membase + memsize);
 	else
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
