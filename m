Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og112.obsmtp.com ([64.18.0.24])
 by merlin.infradead.org with smtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VGs0j-0001h9-QM
 for barebox@lists.infradead.org; Tue, 03 Sep 2013 14:55:18 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Tue,  3 Sep 2013 15:54:26 +0100
Message-Id: <1378220067-22296-4-git-send-email-renaud.barbier@ge.com>
In-Reply-To: <1378220067-22296-1-git-send-email-renaud.barbier@ge.com>
References: <1378220067-22296-1-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH 3/4] ppc: bootm: relocate fdt to valid boot memory
To: barebox@lists.infradead.org

For the MPC85xx family of SOCs Linux expects any boot firmware
information to be passed in the first 64MiB of memory. This adds support
to ensure that the device tree is relocated to a valid location if it is
outside that address range.

Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
---
 arch/ppc/include/asm/processor.h |    1 +
 arch/ppc/lib/ppclinux.c          |   49 +++++++++++++++++++++++++++++++++++++-
 2 files changed, 49 insertions(+), 1 deletions(-)

diff --git a/arch/ppc/include/asm/processor.h b/arch/ppc/include/asm/processor.h
index 04cfb60..6b9b7dd 100644
--- a/arch/ppc/include/asm/processor.h
+++ b/arch/ppc/include/asm/processor.h
@@ -966,6 +966,7 @@ struct cpu_type {
 struct cpu_type *identify_cpu(u32 ver);
 
 #if defined(CONFIG_MPC85xx)
+#define LINUX_TLB1_MAX_ADDR	((void *)(64 << 20))
 #define CPU_TYPE_ENTRY(n, v, nc) \
 	{ .name = #n, .soc_ver = SVR_##v, .num_cores = (nc), }
 #endif
diff --git a/arch/ppc/lib/ppclinux.c b/arch/ppc/lib/ppclinux.c
index ef69ead..7c30ac3 100644
--- a/arch/ppc/lib/ppclinux.c
+++ b/arch/ppc/lib/ppclinux.c
@@ -4,12 +4,45 @@
 #include <command.h>
 #include <image.h>
 #include <init.h>
+#include <malloc.h>
 #include <environment.h>
 #include <asm/bitops.h>
+#include <asm/processor.h>
 #include <boot.h>
 #include <errno.h>
 #include <fs.h>
 
+static int bootm_relocate_fdt(void *addr, struct image_data *data)
+{
+	if (addr < LINUX_TLB1_MAX_ADDR) {
+		/* The kernel is within  the boot TLB mapping.
+		 * Put the DTB above if there is no space
+		 * below.
+		 */
+		if (addr < (void *)data->oftree->totalsize) {
+			addr = (void *)PAGE_ALIGN((phys_addr_t)addr +
+					data->os->header.ih_size);
+			addr += data->oftree->totalsize;
+			if (addr < LINUX_TLB1_MAX_ADDR)
+				addr = LINUX_TLB1_MAX_ADDR;
+		}
+	}
+
+	if (addr > LINUX_TLB1_MAX_ADDR) {
+		pr_crit("Unable to relocate DTB to Linux TLB\n");
+		return 1;
+	}
+
+	addr = (void *)PAGE_ALIGN_DOWN((phys_addr_t)addr -
+			data->oftree->totalsize);
+	memcpy(addr, data->oftree, data->oftree->totalsize);
+	free(data->oftree);
+	data->oftree = addr;
+
+	pr_info("Relocating device tree to 0x%p\n", addr);
+	return 0;
+}
+
 static int do_bootm_linux(struct image_data *data)
 {
 	void	(*kernel)(void *, void *, unsigned long,
@@ -24,6 +57,20 @@ static int do_bootm_linux(struct image_data *data)
 		return -EINVAL;
 	}
 
+	/* Relocate the device tree if outside the initial
+	 * Linux mapped TLB.
+	 */
+	if (IS_ENABLED(CONFIG_MPC85xx)) {
+		void *addr = data->oftree;
+
+		if ((addr + data->oftree->totalsize) > LINUX_TLB1_MAX_ADDR) {
+			addr = (void *)data->os_address;
+
+			if (bootm_relocate_fdt(addr, data))
+				goto error;
+		}
+	}
+
 	fdt_add_reserve_map(data->oftree);
 
 	kernel = (void *)(data->os_address + data->os_entry);
@@ -40,7 +87,7 @@ static int do_bootm_linux(struct image_data *data)
 
 	reset_cpu(0);
 
-	/* not reached */
+error:
 	return -1;
 }
 
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
