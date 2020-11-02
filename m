Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from magratgarlick.emantor.de ([2a01:4f8:c17:c88::2])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kZWAU-0000U3-A4
 for barebox@lists.infradead.org; Mon, 02 Nov 2020 09:30:28 +0000
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Mon,  2 Nov 2020 10:30:02 +0100
Message-Id: <20201102093002.15851-4-r.czerwinski@pengutronix.de>
In-Reply-To: <20201102093002.15851-1-r.czerwinski@pengutronix.de>
References: <20201102093002.15851-1-r.czerwinski@pengutronix.de>
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
Subject: [PATCH 4/4] start: reserve OP-TEE memory for PBL-OPTEE
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>

Instead of only adding the reserved memory entry in case of an OP-TEE
start before the kernel, also do this in case we may have started OP-TEE
during the PBL.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 arch/arm/cpu/start.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index 5f43f9e546..0abe92036b 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -238,7 +238,7 @@ __noreturn __no_sanitize_address void barebox_non_pbl_start(unsigned long membas
 
 	mem_malloc_init((void *)malloc_start, (void *)malloc_end - 1);
 
-	if (IS_ENABLED(CONFIG_BOOTM_OPTEE))
+	if (OPTEE_SIZE > 0)
 		of_add_reserve_entry(endmem - OPTEE_SIZE, endmem - 1,
 				OF_RESERVE_ENTRY_FLAG_UNCACHED);
 
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
