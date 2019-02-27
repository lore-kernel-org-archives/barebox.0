Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2a00:ee2:100:3a01::1] (helo=chandra.tablix.org)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gyzAM-0004rZ-LG
 for barebox@lists.infradead.org; Wed, 27 Feb 2019 13:22:32 +0000
Received: from 77-111-10-47.ipv4.tusmobil.si ([77.111.10.47]
 helo=muffin.lju.klevio.com)
 by chandra.tablix.org with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <tomaz.solc@tablix.org>)
 id 1gyzA8-00088i-1z
 for barebox@lists.infradead.org; Wed, 27 Feb 2019 14:22:16 +0100
From: Tomaz Solc <tomaz.solc@tablix.org>
Date: Wed, 27 Feb 2019 14:22:13 +0100
Message-Id: <20190227132215.9765-2-tomaz.solc@tablix.org>
In-Reply-To: <20190227132215.9765-1-tomaz.solc@tablix.org>
References: <20190227132215.9765-1-tomaz.solc@tablix.org>
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
Subject: [PATCH v2 1/3] ARM: start: save end of memory passed to start.
To: barebox@lists.infradead.org

Knowing the address of the end of the memory area used by Barebox is
useful if PBL stores some extra data after it, so that board init code
can later retrieve it from there.
---
 arch/arm/cpu/start.c               | 8 ++++++++
 arch/arm/include/asm/barebox-arm.h | 1 +
 2 files changed, 9 insertions(+)

diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index 768fa9e1b..6573c2ef7 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -38,6 +38,7 @@
 
 unsigned long arm_stack_top;
 static unsigned long arm_barebox_size;
+static unsigned long arm_endmem;
 static void *barebox_boarddata;
 static unsigned long barebox_boarddata_size;
 
@@ -131,6 +132,12 @@ unsigned long arm_mem_ramoops_get(void)
 }
 EXPORT_SYMBOL_GPL(arm_mem_ramoops_get);
 
+unsigned long arm_mem_endmem_get(void)
+{
+	return arm_endmem;
+}
+EXPORT_SYMBOL_GPL(arm_mem_endmem_get);
+
 static int barebox_memory_areas_init(void)
 {
 	if(barebox_boarddata)
@@ -163,6 +170,7 @@ __noreturn void barebox_non_pbl_start(unsigned long membase,
 
 	pr_debug("memory at 0x%08lx, size 0x%08lx\n", membase, memsize);
 
+	arm_endmem = endmem;
 	arm_stack_top = arm_mem_stack_top(membase, endmem);
 	arm_barebox_size = barebox_size;
 	malloc_end = barebox_base;
diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
index e065b479e..a11d34923 100644
--- a/arch/arm/include/asm/barebox-arm.h
+++ b/arch/arm/include/asm/barebox-arm.h
@@ -86,6 +86,7 @@ static inline void boarddata_create(void *adr, u32 machine)
 u32 barebox_arm_machine(void);
 
 unsigned long arm_mem_ramoops_get(void);
+unsigned long arm_mem_endmem_get(void);
 
 struct barebox_arm_boarddata_compressed_dtb {
 #define BAREBOX_ARM_BOARDDATA_COMPRESSED_DTB_MAGIC 0x7b66bcbd
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
