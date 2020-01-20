Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from magratgarlick.emantor.de ([78.46.208.201])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itPES-00060t-SD
 for barebox@lists.infradead.org; Mon, 20 Jan 2020 05:04:14 +0000
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Mon, 20 Jan 2020 06:03:27 +0100
Message-Id: <20200120050330.161859-1-r.czerwinski@pengutronix.de>
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
Subject: [PATCH 1/4] optee: move optee_verify_header() to common
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>

Subsequent patches will use this to verify the header in the PBL, move
it to common to make it potentially available for both.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 arch/arm/lib32/bootm.c | 12 +++---------
 common/Makefile        |  1 +
 common/optee.c         | 18 ++++++++++++++++++
 include/tee/optee.h    |  5 +++++
 4 files changed, 27 insertions(+), 9 deletions(-)
 create mode 100644 common/optee.c

diff --git a/arch/arm/lib32/bootm.c b/arch/arm/lib32/bootm.c
index 180624445d..d64e705c40 100644
--- a/arch/arm/lib32/bootm.c
+++ b/arch/arm/lib32/bootm.c
@@ -137,16 +137,10 @@ static int get_kernel_addresses(size_t image_size,
 static int optee_verify_header_request_region(struct image_data *data, struct optee_header *hdr)
 {
 	int ret = 0;
-	if (hdr->magic != OPTEE_MAGIC) {
-		pr_err("Invalid header magic 0x%08x, expected 0x%08x\n",
-		       hdr->magic, OPTEE_MAGIC);
-		return -EINVAL;
-	}
 
-	if (hdr->arch != OPTEE_ARCH_ARM32 || hdr->init_load_addr_hi) {
-		pr_err("Only 32bit supported\n");
-		return -EINVAL;
-	}
+	ret = optee_verify_header(hdr);
+	if (ret < 0)
+		return ret;
 
 	data->tee_res = request_sdram_region("TEE", hdr->init_load_addr_lo, hdr->init_size);
 	if (!data->tee_res) {
diff --git a/common/Makefile b/common/Makefile
index 10960169f9..fbdd74a9fd 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -66,6 +66,7 @@ obj-$(CONFIG_BAREBOX_UPDATE_IMX_NAND_FCB) += imx-bbu-nand-fcb.o
 obj-$(CONFIG_BOOT)		+= boot.o
 obj-$(CONFIG_SERIAL_DEV_BUS)	+= serdev.o
 obj-$(CONFIG_USBGADGET_START)	+= usbgadget.o
+obj-$(CONFIG_BOOTM_OPTEE)	+= optee.o
 
 ifdef CONFIG_PASSWORD
 
diff --git a/common/optee.c b/common/optee.c
new file mode 100644
index 0000000000..1516c07db4
--- /dev/null
+++ b/common/optee.c
@@ -0,0 +1,18 @@
+#include <tee/optee.h>
+#include <printk.h>
+#include <asm-generic/errno.h>
+
+int optee_verify_header (struct optee_header *hdr) {
+	if (hdr->magic != OPTEE_MAGIC) {
+		pr_err("Invalid header magic 0x%08x, expected 0x%08x\n",
+			   hdr->magic, OPTEE_MAGIC);
+		return -EINVAL;
+	}
+
+	if (hdr->arch != OPTEE_ARCH_ARM32 || hdr->init_load_addr_hi) {
+		pr_err("Only 32bit supported\n");
+		return -EINVAL;
+	}
+
+	return 0;
+}
diff --git a/include/tee/optee.h b/include/tee/optee.h
index 8cfe06d889..9fb27fcec0 100644
--- a/include/tee/optee.h
+++ b/include/tee/optee.h
@@ -10,6 +10,9 @@
 #ifndef _OPTEE_H
 #define _OPTEE_H
 
+#include <types.h>
+#include <asm-generic/errno.h>
+
 #define OPTEE_MAGIC             0x4554504f
 #define OPTEE_VERSION           1
 #define OPTEE_ARCH_ARM32        0
@@ -27,4 +30,6 @@ struct optee_header {
 	uint32_t paged_size;
 };
 
+int optee_verify_header (struct optee_header *hdr);
+
 #endif /* _OPTEE_H */
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
