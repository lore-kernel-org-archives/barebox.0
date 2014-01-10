Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W1Zuw-0006iU-VN
 for barebox@lists.infradead.org; Fri, 10 Jan 2014 11:06:27 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 10 Jan 2014 12:05:58 +0100
Message-Id: <1389351959-20448-8-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1389351959-20448-1-git-send-email-s.hauer@pengutronix.de>
References: <1389351959-20448-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 7/8] ARM: bootm: determine RAM start in separate function
To: barebox@lists.infradead.org

We have two places in which we determine the RAM start address.
Put the code in a separate function. Let this function also figure
out the space available from beginning of RAM.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/lib/bootm.c | 55 ++++++++++++++++++++++++++++++++++++++++++----------
 1 file changed, 45 insertions(+), 10 deletions(-)

diff --git a/arch/arm/lib/bootm.c b/arch/arm/lib/bootm.c
index 11ff98c..5a2780a 100644
--- a/arch/arm/lib/bootm.c
+++ b/arch/arm/lib/bootm.c
@@ -22,6 +22,38 @@
 #include <asm/armlinux.h>
 #include <asm/system.h>
 
+/*
+ * sdram_start_and_size() - determine place for putting the kernel/oftree/initrd
+ *
+ * @start:	returns the start address of the first RAM bank
+ * @size:	returns the usable space at the beginning of the first RAM bank
+ *
+ * This function returns the base address of the first RAM bank and the free
+ * space found there.
+ *
+ * return: 0 for success, negative error code otherwise
+ */
+static int sdram_start_and_size(unsigned long *start, unsigned long *size)
+{
+	struct memory_bank *bank;
+	struct resource *res;
+
+	bank = list_first_entry_or_null(&memory_banks, struct memory_bank,
+			list);
+	if (!bank)
+		return -EINVAL;
+
+	res = list_first_entry_or_null(&bank->res->children, struct resource,
+			sibling);
+	if (!res)
+		return -EINVAL;
+
+	*start = bank->start;
+	*size = res->start - bank->start;
+
+	return 0;
+}
+
 static int __do_bootm_linux(struct image_data *data, int swap)
 {
 	unsigned long kernel;
@@ -79,16 +111,17 @@ static int __do_bootm_linux(struct image_data *data, int swap)
 
 static int do_bootm_linux(struct image_data *data)
 {
-	struct memory_bank *bank;
-	unsigned long load_address;
+	unsigned long load_address, mem_start, mem_size;
 	int ret;
 
+	ret = sdram_start_and_size(&mem_start, &mem_size);
+	if (ret)
+		return ret;
+
 	load_address = data->os_address;
 
 	if (load_address == UIMAGE_INVALID_ADDRESS) {
-		bank = list_first_entry(&memory_banks,
-				struct memory_bank, list);
-		load_address = bank->start + SZ_32K;
+		load_address = mem_start + SZ_32K;
 		if (bootm_verbose(data))
 			printf("no os load address, defaulting to 0x%08lx\n",
 				load_address);
@@ -191,20 +224,22 @@ static int do_bootz_linux(struct image_data *data)
 	void *zimage;
 	u32 end;
 	unsigned long load_address = data->os_address;
+	unsigned long mem_start, mem_size;
 
-	if (load_address == UIMAGE_INVALID_ADDRESS) {
-		struct memory_bank *bank = list_first_entry(&memory_banks,
-				struct memory_bank, list);
+	ret = sdram_start_and_size(&mem_start, &mem_size);
+	if (ret)
+		return ret;
 
+	if (load_address == UIMAGE_INVALID_ADDRESS) {
 		/*
 		 * The kernel should stay in the first 128MiB of RAM, recommended
 		 * is 32MiB into RAM so that relocation prior to decompression
 		 * can be avoided.
 		 */
 		if (mem_size > SZ_64M)
-			data->os_address = bank->start + SZ_32M;
+			data->os_address = mem_start + SZ_32M;
 		else
-			data->os_address = bank->start + SZ_8M;
+			data->os_address = mem_start + SZ_8M;
 
 		load_address = data->os_address;
 		if (bootm_verbose(data))
-- 
1.8.5.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
